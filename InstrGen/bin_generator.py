from bin_compilier import axi_read_compare, axi_read_r, axi_write_i, axi_write_r, generate_delay_instruction, generate_nop_instruction,  generate_interrupt_instruction, create_instruction_file

# Define AXI IIC register addresses
GIE          = 0x01C  # Global Interrupt Enable Register
ISR          = 0x020  # Interrupt Status Register
IER          = 0x028  # Interrupt Enable Register
SOFTR        = 0x040  # Software Reset Register
CR           = 0x100  # Control Register
SR           = 0x104  # Status Register
TX_FIFO      = 0x108  # Transmit FIFO Register
RX_FIFO      = 0x10C  # Receive FIFO Register
ADR          = 0x110  # Address Register
TX_FIFO_OCY  = 0x114  # Transmit FIFO Occupancy Register
RX_FIFO_OCY  = 0x118  # Receive FIFO Occupancy Register
TEN_ADDR     = 0x11C  # 10-bit Address Register
RX_FIFO_PIRQ = 0x120  # Receive FIFO Programmable Interrupt Request Register
GPO          = 0x124  # General Purpose Output Register

def i2c_read_axi(axi_base_addr = 0x000, i2c_addr = 0x000, mem_addr = 0x000, reg_addr = -1, rx_size = 1):
    instr = []

    # Reset TX FIFO
    instr.append(axi_write_i(axi_base_addr + CR, 0x002))
    # Enable IIC
    instr.append(axi_write_i(axi_base_addr + CR, 0x001))

    # Delay for 2m
    instr.append(generate_delay_instruction(200000))

    if reg_addr != -1:
        # Set the slave I2C address
        instr.append(axi_write_i(axi_base_addr + TX_FIFO, (0x100 | (i2c_addr << 1))))
        # Set the slave register address
        instr.append(axi_write_i(axi_base_addr + TX_FIFO, reg_addr))

    # Set the slave I2C address for read
    instr.append(axi_write_i(axi_base_addr + TX_FIFO, (0x101 | (i2c_addr << 1))))
    # Start a read transaction
    instr.append(axi_write_i(axi_base_addr + TX_FIFO, 0x200 + rx_size))

    # Read data from the I2C slave
    for i in range(rx_size):
        # Wait for the RX FIFO to be not empty
        instr.append(axi_read_compare(axi_base_addr + SR, 0x040, 0b01))
        instr.append(axi_read_r(axi_base_addr + RX_FIFO, mem_addr + i))
        
    return instr

def i2c_write_axi(axi_base_addr = 0x000, i2c_addr = 0x000, reg_addr = -1, tx_size = 1, buffer = []):
    instr = []
    if buffer == []:
        return instr
    if len(buffer) != tx_size:
        raise ValueError("Buffer size does not match tx_size")
    
    # Reset TX FIFO
    instr.append(axi_write_i(axi_base_addr + CR, 0x002))
    # Enable IIC
    instr.append(axi_write_i(axi_base_addr + CR, 0x001))

    # Delay for 2m
    instr.append(generate_delay_instruction(200000))

    # Set the slave I2C address
    instr.append(axi_write_i(axi_base_addr + TX_FIFO, (0x100 | (i2c_addr << 1))))


    if reg_addr != -1:
        # Set the slave register address
        instr.append(axi_write_i(axi_base_addr + TX_FIFO, reg_addr))

    # Read data from the I2C slave
    for i in range(tx_size):
        # Wait for the RX FIFO to be not empty
        if i == tx_size - 1:
            instr.append(axi_write_i(axi_base_addr + TX_FIFO, (0x200 | buffer[i])))
        else:
            instr.append(axi_write_i(axi_base_addr + TX_FIFO, buffer[i]))
        
    return instr


# ------------------------------------  Generation Preparation  ------------------------------------

CONFIG_LENGTH = 50 # Number of instructions in the configuration
AXI_BASE_ADDR = 0x000 # Base address of the AXI IIC peripheral

delay_2ms =   generate_delay_instruction(200000)
delay_200ms = generate_delay_instruction(20000000)
nop = generate_nop_instruction()
interrupt_check = generate_interrupt_instruction()

# AXI-I2C IP Interrupt configuration (Trun off)
config_interupt = axi_write_i(SOFTR, 0x00a)

# Configaration instructions
# Bendlab Device check
bl_check_i2c_read = i2c_read_axi(axi_base_addr=AXI_BASE_ADDR, i2c_addr=0x013, mem_addr=0x000, reg_addr=-1, rx_size=5)
bl_check_i2c_wrtie = i2c_write_axi(axi_base_addr=AXI_BASE_ADDR,
                                    i2c_addr=0x013, 
                                    reg_addr=-1, 
                                    tx_size=5, 
                                    buffer=[0x0a, 0x00, 0x00, 0x00, 0x00])

bendlab_i2c_device_check = bl_check_i2c_wrtie + [delay_2ms] + bl_check_i2c_read + [delay_2ms]


# I2C Device comunication start and data read
bl_data_i2c_start = i2c_write_axi(axi_base_addr=AXI_BASE_ADDR, 
                                  i2c_addr=0x013, 
                                  reg_addr=-1, 
                                  tx_size=5, 
                                  buffer=[0x00, 0x01, 0x00, 0x00, 0x00])

bl_data_i2c_read = i2c_read_axi(axi_base_addr=AXI_BASE_ADDR, i2c_addr=0x013, mem_addr=0x005, reg_addr=-1, rx_size=5)


# ------------------------------------  Code Generation ------------------------------------
# # Data Read with 200ms Delay
# output_filename = "bendlab_data_read.mem"
# instr_config = [nop, config_interupt, delay_2ms] + bendlab_i2c_device_check + bl_data_i2c_start
# instr_exec = [delay_200ms] + bl_data_i2c_read

output_filename = "bendlab_data_read_interrupt.mem"
instr_config = [nop, config_interupt, delay_2ms] + bendlab_i2c_device_check + bl_data_i2c_start + [delay_2ms]
instr_exec = [interrupt_check] + bl_data_i2c_read

print("Config Instruction length: ", len(instr_config), "/" , CONFIG_LENGTH)
print("Execution Instruction length: ", len(instr_exec)) 
# Write the instructions to the file
create_instruction_file(output_filename, instr_config, instr_exec, addr_config=CONFIG_LENGTH)
print(f"Instruction file '{output_filename}' created successfully.")

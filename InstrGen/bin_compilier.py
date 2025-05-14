def axi_read_r(axi_rd_address, local_wr_address, count=1, reserved=0):
    """
    Generates an R-type instruction for an AXI4 read operation.

    Args:
        axi_rd_address (int): 9-bit AXI read address (must be pre-aligned).
        local_wr_address (int): 8-bit local write address.
        count (int): 7-bit count (default 1).
        reserved (int): 5-bit reserved value (default 0).

    Returns:
        str: 32-bit binary instruction string.
    """

    opcode = 1  # AXI4 Read
    return generate_r_type_instruction(reserved, count, local_wr_address, axi_rd_address, opcode)


def axi_write_r(axi_wr_address, local_rd_address, count=1, reserved=0):
    """
    Generates an R-type instruction for an AXI4 write from local memory.

    Args:
        axi_wr_address (int): 9-bit AXI write address (must be pre-aligned).
        local_rd_address (int): 8-bit local read address.
        count (int): 7-bit count (default 1).
        reserved (int): 5-bit reserved value (default 0).

    Returns:
        str: 32-bit binary instruction string.
    """

    opcode = 2  # AXI4 Write from load
    return generate_r_type_instruction(reserved, count, local_rd_address, axi_wr_address, opcode)


def axi_write_i(axi_wr_address, data_20_bit):
    """
    Generates an I-type instruction for an AXI4 write with immediate data.

    Args:
        axi_wr_address (int): 9-bit AXI write address (must be pre-aligned).
        data_20_bit (int): 20-bit data to write.

    Returns:
        str: 32-bit binary instruction string.
    """

    opcode = 3  # AXI4 Write from instruction data
    return generate_i_type_instruction(data_20_bit, axi_wr_address, opcode)


# --- Helper functions from the previous code ---
def generate_r_type_instruction(reserved, count, addr_local, addr_axi, opcode):
    # ... (same as before)
    # Ensure values are within their specified bit ranges
    if not (0 <= reserved < 2**5):
        raise ValueError("Reserved value out of range (0-31)")
    if not (0 <= count < 2**7):
        raise ValueError("Count value out of range (0-127)")
    if not (0 <= addr_local < 2**8):
        raise ValueError("Local address out of range (0-255)")
    if not (0 <= addr_axi < 2**9):
        raise ValueError("AXI address out of range (0-511)")
    if not (0 <= opcode < 2**3):
        raise ValueError("Opcode out of range (0-7)")

    # Format the binary strings with padding
    reserved_bin = format(reserved, '05b')
    count_bin = format(count, '07b')
    addr_local_bin = format(addr_local, '08b')
    addr_axi_bin = format(addr_axi, '09b')
    opcode_bin = format(opcode, '03b')

    # Concatenate the binary strings to form the instruction
    instruction_bin = reserved_bin + count_bin + addr_local_bin + addr_axi_bin + opcode_bin

    return instruction_bin


def generate_i_type_instruction(write_data, addr_axi, opcode):
    # ... (same as before)
    # Ensure values are within their specified bit ranges
    if not (0 <= write_data < 2**20):
        raise ValueError("Write data out of range (0 to 1048575)")
    if not (0 <= addr_axi < 2**9):
        raise ValueError("AXI address out of range (0-511)")
    if not (0 <= opcode < 2**3):
        raise ValueError("Opcode out of range (0-7)")

    # Format the binary strings with padding
    write_data_bin = format(write_data, '020b')
    addr_axi_bin = format(addr_axi, '09b')
    opcode_bin = format(opcode, '03b')

    # Concatenate the binary strings to form the instruction
    instruction_bin = write_data_bin + addr_axi_bin + opcode_bin

    return instruction_bin
def generate_stall_instruction():
    """
    Generates a stall instruction (all bits set to 1).

    Returns:
        str: 32-bit binary stall instruction string.
    """
    return "1" * 32  # 32 bits of 1s

def generate_nop_instruction():
    """
    Generates a NOP (No Operation) instruction.

    Returns:
        str: 32-bit binary NOP instruction string.
    """
    return "0" * 32  # 32 bits of 


def generate_delay_instruction(delay_count):
    """
    Generates a 32-bit instruction for a time delay.

    Args:
        delay_count (int): The number of clock cycles to delay (max 29 bits).

    Returns:
        str: 32-bit binary instruction string.

    Raises:
        ValueError: If delay_count is out of the allowed range.
    """

    # Ensure delay_count is within the valid range (29 bits)
    if not (0 <= delay_count < 2**29):
        raise ValueError(f"Delay count out of range (0 to {2**29 - 1})")

    opcode = 4 # Example opcode for delay operation

    # Format delay_count and opcode to binary strings
    delay_count_bin = format(delay_count, '029b')
    opcode_bin = format(opcode, '03b')

    # Concatenate to form the instruction
    instruction_bin = delay_count_bin + opcode_bin

    return instruction_bin

def axi_read_compare(axi_address, compare_value, compare_operation):
    """
    Generates a 32-bit instruction for AXI Read, Compare, and Pass if True.

    Args:
        axi_address (int): 9-bit AXI4-Lite address (pre-aligned).
        compare_value (int): 18-bit value to compare against AXI read data.
        compare_operation (int): 2-bit code for the comparison operation.

    Returns:
        str: 32-bit binary instruction string.

    Raises:
        ValueError: If any input value is out of its allowed bit range.
    """

    # --- Input Validation ---
    if not (0 <= axi_address < 2**9):
        raise ValueError("AXI address out of range (0-511)")
    if not (0 <= compare_value < 2**18):
        raise ValueError("Compare value out of range (0 to 262143)")
    if not (0 <= compare_operation < 2**2):
        raise ValueError("Compare operation out of range (0-3)")

    opcode = 5  # Assuming 4 is the opcode for AXI Read Compare (You MUST confirm this)

    # --- Binary Formatting ---
    axi_address_bin = format(axi_address, '09b')
    compare_value_bin = format(compare_value, '018b')
    compare_operation_bin = format(compare_operation, '02b')
    opcode_bin = format(opcode, '03b')

    # --- Instruction Construction ---
    instruction_bin = compare_value_bin + compare_operation_bin + axi_address_bin + opcode_bin

    return instruction_bin

def generate_interrupt_instruction():
    """
    Generates an interrupt instruction. Opcode is 0b110.

    All bits are set to 0 except for the opcode. (Reserved 0)
    """
    opcode = 6  # Opcode for interrupt (3 bits)

    reserved_bin = '0' * 29  # 29 bits reserved (0)
    opcode_bin = format(opcode, '03b')  # 3 bits for opcode
    instruction_bin = reserved_bin + opcode_bin

    return instruction_bin
    

def create_instruction_file(filename, instructions_config, instructions_exec, addr_config):
    """
    Creates an instruction file with a specific format.

    Args:
        filename (str): The name of the output file.
        instructions_config (list): List of binary instructions for the configuration section.
                                  Starts at address 0.
        instructions_exec (list): List of binary instructions for the execution section.
                                Starts at addr_config.
        addr_config (int): The starting address (line number) for the execution instructions.
                           This determines where in the file the execution instructions begin.
    """

    all_instructions = ["0" * 32] * 256  # Initialize with 256 lines of 32-bit zeros

    # Place config instructions at the beginning
    all_instructions[0:len(instructions_config)] = instructions_config

    if len(instructions_config) > addr_config:
        raise ValueError(f"Instruction length exceeds the maximum limit of {addr_config} instructions. Current length: {len(instr_config)}") 

    # Place exec instructions at addr_config
    all_instructions[addr_config:addr_config + len(instructions_exec)] = instructions_exec

    with open(filename, 'w') as f:
        for instruction in all_instructions:
            f.write(instruction + '\n')




# --- Example Usage with the new functions ---
# Configuration
# config1 = axi_write_i(axi_wr_address=0x040, data_20_bit=0x0000a)
# print(f"AXI Write (I-type) Instruction: {config1}")

# config2 = axi_write_i(axi_wr_address=0x01c, data_20_bit=0x00000)
# print(f"AXI Write (I-type) Instruction: {config2}")

check_SR = axi_read_compare(axi_address=0x104, compare_value=0x0040, compare_operation=0b11)


nop = generate_nop_instruction()

read_00 = axi_read_r(axi_rd_address=0x040, local_wr_address=0x00, count=1)
read_01 = axi_read_r(axi_rd_address=0x01c, local_wr_address=0x01, count=1)

config2_rTest = axi_write_r(axi_wr_address=0x01c, local_rd_address=0x01, count=1)
read_02 = axi_read_r(axi_rd_address=0x01c, local_wr_address=0x02, count=1)

read_SR = axi_read_r(axi_rd_address=0x104, local_wr_address=0x03, count=1)
read_RX_FIFO = axi_read_r(axi_rd_address=0x10c, local_wr_address=0x04, count=1)


delay_255 = generate_delay_instruction(255)  # 255 clock cycles delay
delay_63  = generate_delay_instruction(63)  # 64 clock cycles delay
delay_1023 = generate_delay_instruction(1023)  # 1024 clock cycles delay
delay_2ms = generate_delay_instruction(200000)  # 2ms delay for 100MHz clock (100,000,000 Hz)


rest_tx_fifo= axi_write_i(axi_wr_address=0x100, data_20_bit=0x00002) # register 0
enable_iic = axi_write_i(axi_wr_address=0x100, data_20_bit=0x00001) # register 1

set_slave_addr1 = axi_write_i(axi_wr_address=0x108, data_20_bit=0x00190)
set_slave_reg = axi_write_i(axi_wr_address=0x108, data_20_bit=0x00000) # register 0
set_slave_addr2 = axi_write_i(axi_wr_address=0x108, data_20_bit=0x00191) # 
set_read_transfer = axi_write_i(axi_wr_address=0x108, data_20_bit=0x201) # register 1




# Output filename
# output_filename = "instructions.mem"
# instr_config = [nop, config1, config2, read_00, read_01, config2_rTest, read_02]

# instr_exec = [rest_tx_fifo, 
#               enable_iic, 
#               delay_255,
#               set_slave_addr1, 
#               set_slave_reg, 
#               set_slave_addr2, 
#               set_read_transfer,
#               delay_63,
#               read_SR,
#               check_SR,
#               read_RX_FIFO,
#               delay_1023]
# Delay for 10ms

# output_filename = "instructions.mem"
# instr_config = [nop, config1, config2]

# instr_exec = [rest_tx_fifo, 
#               enable_iic, 
#               delay_255,
#               set_slave_addr1, 
#               set_slave_reg, 
#               set_slave_addr2, 
#               set_read_transfer]
# Delay for 10ms

output_filename = "bendlab_device_check.mem"
config_interupt = axi_write_i(axi_wr_address=0x040, data_20_bit=0x00a) # register 2

instr_iic_write =[
        axi_write_i(axi_wr_address=0x100, data_20_bit=0x002), # Reset TX FIFO
        axi_write_i(axi_wr_address=0x100, data_20_bit=0x001), # Enable IIC
        delay_2ms,
        
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x126), # Set Slave IIC Address
        # axi_read_r(axi_rd_address=0x104, local_wr_address=0x00, count=1), # Read SR, write to local address 0x00

        axi_write_i(axi_wr_address=0x108, data_20_bit=0x00a), # write 0
        # axi_read_r(axi_rd_address=0x104, local_wr_address=0x00, count=1), # Read SR, write to local address 0x00
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x000), # write 1
        # axi_read_r(axi_rd_address=0x104, local_wr_address=0x00, count=1), # Read SR, write to local address 0x00
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x000), # write 2
        # axi_read_r(axi_rd_address=0x104, local_wr_address=0x00, count=1), # Read SR, write to local address 0x00
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x000), # write 3
        # axi_read_r(axi_rd_address=0x104, local_wr_address=0x00, count=1), # Read SR, write to local address 0x00
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x200),  # write 4

        
]

instr_iic_read = [
        axi_read_r(axi_rd_address=0x104, local_wr_address=0x00, count=1), # Read SR, write to local address 0x00

        axi_write_i(axi_wr_address=0x100, data_20_bit=0x002), # Reset TX FIFO
        axi_write_i(axi_wr_address=0x100, data_20_bit=0x001), # Enable IIC
        delay_2ms,
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x127), # Set Slave IIC Address
        axi_write_i(axi_wr_address=0x108, data_20_bit=0x205), # start comunication

        axi_read_compare(axi_address=0x104, compare_value=0x040, compare_operation=0b01), 
        axi_read_r(axi_rd_address=0x10c, local_wr_address=0x00, count=1), # Read RX FIFO, write to local address 0x00
        axi_read_compare(axi_address=0x104, compare_value=0x040, compare_operation=0b01),
        axi_read_r(axi_rd_address=0x10c, local_wr_address=0x01, count=1), # Read RX FIFO, write to local address 0x01
        axi_read_compare(axi_address=0x104, compare_value=0x040, compare_operation=0b01),
        axi_read_r(axi_rd_address=0x10c, local_wr_address=0x02, count=1), # Read RX FIFO, write to local address 0x02
        axi_read_compare(axi_address=0x104, compare_value=0x040, compare_operation=0b01),
        axi_read_r(axi_rd_address=0x10c, local_wr_address=0x03, count=1), # Read RX FIFO, write to local address 0x03
        axi_read_compare(axi_address=0x104, compare_value=0x040, compare_operation=0b01),
        axi_read_r(axi_rd_address=0x10c, local_wr_address=0x04, count=1) # Read RX FIFO, write to local address 0x04
        
        # axi_read_compare(axi_address=0x104, compare_value=0x08c, compare_operation=0b00), # Compare with 0x040, pass operation 3 (not equal)
        # axi_read_r(axi_rd_address=0x10c, local_wr_address=0x00, count=1), # Read RX FIFO, write to local address 0x00
        # axi_read_compare(axi_address=0x104, compare_value=0x08c, compare_operation=0b00), # Compare with 0x040, pass operation 3 (not equal)
        # axi_read_r(axi_rd_address=0x10c, local_wr_address=0x01, count=1), # Read RX FIFO, write to local address 0x01
        # axi_read_compare(axi_address=0x104, compare_value=0x08c, compare_operation=0b00), # Compare with 0x040, pass operation 3 (not equal)
        # axi_read_r(axi_rd_address=0x10c, local_wr_address=0x02, count=1), # Read RX FIFO, write to local address 0x02
        # axi_read_compare(axi_address=0x104, compare_value=0x08c, compare_operation=0b00), # Compare with 0x040, pass operation 3 (not equal)
        # axi_read_r(axi_rd_address=0x10c, local_wr_address=0x03, count=1), # Read RX FIFO, write to local address 0x03
        # axi_read_compare(axi_address=0x104, compare_value=0x08c, compare_operation=0b00), # Compare with 0x040, pass operation 3 (not equal)
        # axi_read_r(axi_rd_address=0x10c, local_wr_address=0x04, count=1) # Read RX FIFO, write to local address 0x04
        
]

instr_config = [nop, config_interupt]

instr_exec = instr_iic_write + [delay_2ms] + instr_iic_read + [delay_2ms]


# print(f"AXI Write (I-type) Instruction: {instr_config}")
# print(f"AXI Write (I-type) Instruction: {instr_exec}")

# Write the instructions to the file
create_instruction_file(output_filename, instr_config, instr_exec, addr_config=10)
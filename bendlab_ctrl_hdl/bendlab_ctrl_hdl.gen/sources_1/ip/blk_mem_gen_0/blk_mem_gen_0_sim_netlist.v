// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 14 16:10:24 2025
// Host        : DESKTOP-SF4M6F2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               h:/workspace/AXI_IIC_Ctrl/export/bendlab_hdl_ctrl_zed/bendlab_ctrl_hdl/bendlab_ctrl_hdl.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire ena;
  wire [0:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.53845 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19744)
`pragma protect data_block
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
t4YBjIqDx9rzQMJ4wu0woxo8sKw1jw==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

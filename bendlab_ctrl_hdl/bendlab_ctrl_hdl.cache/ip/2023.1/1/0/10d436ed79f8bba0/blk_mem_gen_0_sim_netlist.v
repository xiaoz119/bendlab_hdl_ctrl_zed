// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed May 14 16:10:24 2025
// Host        : DESKTOP-SF4M6F2 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19760)
`pragma protect data_block
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
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

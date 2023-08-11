// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Thu Mar 23 21:37:25 2023
// Host        : ayush-GF63-Thin-10SC running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ayush/Downloads/assignment_4daabc9537250d6e9d26129235265db2975c3cbe/q6/sources_1/ip/xbip_dsp48_macro_0/xbip_dsp48_macro_0_sim_netlist.v
// Design      : xbip_dsp48_macro_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "xbip_dsp48_macro_0,dsp_macro_v1_0_2,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dsp_macro_v1_0_2,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module xbip_dsp48_macro_0
   (CLK,
    SEL,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sel_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sel_intf, LAYERED_METADATA undef" *) input [1:0]SEL;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [24:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;

  wire [24:0]A;
  wire [17:0]B;
  wire CLK;
  wire [47:0]P;
  wire [1:0]SEL;
  wire NLW_U0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_U0_CARRYOUT_UNCONNECTED;
  wire [29:0]NLW_U0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_U0_BCOUT_UNCONNECTED;
  wire [47:0]NLW_U0_PCOUT_UNCONNECTED;

  (* C_A_WIDTH = "25" *) 
  (* C_B_WIDTH = "18" *) 
  (* C_CONCAT_WIDTH = "48" *) 
  (* C_CONSTANT_1 = "1" *) 
  (* C_C_WIDTH = "48" *) 
  (* C_D_WIDTH = "18" *) 
  (* C_HAS_A = "1" *) 
  (* C_HAS_ACIN = "0" *) 
  (* C_HAS_ACOUT = "0" *) 
  (* C_HAS_B = "1" *) 
  (* C_HAS_BCIN = "0" *) 
  (* C_HAS_BCOUT = "0" *) 
  (* C_HAS_C = "0" *) 
  (* C_HAS_CARRYCASCIN = "0" *) 
  (* C_HAS_CARRYCASCOUT = "0" *) 
  (* C_HAS_CARRYIN = "0" *) 
  (* C_HAS_CARRYOUT = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_CEA = "0" *) 
  (* C_HAS_CEB = "0" *) 
  (* C_HAS_CEC = "0" *) 
  (* C_HAS_CECONCAT = "0" *) 
  (* C_HAS_CED = "0" *) 
  (* C_HAS_CEM = "0" *) 
  (* C_HAS_CEP = "0" *) 
  (* C_HAS_CESEL = "0" *) 
  (* C_HAS_CONCAT = "0" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_INDEP_CE = "0" *) 
  (* C_HAS_INDEP_SCLR = "0" *) 
  (* C_HAS_PCIN = "0" *) 
  (* C_HAS_PCOUT = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SCLRA = "0" *) 
  (* C_HAS_SCLRB = "0" *) 
  (* C_HAS_SCLRC = "0" *) 
  (* C_HAS_SCLRCONCAT = "0" *) 
  (* C_HAS_SCLRD = "0" *) 
  (* C_HAS_SCLRM = "0" *) 
  (* C_HAS_SCLRP = "0" *) 
  (* C_HAS_SCLRSEL = "0" *) 
  (* C_LATENCY = "96" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_OPMODES = "000000000110010100000000,000000000010000000000000,000100100000010100000000" *) 
  (* C_P_LSB = "0" *) 
  (* C_P_MSB = "47" *) 
  (* C_REG_CONFIG = "00000000000000000000000000000100" *) 
  (* C_SEL_WIDTH = "2" *) 
  (* C_SQUARE_FCN = "0" *) 
  (* C_TEST_CORE = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  xbip_dsp48_macro_0_dsp_macro_v1_0_2 U0
       (.A(A),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_U0_ACOUT_UNCONNECTED[29:0]),
        .B(B),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_U0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_U0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYOUT(NLW_U0_CARRYOUT_UNCONNECTED),
        .CE(1'b1),
        .CEA(1'b1),
        .CEA1(1'b1),
        .CEA2(1'b1),
        .CEA3(1'b1),
        .CEA4(1'b1),
        .CEB(1'b1),
        .CEB1(1'b1),
        .CEB2(1'b1),
        .CEB3(1'b1),
        .CEB4(1'b1),
        .CEC(1'b1),
        .CEC1(1'b1),
        .CEC2(1'b1),
        .CEC3(1'b1),
        .CEC4(1'b1),
        .CEC5(1'b1),
        .CECONCAT(1'b1),
        .CECONCAT3(1'b1),
        .CECONCAT4(1'b1),
        .CECONCAT5(1'b1),
        .CED(1'b1),
        .CED1(1'b1),
        .CED2(1'b1),
        .CED3(1'b1),
        .CEM(1'b1),
        .CEP(1'b1),
        .CESEL(1'b1),
        .CESEL1(1'b1),
        .CESEL2(1'b1),
        .CESEL3(1'b1),
        .CESEL4(1'b1),
        .CESEL5(1'b1),
        .CLK(CLK),
        .CONCAT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .P(P),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_U0_PCOUT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .SCLRA(1'b0),
        .SCLRB(1'b0),
        .SCLRC(1'b0),
        .SCLRCONCAT(1'b0),
        .SCLRD(1'b0),
        .SCLRM(1'b0),
        .SCLRP(1'b0),
        .SCLRSEL(1'b0),
        .SEL(SEL));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C6jZK6NIVv+7/1tlzJd4eRQQ6rM6USDHddvHQqrYM6OqNVuoDb5I2SckTZTmmFHG4KTN9Yt9o/Kd
5NKjautnKkQ7HWmmRE2W4jwm1PX1GFp/IAoBUnks73GXVRbQoXKN3zCXrZDeSoyxDTitlRMZ3lXM
LTjoOwU6YuvMhQ4bfco=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
B4lewz1Cy21BLdfd1yNiQAHEcPQq4OWCx5YiBFfP6ZU+1aLJ0rknLauGGcTOSRFkZL+QV6iyLcZZ
zysCItt7Jt15ffijwFA7jaft+7jawlZABJbceyyMNVv/23YugnhYk53jGkYnp2xDy/q61XS1ludF
Ed97kHsPfq6lI9WgyLnd2KkjQPS9s2yUAxEQ6juHGEBu2HsXUWwL2FYIuKxM/4x+nm3n0d1TnuiL
saaiFyZw4VktFHREZPeaGPT8x77Sk2QDOJ1cSPE7bttHihi/lHU6r3v99pb9axCZipRKpPnreT16
srZfmXqqxAZB6tuEsAzms8JGKjMWefmghhBJHw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fdbTTtSy1o2SuzHY7hHnh7YxkGYBmOuQmkSKyL5Qx1U6qHWeYLWcwez9/4Tw/AgnafXHLR4zDAXR
6bT3DnLG6W8BAhN8J/uTjlIk5fVkKVDvbEzn9gyAaKWmXZIlnHkgOpIxz3CWEddMCuor3N1nEtJg
LN/0GFLpa3SOrzgSuAg=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WOcDpzvWO34xEOiPvcGX3mgCzAYEWdhwsRO5dLZBtsZvfxKeCT+VqXfStZjvdkms7wNGDVqj81Rn
TqUFU96bLdzl28PxoG3NrFyo2/6kmtQlE/mnT4Bzk4ZWJc3V7pk9z3UimkvyCuUCC59BC18lEARX
ItIOAkkfxrYcCWt+oQrYDslq0Lo8h2p39idJiF6/iWFwAcWsGrxh1dBWoWTd8K1/chHeMKLB+PFl
nFWgeN/Wus+nkbSRgmuCIxA0u10haujiodnkyESbhhCon96pwG9uNvRch19GjAlHeSCYtWr/6Xo/
cGSs71rTga7lB9rHIGtuNH5WRRW4IfyWWSr3cQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
w5zvy+xN1IK2h995gNfb/PJc3lx6bmpb32X3OPGD6Cz+Hnut1WrRpDFxI1y+U9ZAKyRpeoVCrR7H
DS2lr0IqNfhG/ydpwmzqPQi1vGf4Gng0NpOWNzEaGFyuKsbfdOChGU6F+ZKUuPx1LInV/Acty0E/
Uf9HEK6WHi89FNEmbMTaavhyW6cgFs9+Gtxb1hLAp/+JJ+bfL0i+fvaVdFmy4Tpic02W0rez30dp
k+L8j0wlpmGEjGUci3V8DO2W70LDuEbVuVXEdte0Gy724MMNN6iwKoXCLDTDnEoOR2gxuGga4TNt
kv/7GOkMvrJOAwslzMwvVwXfnlQ39huRWRIn4A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FRGUkQCUsk/6aRxdk37mwHCCsCa1DvfY6nbxnsehLy12mB+1Rg4+OUWeOAWDWMpxHfnp+3Ne7Hdk
ji8VoJ8pjFkdxQG7zDSRL9mJfCaLyJmwoetg6/1XEKnJ6KOLTpiJ0P6W19SioDXptOZGjNO2u88h
87VrQw+nNz3Y0WAs04NEfuZCKspz8RMDCaVJcaSUKryAGqpTHASUYqzlwnIV00rVJAdiAzVI4vf+
YKCTsvA/LL98nZvGU4y85CClSJRxraLDLzyfBt9cojmuseIWD0/QLFd+jg+feBcGqK37hiY+LA90
bPnYlJsCRi7KUXQf+R4o3aUe25budbQp5O/hGA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LPEZd7tMkPwqna9oBQOVsS+EroGq7hX2uysf/rHwyuoVq58mgOc8lNbyn9IaWwlLmDWZTOdau9Js
4gsBWmIOee12BH0adhmdrZzbrhLhkeLDETc3El6IU1G4kGpVjIzo1hPF+LI2vm5PO4S2GAhjdnF4
viO4wTcqZZNiPVoqsEo12WUsrFTBIXK9wnFz6creZaBsWjcfFSRsULDJVV8IvGKIC2acGD5S9aJ3
NmN72HPXR1vgfbfAJ4dJPuxwe/kG/Rus2F+bp+H13iqGQ+5/5gkfzJbuUO3k+a1CaGH/S5OFFoFH
mfROvi1WVzy86BSvfO+Ixp5DqrawhZnlmOXGZg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Ai9OZMMAM3N67/csiK0jt4C1EW8kzQ4ZuwLYrh8tqcVPB3k2nqMKHjodBIZJY01reA0v8nfkdQhG
nRJTv8miJQ/Ir0q2jI3ok0n5kToxVZBjpYwMrax6vV16U0CxBuOeTSw9X9buYX4zKs22XrMG5voM
kcaCy4UUQ/AZEhE6W8ggYQBcfpHgPc/C+wGiFwaIcm1yn2HWUMg360Pfk79Y/tSLYCi3gdacUVYL
B8pCvdPM8DVx2d1Q9yjYaZ4pshEZLF83/pAVdo/+ONRTv3XH36vSTXNSbo1pfVwGMyjGDMMqdSry
V6QDC6bIvL0husCHNCy5OUqT1Zp5a6ZcqX8B+X2we/6kUdCHqCCeqVQy5JUpuQ4RHrw9rrvanbdE
F9E1O9ZnM3Lr7E0nAJpHkY6NEeoC5Zz/U5gGEGUDTF48BGLMfDICUNPtiAgoWSEzhhr0q7ncfIpL
iRwXzCS2bfWndq0Y+ACZDpboAdbV4rtTYxTq6lbwkKSCqtB+2NJFJra/

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eOp10fJ5pjAsqI2Kz+zVsQ9fVvxkxqEkBfGA6W2BxCFjw1UIRU0CFsl9fapK95u4Qa63GeWb67eF
Yfd/Ynuz4hEtzLP1dgD479zGaq1CzV6V0oLr3QtHYJLUmgmO5c2DiP+NPt1VM2IZpNwBwVT+KARj
Znb+5RgiR8mK+Bmc4YQfiQTUj+DN7NCgSbkQWEKQN/y4K6oR29x693+BwjWUQnUjpJLGi/xMBMpx
PVUnDib6K+wFyENiTHZjWsXWS/xbkSHx4DvvJoSGCgi1TPma511meqPPX3LEFWigKNoeUHosmR7I
V6o2mtx2bIlydD/OZDal+9lOVxxX15LoXfZd3Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Wx/Ad3akLP8TpUOhQwUOUD0kUg/zQIhdbtjLr0HPDVywgIxNvUE0i+ZEJfRzt7fsLhZzxMeErGFA
bBAAQfvb+NK2u7A+J0mewuUzU0c5UZKOVZNUpoWQVi5oTRDQap6aM8lnq+Qinc9OuoryT1GeXT2+
n1jSVWaI9j+4xWiFjXzlTobLG5LHGCerNr/tjgYxFZVG6zHqqTdIfgeR3tVl+ciPLYZsS7Ful/ma
PeIYbEi7lC4nwD9EdpyPDaZjib/pS4eokIFlafUoDWx5ioa3wxaMId7+UyGYo5D0mbCvGEM8K2OZ
PcANeFjm2Fws7Enminvqoc0hkv+KQWCDh23OTQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M34r7ehLE4C9VXRnjF+wST1hBb3kskP/AzNXDIrhO8tW0YA5L8q6BbJx2qQB/DhV8dYubZzet1Sw
NVtLW8RguSV5lA8OAw6cnWLDCmEmp7XFX9lGVJenZtOuAkVbv9Y8+AAPdJl9GFVMIhM5f0+8i6eq
TAQ8a9+YUAYMrb+69S3ab/A2CCdjCpdjIGGO/qwNqxLwGLzZHOcgB3A2AVSO3jMVmRAqubE9+B+z
ESWLRvOz/J+6FDIRoFu+3NJZMXkj8mVHeqNsPWhz54RZkkAoq+WbnmWXb07UYRzJuUJLUPoAMWon
D2f2jUwddXL2kcCFuXSKnkQx2yTQ/qPLdTNRlQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27840)
`pragma protect data_block
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
BtE+fKIs/9Jpx7d79RqaOH8ofY8m9HQ+
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

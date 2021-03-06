
module gcd ( A_in, B_in, clk, rst_n, out, done );
  input [7:0] A_in;
  input [7:0] B_in;
  output [7:0] out;
  input clk, rst_n;
  output done;
  wire   N10, N26, N27, N28, N29, N30, N31, N32, N33, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n71, n72, n73,
         n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87,
         n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103, n104, n105, n106, n107, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201;
  wire   [7:0] A;
  wire   [7:0] B;
  wire   [1:0] state;

  gcd_DW01_sub_0 sub_77 ( .A(A), .B(B), .CI(1'b0), .DIFF({N33, N32, N31, N30, 
        N29, N28, N27, N26}) );
  DFFRHQX1 state_reg_1_ ( .D(n191), .CK(clk), .RN(n140), .Q(state[1]) );
  DFFRHQX1 out_reg_7_ ( .D(n183), .CK(clk), .RN(n140), .Q(out[7]) );
  DFFRHQX1 out_reg_6_ ( .D(n184), .CK(clk), .RN(n140), .Q(out[6]) );
  DFFRHQX1 out_reg_1_ ( .D(n189), .CK(clk), .RN(n140), .Q(out[1]) );
  DFFRHQX1 out_reg_2_ ( .D(n188), .CK(clk), .RN(n140), .Q(out[2]) );
  DFFRHQX1 out_reg_3_ ( .D(n187), .CK(clk), .RN(n140), .Q(out[3]) );
  DFFRHQX1 out_reg_4_ ( .D(n186), .CK(clk), .RN(n140), .Q(out[4]) );
  DFFRHQX1 out_reg_5_ ( .D(n185), .CK(clk), .RN(n140), .Q(out[5]) );
  DFFRHQX1 out_reg_0_ ( .D(n190), .CK(clk), .RN(n140), .Q(out[0]) );
  DFFRHQX1 done_reg ( .D(n191), .CK(clk), .RN(n140), .Q(done) );
  DFFRXL state_reg_0_ ( .D(n193), .CK(clk), .RN(rst_n), .Q(state[0]), .QN(n198) );
  DFFXL B_reg_7_ ( .D(n133), .CK(clk), .Q(B[7]), .QN(n164) );
  DFFXL B_reg_6_ ( .D(n125), .CK(clk), .Q(B[6]), .QN(n200) );
  DFFXL B_reg_5_ ( .D(n124), .CK(clk), .Q(B[5]), .QN(n154) );
  DFFXL B_reg_4_ ( .D(n123), .CK(clk), .Q(B[4]), .QN(n156) );
  DFFXL B_reg_3_ ( .D(n122), .CK(clk), .Q(B[3]), .QN(n158) );
  DFFXL B_reg_2_ ( .D(n121), .CK(clk), .Q(B[2]), .QN(n160) );
  DFFXL B_reg_1_ ( .D(n120), .CK(clk), .Q(B[1]), .QN(n201) );
  DFFXL B_reg_0_ ( .D(n135), .CK(clk), .Q(B[0]), .QN(n194) );
  DFFXL A_reg_7_ ( .D(n134), .CK(clk), .Q(A[7]), .QN(n196) );
  DFFXL A_reg_6_ ( .D(n132), .CK(clk), .Q(A[6]), .QN(n163) );
  DFFXL A_reg_5_ ( .D(n131), .CK(clk), .Q(A[5]), .QN(n155) );
  DFFXL A_reg_4_ ( .D(n130), .CK(clk), .Q(A[4]), .QN(n157) );
  DFFXL A_reg_3_ ( .D(n129), .CK(clk), .Q(A[3]), .QN(n159) );
  DFFXL A_reg_2_ ( .D(n128), .CK(clk), .Q(A[2]), .QN(n161) );
  DFFXL A_reg_1_ ( .D(n127), .CK(clk), .Q(A[1]), .QN(n162) );
  DFFXL A_reg_0_ ( .D(n126), .CK(clk), .Q(A[0]), .QN(n195) );
  NAND2X1 U136 ( .A(n198), .B(n199), .Y(n136) );
  INVX1 U137 ( .A(n138), .Y(n181) );
  INVX1 U138 ( .A(n137), .Y(n182) );
  BUFX3 U139 ( .A(n67), .Y(n138) );
  NOR2X1 U140 ( .A(n116), .B(n144), .Y(n67) );
  AOI221X1 U141 ( .A0(n198), .A1(n182), .B0(n192), .B1(n55), .C0(n56), .Y(n116) );
  INVX1 U142 ( .A(n65), .Y(n192) );
  INVX1 U143 ( .A(n55), .Y(n197) );
  INVX1 U144 ( .A(n117), .Y(n191) );
  AOI21X1 U145 ( .A0(n192), .A1(n55), .B0(n56), .Y(n117) );
  INVX1 U146 ( .A(n64), .Y(n193) );
  AOI22X1 U147 ( .A0(n55), .A1(n65), .B0(n198), .B1(n199), .Y(n64) );
  INVX1 U148 ( .A(n144), .Y(n139) );
  INVX1 U149 ( .A(n144), .Y(n140) );
  BUFX3 U150 ( .A(N10), .Y(n137) );
  OAI21XL U151 ( .A0(A[7]), .A1(n164), .B0(n153), .Y(N10) );
  OAI22X1 U152 ( .A0(n138), .A1(n101), .B0(n155), .B1(n181), .Y(n131) );
  AOI22X1 U153 ( .A0(n102), .A1(n139), .B0(A_in[5]), .B1(n143), .Y(n101) );
  OAI222XL U154 ( .A0(n103), .A1(n197), .B0(n199), .B1(n167), .C0(n154), .C1(
        n136), .Y(n102) );
  INVX1 U155 ( .A(A_in[5]), .Y(n167) );
  OAI22X1 U156 ( .A0(n138), .A1(n98), .B0(n157), .B1(n181), .Y(n130) );
  AOI22X1 U157 ( .A0(n99), .A1(n139), .B0(A_in[4]), .B1(n143), .Y(n98) );
  OAI222XL U158 ( .A0(n100), .A1(n197), .B0(n199), .B1(n168), .C0(n156), .C1(
        n136), .Y(n99) );
  INVX1 U159 ( .A(A_in[4]), .Y(n168) );
  OAI22X1 U160 ( .A0(n138), .A1(n95), .B0(n159), .B1(n181), .Y(n129) );
  AOI22X1 U161 ( .A0(n96), .A1(n139), .B0(A_in[3]), .B1(n142), .Y(n95) );
  OAI222XL U162 ( .A0(n97), .A1(n197), .B0(n199), .B1(n169), .C0(n158), .C1(
        n136), .Y(n96) );
  INVX1 U163 ( .A(A_in[3]), .Y(n169) );
  OAI22X1 U164 ( .A0(n138), .A1(n92), .B0(n161), .B1(n181), .Y(n128) );
  AOI22X1 U165 ( .A0(n93), .A1(n139), .B0(A_in[2]), .B1(n142), .Y(n92) );
  OAI222XL U166 ( .A0(n94), .A1(n197), .B0(n199), .B1(n170), .C0(n160), .C1(
        n136), .Y(n93) );
  INVX1 U167 ( .A(A_in[2]), .Y(n170) );
  OAI22X1 U168 ( .A0(n138), .A1(n89), .B0(n162), .B1(n181), .Y(n127) );
  AOI22X1 U169 ( .A0(n90), .A1(n139), .B0(A_in[1]), .B1(n143), .Y(n89) );
  OAI222XL U170 ( .A0(n91), .A1(n197), .B0(n199), .B1(n171), .C0(n201), .C1(
        n136), .Y(n90) );
  INVX1 U171 ( .A(A_in[1]), .Y(n171) );
  OAI22X1 U172 ( .A0(n138), .A1(n104), .B0(n163), .B1(n181), .Y(n132) );
  AOI22X1 U173 ( .A0(n105), .A1(n140), .B0(A_in[6]), .B1(n142), .Y(n104) );
  OAI222XL U174 ( .A0(n106), .A1(n197), .B0(n199), .B1(n166), .C0(n200), .C1(
        n136), .Y(n105) );
  INVX1 U175 ( .A(A_in[6]), .Y(n166) );
  OAI22X1 U176 ( .A0(n138), .A1(n110), .B0(n196), .B1(n181), .Y(n134) );
  AOI22X1 U177 ( .A0(n111), .A1(n140), .B0(A_in[7]), .B1(n144), .Y(n110) );
  OAI222XL U178 ( .A0(n112), .A1(n197), .B0(n199), .B1(n165), .C0(n136), .C1(
        n164), .Y(n111) );
  INVX1 U179 ( .A(A_in[7]), .Y(n165) );
  OAI22X1 U180 ( .A0(n138), .A1(n86), .B0(n195), .B1(n181), .Y(n126) );
  AOI22X1 U181 ( .A0(n87), .A1(n139), .B0(A_in[0]), .B1(n141), .Y(n86) );
  OAI222XL U182 ( .A0(n88), .A1(n197), .B0(n199), .B1(n172), .C0(n194), .C1(
        n136), .Y(n87) );
  INVX1 U183 ( .A(A_in[0]), .Y(n172) );
  OAI22X1 U184 ( .A0(n66), .A1(n138), .B0(n181), .B1(n201), .Y(n120) );
  AOI22X1 U185 ( .A0(n68), .A1(n139), .B0(B_in[1]), .B1(n141), .Y(n66) );
  OAI222XL U186 ( .A0(n69), .A1(n197), .B0(n199), .B1(n179), .C0(n162), .C1(
        n136), .Y(n68) );
  INVX1 U187 ( .A(B_in[1]), .Y(n179) );
  OAI22X1 U188 ( .A0(n138), .A1(n113), .B0(n181), .B1(n194), .Y(n135) );
  AOI22X1 U189 ( .A0(n114), .A1(n140), .B0(B_in[0]), .B1(n144), .Y(n113) );
  OAI222XL U190 ( .A0(n115), .A1(n197), .B0(n199), .B1(n180), .C0(n195), .C1(
        n136), .Y(n114) );
  INVX1 U191 ( .A(B_in[0]), .Y(n180) );
  OAI22X1 U192 ( .A0(n138), .A1(n80), .B0(n181), .B1(n154), .Y(n124) );
  AOI22X1 U193 ( .A0(n81), .A1(n139), .B0(B_in[5]), .B1(n143), .Y(n80) );
  OAI222XL U194 ( .A0(n82), .A1(n197), .B0(n199), .B1(n175), .C0(n155), .C1(
        n136), .Y(n81) );
  INVX1 U195 ( .A(B_in[5]), .Y(n175) );
  OAI22X1 U196 ( .A0(n138), .A1(n77), .B0(n181), .B1(n156), .Y(n123) );
  AOI22X1 U197 ( .A0(n78), .A1(n139), .B0(B_in[4]), .B1(n141), .Y(n77) );
  OAI222XL U198 ( .A0(n79), .A1(n197), .B0(n199), .B1(n176), .C0(n157), .C1(
        n136), .Y(n78) );
  INVX1 U199 ( .A(B_in[4]), .Y(n176) );
  OAI22X1 U200 ( .A0(n138), .A1(n74), .B0(n181), .B1(n158), .Y(n122) );
  AOI22X1 U201 ( .A0(n75), .A1(n139), .B0(B_in[3]), .B1(n141), .Y(n74) );
  OAI222XL U202 ( .A0(n76), .A1(n197), .B0(n199), .B1(n177), .C0(n159), .C1(
        n136), .Y(n75) );
  INVX1 U203 ( .A(B_in[3]), .Y(n177) );
  OAI22X1 U204 ( .A0(n138), .A1(n71), .B0(n181), .B1(n160), .Y(n121) );
  AOI22X1 U205 ( .A0(n72), .A1(n139), .B0(B_in[2]), .B1(n142), .Y(n71) );
  OAI222XL U206 ( .A0(n73), .A1(n197), .B0(n199), .B1(n178), .C0(n161), .C1(
        n136), .Y(n72) );
  INVX1 U207 ( .A(B_in[2]), .Y(n178) );
  OAI22X1 U208 ( .A0(n138), .A1(n107), .B0(n181), .B1(n164), .Y(n133) );
  AOI22X1 U209 ( .A0(n108), .A1(n140), .B0(B_in[7]), .B1(n143), .Y(n107) );
  OAI222XL U210 ( .A0(n109), .A1(n197), .B0(n199), .B1(n173), .C0(n196), .C1(
        n136), .Y(n108) );
  INVX1 U211 ( .A(B_in[7]), .Y(n173) );
  OAI22X1 U212 ( .A0(n138), .A1(n83), .B0(n181), .B1(n200), .Y(n125) );
  AOI22X1 U213 ( .A0(n84), .A1(n139), .B0(B_in[6]), .B1(n141), .Y(n83) );
  OAI222XL U214 ( .A0(n85), .A1(n197), .B0(n199), .B1(n174), .C0(n163), .C1(
        n136), .Y(n84) );
  INVX1 U215 ( .A(B_in[6]), .Y(n174) );
  AOI22X1 U216 ( .A0(n137), .A1(A[0]), .B0(B[0]), .B1(n182), .Y(n115) );
  AOI22X1 U217 ( .A0(n137), .A1(A[1]), .B0(B[1]), .B1(n182), .Y(n69) );
  AOI22X1 U218 ( .A0(n137), .A1(A[4]), .B0(B[4]), .B1(n182), .Y(n79) );
  AOI22X1 U219 ( .A0(n137), .A1(A[2]), .B0(B[2]), .B1(n182), .Y(n73) );
  AOI22X1 U220 ( .A0(n137), .A1(A[5]), .B0(B[5]), .B1(n182), .Y(n82) );
  AOI22X1 U221 ( .A0(n137), .A1(A[3]), .B0(B[3]), .B1(n182), .Y(n76) );
  AOI22X1 U222 ( .A0(n137), .A1(B[1]), .B0(N27), .B1(n182), .Y(n91) );
  AOI22X1 U223 ( .A0(B[5]), .A1(n137), .B0(N31), .B1(n182), .Y(n103) );
  AOI22X1 U224 ( .A0(B[4]), .A1(n137), .B0(N30), .B1(n182), .Y(n100) );
  AOI22X1 U225 ( .A0(B[3]), .A1(n137), .B0(N29), .B1(n182), .Y(n97) );
  AOI22X1 U226 ( .A0(B[2]), .A1(n137), .B0(N28), .B1(n182), .Y(n94) );
  AOI22X1 U227 ( .A0(n137), .A1(A[6]), .B0(B[6]), .B1(n182), .Y(n85) );
  AOI22X1 U228 ( .A0(B[6]), .A1(n137), .B0(N32), .B1(n182), .Y(n106) );
  AOI22X1 U229 ( .A0(n137), .A1(A[7]), .B0(B[7]), .B1(n182), .Y(n109) );
  AOI22X1 U230 ( .A0(B[7]), .A1(n137), .B0(N33), .B1(n182), .Y(n112) );
  AOI22X1 U231 ( .A0(B[0]), .A1(n137), .B0(N26), .B1(n182), .Y(n88) );
  NOR2X1 U232 ( .A(n198), .B(state[1]), .Y(n55) );
  NAND4X1 U233 ( .A(n194), .B(n201), .C(n118), .D(n119), .Y(n65) );
  NOR2X1 U234 ( .A(B[3]), .B(B[2]), .Y(n118) );
  AND4X2 U235 ( .A(n164), .B(n200), .C(n154), .D(n156), .Y(n119) );
  INVX1 U236 ( .A(state[1]), .Y(n199) );
  NOR2X1 U237 ( .A(n199), .B(state[0]), .Y(n56) );
  INVX1 U238 ( .A(n54), .Y(n183) );
  AOI32X1 U239 ( .A0(n55), .A1(n192), .A2(A[7]), .B0(n56), .B1(A[7]), .Y(n54)
         );
  INVX1 U240 ( .A(n63), .Y(n190) );
  AOI32X1 U241 ( .A0(n55), .A1(n192), .A2(A[0]), .B0(A[0]), .B1(n56), .Y(n63)
         );
  INVX1 U242 ( .A(n58), .Y(n185) );
  AOI32X1 U243 ( .A0(n55), .A1(n192), .A2(A[5]), .B0(A[5]), .B1(n56), .Y(n58)
         );
  INVX1 U244 ( .A(n59), .Y(n186) );
  AOI32X1 U245 ( .A0(n55), .A1(n192), .A2(A[4]), .B0(A[4]), .B1(n56), .Y(n59)
         );
  INVX1 U246 ( .A(n60), .Y(n187) );
  AOI32X1 U247 ( .A0(n55), .A1(n192), .A2(A[3]), .B0(A[3]), .B1(n56), .Y(n60)
         );
  INVX1 U248 ( .A(n61), .Y(n188) );
  AOI32X1 U249 ( .A0(n55), .A1(n192), .A2(A[2]), .B0(A[2]), .B1(n56), .Y(n61)
         );
  INVX1 U250 ( .A(n62), .Y(n189) );
  AOI32X1 U251 ( .A0(n55), .A1(n192), .A2(A[1]), .B0(A[1]), .B1(n56), .Y(n62)
         );
  INVX1 U252 ( .A(n57), .Y(n184) );
  AOI32X1 U253 ( .A0(n55), .A1(n192), .A2(A[6]), .B0(A[6]), .B1(n56), .Y(n57)
         );
  INVX1 U254 ( .A(rst_n), .Y(n144) );
  INVX1 U255 ( .A(rst_n), .Y(n143) );
  INVX1 U256 ( .A(rst_n), .Y(n141) );
  INVX1 U257 ( .A(rst_n), .Y(n142) );
  NOR2BX1 U258 ( .AN(B[0]), .B(A[0]), .Y(n146) );
  NOR2BX1 U259 ( .AN(n146), .B(A[1]), .Y(n145) );
  OAI222XL U260 ( .A0(n146), .A1(n162), .B0(B[1]), .B1(n145), .C0(B[2]), .C1(
        n161), .Y(n147) );
  OAI221XL U261 ( .A0(A[2]), .A1(n160), .B0(A[3]), .B1(n158), .C0(n147), .Y(
        n148) );
  OAI221XL U262 ( .A0(B[3]), .A1(n159), .B0(B[4]), .B1(n157), .C0(n148), .Y(
        n149) );
  OAI221XL U263 ( .A0(A[4]), .A1(n156), .B0(A[5]), .B1(n154), .C0(n149), .Y(
        n150) );
  OAI221XL U264 ( .A0(B[5]), .A1(n155), .B0(B[6]), .B1(n163), .C0(n150), .Y(
        n151) );
  OAI2BB1X1 U265 ( .A0N(n163), .A1N(B[6]), .B0(n151), .Y(n152) );
  OAI2BB1X1 U266 ( .A0N(n164), .A1N(A[7]), .B0(n152), .Y(n153) );
endmodule


module gcd_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [7:1] carry;

  ADDFX2 U2_1 ( .A(A[1]), .B(n5), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  ADDFX2 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  ADDFX2 U2_5 ( .A(A[5]), .B(n9), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  ADDFX2 U2_4 ( .A(A[4]), .B(n8), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  ADDFX2 U2_3 ( .A(A[3]), .B(n7), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  ADDFX2 U2_2 ( .A(A[2]), .B(n6), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  XOR3X2 U2_7 ( .A(A[7]), .B(n3), .C(carry[7]), .Y(DIFF[7]) );
  INVX1 U1 ( .A(B[7]), .Y(n3) );
  XNOR2X1 U2 ( .A(n2), .B(A[0]), .Y(DIFF[0]) );
  INVX1 U3 ( .A(B[0]), .Y(n2) );
  INVX1 U4 ( .A(B[2]), .Y(n6) );
  INVX1 U5 ( .A(B[3]), .Y(n7) );
  INVX1 U6 ( .A(B[4]), .Y(n8) );
  INVX1 U7 ( .A(B[5]), .Y(n9) );
  INVX1 U8 ( .A(B[6]), .Y(n4) );
  INVX1 U9 ( .A(B[1]), .Y(n5) );
  NAND2X1 U10 ( .A(B[0]), .B(n1), .Y(carry[1]) );
  INVX1 U11 ( .A(A[0]), .Y(n1) );
endmodule


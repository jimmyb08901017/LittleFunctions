/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12
// Date      : Sat Mar 25 17:54:48 2023
/////////////////////////////////////////////////////////////


module SME_DW01_inc_1_DW01_inc_3 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module SME_DW01_inc_2_DW01_inc_4 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module SME_DW01_inc_3_DW01_inc_5 ( A, SUM );
  input [6:0] A;
  output [6:0] SUM;

  wire   [6:2] carry;

  ADDHXL U1_1_5 ( .A(A[5]), .B(carry[5]), .CO(carry[6]), .S(SUM[5]) );
  ADDHXL U1_1_4 ( .A(A[4]), .B(carry[4]), .CO(carry[5]), .S(SUM[4]) );
  ADDHXL U1_1_3 ( .A(A[3]), .B(carry[3]), .CO(carry[4]), .S(SUM[3]) );
  ADDHXL U1_1_2 ( .A(A[2]), .B(carry[2]), .CO(carry[3]), .S(SUM[2]) );
  ADDHXL U1_1_1 ( .A(A[1]), .B(A[0]), .CO(carry[2]), .S(SUM[1]) );
  XOR2X1 U1 ( .A(carry[6]), .B(A[6]), .Y(SUM[6]) );
  CLKINVX1 U2 ( .A(A[0]), .Y(SUM[0]) );
endmodule


module SME_DW01_add_6 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [6:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  XOR3X1 U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module SME_DW01_add_5 ( A, B, CI, SUM, CO );
  input [6:0] A;
  input [6:0] B;
  output [6:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [6:1] carry;

  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  XOR3XL U1_6 ( .A(A[6]), .B(B[6]), .C(carry[6]), .Y(SUM[6]) );
  ADDFX2 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFX2 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFX2 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFX2 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module SME_DW01_add_1 ( A, B, CI, SUM, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [8:1] carry;

  ADDFXL U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  ADDFXL U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  ADDFXL U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  ADDFXL U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  ADDFXL U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  ADDFXL U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  AND2X2 U1 ( .A(B[0]), .B(A[0]), .Y(n1) );
  XOR2X1 U2 ( .A(B[7]), .B(carry[7]), .Y(SUM[7]) );
  AND2X2 U3 ( .A(B[7]), .B(carry[7]), .Y(SUM[8]) );
  XOR2X1 U4 ( .A(B[0]), .B(A[0]), .Y(SUM[0]) );
endmodule


module SME ( clk, reset, chardata, isstring, ispattern, valid, match, 
        match_index );
  input [7:0] chardata;
  output [4:0] match_index;
  input clk, reset, isstring, ispattern;
  output valid, match;
  wire   n1513, n1514, n1515, n1516, n1517, n1518, n1519, N161, N162, N163,
         N164, N165, N166, N167, continueFlag_w, skipFlag_w, N602, N603, N604,
         N605, N606, N607, N608, continueFlag_r, first_flag_r, skipFlag_r,
         N761, N762, N763, N764, N765, N766, N767, N768, N769, N770, N774,
         N775, N776, N777, N778, N790, N791, N792, N793, N818, N819, N820,
         N821, N822, N823, N824, N847, N848, N849, N850, N851, N852, N853,
         N854, N855, N857, N858, N859, N860, N861, N863, N864, N898, N899,
         N900, N901, N902, N903, N904, N965, N966, N967, N968, N969, N970,
         N971, N972, N973, N974, N983, N984, N985, N986, N987, N1135, N1136,
         N1137, N1138, N1139, N1140, N1141, N1142, N1143, N1144, N1145, N1146,
         N1147, N1148, N1149, N1150, N1151, N1152, N1153, N1154, N1155, N1156,
         N1157, N1158, N1159, N1160, N1161, N1162, N1483, N1484, N1485, N1486,
         N1487, N1488, N1489, N1490, N1491, N1492, N1493, N1494, N1495, N1496,
         N1497, N1499, N1500, N1501, N1502, N1503, N1504, N1505, N1506, N1511,
         n135, n137, n139, n140, n141, n142, n143, n144, n145, n146, n147,
         n148, n149, n150, n151, n152, n153, n154, n155, n156, n157, n158,
         n159, n160, n161, n162, n163, n164, n165, n166, n167, n168, n169,
         n170, n171, n172, n173, n174, n175, n176, n177, n178, n179, n180,
         n181, n182, n183, n184, n185, n186, n187, n188, n189, n190, n191,
         n192, n193, n194, n195, n196, n197, n198, n199, n200, n201, n202,
         n203, n204, n205, n206, n207, n208, n209, n210, n211, n212, n213,
         n214, n215, n216, n217, n218, n219, n220, n221, n222, n223, n224,
         n225, n226, n227, n228, n229, n230, n231, n232, n233, n234, n235,
         n236, n237, n238, n239, n240, n241, n242, n243, n244, n245, n246,
         n247, n248, n249, n250, n251, n252, n253, n254, n255, n256, n257,
         n258, n259, n260, n261, n262, n263, n264, n265, n266, n267, n268,
         n269, n270, n271, n272, n273, n274, n275, n276, n277, n278, n279,
         n280, n281, n282, n283, n284, n285, n286, n287, n288, n289, n290,
         n291, n292, n293, n294, n295, n296, n297, n298, n299, n300, n301,
         n302, n303, n304, n305, n306, n307, n308, n309, n310, n311, n312,
         n313, n314, n315, n316, n317, n318, n319, n320, n321, n322, n323,
         n324, n325, n326, n327, n328, n329, n330, n331, n332, n333, n334,
         n335, n336, n337, n338, n339, n340, n341, n342, n343, n344, n345,
         n346, n347, n348, n349, n350, n351, n352, n353, n354, n355, n356,
         n357, n358, n359, n360, n361, n362, n363, n364, n365, n366, n367,
         n368, n369, n370, n371, n372, n373, n374, n375, n376, n377, n378,
         n379, n380, n381, n382, n383, n384, n385, n386, n387, n388, n389,
         n390, n391, n392, n393, n394, n395, n396, n397, n398, n399, n400,
         n401, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n468, n469, n470, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548, n549, n550, n551, n552, n553, n554,
         n555, n556, n557, n558, n559, n560, n561, n562, n563, n564, n565,
         n566, n567, n568, n569, n570, n571, n572, n573, n574, n575, n576,
         n577, n578, n579, n580, n581, n582, n583, n584, n585, n586, n587,
         n588, n589, n590, n591, n592, n593, n594, n595, n596, n597, n598,
         n599, n600, n601, n602, n603, n604, n605, n606, n607, n608, n609,
         n610, n611, n612, n613, n614, n615, n616, n617, n618, n619, n620,
         n621, n622, n623, n624, n625, n626, n627, n628, n629, n630, n631,
         n632, n633, n634, n635, n636, n637, n638, n639, n640, n641, n642,
         n643, n644, n645, n646, n647, n648, n649, n650, n651, n652, n653,
         n654, n655, n656, n657, n658, n659, n660, n661, n662, n663, n664,
         n665, n666, n667, n668, n669, n670, n671, n672, n673, n674, n675,
         n676, n677, n678, n679, n680, n681, n682, n683, n684, n685, n686,
         n687, n688, n689, n690, n691, n692, n693, n694, n695, n696, n697,
         n698, n699, n700, n701, n702, n703, n704, n705, n706, n707, n708,
         n709, n710, n711, n712, n713, n714, n715, n716, n717, n718, n719,
         n720, n721, n722, n723, n724, n725, n726, n727, n728, n729, n730,
         n731, n732, n733, n734, n735, n736, n737, n738, n739, n740, n741,
         n742, n743, n744, n745, n746, n747, n748, n749, n750, n751, n752,
         n753, n754, n755, n756, n757, n758, n759, n760, n761, n762, n763,
         n764, n765, n766, n767, n768, n769, n770, n771, n772, n773, n774,
         n775, n776, n777, n778, n779, n780, n781, n782, n783, n784, n785,
         n786, n787, n788, n789, n790, n791, n792, n793, n794, n795, n796,
         n797, n798, n799, n800, n801, n802, n803, n804, n805, n806, n807,
         n808, n809, n810, n811, n812, n813, n814, n815, n816, n817, n818,
         n819, n820, n821, n822, n823, n824, n825, n826, n827, n828, n829,
         n830, n831, n832, n833, n834, n835, n836, n837, n838, n839, n840,
         n841, n842, n843, n844, n845, n846, n847, n848, n849, n850, n851,
         n852, n853, n854, n855, n856, n857, n858, n859, n860, n861, n862,
         n863, n864, n865, n866, n867, n868, n869, n870, n871, n872, n873,
         n874, n875, n876, n877, n878, n879, n880, n881, n882, n883, n884,
         n885, n886, n887, n888, n889, n890, n891, n892, n893, n894, n895,
         n896, n897, n898, n899, n900, n901, n902, n903, n904, n905, n906,
         n907, n908, n909, n910, n911, n912, n913, n914, n915, n916, n917,
         n918, n919, n920, n921, n922, n923, n924, n925, n926, n927, n928,
         n929, n930, n931, n932, n933, n934, n935, n936, n937, n938, n939,
         n940, n941, n942, n943, n944, n945, n946, n947, n948, n949, n950,
         n951, n952, n953, n954, n955, n956, n957, n958, n959, n960, n961,
         n962, n963, n964, n965, n966, n967, n968, n969, n970, n971, n972,
         n973, n974, n975, n976, n977, n978, n979, n980, n981, n982, n983,
         n984, n985, n986, n987, n988, n989, n990, n991, n992, n993, n994,
         n995, n996, n997, n998, n999, n1000, n1001, n1002, n1003, n1004,
         n1005, n1006, n1007, n1008, n1009, n1010, n1011, n1012, n1013, n1014,
         n1015, n1016, n1017, n1018, n1019, n1020, n1021, n1022, n1023, n1024,
         n1025, n1026, n1027, n1028, n1029, n1030, n1031, n1032, n1033, n1034,
         n1035, n1036, n1037, n1038, n1039, n1040, n1041, n1042, n1043, n1044,
         n1045, n1046, n1047, n1048, n1049, n1050, n1051, n1052, n1053, n1054,
         n1055, n1056, n1057, n1058, n1059, n1060, n1061, n1062, n1063, n1064,
         n1065, n1066, n1067, n1068, n1069, n1070, n1071, n1072, n1073, n1074,
         n1075, n1076, n1077, n1078, n1079, n1080, n1081, n1082, n1083, n1084,
         n1085, n1086, n1087, n1088, n1089, n1090, n1091, n1092, n1093, n1094,
         n1095, n1096, n1097, n1098, n1099, n1100, n1101, n1102, n1103, n1104,
         n1105, n1106, n1107, n1108, n1109, n1110, n1111, n1112, n1113, n1114,
         n1115, n1116, n1117, n1118, n1119, n1120, n1121, n1122, n1123, n1124,
         n1125, n1126, n1127, n1128, n1129, n1130, n1131, n1132, n1133, n1134,
         n1135, n1136, n1137, n1138, n1139, n1140, n1141, n1142, n1143, n1144,
         n1145, n1146, n1147, n1148, n1149, n1150, n1151, n1152, n1153, n1154,
         n1155, n1156, n1157, n1158, n1159, n1160, n1161, n1162, n1163, n1164,
         n1165, n1166, n1167, n1168, n1169, n1170, n1171, n1172, n1173, n1174,
         n1175, n1176, n1177, n1178, n1179, n1180, n1181, n1182, n1183, n1184,
         n1185, n1186, n1187, n1188, n1189, n1190, n1191, n1192, n1193, n1194,
         n1195, n1196, n1197, n1198, n1199, n1200, n1201, n1202, n1203, n1204,
         n1205, n1206, n1207, n1208, n1209, n1210, n1211, n1212, n1213, n1214,
         n1215, n1216, n1217, n1218, n1219, n1220, n1221, n1222, n1223, n1224,
         n1225, n1226, n1227, n1228, n1229, n1230, n1231, n1232, n1233, n1234,
         n1235, n1236, n1237, n1238, n1239, n1240, n1241, n1242, n1243, n1244,
         n1245, n1246, n1247, n1248, n1249, n1250, n1251, n1252, n1253, n1254,
         n1255, n1256, n1257, n1258, n1259, n1260, n1261, n1262, n1263, n1264,
         n1265, n1266, n1267, n1268, n1269, n1270, n1271, n1272, n1273, n1274,
         n1275, n1276, n1277, n1278, n1279, n1280, n1281, n1282, n1283, n1284,
         n1285, n1286, n1287, n1288, n1289, n1290, n1291, n1292, n1293, n1294,
         n1295, n1296, n1297, n1298, n1299, n1300, n1301, n1302, n1303, n1304,
         n1305, n1306, n1307, n1308, n1309, n1310, n1311, n1312, n1313, n1314,
         n1315, n1316, n1317, n1318, N591, N590, N589, N588, N587, N586, N585,
         N584, N583, N582, N581, \add_0_root_sub_0_root_sub_228/B[0] ,
         \add_0_root_sub_0_root_sub_228/B[1] ,
         \add_0_root_sub_0_root_sub_228/B[2] ,
         \add_0_root_sub_0_root_sub_228/B[3] ,
         \add_0_root_sub_0_root_sub_228/B[8] ,
         \add_1_root_add_0_root_add_262_2/SUM[0] ,
         \add_1_root_add_0_root_add_262_2/SUM[1] ,
         \add_1_root_add_0_root_add_262_2/SUM[2] ,
         \add_1_root_add_0_root_add_262_2/SUM[3] ,
         \add_1_root_add_0_root_add_262_2/SUM[4] ,
         \add_1_root_add_0_root_add_262_2/SUM[5] ,
         \add_1_root_add_0_root_add_262_2/SUM[6] ,
         \add_1_root_add_0_root_add_262_2/SUM[7] ,
         \add_0_root_add_0_root_sub_291/B[0] ,
         \add_0_root_add_0_root_sub_291/B[1] ,
         \add_0_root_add_0_root_sub_291/B[2] ,
         \add_0_root_add_0_root_sub_291/B[3] ,
         \add_0_root_add_0_root_sub_291/B[4] ,
         \add_0_root_add_0_root_sub_291/B[5] ,
         \add_0_root_add_0_root_sub_291/B[6] ,
         \add_0_root_add_0_root_sub_291/B[7] ,
         \add_0_root_add_0_root_sub_291/A[1] ,
         \add_0_root_add_0_root_sub_291/A[2] ,
         \add_0_root_add_0_root_sub_291/A[3] ,
         \add_0_root_add_0_root_sub_291/A[9] , n1319, n1320, n1321, n1329,
         n1330, n1331, n1332, n1333, n1334, n1335, n1336, n1337, n1338, n1339,
         n1340, n1341, n1342, n1343, n1344, n1345, n1346, n1347, n1348, n1349,
         n1350, n1351, n1352, n1353, n1354, n1355, n1356, n1357, n1358, n1359,
         n1360, n1361, n1362, n1363, n1364, n1365, n1366, n1367, n1368, n1369,
         n1370, n1371, n1372, n1373, n1374, n1375, n1376, n1377, n1378, n1379,
         n1380, n1381, n1382, n1383, n1384, n1385, n1386, n1387, n1388, n1389,
         n1390, n1391, n1392, n1393, n1394, n1395, n1396, n1397, n1398, n1399,
         n1400, n1401, n1402, n1403, n1404, n1405, n1406, n1407, n1408, n1409,
         n1410, n1411, n1412, n1413, n1414, n1415, n1416, n1417, n1418, n1419,
         n1420, n1421, n1422, n1423, n1424, n1425, n1426, n1427, n1428, n1429,
         n1430, n1431, n1432, n1433, n1434, n1435, n1436, n1437, n1438, n1439,
         n1440, n1441, n1442, n1443, n1444, n1445, n1446, n1447, n1448, n1449,
         n1450, n1451, n1452, n1453, n1454, n1455, n1456, n1457, n1458, n1459,
         n1460, n1461, n1462, n1463, n1464, n1465, n1466, n1467, n1468, n1469,
         n1470, n1471, n1472, n1473, n1474, n1475, n1476, n1477, n1478, n1479,
         n1480, n1481, n1482, n1483, n1484, n1485, n1486, n1487, n1488, n1489,
         n1490, n1491, n1492, n1493, n1494, n1495, n1496, n1497, n1498, n1499,
         n1500, n1501, n1502, n1503, n1504, n1505, n1506, n1507;
  wire   [2:0] state_r;
  wire   [3:0] patCnt_r;
  wire   [6:0] strCnt_r;
  wire   [6:0] matchCnt_w;
  wire   [3:0] matchCnt2_w;
  wire   [6:0] starCnt_w;
  wire   [7:0] strMatch_r;
  wire   [7:0] patMatch_r;
  wire   [6:0] matchCnt_r;
  wire   [3:0] matchCnt2_r;
  wire   [6:0] starCnt_r;
  wire   [3:0] tmp_r;
  wire   [4:2] \add_233/carry ;
  wire   [8:1] \add_0_root_sub_0_root_sub_228/carry ;
  wire   [9:0] \sub_1_root_sub_0_root_sub_228/carry ;
  wire   [8:1] \add_1_root_add_0_root_add_262_2/carry ;
  wire   [9:1] \add_0_root_add_0_root_sub_291/carry ;
  wire   [9:1] \add_1_root_add_0_root_sub_291/carry ;
  wire   [7:0] \sub_2_root_add_1_root_sub_151_2/carry ;

  OAI211X2 U899 ( .A0(isstring), .A1(n619), .B0(n1490), .C0(n973), .Y(n975) );
  SME_DW01_inc_1_DW01_inc_3 add_112 ( .A(strCnt_r), .SUM({N167, N166, N165, 
        N164, N163, N162, N161}) );
  SME_DW01_inc_2_DW01_inc_4 r654 ( .A(starCnt_r), .SUM({N904, N903, N902, N901, 
        N900, N899, N898}) );
  SME_DW01_inc_3_DW01_inc_5 r649 ( .A(matchCnt_r), .SUM({N824, N823, N822, 
        N821, N820, N819, N818}) );
  SME_DW01_add_6 add_1_root_add_1_root_sub_151_2 ( .A(starCnt_w), .B(
        matchCnt_w), .CI(1'b0), .SUM({N587, N586, N585, N584, N583, N582, N581}) );
  SME_DW01_add_5 add_0_root_add_1_root_sub_151_2 ( .A({N587, N586, N585, N584, 
        N583, N582, N581}), .B({n1319, n1319, n1319, N591, N590, N589, N588}), 
        .CI(1'b0), .SUM({N608, N607, N606, N605, N604, N603, N602}) );
  SME_DW01_add_1 add_0_root_add_0_root_add_262_2 ( .A({1'b0, 1'b0, 
        matchCnt_r[6:5], n1321, matchCnt_r[3:0]}), .B({1'b0, 
        \add_1_root_add_0_root_add_262_2/SUM[7] , 
        \add_1_root_add_0_root_add_262_2/SUM[6] , 
        \add_1_root_add_0_root_add_262_2/SUM[5] , 
        \add_1_root_add_0_root_add_262_2/SUM[4] , 
        \add_1_root_add_0_root_add_262_2/SUM[3] , 
        \add_1_root_add_0_root_add_262_2/SUM[2] , 
        \add_1_root_add_0_root_add_262_2/SUM[1] , 
        \add_1_root_add_0_root_add_262_2/SUM[0] }), .CI(1'b0), .SUM({N855, 
        N854, N853, N852, N851, N850, N849, N848, N847}) );
  DFFX1 \pattern_r_reg[6][7]  ( .D(n1003), .CK(clk), .QN(n403) );
  DFFX1 \pattern_r_reg[6][6]  ( .D(n1004), .CK(clk), .QN(n404) );
  DFFX1 \pattern_r_reg[6][5]  ( .D(n1005), .CK(clk), .QN(n405) );
  DFFX1 \pattern_r_reg[4][7]  ( .D(n1019), .CK(clk), .QN(n419) );
  DFFX1 \pattern_r_reg[4][6]  ( .D(n1020), .CK(clk), .QN(n420) );
  DFFX1 \pattern_r_reg[4][5]  ( .D(n1021), .CK(clk), .QN(n421) );
  DFFX1 \pattern_r_reg[6][4]  ( .D(n1006), .CK(clk), .QN(n406) );
  DFFX1 \pattern_r_reg[6][2]  ( .D(n1008), .CK(clk), .QN(n408) );
  DFFX1 \pattern_r_reg[6][0]  ( .D(n1010), .CK(clk), .QN(n410) );
  DFFX1 \pattern_r_reg[7][7]  ( .D(n995), .CK(clk), .QN(n395) );
  DFFX1 \pattern_r_reg[7][6]  ( .D(n996), .CK(clk), .QN(n396) );
  DFFX1 \pattern_r_reg[7][5]  ( .D(n997), .CK(clk), .QN(n397) );
  DFFX1 \pattern_r_reg[2][7]  ( .D(n1035), .CK(clk), .QN(n435) );
  DFFX1 \pattern_r_reg[2][6]  ( .D(n1036), .CK(clk), .QN(n436) );
  DFFX1 \pattern_r_reg[2][5]  ( .D(n1037), .CK(clk), .QN(n437) );
  DFFX1 \pattern_r_reg[4][4]  ( .D(n1022), .CK(clk), .QN(n422) );
  DFFX1 \pattern_r_reg[4][2]  ( .D(n1024), .CK(clk), .QN(n424) );
  DFFX1 \pattern_r_reg[4][0]  ( .D(n1026), .CK(clk), .QN(n426) );
  DFFX1 \pattern_r_reg[0][7]  ( .D(n1051), .CK(clk), .QN(n451) );
  DFFX1 \pattern_r_reg[0][6]  ( .D(n1052), .CK(clk), .QN(n452) );
  DFFX1 \pattern_r_reg[0][5]  ( .D(n1053), .CK(clk), .QN(n453) );
  DFFX1 \pattern_r_reg[5][7]  ( .D(n1011), .CK(clk), .QN(n411) );
  DFFX1 \pattern_r_reg[5][6]  ( .D(n1012), .CK(clk), .QN(n412) );
  DFFX1 \pattern_r_reg[5][5]  ( .D(n1013), .CK(clk), .QN(n413) );
  DFFX1 \pattern_r_reg[6][3]  ( .D(n1007), .CK(clk), .QN(n407) );
  DFFX1 \pattern_r_reg[6][1]  ( .D(n1009), .CK(clk), .QN(n409) );
  DFFX1 \pattern_r_reg[3][7]  ( .D(n1027), .CK(clk), .QN(n427) );
  DFFX1 \pattern_r_reg[3][6]  ( .D(n1028), .CK(clk), .QN(n428) );
  DFFX1 \pattern_r_reg[3][5]  ( .D(n1029), .CK(clk), .QN(n429) );
  DFFX1 \pattern_r_reg[7][3]  ( .D(n999), .CK(clk), .QN(n399) );
  DFFX1 \pattern_r_reg[7][1]  ( .D(n1001), .CK(clk), .QN(n401) );
  DFFX1 \pattern_r_reg[2][4]  ( .D(n1038), .CK(clk), .QN(n438) );
  DFFX1 \pattern_r_reg[2][2]  ( .D(n1040), .CK(clk), .QN(n440) );
  DFFX1 \pattern_r_reg[2][0]  ( .D(n1042), .CK(clk), .QN(n442) );
  DFFX1 \pattern_r_reg[7][4]  ( .D(n998), .CK(clk), .QN(n398) );
  DFFX1 \pattern_r_reg[7][2]  ( .D(n1000), .CK(clk), .QN(n400) );
  DFFX1 \pattern_r_reg[7][0]  ( .D(n1002), .CK(clk), .QN(n402) );
  DFFX1 \pattern_r_reg[1][7]  ( .D(n1043), .CK(clk), .QN(n443) );
  DFFX1 \pattern_r_reg[1][6]  ( .D(n1044), .CK(clk), .QN(n444) );
  DFFX1 \pattern_r_reg[1][5]  ( .D(n1045), .CK(clk), .QN(n445) );
  DFFX1 \pattern_r_reg[0][4]  ( .D(n1054), .CK(clk), .QN(n454) );
  DFFX1 \pattern_r_reg[0][2]  ( .D(n1056), .CK(clk), .QN(n456) );
  DFFX1 \pattern_r_reg[0][0]  ( .D(n1058), .CK(clk), .QN(n458) );
  DFFX1 \pattern_r_reg[5][4]  ( .D(n1014), .CK(clk), .QN(n414) );
  DFFX1 \pattern_r_reg[5][2]  ( .D(n1016), .CK(clk), .QN(n416) );
  DFFX1 \pattern_r_reg[5][0]  ( .D(n1018), .CK(clk), .QN(n418) );
  DFFX1 \pattern_r_reg[4][3]  ( .D(n1023), .CK(clk), .QN(n423) );
  DFFX1 \pattern_r_reg[4][1]  ( .D(n1025), .CK(clk), .QN(n425) );
  DFFX1 \pattern_r_reg[3][4]  ( .D(n1030), .CK(clk), .QN(n430) );
  DFFX1 \pattern_r_reg[3][2]  ( .D(n1032), .CK(clk), .QN(n432) );
  DFFX1 \pattern_r_reg[3][0]  ( .D(n1034), .CK(clk), .QN(n434) );
  DFFX1 \pattern_r_reg[5][3]  ( .D(n1015), .CK(clk), .QN(n415) );
  DFFX1 \pattern_r_reg[5][1]  ( .D(n1017), .CK(clk), .QN(n417) );
  DFFX1 \pattern_r_reg[1][4]  ( .D(n1046), .CK(clk), .QN(n446) );
  DFFX1 \pattern_r_reg[1][2]  ( .D(n1048), .CK(clk), .QN(n448) );
  DFFX1 \pattern_r_reg[1][0]  ( .D(n1050), .CK(clk), .QN(n450) );
  DFFX1 \pattern_r_reg[2][3]  ( .D(n1039), .CK(clk), .QN(n439) );
  DFFX1 \pattern_r_reg[2][1]  ( .D(n1041), .CK(clk), .QN(n441) );
  DFFX1 \pattern_r_reg[3][3]  ( .D(n1031), .CK(clk), .QN(n431) );
  DFFX1 \pattern_r_reg[3][1]  ( .D(n1033), .CK(clk), .QN(n433) );
  DFFX1 \pattern_r_reg[0][3]  ( .D(n1055), .CK(clk), .QN(n455) );
  DFFX1 \pattern_r_reg[0][1]  ( .D(n1057), .CK(clk), .QN(n457) );
  DFFX1 \pattern_r_reg[1][3]  ( .D(n1047), .CK(clk), .QN(n447) );
  DFFX1 \pattern_r_reg[1][1]  ( .D(n1049), .CK(clk), .QN(n449) );
  DFFX1 \string_r_reg[6][7]  ( .D(n1259), .CK(clk), .QN(n339) );
  DFFX1 \string_r_reg[6][6]  ( .D(n1260), .CK(clk), .QN(n340) );
  DFFX1 \string_r_reg[6][5]  ( .D(n1261), .CK(clk), .QN(n341) );
  DFFX1 \string_r_reg[6][4]  ( .D(n1262), .CK(clk), .QN(n342) );
  DFFX1 \string_r_reg[6][3]  ( .D(n1263), .CK(clk), .QN(n343) );
  DFFX1 \string_r_reg[6][2]  ( .D(n1264), .CK(clk), .QN(n344) );
  DFFX1 \string_r_reg[6][1]  ( .D(n1265), .CK(clk), .QN(n345) );
  DFFX1 \string_r_reg[6][0]  ( .D(n1266), .CK(clk), .QN(n346) );
  DFFX1 \string_r_reg[14][7]  ( .D(n1195), .CK(clk), .QN(n275) );
  DFFX1 \string_r_reg[14][6]  ( .D(n1196), .CK(clk), .QN(n276) );
  DFFX1 \string_r_reg[14][5]  ( .D(n1197), .CK(clk), .QN(n277) );
  DFFX1 \string_r_reg[14][4]  ( .D(n1198), .CK(clk), .QN(n278) );
  DFFX1 \string_r_reg[14][3]  ( .D(n1199), .CK(clk), .QN(n279) );
  DFFX1 \string_r_reg[14][2]  ( .D(n1200), .CK(clk), .QN(n280) );
  DFFX1 \string_r_reg[14][1]  ( .D(n1201), .CK(clk), .QN(n281) );
  DFFX1 \string_r_reg[14][0]  ( .D(n1202), .CK(clk), .QN(n282) );
  DFFX1 \string_r_reg[7][7]  ( .D(n1251), .CK(clk), .QN(n331) );
  DFFX1 \string_r_reg[7][6]  ( .D(n1252), .CK(clk), .QN(n332) );
  DFFX1 \string_r_reg[7][5]  ( .D(n1253), .CK(clk), .QN(n333) );
  DFFX1 \string_r_reg[7][4]  ( .D(n1254), .CK(clk), .QN(n334) );
  DFFX1 \string_r_reg[7][3]  ( .D(n1255), .CK(clk), .QN(n335) );
  DFFX1 \string_r_reg[7][2]  ( .D(n1256), .CK(clk), .QN(n336) );
  DFFX1 \string_r_reg[7][1]  ( .D(n1257), .CK(clk), .QN(n337) );
  DFFX1 \string_r_reg[7][0]  ( .D(n1258), .CK(clk), .QN(n338) );
  DFFX1 \string_r_reg[22][7]  ( .D(n1131), .CK(clk), .QN(n211) );
  DFFX1 \string_r_reg[22][6]  ( .D(n1132), .CK(clk), .QN(n212) );
  DFFX1 \string_r_reg[22][5]  ( .D(n1133), .CK(clk), .QN(n213) );
  DFFX1 \string_r_reg[22][4]  ( .D(n1134), .CK(clk), .QN(n214) );
  DFFX1 \string_r_reg[22][3]  ( .D(n1135), .CK(clk), .QN(n215) );
  DFFX1 \string_r_reg[22][2]  ( .D(n1136), .CK(clk), .QN(n216) );
  DFFX1 \string_r_reg[22][1]  ( .D(n1137), .CK(clk), .QN(n217) );
  DFFX1 \string_r_reg[22][0]  ( .D(n1138), .CK(clk), .QN(n218) );
  DFFX1 \string_r_reg[15][7]  ( .D(n1187), .CK(clk), .QN(n267) );
  DFFX1 \string_r_reg[15][6]  ( .D(n1188), .CK(clk), .QN(n268) );
  DFFX1 \string_r_reg[15][5]  ( .D(n1189), .CK(clk), .QN(n269) );
  DFFX1 \string_r_reg[15][4]  ( .D(n1190), .CK(clk), .QN(n270) );
  DFFX1 \string_r_reg[15][3]  ( .D(n1191), .CK(clk), .QN(n271) );
  DFFX1 \string_r_reg[15][2]  ( .D(n1192), .CK(clk), .QN(n272) );
  DFFX1 \string_r_reg[15][1]  ( .D(n1193), .CK(clk), .QN(n273) );
  DFFX1 \string_r_reg[15][0]  ( .D(n1194), .CK(clk), .QN(n274) );
  DFFX1 \string_r_reg[30][7]  ( .D(n1067), .CK(clk), .QN(n147) );
  DFFX1 \string_r_reg[30][6]  ( .D(n1068), .CK(clk), .QN(n148) );
  DFFX1 \string_r_reg[30][5]  ( .D(n1069), .CK(clk), .QN(n149) );
  DFFX1 \string_r_reg[30][4]  ( .D(n1070), .CK(clk), .QN(n150) );
  DFFX1 \string_r_reg[30][3]  ( .D(n1071), .CK(clk), .QN(n151) );
  DFFX1 \string_r_reg[30][2]  ( .D(n1072), .CK(clk), .QN(n152) );
  DFFX1 \string_r_reg[30][1]  ( .D(n1073), .CK(clk), .QN(n153) );
  DFFX1 \string_r_reg[30][0]  ( .D(n1074), .CK(clk), .QN(n154) );
  DFFX1 \string_r_reg[23][7]  ( .D(n1123), .CK(clk), .QN(n203) );
  DFFX1 \string_r_reg[23][6]  ( .D(n1124), .CK(clk), .QN(n204) );
  DFFX1 \string_r_reg[23][5]  ( .D(n1125), .CK(clk), .QN(n205) );
  DFFX1 \string_r_reg[23][4]  ( .D(n1126), .CK(clk), .QN(n206) );
  DFFX1 \string_r_reg[23][3]  ( .D(n1127), .CK(clk), .QN(n207) );
  DFFX1 \string_r_reg[23][2]  ( .D(n1128), .CK(clk), .QN(n208) );
  DFFX1 \string_r_reg[23][1]  ( .D(n1129), .CK(clk), .QN(n209) );
  DFFX1 \string_r_reg[23][0]  ( .D(n1130), .CK(clk), .QN(n210) );
  DFFX1 \string_r_reg[31][7]  ( .D(n1059), .CK(clk), .QN(n139) );
  DFFX1 \string_r_reg[31][6]  ( .D(n1060), .CK(clk), .QN(n140) );
  DFFX1 \string_r_reg[31][5]  ( .D(n1061), .CK(clk), .QN(n141) );
  DFFX1 \string_r_reg[31][4]  ( .D(n1062), .CK(clk), .QN(n142) );
  DFFX1 \string_r_reg[31][3]  ( .D(n1063), .CK(clk), .QN(n143) );
  DFFX1 \string_r_reg[31][2]  ( .D(n1064), .CK(clk), .QN(n144) );
  DFFX1 \string_r_reg[31][1]  ( .D(n1065), .CK(clk), .QN(n145) );
  DFFX1 \string_r_reg[31][0]  ( .D(n1066), .CK(clk), .QN(n146) );
  DFFX1 \string_r_reg[4][7]  ( .D(n1275), .CK(clk), .QN(n355) );
  DFFX1 \string_r_reg[4][6]  ( .D(n1276), .CK(clk), .QN(n356) );
  DFFX1 \string_r_reg[4][5]  ( .D(n1277), .CK(clk), .QN(n357) );
  DFFX1 \string_r_reg[4][4]  ( .D(n1278), .CK(clk), .QN(n358) );
  DFFX1 \string_r_reg[4][3]  ( .D(n1279), .CK(clk), .QN(n359) );
  DFFX1 \string_r_reg[4][2]  ( .D(n1280), .CK(clk), .QN(n360) );
  DFFX1 \string_r_reg[4][1]  ( .D(n1281), .CK(clk), .QN(n361) );
  DFFX1 \string_r_reg[4][0]  ( .D(n1282), .CK(clk), .QN(n362) );
  DFFQX1 first_flag_r_reg ( .D(n994), .CK(clk), .Q(first_flag_r) );
  DFFX1 \string_r_reg[12][7]  ( .D(n1211), .CK(clk), .QN(n291) );
  DFFX1 \string_r_reg[12][6]  ( .D(n1212), .CK(clk), .QN(n292) );
  DFFX1 \string_r_reg[12][5]  ( .D(n1213), .CK(clk), .QN(n293) );
  DFFX1 \string_r_reg[12][4]  ( .D(n1214), .CK(clk), .QN(n294) );
  DFFX1 \string_r_reg[12][3]  ( .D(n1215), .CK(clk), .QN(n295) );
  DFFX1 \string_r_reg[12][2]  ( .D(n1216), .CK(clk), .QN(n296) );
  DFFX1 \string_r_reg[12][1]  ( .D(n1217), .CK(clk), .QN(n297) );
  DFFX1 \string_r_reg[12][0]  ( .D(n1218), .CK(clk), .QN(n298) );
  DFFX1 \string_r_reg[5][7]  ( .D(n1267), .CK(clk), .QN(n347) );
  DFFX1 \string_r_reg[5][6]  ( .D(n1268), .CK(clk), .QN(n348) );
  DFFX1 \string_r_reg[5][5]  ( .D(n1269), .CK(clk), .QN(n349) );
  DFFX1 \string_r_reg[5][4]  ( .D(n1270), .CK(clk), .QN(n350) );
  DFFX1 \string_r_reg[5][3]  ( .D(n1271), .CK(clk), .QN(n351) );
  DFFX1 \string_r_reg[5][2]  ( .D(n1272), .CK(clk), .QN(n352) );
  DFFX1 \string_r_reg[5][1]  ( .D(n1273), .CK(clk), .QN(n353) );
  DFFX1 \string_r_reg[5][0]  ( .D(n1274), .CK(clk), .QN(n354) );
  DFFX1 \string_r_reg[20][7]  ( .D(n1147), .CK(clk), .QN(n227) );
  DFFX1 \string_r_reg[20][6]  ( .D(n1148), .CK(clk), .QN(n228) );
  DFFX1 \string_r_reg[20][5]  ( .D(n1149), .CK(clk), .QN(n229) );
  DFFX1 \string_r_reg[20][4]  ( .D(n1150), .CK(clk), .QN(n230) );
  DFFX1 \string_r_reg[20][3]  ( .D(n1151), .CK(clk), .QN(n231) );
  DFFX1 \string_r_reg[20][2]  ( .D(n1152), .CK(clk), .QN(n232) );
  DFFX1 \string_r_reg[20][1]  ( .D(n1153), .CK(clk), .QN(n233) );
  DFFX1 \string_r_reg[20][0]  ( .D(n1154), .CK(clk), .QN(n234) );
  DFFX1 \string_r_reg[13][7]  ( .D(n1203), .CK(clk), .QN(n283) );
  DFFX1 \string_r_reg[13][6]  ( .D(n1204), .CK(clk), .QN(n284) );
  DFFX1 \string_r_reg[13][5]  ( .D(n1205), .CK(clk), .QN(n285) );
  DFFX1 \string_r_reg[13][4]  ( .D(n1206), .CK(clk), .QN(n286) );
  DFFX1 \string_r_reg[13][3]  ( .D(n1207), .CK(clk), .QN(n287) );
  DFFX1 \string_r_reg[13][2]  ( .D(n1208), .CK(clk), .QN(n288) );
  DFFX1 \string_r_reg[13][1]  ( .D(n1209), .CK(clk), .QN(n289) );
  DFFX1 \string_r_reg[13][0]  ( .D(n1210), .CK(clk), .QN(n290) );
  DFFX1 \string_r_reg[28][7]  ( .D(n1083), .CK(clk), .QN(n163) );
  DFFX1 \string_r_reg[28][6]  ( .D(n1084), .CK(clk), .QN(n164) );
  DFFX1 \string_r_reg[28][5]  ( .D(n1085), .CK(clk), .QN(n165) );
  DFFX1 \string_r_reg[28][4]  ( .D(n1086), .CK(clk), .QN(n166) );
  DFFX1 \string_r_reg[28][3]  ( .D(n1087), .CK(clk), .QN(n167) );
  DFFX1 \string_r_reg[28][2]  ( .D(n1088), .CK(clk), .QN(n168) );
  DFFX1 \string_r_reg[28][1]  ( .D(n1089), .CK(clk), .QN(n169) );
  DFFX1 \string_r_reg[28][0]  ( .D(n1090), .CK(clk), .QN(n170) );
  DFFX1 \string_r_reg[21][7]  ( .D(n1139), .CK(clk), .QN(n219) );
  DFFX1 \string_r_reg[21][6]  ( .D(n1140), .CK(clk), .QN(n220) );
  DFFX1 \string_r_reg[21][5]  ( .D(n1141), .CK(clk), .QN(n221) );
  DFFX1 \string_r_reg[21][4]  ( .D(n1142), .CK(clk), .QN(n222) );
  DFFX1 \string_r_reg[21][3]  ( .D(n1143), .CK(clk), .QN(n223) );
  DFFX1 \string_r_reg[21][2]  ( .D(n1144), .CK(clk), .QN(n224) );
  DFFX1 \string_r_reg[21][1]  ( .D(n1145), .CK(clk), .QN(n225) );
  DFFX1 \string_r_reg[21][0]  ( .D(n1146), .CK(clk), .QN(n226) );
  DFFX1 \string_r_reg[2][7]  ( .D(n1291), .CK(clk), .QN(n371) );
  DFFX1 \string_r_reg[2][6]  ( .D(n1292), .CK(clk), .QN(n372) );
  DFFX1 \string_r_reg[2][5]  ( .D(n1293), .CK(clk), .QN(n373) );
  DFFX1 \string_r_reg[2][4]  ( .D(n1294), .CK(clk), .QN(n374) );
  DFFX1 \string_r_reg[2][3]  ( .D(n1295), .CK(clk), .QN(n375) );
  DFFX1 \string_r_reg[2][2]  ( .D(n1296), .CK(clk), .QN(n376) );
  DFFX1 \string_r_reg[2][1]  ( .D(n1297), .CK(clk), .QN(n377) );
  DFFX1 \string_r_reg[2][0]  ( .D(n1298), .CK(clk), .QN(n378) );
  DFFX1 \string_r_reg[29][7]  ( .D(n1075), .CK(clk), .QN(n155) );
  DFFX1 \string_r_reg[29][6]  ( .D(n1076), .CK(clk), .QN(n156) );
  DFFX1 \string_r_reg[29][5]  ( .D(n1077), .CK(clk), .QN(n157) );
  DFFX1 \string_r_reg[29][4]  ( .D(n1078), .CK(clk), .QN(n158) );
  DFFX1 \string_r_reg[29][3]  ( .D(n1079), .CK(clk), .QN(n159) );
  DFFX1 \string_r_reg[29][2]  ( .D(n1080), .CK(clk), .QN(n160) );
  DFFX1 \string_r_reg[29][1]  ( .D(n1081), .CK(clk), .QN(n161) );
  DFFX1 \string_r_reg[29][0]  ( .D(n1082), .CK(clk), .QN(n162) );
  DFFX1 \string_r_reg[10][7]  ( .D(n1227), .CK(clk), .QN(n307) );
  DFFX1 \string_r_reg[10][6]  ( .D(n1228), .CK(clk), .QN(n308) );
  DFFX1 \string_r_reg[10][5]  ( .D(n1229), .CK(clk), .QN(n309) );
  DFFX1 \string_r_reg[10][4]  ( .D(n1230), .CK(clk), .QN(n310) );
  DFFX1 \string_r_reg[10][3]  ( .D(n1231), .CK(clk), .QN(n311) );
  DFFX1 \string_r_reg[10][2]  ( .D(n1232), .CK(clk), .QN(n312) );
  DFFX1 \string_r_reg[10][1]  ( .D(n1233), .CK(clk), .QN(n313) );
  DFFX1 \string_r_reg[10][0]  ( .D(n1234), .CK(clk), .QN(n314) );
  DFFX1 \string_r_reg[3][7]  ( .D(n1283), .CK(clk), .QN(n363) );
  DFFX1 \string_r_reg[3][6]  ( .D(n1284), .CK(clk), .QN(n364) );
  DFFX1 \string_r_reg[3][5]  ( .D(n1285), .CK(clk), .QN(n365) );
  DFFX1 \string_r_reg[3][4]  ( .D(n1286), .CK(clk), .QN(n366) );
  DFFX1 \string_r_reg[3][3]  ( .D(n1287), .CK(clk), .QN(n367) );
  DFFX1 \string_r_reg[3][2]  ( .D(n1288), .CK(clk), .QN(n368) );
  DFFX1 \string_r_reg[3][1]  ( .D(n1289), .CK(clk), .QN(n369) );
  DFFX1 \string_r_reg[3][0]  ( .D(n1290), .CK(clk), .QN(n370) );
  DFFX1 \string_r_reg[0][7]  ( .D(n1307), .CK(clk), .QN(n387) );
  DFFX1 \string_r_reg[0][6]  ( .D(n1308), .CK(clk), .QN(n388) );
  DFFX1 \string_r_reg[0][5]  ( .D(n1309), .CK(clk), .QN(n389) );
  DFFX1 \string_r_reg[0][4]  ( .D(n1310), .CK(clk), .QN(n390) );
  DFFX1 \string_r_reg[0][3]  ( .D(n1311), .CK(clk), .QN(n391) );
  DFFX1 \string_r_reg[0][2]  ( .D(n1312), .CK(clk), .QN(n392) );
  DFFX1 \string_r_reg[0][1]  ( .D(n1313), .CK(clk), .QN(n393) );
  DFFX1 \string_r_reg[0][0]  ( .D(n1314), .CK(clk), .QN(n394) );
  DFFX1 \string_r_reg[18][7]  ( .D(n1163), .CK(clk), .QN(n243) );
  DFFX1 \string_r_reg[18][6]  ( .D(n1164), .CK(clk), .QN(n244) );
  DFFX1 \string_r_reg[18][5]  ( .D(n1165), .CK(clk), .QN(n245) );
  DFFX1 \string_r_reg[18][4]  ( .D(n1166), .CK(clk), .QN(n246) );
  DFFX1 \string_r_reg[18][3]  ( .D(n1167), .CK(clk), .QN(n247) );
  DFFX1 \string_r_reg[18][2]  ( .D(n1168), .CK(clk), .QN(n248) );
  DFFX1 \string_r_reg[18][1]  ( .D(n1169), .CK(clk), .QN(n249) );
  DFFX1 \string_r_reg[18][0]  ( .D(n1170), .CK(clk), .QN(n250) );
  DFFX1 \string_r_reg[11][7]  ( .D(n1219), .CK(clk), .QN(n299) );
  DFFX1 \string_r_reg[11][6]  ( .D(n1220), .CK(clk), .QN(n300) );
  DFFX1 \string_r_reg[11][5]  ( .D(n1221), .CK(clk), .QN(n301) );
  DFFX1 \string_r_reg[11][4]  ( .D(n1222), .CK(clk), .QN(n302) );
  DFFX1 \string_r_reg[11][3]  ( .D(n1223), .CK(clk), .QN(n303) );
  DFFX1 \string_r_reg[11][2]  ( .D(n1224), .CK(clk), .QN(n304) );
  DFFX1 \string_r_reg[11][1]  ( .D(n1225), .CK(clk), .QN(n305) );
  DFFX1 \string_r_reg[11][0]  ( .D(n1226), .CK(clk), .QN(n306) );
  DFFX1 \string_r_reg[26][7]  ( .D(n1099), .CK(clk), .QN(n179) );
  DFFX1 \string_r_reg[26][6]  ( .D(n1100), .CK(clk), .QN(n180) );
  DFFX1 \string_r_reg[26][5]  ( .D(n1101), .CK(clk), .QN(n181) );
  DFFX1 \string_r_reg[26][4]  ( .D(n1102), .CK(clk), .QN(n182) );
  DFFX1 \string_r_reg[26][3]  ( .D(n1103), .CK(clk), .QN(n183) );
  DFFX1 \string_r_reg[26][2]  ( .D(n1104), .CK(clk), .QN(n184) );
  DFFX1 \string_r_reg[26][1]  ( .D(n1105), .CK(clk), .QN(n185) );
  DFFX1 \string_r_reg[26][0]  ( .D(n1106), .CK(clk), .QN(n186) );
  DFFX1 \string_r_reg[8][7]  ( .D(n1243), .CK(clk), .QN(n323) );
  DFFX1 \string_r_reg[8][6]  ( .D(n1244), .CK(clk), .QN(n324) );
  DFFX1 \string_r_reg[8][5]  ( .D(n1245), .CK(clk), .QN(n325) );
  DFFX1 \string_r_reg[8][4]  ( .D(n1246), .CK(clk), .QN(n326) );
  DFFX1 \string_r_reg[8][3]  ( .D(n1247), .CK(clk), .QN(n327) );
  DFFX1 \string_r_reg[8][2]  ( .D(n1248), .CK(clk), .QN(n328) );
  DFFX1 \string_r_reg[8][1]  ( .D(n1249), .CK(clk), .QN(n329) );
  DFFX1 \string_r_reg[8][0]  ( .D(n1250), .CK(clk), .QN(n330) );
  DFFX1 \string_r_reg[1][7]  ( .D(n1299), .CK(clk), .QN(n379) );
  DFFX1 \string_r_reg[1][6]  ( .D(n1300), .CK(clk), .QN(n380) );
  DFFX1 \string_r_reg[1][5]  ( .D(n1301), .CK(clk), .QN(n381) );
  DFFX1 \string_r_reg[1][4]  ( .D(n1302), .CK(clk), .QN(n382) );
  DFFX1 \string_r_reg[1][3]  ( .D(n1303), .CK(clk), .QN(n383) );
  DFFX1 \string_r_reg[1][2]  ( .D(n1304), .CK(clk), .QN(n384) );
  DFFX1 \string_r_reg[1][1]  ( .D(n1305), .CK(clk), .QN(n385) );
  DFFX1 \string_r_reg[1][0]  ( .D(n1306), .CK(clk), .QN(n386) );
  DFFX1 \string_r_reg[19][7]  ( .D(n1155), .CK(clk), .QN(n235) );
  DFFX1 \string_r_reg[19][6]  ( .D(n1156), .CK(clk), .QN(n236) );
  DFFX1 \string_r_reg[19][5]  ( .D(n1157), .CK(clk), .QN(n237) );
  DFFX1 \string_r_reg[19][4]  ( .D(n1158), .CK(clk), .QN(n238) );
  DFFX1 \string_r_reg[19][3]  ( .D(n1159), .CK(clk), .QN(n239) );
  DFFX1 \string_r_reg[19][2]  ( .D(n1160), .CK(clk), .QN(n240) );
  DFFX1 \string_r_reg[19][1]  ( .D(n1161), .CK(clk), .QN(n241) );
  DFFX1 \string_r_reg[19][0]  ( .D(n1162), .CK(clk), .QN(n242) );
  DFFX1 \string_r_reg[16][7]  ( .D(n1179), .CK(clk), .QN(n259) );
  DFFX1 \string_r_reg[16][6]  ( .D(n1180), .CK(clk), .QN(n260) );
  DFFX1 \string_r_reg[16][5]  ( .D(n1181), .CK(clk), .QN(n261) );
  DFFX1 \string_r_reg[16][4]  ( .D(n1182), .CK(clk), .QN(n262) );
  DFFX1 \string_r_reg[16][3]  ( .D(n1183), .CK(clk), .QN(n263) );
  DFFX1 \string_r_reg[16][2]  ( .D(n1184), .CK(clk), .QN(n264) );
  DFFX1 \string_r_reg[16][1]  ( .D(n1185), .CK(clk), .QN(n265) );
  DFFX1 \string_r_reg[16][0]  ( .D(n1186), .CK(clk), .QN(n266) );
  DFFX1 \string_r_reg[27][7]  ( .D(n1091), .CK(clk), .QN(n171) );
  DFFX1 \string_r_reg[27][6]  ( .D(n1092), .CK(clk), .QN(n172) );
  DFFX1 \string_r_reg[27][5]  ( .D(n1093), .CK(clk), .QN(n173) );
  DFFX1 \string_r_reg[27][4]  ( .D(n1094), .CK(clk), .QN(n174) );
  DFFX1 \string_r_reg[27][3]  ( .D(n1095), .CK(clk), .QN(n175) );
  DFFX1 \string_r_reg[27][2]  ( .D(n1096), .CK(clk), .QN(n176) );
  DFFX1 \string_r_reg[27][1]  ( .D(n1097), .CK(clk), .QN(n177) );
  DFFX1 \string_r_reg[27][0]  ( .D(n1098), .CK(clk), .QN(n178) );
  DFFX1 \string_r_reg[9][7]  ( .D(n1235), .CK(clk), .QN(n315) );
  DFFX1 \string_r_reg[9][6]  ( .D(n1236), .CK(clk), .QN(n316) );
  DFFX1 \string_r_reg[9][5]  ( .D(n1237), .CK(clk), .QN(n317) );
  DFFX1 \string_r_reg[9][4]  ( .D(n1238), .CK(clk), .QN(n318) );
  DFFX1 \string_r_reg[9][3]  ( .D(n1239), .CK(clk), .QN(n319) );
  DFFX1 \string_r_reg[9][2]  ( .D(n1240), .CK(clk), .QN(n320) );
  DFFX1 \string_r_reg[9][1]  ( .D(n1241), .CK(clk), .QN(n321) );
  DFFX1 \string_r_reg[9][0]  ( .D(n1242), .CK(clk), .QN(n322) );
  DFFX1 \string_r_reg[24][7]  ( .D(n1115), .CK(clk), .QN(n195) );
  DFFX1 \string_r_reg[24][6]  ( .D(n1116), .CK(clk), .QN(n196) );
  DFFX1 \string_r_reg[24][5]  ( .D(n1117), .CK(clk), .QN(n197) );
  DFFX1 \string_r_reg[24][4]  ( .D(n1118), .CK(clk), .QN(n198) );
  DFFX1 \string_r_reg[24][3]  ( .D(n1119), .CK(clk), .QN(n199) );
  DFFX1 \string_r_reg[24][2]  ( .D(n1120), .CK(clk), .QN(n200) );
  DFFX1 \string_r_reg[24][1]  ( .D(n1121), .CK(clk), .QN(n201) );
  DFFX1 \string_r_reg[24][0]  ( .D(n1122), .CK(clk), .QN(n202) );
  DFFX1 \string_r_reg[17][7]  ( .D(n1171), .CK(clk), .QN(n251) );
  DFFX1 \string_r_reg[17][6]  ( .D(n1172), .CK(clk), .QN(n252) );
  DFFX1 \string_r_reg[17][5]  ( .D(n1173), .CK(clk), .QN(n253) );
  DFFX1 \string_r_reg[17][4]  ( .D(n1174), .CK(clk), .QN(n254) );
  DFFX1 \string_r_reg[17][3]  ( .D(n1175), .CK(clk), .QN(n255) );
  DFFX1 \string_r_reg[17][2]  ( .D(n1176), .CK(clk), .QN(n256) );
  DFFX1 \string_r_reg[17][1]  ( .D(n1177), .CK(clk), .QN(n257) );
  DFFX1 \string_r_reg[17][0]  ( .D(n1178), .CK(clk), .QN(n258) );
  DFFX1 \string_r_reg[25][7]  ( .D(n1107), .CK(clk), .QN(n187) );
  DFFX1 \string_r_reg[25][6]  ( .D(n1108), .CK(clk), .QN(n188) );
  DFFX1 \string_r_reg[25][5]  ( .D(n1109), .CK(clk), .QN(n189) );
  DFFX1 \string_r_reg[25][4]  ( .D(n1110), .CK(clk), .QN(n190) );
  DFFX1 \string_r_reg[25][3]  ( .D(n1111), .CK(clk), .QN(n191) );
  DFFX1 \string_r_reg[25][2]  ( .D(n1112), .CK(clk), .QN(n192) );
  DFFX1 \string_r_reg[25][1]  ( .D(n1113), .CK(clk), .QN(n193) );
  DFFX1 \string_r_reg[25][0]  ( .D(n1114), .CK(clk), .QN(n194) );
  DFFQX1 skipFlag_r_reg ( .D(N1162), .CK(clk), .Q(skipFlag_r) );
  DFFQX1 \state_r_reg[1]  ( .D(n1316), .CK(clk), .Q(state_r[1]) );
  DFFQX1 continueFlag_r_reg ( .D(N1506), .CK(clk), .Q(continueFlag_r) );
  DFFQX1 \strMatch_r_reg[2]  ( .D(N1148), .CK(clk), .Q(strMatch_r[2]) );
  DFFQX1 \strMatch_r_reg[5]  ( .D(N1151), .CK(clk), .Q(strMatch_r[5]) );
  DFFQX1 \strMatch_r_reg[6]  ( .D(N1152), .CK(clk), .Q(strMatch_r[6]) );
  DFFQX1 \strMatch_r_reg[3]  ( .D(N1149), .CK(clk), .Q(strMatch_r[3]) );
  DFFQX1 \strMatch_r_reg[7]  ( .D(N1153), .CK(clk), .Q(strMatch_r[7]) );
  DFFQX1 \strMatch_r_reg[1]  ( .D(N1147), .CK(clk), .Q(strMatch_r[1]) );
  DFFQX1 \strMatch_r_reg[4]  ( .D(N1150), .CK(clk), .Q(strMatch_r[4]) );
  DFFQX1 \strMatch_r_reg[0]  ( .D(N1146), .CK(clk), .Q(strMatch_r[0]) );
  DFFX1 \patMatch_r_reg[1]  ( .D(N1155), .CK(clk), .QN(n137) );
  DFFX1 \patMatch_r_reg[3]  ( .D(N1157), .CK(clk), .QN(n135) );
  DFFQX1 \patMatch_r_reg[5]  ( .D(N1159), .CK(clk), .Q(patMatch_r[5]) );
  DFFQX1 \patMatch_r_reg[2]  ( .D(N1156), .CK(clk), .Q(patMatch_r[2]) );
  DFFQX1 \patMatch_r_reg[0]  ( .D(N1154), .CK(clk), .Q(patMatch_r[0]) );
  DFFQX1 \patMatch_r_reg[4]  ( .D(N1158), .CK(clk), .Q(patMatch_r[4]) );
  DFFQX1 \patMatch_r_reg[6]  ( .D(N1160), .CK(clk), .Q(patMatch_r[6]) );
  DFFQX1 \starCnt_r_reg[6]  ( .D(N1505), .CK(clk), .Q(starCnt_r[6]) );
  DFFQX1 \tmp_r_reg[3]  ( .D(n991), .CK(clk), .Q(tmp_r[3]) );
  DFFX1 \tmp_r_reg[2]  ( .D(n992), .CK(clk), .Q(tmp_r[2]), .QN(n468) );
  DFFX1 \tmp_r_reg[0]  ( .D(n1318), .CK(clk), .Q(tmp_r[0]), .QN(n470) );
  DFFX1 \tmp_r_reg[1]  ( .D(n993), .CK(clk), .Q(tmp_r[1]), .QN(n469) );
  DFFQX1 \patMatch_r_reg[7]  ( .D(N1161), .CK(clk), .Q(patMatch_r[7]) );
  DFFQX1 \state_r_reg[2]  ( .D(n1317), .CK(clk), .Q(state_r[2]) );
  DFFQX1 \state_r_reg[0]  ( .D(n1315), .CK(clk), .Q(state_r[0]) );
  DFFQX1 \starCnt_r_reg[5]  ( .D(N1504), .CK(clk), .Q(starCnt_r[5]) );
  DFFQX1 \starCnt_r_reg[4]  ( .D(N1503), .CK(clk), .Q(starCnt_r[4]) );
  DFFQX1 \starCnt_r_reg[3]  ( .D(N1502), .CK(clk), .Q(starCnt_r[3]) );
  DFFQX1 \starCnt_r_reg[2]  ( .D(N1501), .CK(clk), .Q(starCnt_r[2]) );
  DFFQX1 \starCnt_r_reg[1]  ( .D(N1500), .CK(clk), .Q(starCnt_r[1]) );
  DFFQX1 \matchCnt_r_reg[6]  ( .D(N1494), .CK(clk), .Q(matchCnt_r[6]) );
  DFFQX1 \matchCnt_r_reg[5]  ( .D(N1493), .CK(clk), .Q(matchCnt_r[5]) );
  DFFQX1 \matchCnt2_r_reg[2]  ( .D(N1497), .CK(clk), .Q(matchCnt2_r[2]) );
  DFFQX1 \matchCnt_r_reg[2]  ( .D(N1490), .CK(clk), .Q(matchCnt_r[2]) );
  DFFQX1 \matchCnt_r_reg[1]  ( .D(N1489), .CK(clk), .Q(matchCnt_r[1]) );
  DFFQX1 \matchCnt2_r_reg[3]  ( .D(n1458), .CK(clk), .Q(matchCnt2_r[3]) );
  DFFQX1 \matchIdx_r_reg[0]  ( .D(N1483), .CK(clk), .Q(n1519) );
  DFFQX1 \matchIdx_r_reg[4]  ( .D(N1487), .CK(clk), .Q(n1515) );
  DFFQX1 \matchIdx_r_reg[3]  ( .D(N1486), .CK(clk), .Q(n1516) );
  DFFQX1 \matchIdx_r_reg[2]  ( .D(N1485), .CK(clk), .Q(n1517) );
  DFFQX1 \matchIdx_r_reg[1]  ( .D(N1484), .CK(clk), .Q(n1518) );
  DFFQX1 valid_r_reg ( .D(n1454), .CK(clk), .Q(n1513) );
  DFFQX1 match_r_reg ( .D(N1511), .CK(clk), .Q(n1514) );
  DFFX1 \starCnt_r_reg[0]  ( .D(N1499), .CK(clk), .Q(starCnt_r[0]) );
  DFFX1 \patCnt_r_reg[3]  ( .D(N1145), .CK(clk), .Q(patCnt_r[3]), .QN(n1495)
         );
  DFFX1 \matchCnt_r_reg[4]  ( .D(N1492), .CK(clk), .Q(matchCnt_r[4]), .QN(
        n1505) );
  DFFX1 \matchCnt_r_reg[3]  ( .D(N1491), .CK(clk), .Q(matchCnt_r[3]), .QN(
        n1504) );
  DFFX1 \strCnt_r_reg[1]  ( .D(N1136), .CK(clk), .Q(strCnt_r[1]), .QN(n1395)
         );
  DFFX1 \strCnt_r_reg[6]  ( .D(N1141), .CK(clk), .Q(strCnt_r[6]), .QN(n1438)
         );
  DFFX1 \strCnt_r_reg[3]  ( .D(N1138), .CK(clk), .Q(strCnt_r[3]), .QN(n1394)
         );
  DFFX1 \strCnt_r_reg[4]  ( .D(N1139), .CK(clk), .Q(strCnt_r[4]), .QN(n1393)
         );
  DFFX2 \patCnt_r_reg[0]  ( .D(N1142), .CK(clk), .Q(
        \add_0_root_sub_0_root_sub_228/B[0] ), .QN(n1493) );
  DFFX2 \matchCnt_r_reg[0]  ( .D(N1488), .CK(clk), .Q(matchCnt_r[0]), .QN(
        n1501) );
  DFFX2 \patCnt_r_reg[1]  ( .D(N1143), .CK(clk), .Q(patCnt_r[1]), .QN(
        \add_0_root_sub_0_root_sub_228/B[1] ) );
  DFFX2 \matchCnt2_r_reg[0]  ( .D(N1495), .CK(clk), .Q(matchCnt2_r[0]) );
  DFFX2 \matchCnt2_r_reg[1]  ( .D(N1496), .CK(clk), .Q(matchCnt2_r[1]) );
  DFFX2 \strCnt_r_reg[5]  ( .D(N1140), .CK(clk), .Q(strCnt_r[5]), .QN(n1392)
         );
  DFFX2 \strCnt_r_reg[2]  ( .D(N1137), .CK(clk), .Q(strCnt_r[2]) );
  DFFX2 \strCnt_r_reg[0]  ( .D(N1135), .CK(clk), .Q(strCnt_r[0]), .QN(n1396)
         );
  DFFX2 \patCnt_r_reg[2]  ( .D(N1144), .CK(clk), .Q(patCnt_r[2]), .QN(n1494)
         );
  INVX3 U994 ( .A(n637), .Y(n1459) );
  OAI22X2 U995 ( .A0(\add_0_root_sub_0_root_sub_228/B[0] ), .A1(n1490), .B0(
        n972), .B1(n1493), .Y(n500) );
  AOI22X2 U996 ( .A0(N161), .A1(n1485), .B0(strCnt_r[0]), .B1(n975), .Y(n597)
         );
  AOI22X2 U997 ( .A0(N162), .A1(n1485), .B0(strCnt_r[1]), .B1(n975), .Y(n595)
         );
  AOI22X2 U998 ( .A0(matchCnt2_r[2]), .A1(n1484), .B0(n1459), .B1(n733), .Y(
        n656) );
  NOR2X1 U999 ( .A(matchCnt2_w[3]), .B(
        \sub_2_root_add_1_root_sub_151_2/carry [3]), .Y(n1319) );
  XNOR2XL U1000 ( .A(\add_0_root_add_0_root_sub_291/B[0] ), .B(n470), .Y(n1320) );
  AOI22X2 U1001 ( .A0(matchCnt2_r[0]), .A1(n1484), .B0(n1459), .B1(n732), .Y(
        n658) );
  INVXL U1002 ( .A(n1505), .Y(n1321) );
  NOR3XL U1003 ( .A(strCnt_r[5]), .B(strCnt_r[6]), .C(n1376), .Y(N863) );
  AOI22X2 U1004 ( .A0(matchCnt2_r[1]), .A1(n1484), .B0(n1459), .B1(n731), .Y(
        n657) );
  OA22XL U1005 ( .A0(\add_0_root_sub_0_root_sub_228/B[0] ), .A1(matchCnt2_r[0]), .B0(n1405), .B1(matchCnt2_r[1]), .Y(n1401) );
  XNOR2XL U1006 ( .A(matchCnt2_r[1]), .B(matchCnt2_r[0]), .Y(n477) );
  NAND2XL U1007 ( .A(matchCnt2_r[1]), .B(matchCnt2_r[0]), .Y(n734) );
  XNOR2XL U1008 ( .A(patCnt_r[1]), .B(patCnt_r[2]), .Y(
        \add_0_root_sub_0_root_sub_228/B[2] ) );
  OR2XL U1009 ( .A(patCnt_r[2]), .B(patCnt_r[1]), .Y(
        \sub_1_root_sub_0_root_sub_228/carry [3]) );
  XOR2XL U1010 ( .A(matchCnt_r[0]), .B(starCnt_r[0]), .Y(
        \add_0_root_add_0_root_sub_291/B[0] ) );
  AND2XL U1011 ( .A(matchCnt_r[0]), .B(\add_0_root_sub_0_root_sub_228/B[0] ), 
        .Y(\add_0_root_sub_0_root_sub_228/carry [1]) );
  OR2XL U1012 ( .A(patCnt_r[1]), .B(\add_0_root_sub_0_root_sub_228/B[0] ), .Y(
        n1371) );
  OAI2BB1XL U1013 ( .A0N(\add_0_root_sub_0_root_sub_228/B[0] ), .A1N(
        patCnt_r[1]), .B0(n1371), .Y(N774) );
  XOR2XL U1014 ( .A(\add_0_root_sub_0_root_sub_228/B[0] ), .B(matchCnt_r[0]), 
        .Y(N761) );
  BUFX12 U1015 ( .A(n1514), .Y(match) );
  BUFX12 U1016 ( .A(n1513), .Y(valid) );
  BUFX12 U1017 ( .A(n1518), .Y(match_index[1]) );
  BUFX12 U1018 ( .A(n1517), .Y(match_index[2]) );
  BUFX12 U1019 ( .A(n1516), .Y(match_index[3]) );
  BUFX12 U1020 ( .A(n1515), .Y(match_index[4]) );
  BUFX12 U1021 ( .A(n1519), .Y(match_index[0]) );
  NOR2X2 U1022 ( .A(n1370), .B(tmp_r[3]), .Y(
        \add_0_root_add_0_root_sub_291/A[9] ) );
  NOR3BX1 U1023 ( .AN(n1391), .B(n1390), .C(n1389), .Y(N770) );
  NOR3BX2 U1024 ( .AN(n1404), .B(n1403), .C(N777), .Y(N778) );
  XOR2XL U1025 ( .A(\add_0_root_add_0_root_sub_291/A[9] ), .B(
        \add_0_root_add_0_root_sub_291/carry [9]), .Y(N973) );
  AND2XL U1026 ( .A(\add_0_root_add_0_root_sub_291/carry [8]), .B(
        \add_0_root_add_0_root_sub_291/A[9] ), .Y(
        \add_0_root_add_0_root_sub_291/carry [9]) );
  XOR2XL U1027 ( .A(\add_0_root_add_0_root_sub_291/A[9] ), .B(
        \add_0_root_add_0_root_sub_291/carry [8]), .Y(N972) );
  NOR2X2 U1028 ( .A(n1453), .B(N606), .Y(n959) );
  NOR2X2 U1029 ( .A(N606), .B(N602), .Y(n960) );
  AND3X2 U1030 ( .A(n555), .B(n1473), .C(n1474), .Y(n533) );
  OAI21XL U1031 ( .A0(n659), .A1(n1502), .B0(n666), .Y(matchCnt_w[1]) );
  OAI21XL U1032 ( .A0(n659), .A1(n1503), .B0(n665), .Y(matchCnt_w[2]) );
  NAND2X1 U1033 ( .A(N770), .B(n634), .Y(n637) );
  OAI22XL U1034 ( .A0(n637), .A1(n632), .B0(n638), .B1(n1499), .Y(
        continueFlag_w) );
  NOR3X2 U1035 ( .A(n1471), .B(n1331), .C(n1472), .Y(n542) );
  NOR3X2 U1036 ( .A(n597), .B(n1331), .C(n1472), .Y(n539) );
  NOR3X2 U1037 ( .A(n595), .B(n1331), .C(n1471), .Y(n536) );
  NOR3X2 U1038 ( .A(n595), .B(n1331), .C(n597), .Y(n532) );
  AND3X2 U1039 ( .A(n555), .B(n1473), .C(n574), .Y(n577) );
  AND3X2 U1040 ( .A(n555), .B(n1474), .C(n573), .Y(n558) );
  AND3X2 U1041 ( .A(n555), .B(n573), .C(n574), .Y(n594) );
  CLKBUFX3 U1042 ( .A(n531), .Y(n1339) );
  CLKINVX1 U1043 ( .A(n656), .Y(n1456) );
  CLKINVX1 U1044 ( .A(n657), .Y(n1455) );
  CLKBUFX3 U1045 ( .A(n531), .Y(n1340) );
  INVX3 U1046 ( .A(n1364), .Y(n1358) );
  INVX3 U1047 ( .A(n1364), .Y(n1357) );
  NOR2X1 U1048 ( .A(n509), .B(n1488), .Y(n502) );
  NOR2X1 U1049 ( .A(n520), .B(n509), .Y(n512) );
  CLKINVX1 U1050 ( .A(n501), .Y(n1487) );
  CLKINVX1 U1051 ( .A(n500), .Y(n1486) );
  OAI22XL U1052 ( .A0(n266), .A1(n773), .B0(n258), .B1(n774), .Y(n950) );
  OAI22XL U1053 ( .A0(n265), .A1(n773), .B0(n257), .B1(n774), .Y(n922) );
  OAI22XL U1054 ( .A0(n264), .A1(n773), .B0(n256), .B1(n774), .Y(n901) );
  OAI22XL U1055 ( .A0(n263), .A1(n773), .B0(n255), .B1(n774), .Y(n880) );
  OAI22XL U1056 ( .A0(n262), .A1(n773), .B0(n254), .B1(n774), .Y(n859) );
  OAI22XL U1057 ( .A0(n261), .A1(n773), .B0(n253), .B1(n774), .Y(n838) );
  OAI22XL U1058 ( .A0(n260), .A1(n773), .B0(n252), .B1(n774), .Y(n817) );
  OAI22XL U1059 ( .A0(n259), .A1(n773), .B0(n251), .B1(n774), .Y(n772) );
  OAI22XL U1060 ( .A0(n250), .A1(n775), .B0(n242), .B1(n776), .Y(n949) );
  OAI22XL U1061 ( .A0(n249), .A1(n775), .B0(n241), .B1(n776), .Y(n921) );
  OAI22XL U1062 ( .A0(n248), .A1(n775), .B0(n240), .B1(n776), .Y(n900) );
  OAI22XL U1063 ( .A0(n247), .A1(n775), .B0(n239), .B1(n776), .Y(n879) );
  OAI22XL U1064 ( .A0(n246), .A1(n775), .B0(n238), .B1(n776), .Y(n858) );
  OAI22XL U1065 ( .A0(n245), .A1(n775), .B0(n237), .B1(n776), .Y(n837) );
  OAI22XL U1066 ( .A0(n244), .A1(n775), .B0(n236), .B1(n776), .Y(n816) );
  OAI22XL U1067 ( .A0(n243), .A1(n775), .B0(n235), .B1(n776), .Y(n771) );
  OAI22XL U1068 ( .A0(n234), .A1(n777), .B0(n226), .B1(n778), .Y(n948) );
  OAI22XL U1069 ( .A0(n233), .A1(n777), .B0(n225), .B1(n778), .Y(n920) );
  OAI22XL U1070 ( .A0(n232), .A1(n777), .B0(n224), .B1(n778), .Y(n899) );
  OAI22XL U1071 ( .A0(n231), .A1(n777), .B0(n223), .B1(n778), .Y(n878) );
  OAI22XL U1072 ( .A0(n230), .A1(n777), .B0(n222), .B1(n778), .Y(n857) );
  OAI22XL U1073 ( .A0(n229), .A1(n777), .B0(n221), .B1(n778), .Y(n836) );
  OAI22XL U1074 ( .A0(n228), .A1(n777), .B0(n220), .B1(n778), .Y(n815) );
  OAI22XL U1075 ( .A0(n227), .A1(n777), .B0(n219), .B1(n778), .Y(n770) );
  OAI22XL U1076 ( .A0(n218), .A1(n779), .B0(n210), .B1(n780), .Y(n947) );
  OAI22XL U1077 ( .A0(n217), .A1(n779), .B0(n209), .B1(n780), .Y(n919) );
  OAI22XL U1078 ( .A0(n216), .A1(n779), .B0(n208), .B1(n780), .Y(n898) );
  OAI22XL U1079 ( .A0(n215), .A1(n779), .B0(n207), .B1(n780), .Y(n877) );
  OAI22XL U1080 ( .A0(n214), .A1(n779), .B0(n206), .B1(n780), .Y(n856) );
  OAI22XL U1081 ( .A0(n213), .A1(n779), .B0(n205), .B1(n780), .Y(n835) );
  OAI22XL U1082 ( .A0(n212), .A1(n779), .B0(n204), .B1(n780), .Y(n814) );
  OAI22XL U1083 ( .A0(n211), .A1(n779), .B0(n203), .B1(n780), .Y(n769) );
  OAI22XL U1084 ( .A0(n362), .A1(n801), .B0(n354), .B1(n802), .Y(n964) );
  OAI22XL U1085 ( .A0(n361), .A1(n801), .B0(n353), .B1(n802), .Y(n928) );
  OAI22XL U1086 ( .A0(n360), .A1(n801), .B0(n352), .B1(n802), .Y(n907) );
  OAI22XL U1087 ( .A0(n359), .A1(n801), .B0(n351), .B1(n802), .Y(n886) );
  OAI22XL U1088 ( .A0(n358), .A1(n801), .B0(n350), .B1(n802), .Y(n865) );
  OAI22XL U1089 ( .A0(n357), .A1(n801), .B0(n349), .B1(n802), .Y(n844) );
  OAI22XL U1090 ( .A0(n356), .A1(n801), .B0(n348), .B1(n802), .Y(n823) );
  OAI22XL U1091 ( .A0(n355), .A1(n801), .B0(n347), .B1(n802), .Y(n794) );
  OAI22XL U1092 ( .A0(n394), .A1(n797), .B0(n386), .B1(n798), .Y(n966) );
  OAI22XL U1093 ( .A0(n393), .A1(n797), .B0(n385), .B1(n798), .Y(n930) );
  OAI22XL U1094 ( .A0(n392), .A1(n797), .B0(n384), .B1(n798), .Y(n909) );
  OAI22XL U1095 ( .A0(n391), .A1(n797), .B0(n383), .B1(n798), .Y(n888) );
  OAI22XL U1096 ( .A0(n390), .A1(n797), .B0(n382), .B1(n798), .Y(n867) );
  OAI22XL U1097 ( .A0(n389), .A1(n797), .B0(n381), .B1(n798), .Y(n846) );
  OAI22XL U1098 ( .A0(n388), .A1(n797), .B0(n380), .B1(n798), .Y(n825) );
  OAI22XL U1099 ( .A0(n387), .A1(n797), .B0(n379), .B1(n798), .Y(n796) );
  OAI22XL U1100 ( .A0(n378), .A1(n799), .B0(n370), .B1(n800), .Y(n965) );
  OAI22XL U1101 ( .A0(n377), .A1(n799), .B0(n369), .B1(n800), .Y(n929) );
  OAI22XL U1102 ( .A0(n376), .A1(n799), .B0(n368), .B1(n800), .Y(n908) );
  OAI22XL U1103 ( .A0(n375), .A1(n799), .B0(n367), .B1(n800), .Y(n887) );
  OAI22XL U1104 ( .A0(n374), .A1(n799), .B0(n366), .B1(n800), .Y(n866) );
  OAI22XL U1105 ( .A0(n373), .A1(n799), .B0(n365), .B1(n800), .Y(n845) );
  OAI22XL U1106 ( .A0(n372), .A1(n799), .B0(n364), .B1(n800), .Y(n824) );
  OAI22XL U1107 ( .A0(n371), .A1(n799), .B0(n363), .B1(n800), .Y(n795) );
  OAI22XL U1108 ( .A0(n346), .A1(n803), .B0(n338), .B1(n804), .Y(n963) );
  OAI22XL U1109 ( .A0(n345), .A1(n803), .B0(n337), .B1(n804), .Y(n927) );
  OAI22XL U1110 ( .A0(n344), .A1(n803), .B0(n336), .B1(n804), .Y(n906) );
  OAI22XL U1111 ( .A0(n343), .A1(n803), .B0(n335), .B1(n804), .Y(n885) );
  OAI22XL U1112 ( .A0(n342), .A1(n803), .B0(n334), .B1(n804), .Y(n864) );
  OAI22XL U1113 ( .A0(n341), .A1(n803), .B0(n333), .B1(n804), .Y(n843) );
  OAI22XL U1114 ( .A0(n340), .A1(n803), .B0(n332), .B1(n804), .Y(n822) );
  OAI22XL U1115 ( .A0(n339), .A1(n803), .B0(n331), .B1(n804), .Y(n793) );
  NOR3X1 U1116 ( .A(n1479), .B(continueFlag_r), .C(n740), .Y(n643) );
  OAI2BB2XL U1117 ( .B0(n677), .B1(n637), .A0N(n1484), .A1N(skipFlag_r), .Y(
        skipFlag_w) );
  OAI21XL U1118 ( .A0(n659), .A1(n1504), .B0(n664), .Y(matchCnt_w[3]) );
  OAI21XL U1119 ( .A0(n659), .A1(n1505), .B0(n663), .Y(matchCnt_w[4]) );
  OAI21XL U1120 ( .A0(n659), .A1(n1506), .B0(n662), .Y(matchCnt_w[5]) );
  AOI22X1 U1121 ( .A0(N164), .A1(n1485), .B0(strCnt_r[3]), .B1(n975), .Y(n573)
         );
  AOI22X1 U1122 ( .A0(N165), .A1(n1485), .B0(strCnt_r[4]), .B1(n975), .Y(n574)
         );
  OAI21XL U1123 ( .A0(n659), .A1(n1507), .B0(n660), .Y(matchCnt_w[6]) );
  NOR2X1 U1124 ( .A(n1365), .B(isstring), .Y(n531) );
  NAND2X1 U1125 ( .A(n612), .B(chardata[0]), .Y(n530) );
  NAND2X1 U1126 ( .A(n612), .B(chardata[1]), .Y(n529) );
  NAND2X1 U1127 ( .A(n612), .B(chardata[2]), .Y(n528) );
  NAND2X1 U1128 ( .A(n612), .B(chardata[3]), .Y(n527) );
  NAND2X1 U1129 ( .A(n612), .B(chardata[4]), .Y(n526) );
  NAND2X1 U1130 ( .A(n612), .B(chardata[5]), .Y(n525) );
  NAND2X1 U1131 ( .A(n612), .B(chardata[6]), .Y(n524) );
  NAND2X1 U1132 ( .A(n612), .B(chardata[7]), .Y(n521) );
  NAND2X1 U1133 ( .A(n1359), .B(n626), .Y(n615) );
  OAI22XL U1134 ( .A0(n439), .A1(n689), .B0(n431), .B1(n690), .Y(n714) );
  OAI22XL U1135 ( .A0(n441), .A1(n689), .B0(n433), .B1(n690), .Y(n724) );
  OAI22XL U1136 ( .A0(n438), .A1(n689), .B0(n430), .B1(n690), .Y(n709) );
  OAI22XL U1137 ( .A0(n440), .A1(n689), .B0(n432), .B1(n690), .Y(n719) );
  OAI22XL U1138 ( .A0(n442), .A1(n689), .B0(n434), .B1(n690), .Y(n729) );
  OAI22XL U1139 ( .A0(n437), .A1(n689), .B0(n429), .B1(n690), .Y(n704) );
  OAI22XL U1140 ( .A0(n436), .A1(n689), .B0(n428), .B1(n690), .Y(n698) );
  OAI22XL U1141 ( .A0(n435), .A1(n689), .B0(n427), .B1(n690), .Y(n685) );
  AND4X1 U1142 ( .A(n1497), .B(strMatch_r[5]), .C(n748), .D(n749), .Y(n482) );
  CLKINVX1 U1143 ( .A(continueFlag_r), .Y(n1499) );
  NOR3BXL U1144 ( .AN(N987), .B(n676), .C(n1476), .Y(n635) );
  NOR3X1 U1145 ( .A(state_r[0]), .B(state_r[2]), .C(n1491), .Y(n624) );
  OAI32X1 U1146 ( .A0(n1494), .A1(patCnt_r[3]), .A2(n968), .B0(n969), .B1(
        n1495), .Y(n509) );
  OAI22XL U1147 ( .A0(n970), .A1(n1494), .B0(patCnt_r[2]), .B1(n968), .Y(n520)
         );
  NAND2X2 U1148 ( .A(n959), .B(n941), .Y(n786) );
  NAND2X2 U1149 ( .A(n959), .B(n944), .Y(n788) );
  NAND2X2 U1150 ( .A(n941), .B(n943), .Y(n761) );
  NAND2X2 U1151 ( .A(n941), .B(n942), .Y(n762) );
  NAND2X2 U1152 ( .A(n959), .B(n952), .Y(n800) );
  NAND2X2 U1153 ( .A(n944), .B(n943), .Y(n763) );
  NAND2X2 U1154 ( .A(n959), .B(n953), .Y(n802) );
  NAND2X2 U1155 ( .A(n959), .B(n946), .Y(n792) );
  NAND2X2 U1156 ( .A(n952), .B(n943), .Y(n775) );
  NAND2X2 U1157 ( .A(n944), .B(n942), .Y(n764) );
  NAND2X2 U1158 ( .A(n952), .B(n942), .Y(n776) );
  NAND2X2 U1159 ( .A(n960), .B(n941), .Y(n785) );
  NAND2X2 U1160 ( .A(n959), .B(n954), .Y(n804) );
  NAND2X2 U1161 ( .A(n960), .B(n944), .Y(n787) );
  NAND2X2 U1162 ( .A(n953), .B(n943), .Y(n777) );
  NAND2X2 U1163 ( .A(n960), .B(n952), .Y(n799) );
  NAND2X2 U1164 ( .A(n953), .B(n942), .Y(n778) );
  NAND2X2 U1165 ( .A(n960), .B(n953), .Y(n801) );
  NAND2X2 U1166 ( .A(n960), .B(n946), .Y(n791) );
  NAND2X2 U1167 ( .A(n960), .B(n954), .Y(n803) );
  NAND2X2 U1168 ( .A(n954), .B(n943), .Y(n779) );
  NAND2X2 U1169 ( .A(n946), .B(n942), .Y(n768) );
  NAND2X2 U1170 ( .A(n943), .B(n946), .Y(n767) );
  NAND2X2 U1171 ( .A(n954), .B(n942), .Y(n780) );
  AND2X2 U1172 ( .A(n961), .B(n1452), .Y(n941) );
  AND2X2 U1173 ( .A(N606), .B(n1453), .Y(n943) );
  NAND2X2 U1174 ( .A(n959), .B(n951), .Y(n798) );
  NAND2X2 U1175 ( .A(n959), .B(n945), .Y(n790) );
  NAND2X2 U1176 ( .A(n951), .B(n943), .Y(n773) );
  AND2X2 U1177 ( .A(N606), .B(N602), .Y(n942) );
  NAND2X2 U1178 ( .A(n951), .B(n942), .Y(n774) );
  NAND2X2 U1179 ( .A(n945), .B(n943), .Y(n765) );
  NAND2X2 U1180 ( .A(n960), .B(n951), .Y(n797) );
  NAND2X2 U1181 ( .A(n960), .B(n945), .Y(n789) );
  NAND2X2 U1182 ( .A(n945), .B(n942), .Y(n766) );
  NOR2X1 U1183 ( .A(n1450), .B(N604), .Y(n961) );
  AND2X2 U1184 ( .A(n961), .B(N603), .Y(n944) );
  AND2X2 U1185 ( .A(n962), .B(n1450), .Y(n953) );
  NOR3X2 U1186 ( .A(n1451), .B(n1452), .C(n1450), .Y(n946) );
  AND2X2 U1187 ( .A(n967), .B(n1451), .Y(n952) );
  AND2X2 U1188 ( .A(n967), .B(N604), .Y(n954) );
  CLKINVX1 U1189 ( .A(N604), .Y(n1451) );
  NOR2X1 U1190 ( .A(n1451), .B(N603), .Y(n962) );
  CLKINVX1 U1191 ( .A(N603), .Y(n1452) );
  CLKINVX1 U1192 ( .A(N602), .Y(n1453) );
  NAND3BX1 U1193 ( .AN(n632), .B(n1460), .C(n1469), .Y(n475) );
  CLKINVX1 U1194 ( .A(n625), .Y(n1454) );
  NAND2X1 U1195 ( .A(n743), .B(n742), .Y(n740) );
  CLKINVX1 U1196 ( .A(n747), .Y(n1476) );
  NAND2X1 U1197 ( .A(n487), .B(n747), .Y(n640) );
  CLKINVX1 U1198 ( .A(n1332), .Y(n1457) );
  CLKINVX1 U1199 ( .A(N605), .Y(n1450) );
  NAND2BXL U1200 ( .AN(n742), .B(n743), .Y(n632) );
  NOR2X1 U1201 ( .A(n1452), .B(N605), .Y(n967) );
  NOR3X2 U1202 ( .A(N604), .B(N605), .C(N603), .Y(n951) );
  AND2X2 U1203 ( .A(n962), .B(N605), .Y(n945) );
  AOI21X2 U1204 ( .A0(n1357), .A1(n534), .B0(n1339), .Y(n535) );
  NAND2X2 U1205 ( .A(n536), .B(n533), .Y(n534) );
  AOI21X2 U1206 ( .A0(n1357), .A1(n537), .B0(n1339), .Y(n538) );
  NAND2X2 U1207 ( .A(n539), .B(n533), .Y(n537) );
  AOI21X2 U1208 ( .A0(n1357), .A1(n540), .B0(n1339), .Y(n541) );
  NAND2X2 U1209 ( .A(n542), .B(n533), .Y(n540) );
  AOI21X2 U1210 ( .A0(n1357), .A1(n549), .B0(n1339), .Y(n550) );
  NAND2X2 U1211 ( .A(n551), .B(n533), .Y(n549) );
  AOI21X2 U1212 ( .A0(n1357), .A1(n546), .B0(n1339), .Y(n547) );
  NAND2X2 U1213 ( .A(n548), .B(n533), .Y(n546) );
  AOI21X2 U1214 ( .A0(n1357), .A1(n608), .B0(n1340), .Y(n609) );
  AOI21X2 U1215 ( .A0(n1358), .A1(n588), .B0(n1340), .Y(n589) );
  AOI21X2 U1216 ( .A0(n1358), .A1(n569), .B0(n1339), .Y(n570) );
  NAND2X2 U1217 ( .A(n594), .B(n551), .Y(n608) );
  NAND2X2 U1218 ( .A(n577), .B(n551), .Y(n588) );
  NAND2X2 U1219 ( .A(n558), .B(n551), .Y(n569) );
  AOI21X2 U1220 ( .A0(n1358), .A1(n606), .B0(n1339), .Y(n607) );
  AOI21X2 U1221 ( .A0(n1359), .A1(n586), .B0(n1340), .Y(n587) );
  AOI21X2 U1222 ( .A0(n1358), .A1(n567), .B0(n1339), .Y(n568) );
  NAND2X2 U1223 ( .A(n594), .B(n548), .Y(n606) );
  NAND2X2 U1224 ( .A(n577), .B(n548), .Y(n586) );
  NAND2X2 U1225 ( .A(n558), .B(n548), .Y(n567) );
  AOI21X2 U1226 ( .A0(n1357), .A1(n543), .B0(n1339), .Y(n544) );
  NAND2X2 U1227 ( .A(n545), .B(n533), .Y(n543) );
  AOI21X2 U1228 ( .A0(n1358), .A1(n604), .B0(n1340), .Y(n605) );
  AOI21X2 U1229 ( .A0(n1359), .A1(n584), .B0(n1340), .Y(n585) );
  AOI21X2 U1230 ( .A0(n1357), .A1(n565), .B0(n1339), .Y(n566) );
  NAND2X2 U1231 ( .A(n594), .B(n545), .Y(n604) );
  NAND2X2 U1232 ( .A(n577), .B(n545), .Y(n584) );
  NAND2X2 U1233 ( .A(n558), .B(n545), .Y(n565) );
  AOI21X2 U1234 ( .A0(n1358), .A1(n598), .B0(n1340), .Y(n599) );
  AOI21X2 U1235 ( .A0(n1359), .A1(n578), .B0(n1340), .Y(n579) );
  AOI21X2 U1236 ( .A0(n1357), .A1(n559), .B0(n1339), .Y(n560) );
  NAND2X2 U1237 ( .A(n594), .B(n536), .Y(n598) );
  NAND2X2 U1238 ( .A(n577), .B(n536), .Y(n578) );
  NAND2X2 U1239 ( .A(n558), .B(n536), .Y(n559) );
  AOI21X2 U1240 ( .A0(n1359), .A1(n600), .B0(n1340), .Y(n601) );
  AOI21X2 U1241 ( .A0(n1359), .A1(n580), .B0(n1340), .Y(n581) );
  AOI21X2 U1242 ( .A0(n1358), .A1(n561), .B0(n1339), .Y(n562) );
  NAND2X2 U1243 ( .A(n594), .B(n539), .Y(n600) );
  NAND2X2 U1244 ( .A(n577), .B(n539), .Y(n580) );
  NAND2X2 U1245 ( .A(n558), .B(n539), .Y(n561) );
  AOI21X2 U1246 ( .A0(n1358), .A1(n602), .B0(n1340), .Y(n603) );
  AOI21X2 U1247 ( .A0(n1359), .A1(n582), .B0(n1340), .Y(n583) );
  AOI21X2 U1248 ( .A0(n1358), .A1(n563), .B0(n1339), .Y(n564) );
  NAND2X2 U1249 ( .A(n594), .B(n542), .Y(n602) );
  NAND2X2 U1250 ( .A(n577), .B(n542), .Y(n582) );
  NAND2X2 U1251 ( .A(n558), .B(n542), .Y(n563) );
  AOI21X2 U1252 ( .A0(n1459), .A1(n671), .B0(n1484), .Y(n659) );
  NAND2X1 U1253 ( .A(n1457), .B(n672), .Y(n671) );
  AOI21X2 U1254 ( .A0(n1357), .A1(n522), .B0(n1340), .Y(n523) );
  NAND2X2 U1255 ( .A(n532), .B(n533), .Y(n522) );
  AOI21X2 U1256 ( .A0(n1359), .A1(n592), .B0(n1340), .Y(n593) );
  AOI21X2 U1257 ( .A0(n1359), .A1(n575), .B0(n1340), .Y(n576) );
  AOI21X2 U1258 ( .A0(n1357), .A1(n556), .B0(n1339), .Y(n557) );
  NAND2X2 U1259 ( .A(n594), .B(n532), .Y(n592) );
  NAND2X2 U1260 ( .A(n577), .B(n532), .Y(n575) );
  NAND2X2 U1261 ( .A(n558), .B(n532), .Y(n556) );
  AOI21X2 U1262 ( .A0(n1358), .A1(n571), .B0(n1340), .Y(n572) );
  NAND2X2 U1263 ( .A(n558), .B(n554), .Y(n571) );
  AOI21X2 U1264 ( .A0(n1358), .A1(n590), .B0(n1340), .Y(n591) );
  NAND2X2 U1265 ( .A(n577), .B(n554), .Y(n590) );
  AOI21X2 U1266 ( .A0(n1357), .A1(n552), .B0(n1339), .Y(n553) );
  NAND2X2 U1267 ( .A(n554), .B(n533), .Y(n552) );
  AOI21X2 U1268 ( .A0(n1358), .A1(n610), .B0(n531), .Y(n611) );
  NAND2X2 U1269 ( .A(n594), .B(n554), .Y(n610) );
  CLKINVX1 U1270 ( .A(n483), .Y(n1478) );
  NOR2X1 U1271 ( .A(n1481), .B(N974), .Y(n487) );
  CLKINVX1 U1272 ( .A(N969), .Y(n1442) );
  NAND3X2 U1273 ( .A(n1455), .B(n1456), .C(matchCnt2_w[0]), .Y(n694) );
  AOI21X1 U1274 ( .A0(n633), .A1(n1460), .B0(n479), .Y(n473) );
  CLKINVX1 U1275 ( .A(n478), .Y(n1460) );
  CLKINVX1 U1276 ( .A(n479), .Y(n1469) );
  CLKINVX1 U1277 ( .A(n701), .Y(n1458) );
  NAND2X1 U1278 ( .A(n623), .B(n1359), .Y(n625) );
  AND2X2 U1279 ( .A(matchCnt_w[2]), .B(n1360), .Y(N1490) );
  AND2X2 U1280 ( .A(matchCnt_w[1]), .B(n1360), .Y(N1489) );
  AND2X2 U1281 ( .A(continueFlag_w), .B(n1360), .Y(N1506) );
  CLKINVX1 U1282 ( .A(n741), .Y(n1479) );
  NAND3X2 U1283 ( .A(n1486), .B(n502), .C(n1487), .Y(n507) );
  NAND3X2 U1284 ( .A(n1487), .B(n1486), .C(n512), .Y(n517) );
  NOR3BXL U1285 ( .AN(n745), .B(N778), .C(n485), .Y(n743) );
  OAI211X1 U1286 ( .A0(n739), .A1(n642), .B0(n632), .C0(n639), .Y(n654) );
  AND2X2 U1287 ( .A(n744), .B(n488), .Y(n739) );
  NOR2BX1 U1288 ( .AN(n738), .B(n654), .Y(n680) );
  OAI21XL U1289 ( .A0(n483), .A1(n643), .B0(n1481), .Y(n738) );
  NOR3X1 U1290 ( .A(n1499), .B(n1479), .C(n740), .Y(n747) );
  AND2X2 U1291 ( .A(n680), .B(n736), .Y(n672) );
  OAI21XL U1292 ( .A0(n679), .A1(n482), .B0(n483), .Y(n736) );
  OA22X1 U1293 ( .A0(n1476), .A1(n488), .B0(n740), .B1(n741), .Y(n639) );
  ADDFXL U1294 ( .A(matchCnt2_w[0]), .B(n1368), .CI(n1367), .CO(
        \sub_2_root_add_1_root_sub_151_2/carry [1]), .S(N588) );
  CLKINVX1 U1295 ( .A(continueFlag_w), .Y(n1367) );
  CLKINVX1 U1296 ( .A(skipFlag_w), .Y(n1368) );
  CLKINVX1 U1297 ( .A(n658), .Y(matchCnt2_w[0]) );
  CLKINVX1 U1298 ( .A(n657), .Y(matchCnt2_w[1]) );
  CLKBUFX3 U1299 ( .A(n646), .Y(n1332) );
  OAI31XL U1300 ( .A0(n1499), .A1(n669), .A2(n642), .B0(n640), .Y(n646) );
  NOR2X2 U1301 ( .A(n745), .B(N778), .Y(n483) );
  NOR2BX2 U1302 ( .AN(n932), .B(n1361), .Y(n750) );
  NOR2X1 U1303 ( .A(N608), .B(N607), .Y(n932) );
  INVXL U1304 ( .A(N778), .Y(n1475) );
  NAND2X1 U1305 ( .A(n485), .B(n1475), .Y(n642) );
  NOR2X2 U1306 ( .A(n932), .B(n1363), .Y(n752) );
  CLKINVX1 U1307 ( .A(n656), .Y(matchCnt2_w[2]) );
  CLKINVX1 U1308 ( .A(n597), .Y(n1471) );
  CLKINVX1 U1309 ( .A(n595), .Y(n1472) );
  AND3X2 U1310 ( .A(n1331), .B(n595), .C(n1471), .Y(n551) );
  AND3X2 U1311 ( .A(n1331), .B(n597), .C(n1472), .Y(n548) );
  AND3X2 U1312 ( .A(n1331), .B(n1471), .C(n1472), .Y(n545) );
  CLKINVX1 U1313 ( .A(n574), .Y(n1474) );
  CLKINVX1 U1314 ( .A(n573), .Y(n1473) );
  NAND3X1 U1315 ( .A(n1459), .B(n661), .C(N819), .Y(n666) );
  AOI21XL U1316 ( .A0(N770), .A1(n633), .B0(n1484), .Y(n638) );
  NAND3X1 U1317 ( .A(n639), .B(n640), .C(n641), .Y(n633) );
  NOR3BXL U1318 ( .AN(n642), .B(n643), .C(n483), .Y(n641) );
  NAND3X1 U1319 ( .A(n1459), .B(n661), .C(N820), .Y(n665) );
  AND3X2 U1320 ( .A(n1331), .B(n595), .C(n597), .Y(n554) );
  CLKINVX1 U1321 ( .A(n1388), .Y(n1398) );
  AND2X2 U1322 ( .A(n613), .B(n614), .Y(n555) );
  OAI21X2 U1323 ( .A0(n653), .A1(n637), .B0(n634), .Y(n644) );
  NOR4X1 U1324 ( .A(n654), .B(n655), .C(n643), .D(n483), .Y(n653) );
  AO21X2 U1325 ( .A0(n668), .A1(n488), .B0(n655), .Y(n661) );
  OAI31XL U1326 ( .A0(n1478), .A1(n482), .A2(n670), .B0(n1477), .Y(n668) );
  CLKINVX1 U1327 ( .A(n643), .Y(n1477) );
  CLKINVX1 U1328 ( .A(N767), .Y(n1399) );
  ADDFXL U1329 ( .A(\add_0_root_add_0_root_sub_291/A[9] ), .B(
        \add_0_root_add_0_root_sub_291/B[4] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [4]), .CO(
        \add_0_root_add_0_root_sub_291/carry [5]), .S(N968) );
  ADDFXL U1330 ( .A(\add_0_root_add_0_root_sub_291/A[9] ), .B(
        \add_0_root_add_0_root_sub_291/B[5] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [5]), .CO(
        \add_0_root_add_0_root_sub_291/carry [6]), .S(N969) );
  NOR2X1 U1331 ( .A(n1361), .B(n597), .Y(N1135) );
  NOR2X1 U1332 ( .A(n1361), .B(n595), .Y(N1136) );
  NOR2X1 U1333 ( .A(n1361), .B(n1331), .Y(N1137) );
  NOR2X1 U1334 ( .A(n1361), .B(n574), .Y(N1139) );
  NOR2X1 U1335 ( .A(n1361), .B(n573), .Y(N1138) );
  OAI2BB2XL U1336 ( .B0(n623), .B1(n1484), .A0N(n615), .A1N(n624), .Y(n618) );
  OAI21XL U1337 ( .A0(n1491), .A1(n615), .B0(n621), .Y(n1316) );
  AOI32X1 U1338 ( .A0(n1489), .A1(n615), .A2(n531), .B0(n622), .B1(n1357), .Y(
        n621) );
  AO21X1 U1339 ( .A0(n615), .A1(n1485), .B0(n618), .Y(n622) );
  NOR2X2 U1340 ( .A(n1339), .B(n1362), .Y(n612) );
  CLKBUFX3 U1341 ( .A(n530), .Y(n1341) );
  CLKBUFX3 U1342 ( .A(n529), .Y(n1343) );
  CLKBUFX3 U1343 ( .A(n528), .Y(n1345) );
  CLKBUFX3 U1344 ( .A(n527), .Y(n1347) );
  CLKBUFX3 U1345 ( .A(n526), .Y(n1349) );
  CLKBUFX3 U1346 ( .A(n525), .Y(n1351) );
  CLKBUFX3 U1347 ( .A(n524), .Y(n1353) );
  CLKBUFX3 U1348 ( .A(n521), .Y(n1355) );
  CLKBUFX3 U1349 ( .A(n530), .Y(n1342) );
  CLKBUFX3 U1350 ( .A(n529), .Y(n1344) );
  CLKBUFX3 U1351 ( .A(n528), .Y(n1346) );
  CLKBUFX3 U1352 ( .A(n527), .Y(n1348) );
  CLKBUFX3 U1353 ( .A(n526), .Y(n1350) );
  CLKBUFX3 U1354 ( .A(n525), .Y(n1352) );
  CLKBUFX3 U1355 ( .A(n524), .Y(n1354) );
  CLKBUFX3 U1356 ( .A(n521), .Y(n1356) );
  NOR2X1 U1357 ( .A(n1361), .B(n614), .Y(N1140) );
  NOR2X1 U1358 ( .A(n1361), .B(n613), .Y(N1141) );
  ADDFXL U1359 ( .A(\add_0_root_add_0_root_sub_291/A[9] ), .B(
        \add_0_root_add_0_root_sub_291/B[7] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [7]), .CO(
        \add_0_root_add_0_root_sub_291/carry [8]), .S(N971) );
  ADDFXL U1360 ( .A(\add_0_root_add_0_root_sub_291/A[9] ), .B(
        \add_0_root_add_0_root_sub_291/B[6] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [6]), .CO(
        \add_0_root_add_0_root_sub_291/carry [7]), .S(N970) );
  OAI22XL U1361 ( .A0(n1492), .A1(n615), .B0(n1361), .B1(n616), .Y(n1315) );
  AOI21X1 U1362 ( .A0(n617), .A1(n615), .B0(n618), .Y(n616) );
  OAI21XL U1363 ( .A0(n619), .A1(n1470), .B0(n620), .Y(n617) );
  INVX3 U1364 ( .A(n1363), .Y(n1359) );
  NAND3X2 U1365 ( .A(n657), .B(n656), .C(matchCnt2_w[0]), .Y(n688) );
  NAND3X2 U1366 ( .A(n1455), .B(n656), .C(matchCnt2_w[0]), .Y(n690) );
  NAND3X2 U1367 ( .A(n658), .B(n656), .C(n1455), .Y(n689) );
  AND2X2 U1368 ( .A(n499), .B(n1360), .Y(n518) );
  NAND3X2 U1369 ( .A(n1456), .B(n657), .C(matchCnt2_w[0]), .Y(n692) );
  NAND3X2 U1370 ( .A(n658), .B(n657), .C(n1456), .Y(n691) );
  NAND3X2 U1371 ( .A(n1456), .B(n658), .C(n1455), .Y(n693) );
  INVX3 U1372 ( .A(n1362), .Y(n1360) );
  NAND2XL U1373 ( .A(N770), .B(n1359), .Y(n478) );
  CLKINVX1 U1374 ( .A(N967), .Y(n1441) );
  NAND3X2 U1375 ( .A(n657), .B(n656), .C(n658), .Y(n687) );
  OAI21XL U1376 ( .A0(n1483), .A1(n615), .B0(n625), .Y(n1317) );
  NOR2X1 U1377 ( .A(n1364), .B(n634), .Y(n479) );
  NAND2X1 U1378 ( .A(matchCnt2_w[3]), .B(n1359), .Y(n701) );
  INVX3 U1379 ( .A(n516), .Y(n1467) );
  OAI2BB1X1 U1380 ( .A0N(n1358), .A1N(n1333), .B0(n499), .Y(n516) );
  INVX3 U1381 ( .A(n511), .Y(n1465) );
  OAI2BB1X1 U1382 ( .A0N(n1357), .A1N(n1335), .B0(n499), .Y(n511) );
  INVX3 U1383 ( .A(n506), .Y(n1463) );
  OAI2BB1X1 U1384 ( .A0N(n1358), .A1N(n1336), .B0(n499), .Y(n506) );
  INVX3 U1385 ( .A(n498), .Y(n1461) );
  OAI2BB1X1 U1386 ( .A0N(n1357), .A1N(n1338), .B0(n499), .Y(n498) );
  INVX3 U1387 ( .A(n514), .Y(n1466) );
  OAI2BB1X1 U1388 ( .A0N(n1357), .A1N(n1334), .B0(n499), .Y(n514) );
  INVX3 U1389 ( .A(n504), .Y(n1462) );
  OAI2BB1X1 U1390 ( .A0N(n1358), .A1N(n1337), .B0(n499), .Y(n504) );
  INVX3 U1391 ( .A(n519), .Y(n1468) );
  OAI2BB1X1 U1392 ( .A0N(n1358), .A1N(n517), .B0(n499), .Y(n519) );
  INVX3 U1393 ( .A(n508), .Y(n1464) );
  OAI2BB1X1 U1394 ( .A0N(n1357), .A1N(n507), .B0(n499), .Y(n508) );
  CLKINVX1 U1395 ( .A(N763), .Y(n1397) );
  NOR2X1 U1396 ( .A(n637), .B(n1361), .Y(n636) );
  AND2X2 U1397 ( .A(n636), .B(n675), .Y(n674) );
  AO21XL U1398 ( .A0(n1500), .A1(N778), .B0(n635), .Y(n675) );
  NOR2X1 U1399 ( .A(N864), .B(n482), .Y(n744) );
  OR2X2 U1400 ( .A(matchCnt2_w[3]), .B(n1366), .Y(n682) );
  NAND2X1 U1401 ( .A(n744), .B(n488), .Y(n669) );
  OA21XL U1402 ( .A0(n635), .A1(N778), .B0(n636), .Y(N1511) );
  AND2X2 U1403 ( .A(n509), .B(n1359), .Y(N1145) );
  AND2X2 U1404 ( .A(matchCnt_w[6]), .B(n1360), .Y(N1494) );
  AND2X2 U1405 ( .A(matchCnt_w[5]), .B(n1360), .Y(N1493) );
  AND2X2 U1406 ( .A(matchCnt_w[4]), .B(n1360), .Y(N1492) );
  AND2X2 U1407 ( .A(matchCnt_w[3]), .B(n1360), .Y(N1491) );
  AND2X2 U1408 ( .A(starCnt_w[0]), .B(n1360), .Y(N1499) );
  AND2X2 U1409 ( .A(starCnt_w[6]), .B(n1360), .Y(N1505) );
  AND2X2 U1410 ( .A(starCnt_w[5]), .B(n1360), .Y(N1504) );
  AND2X2 U1411 ( .A(starCnt_w[4]), .B(n1360), .Y(N1503) );
  AND2X2 U1412 ( .A(starCnt_w[3]), .B(n1360), .Y(N1502) );
  AND2X2 U1413 ( .A(starCnt_w[2]), .B(n1360), .Y(N1501) );
  AND2X2 U1414 ( .A(starCnt_w[1]), .B(n1360), .Y(N1500) );
  AND2X2 U1415 ( .A(matchCnt_w[0]), .B(n1358), .Y(N1488) );
  CLKINVX1 U1416 ( .A(N852), .Y(n1423) );
  NOR2BX1 U1417 ( .AN(skipFlag_w), .B(n1361), .Y(N1162) );
  NOR2X1 U1418 ( .A(n1365), .B(n656), .Y(N1497) );
  NOR2X1 U1419 ( .A(n1361), .B(n657), .Y(N1496) );
  NOR2X1 U1420 ( .A(n1361), .B(n1487), .Y(N1143) );
  NOR2X1 U1421 ( .A(n1365), .B(n658), .Y(N1495) );
  NOR2X1 U1422 ( .A(n1361), .B(n1486), .Y(N1142) );
  NOR2X1 U1423 ( .A(n1365), .B(n1488), .Y(N1144) );
  CLKINVX1 U1424 ( .A(N850), .Y(n1422) );
  CLKINVX1 U1425 ( .A(N848), .Y(n1421) );
  AND2X2 U1426 ( .A(n976), .B(n634), .Y(n623) );
  OAI211XL U1427 ( .A0(n1476), .A1(n676), .B0(n1475), .C0(N770), .Y(n976) );
  CLKINVX1 U1428 ( .A(n1426), .Y(n1440) );
  NAND3X1 U1429 ( .A(n987), .B(n1482), .C(n988), .Y(n742) );
  NAND2X1 U1430 ( .A(n988), .B(n987), .Y(n741) );
  CLKINVX1 U1431 ( .A(n488), .Y(n1481) );
  NAND2X1 U1432 ( .A(N974), .B(n488), .Y(n676) );
  NAND2BX1 U1433 ( .AN(n487), .B(n488), .Y(n486) );
  NOR2BX1 U1434 ( .AN(n670), .B(n482), .Y(n679) );
  INVX3 U1435 ( .A(n634), .Y(n1484) );
  INVX3 U1436 ( .A(n624), .Y(n1490) );
  NAND3X1 U1437 ( .A(n974), .B(n1490), .C(n619), .Y(n973) );
  CLKBUFX3 U1438 ( .A(n505), .Y(n1336) );
  NAND3X1 U1439 ( .A(n502), .B(n500), .C(n1487), .Y(n505) );
  AND2X2 U1440 ( .A(n973), .B(n974), .Y(n972) );
  CLKBUFX3 U1441 ( .A(n515), .Y(n1333) );
  NAND3X1 U1442 ( .A(n1487), .B(n500), .C(n512), .Y(n515) );
  CLKBUFX3 U1443 ( .A(n490), .Y(n1338) );
  NAND3X1 U1444 ( .A(n500), .B(n501), .C(n502), .Y(n490) );
  CLKBUFX3 U1445 ( .A(n503), .Y(n1337) );
  NAND3X1 U1446 ( .A(n502), .B(n501), .C(n1486), .Y(n503) );
  CLKBUFX3 U1447 ( .A(n510), .Y(n1335) );
  NAND3X1 U1448 ( .A(n500), .B(n501), .C(n512), .Y(n510) );
  CLKBUFX3 U1449 ( .A(n513), .Y(n1334) );
  NAND3X1 U1450 ( .A(n1486), .B(n501), .C(n512), .Y(n513) );
  INVX3 U1451 ( .A(n974), .Y(n1485) );
  CLKINVX1 U1452 ( .A(n520), .Y(n1488) );
  CLKINVX1 U1453 ( .A(n619), .Y(n1489) );
  NAND2X1 U1454 ( .A(n631), .B(n1492), .Y(n620) );
  OAI22XL U1455 ( .A0(matchCnt2_r[0]), .A1(n672), .B0(n1457), .B1(n470), .Y(
        n732) );
  OAI22XL U1456 ( .A0(n330), .A1(n785), .B0(n322), .B1(n786), .Y(n958) );
  OAI22XL U1457 ( .A0(n329), .A1(n785), .B0(n321), .B1(n786), .Y(n926) );
  OAI22XL U1458 ( .A0(n328), .A1(n785), .B0(n320), .B1(n786), .Y(n905) );
  OAI22XL U1459 ( .A0(n327), .A1(n785), .B0(n319), .B1(n786), .Y(n884) );
  OAI22XL U1460 ( .A0(n326), .A1(n785), .B0(n318), .B1(n786), .Y(n863) );
  OAI22XL U1461 ( .A0(n325), .A1(n785), .B0(n317), .B1(n786), .Y(n842) );
  OAI22XL U1462 ( .A0(n324), .A1(n785), .B0(n316), .B1(n786), .Y(n821) );
  OAI22XL U1463 ( .A0(n323), .A1(n785), .B0(n315), .B1(n786), .Y(n784) );
  NOR4X1 U1464 ( .A(n955), .B(n956), .C(n957), .D(n958), .Y(n934) );
  OAI22XL U1465 ( .A0(n282), .A1(n791), .B0(n274), .B1(n792), .Y(n955) );
  OAI22XL U1466 ( .A0(n298), .A1(n789), .B0(n290), .B1(n790), .Y(n956) );
  OAI22XL U1467 ( .A0(n314), .A1(n787), .B0(n306), .B1(n788), .Y(n957) );
  NOR4X1 U1468 ( .A(n923), .B(n924), .C(n925), .D(n926), .Y(n912) );
  OAI22XL U1469 ( .A0(n281), .A1(n791), .B0(n273), .B1(n792), .Y(n923) );
  OAI22XL U1470 ( .A0(n297), .A1(n789), .B0(n289), .B1(n790), .Y(n924) );
  OAI22XL U1471 ( .A0(n313), .A1(n787), .B0(n305), .B1(n788), .Y(n925) );
  NOR4X1 U1472 ( .A(n902), .B(n903), .C(n904), .D(n905), .Y(n891) );
  OAI22XL U1473 ( .A0(n280), .A1(n791), .B0(n272), .B1(n792), .Y(n902) );
  OAI22XL U1474 ( .A0(n296), .A1(n789), .B0(n288), .B1(n790), .Y(n903) );
  OAI22XL U1475 ( .A0(n312), .A1(n787), .B0(n304), .B1(n788), .Y(n904) );
  NOR4X1 U1476 ( .A(n881), .B(n882), .C(n883), .D(n884), .Y(n870) );
  OAI22XL U1477 ( .A0(n279), .A1(n791), .B0(n271), .B1(n792), .Y(n881) );
  OAI22XL U1478 ( .A0(n295), .A1(n789), .B0(n287), .B1(n790), .Y(n882) );
  OAI22XL U1479 ( .A0(n311), .A1(n787), .B0(n303), .B1(n788), .Y(n883) );
  NOR4X1 U1480 ( .A(n860), .B(n861), .C(n862), .D(n863), .Y(n849) );
  OAI22XL U1481 ( .A0(n278), .A1(n791), .B0(n270), .B1(n792), .Y(n860) );
  OAI22XL U1482 ( .A0(n294), .A1(n789), .B0(n286), .B1(n790), .Y(n861) );
  OAI22XL U1483 ( .A0(n310), .A1(n787), .B0(n302), .B1(n788), .Y(n862) );
  NOR4X1 U1484 ( .A(n839), .B(n840), .C(n841), .D(n842), .Y(n828) );
  OAI22XL U1485 ( .A0(n277), .A1(n791), .B0(n269), .B1(n792), .Y(n839) );
  OAI22XL U1486 ( .A0(n293), .A1(n789), .B0(n285), .B1(n790), .Y(n840) );
  OAI22XL U1487 ( .A0(n309), .A1(n787), .B0(n301), .B1(n788), .Y(n841) );
  NOR4X1 U1488 ( .A(n818), .B(n819), .C(n820), .D(n821), .Y(n807) );
  OAI22XL U1489 ( .A0(n276), .A1(n791), .B0(n268), .B1(n792), .Y(n818) );
  OAI22XL U1490 ( .A0(n292), .A1(n789), .B0(n284), .B1(n790), .Y(n819) );
  OAI22XL U1491 ( .A0(n308), .A1(n787), .B0(n300), .B1(n788), .Y(n820) );
  NOR4X1 U1492 ( .A(n781), .B(n782), .C(n783), .D(n784), .Y(n754) );
  OAI22XL U1493 ( .A0(n275), .A1(n791), .B0(n267), .B1(n792), .Y(n781) );
  OAI22XL U1494 ( .A0(n291), .A1(n789), .B0(n283), .B1(n790), .Y(n782) );
  OAI22XL U1495 ( .A0(n307), .A1(n787), .B0(n299), .B1(n788), .Y(n783) );
  AO22X1 U1496 ( .A0(n750), .A1(n931), .B0(n752), .B1(strMatch_r[0]), .Y(N1146) );
  NAND4X1 U1497 ( .A(n933), .B(n934), .C(n935), .D(n936), .Y(n931) );
  NOR4X1 U1498 ( .A(n947), .B(n948), .C(n949), .D(n950), .Y(n935) );
  NOR4X1 U1499 ( .A(n963), .B(n964), .C(n965), .D(n966), .Y(n933) );
  AO22X1 U1500 ( .A0(n750), .A1(n910), .B0(n752), .B1(strMatch_r[1]), .Y(N1147) );
  NAND4X1 U1501 ( .A(n911), .B(n912), .C(n913), .D(n914), .Y(n910) );
  NOR4X1 U1502 ( .A(n919), .B(n920), .C(n921), .D(n922), .Y(n913) );
  NOR4X1 U1503 ( .A(n927), .B(n928), .C(n929), .D(n930), .Y(n911) );
  AO22X1 U1504 ( .A0(n750), .A1(n889), .B0(n752), .B1(strMatch_r[2]), .Y(N1148) );
  NAND4X1 U1505 ( .A(n890), .B(n891), .C(n892), .D(n893), .Y(n889) );
  NOR4X1 U1506 ( .A(n898), .B(n899), .C(n900), .D(n901), .Y(n892) );
  NOR4X1 U1507 ( .A(n906), .B(n907), .C(n908), .D(n909), .Y(n890) );
  AO22X1 U1508 ( .A0(n750), .A1(n868), .B0(n752), .B1(strMatch_r[3]), .Y(N1149) );
  NAND4X1 U1509 ( .A(n869), .B(n870), .C(n871), .D(n872), .Y(n868) );
  NOR4X1 U1510 ( .A(n877), .B(n878), .C(n879), .D(n880), .Y(n871) );
  NOR4X1 U1511 ( .A(n885), .B(n886), .C(n887), .D(n888), .Y(n869) );
  AO22X1 U1512 ( .A0(n750), .A1(n847), .B0(n752), .B1(strMatch_r[4]), .Y(N1150) );
  NAND4X1 U1513 ( .A(n848), .B(n849), .C(n850), .D(n851), .Y(n847) );
  NOR4X1 U1514 ( .A(n856), .B(n857), .C(n858), .D(n859), .Y(n850) );
  NOR4X1 U1515 ( .A(n864), .B(n865), .C(n866), .D(n867), .Y(n848) );
  AO22X1 U1516 ( .A0(n750), .A1(n826), .B0(n752), .B1(strMatch_r[5]), .Y(N1151) );
  NAND4X1 U1517 ( .A(n827), .B(n828), .C(n829), .D(n830), .Y(n826) );
  NOR4X1 U1518 ( .A(n835), .B(n836), .C(n837), .D(n838), .Y(n829) );
  NOR4X1 U1519 ( .A(n843), .B(n844), .C(n845), .D(n846), .Y(n827) );
  AO22X1 U1520 ( .A0(n750), .A1(n805), .B0(n752), .B1(strMatch_r[6]), .Y(N1152) );
  NAND4X1 U1521 ( .A(n806), .B(n807), .C(n808), .D(n809), .Y(n805) );
  NOR4X1 U1522 ( .A(n814), .B(n815), .C(n816), .D(n817), .Y(n808) );
  NOR4X1 U1523 ( .A(n822), .B(n823), .C(n824), .D(n825), .Y(n806) );
  AO22X1 U1524 ( .A0(n750), .A1(n751), .B0(n752), .B1(strMatch_r[7]), .Y(N1153) );
  NAND4X1 U1525 ( .A(n753), .B(n754), .C(n755), .D(n756), .Y(n751) );
  NOR4X1 U1526 ( .A(n769), .B(n770), .C(n771), .D(n772), .Y(n755) );
  NOR4X1 U1527 ( .A(n793), .B(n794), .C(n795), .D(n796), .Y(n753) );
  OAI22XL U1528 ( .A0(n202), .A1(n761), .B0(n194), .B1(n762), .Y(n940) );
  OAI22XL U1529 ( .A0(n201), .A1(n761), .B0(n193), .B1(n762), .Y(n918) );
  OAI22XL U1530 ( .A0(n200), .A1(n761), .B0(n192), .B1(n762), .Y(n897) );
  OAI22XL U1531 ( .A0(n199), .A1(n761), .B0(n191), .B1(n762), .Y(n876) );
  OAI22XL U1532 ( .A0(n198), .A1(n761), .B0(n190), .B1(n762), .Y(n855) );
  OAI22XL U1533 ( .A0(n197), .A1(n761), .B0(n189), .B1(n762), .Y(n834) );
  OAI22XL U1534 ( .A0(n196), .A1(n761), .B0(n188), .B1(n762), .Y(n813) );
  OAI22XL U1535 ( .A0(n195), .A1(n761), .B0(n187), .B1(n762), .Y(n760) );
  NOR4X1 U1536 ( .A(n937), .B(n938), .C(n939), .D(n940), .Y(n936) );
  OAI22XL U1537 ( .A0(n154), .A1(n767), .B0(n146), .B1(n768), .Y(n937) );
  OAI22XL U1538 ( .A0(n170), .A1(n765), .B0(n162), .B1(n766), .Y(n938) );
  OAI22XL U1539 ( .A0(n186), .A1(n763), .B0(n178), .B1(n764), .Y(n939) );
  NOR4X1 U1540 ( .A(n915), .B(n916), .C(n917), .D(n918), .Y(n914) );
  OAI22XL U1541 ( .A0(n153), .A1(n767), .B0(n145), .B1(n768), .Y(n915) );
  OAI22XL U1542 ( .A0(n169), .A1(n765), .B0(n161), .B1(n766), .Y(n916) );
  OAI22XL U1543 ( .A0(n185), .A1(n763), .B0(n177), .B1(n764), .Y(n917) );
  NOR4X1 U1544 ( .A(n894), .B(n895), .C(n896), .D(n897), .Y(n893) );
  OAI22XL U1545 ( .A0(n152), .A1(n767), .B0(n144), .B1(n768), .Y(n894) );
  OAI22XL U1546 ( .A0(n168), .A1(n765), .B0(n160), .B1(n766), .Y(n895) );
  OAI22XL U1547 ( .A0(n184), .A1(n763), .B0(n176), .B1(n764), .Y(n896) );
  NOR4X1 U1548 ( .A(n873), .B(n874), .C(n875), .D(n876), .Y(n872) );
  OAI22XL U1549 ( .A0(n151), .A1(n767), .B0(n143), .B1(n768), .Y(n873) );
  OAI22XL U1550 ( .A0(n167), .A1(n765), .B0(n159), .B1(n766), .Y(n874) );
  OAI22XL U1551 ( .A0(n183), .A1(n763), .B0(n175), .B1(n764), .Y(n875) );
  NOR4X1 U1552 ( .A(n852), .B(n853), .C(n854), .D(n855), .Y(n851) );
  OAI22XL U1553 ( .A0(n150), .A1(n767), .B0(n142), .B1(n768), .Y(n852) );
  OAI22XL U1554 ( .A0(n166), .A1(n765), .B0(n158), .B1(n766), .Y(n853) );
  OAI22XL U1555 ( .A0(n182), .A1(n763), .B0(n174), .B1(n764), .Y(n854) );
  NOR4X1 U1556 ( .A(n831), .B(n832), .C(n833), .D(n834), .Y(n830) );
  OAI22XL U1557 ( .A0(n149), .A1(n767), .B0(n141), .B1(n768), .Y(n831) );
  OAI22XL U1558 ( .A0(n165), .A1(n765), .B0(n157), .B1(n766), .Y(n832) );
  OAI22XL U1559 ( .A0(n181), .A1(n763), .B0(n173), .B1(n764), .Y(n833) );
  NOR4X1 U1560 ( .A(n810), .B(n811), .C(n812), .D(n813), .Y(n809) );
  OAI22XL U1561 ( .A0(n148), .A1(n767), .B0(n140), .B1(n768), .Y(n810) );
  OAI22XL U1562 ( .A0(n164), .A1(n765), .B0(n156), .B1(n766), .Y(n811) );
  OAI22XL U1563 ( .A0(n180), .A1(n763), .B0(n172), .B1(n764), .Y(n812) );
  NOR4X1 U1564 ( .A(n757), .B(n758), .C(n759), .D(n760), .Y(n756) );
  OAI22XL U1565 ( .A0(n147), .A1(n767), .B0(n139), .B1(n768), .Y(n757) );
  OAI22XL U1566 ( .A0(n163), .A1(n765), .B0(n155), .B1(n766), .Y(n758) );
  OAI22XL U1567 ( .A0(n179), .A1(n763), .B0(n171), .B1(n764), .Y(n759) );
  OAI22XL U1568 ( .A0(n672), .A1(n477), .B0(n1457), .B1(n469), .Y(n731) );
  OAI22XL U1569 ( .A0(n672), .A1(n476), .B0(n1457), .B1(n468), .Y(n733) );
  AOI22XL U1570 ( .A0(skipFlag_r), .A1(n678), .B0(n483), .B1(n679), .Y(n677)
         );
  NAND2X1 U1571 ( .A(n680), .B(n640), .Y(n678) );
  CLKINVX1 U1572 ( .A(N774), .Y(n1405) );
  OAI22XL U1573 ( .A0(n1342), .A1(n534), .B0(n535), .B1(n154), .Y(n1074) );
  OAI22XL U1574 ( .A0(n1344), .A1(n534), .B0(n535), .B1(n153), .Y(n1073) );
  OAI22XL U1575 ( .A0(n1346), .A1(n534), .B0(n535), .B1(n152), .Y(n1072) );
  OAI22XL U1576 ( .A0(n1348), .A1(n534), .B0(n535), .B1(n151), .Y(n1071) );
  OAI22XL U1577 ( .A0(n1350), .A1(n534), .B0(n535), .B1(n150), .Y(n1070) );
  OAI22XL U1578 ( .A0(n1352), .A1(n534), .B0(n535), .B1(n149), .Y(n1069) );
  OAI22XL U1579 ( .A0(n1354), .A1(n534), .B0(n535), .B1(n148), .Y(n1068) );
  OAI22XL U1580 ( .A0(n1355), .A1(n534), .B0(n535), .B1(n147), .Y(n1067) );
  OAI22XL U1581 ( .A0(n1342), .A1(n537), .B0(n538), .B1(n162), .Y(n1082) );
  OAI22XL U1582 ( .A0(n1344), .A1(n537), .B0(n538), .B1(n161), .Y(n1081) );
  OAI22XL U1583 ( .A0(n1346), .A1(n537), .B0(n538), .B1(n160), .Y(n1080) );
  OAI22XL U1584 ( .A0(n1348), .A1(n537), .B0(n538), .B1(n159), .Y(n1079) );
  OAI22XL U1585 ( .A0(n1350), .A1(n537), .B0(n538), .B1(n158), .Y(n1078) );
  OAI22XL U1586 ( .A0(n1352), .A1(n537), .B0(n538), .B1(n157), .Y(n1077) );
  OAI22XL U1587 ( .A0(n1354), .A1(n537), .B0(n538), .B1(n156), .Y(n1076) );
  OAI22XL U1588 ( .A0(n1356), .A1(n537), .B0(n538), .B1(n155), .Y(n1075) );
  OAI22XL U1589 ( .A0(n1341), .A1(n540), .B0(n541), .B1(n170), .Y(n1090) );
  OAI22XL U1590 ( .A0(n1343), .A1(n540), .B0(n541), .B1(n169), .Y(n1089) );
  OAI22XL U1591 ( .A0(n1345), .A1(n540), .B0(n541), .B1(n168), .Y(n1088) );
  OAI22XL U1592 ( .A0(n1347), .A1(n540), .B0(n541), .B1(n167), .Y(n1087) );
  OAI22XL U1593 ( .A0(n1349), .A1(n540), .B0(n541), .B1(n166), .Y(n1086) );
  OAI22XL U1594 ( .A0(n1351), .A1(n540), .B0(n541), .B1(n165), .Y(n1085) );
  OAI22XL U1595 ( .A0(n1353), .A1(n540), .B0(n541), .B1(n164), .Y(n1084) );
  OAI22XL U1596 ( .A0(n1355), .A1(n540), .B0(n541), .B1(n163), .Y(n1083) );
  OAI22XL U1597 ( .A0(n1342), .A1(n549), .B0(n550), .B1(n194), .Y(n1114) );
  OAI22XL U1598 ( .A0(n1344), .A1(n549), .B0(n550), .B1(n193), .Y(n1113) );
  OAI22XL U1599 ( .A0(n1346), .A1(n549), .B0(n550), .B1(n192), .Y(n1112) );
  OAI22XL U1600 ( .A0(n1348), .A1(n549), .B0(n550), .B1(n191), .Y(n1111) );
  OAI22XL U1601 ( .A0(n1350), .A1(n549), .B0(n550), .B1(n190), .Y(n1110) );
  OAI22XL U1602 ( .A0(n1352), .A1(n549), .B0(n550), .B1(n189), .Y(n1109) );
  OAI22XL U1603 ( .A0(n1354), .A1(n549), .B0(n550), .B1(n188), .Y(n1108) );
  OAI22XL U1604 ( .A0(n1356), .A1(n549), .B0(n550), .B1(n187), .Y(n1107) );
  OAI22XL U1605 ( .A0(n530), .A1(n546), .B0(n547), .B1(n186), .Y(n1106) );
  OAI22XL U1606 ( .A0(n529), .A1(n546), .B0(n547), .B1(n185), .Y(n1105) );
  OAI22XL U1607 ( .A0(n528), .A1(n546), .B0(n547), .B1(n184), .Y(n1104) );
  OAI22XL U1608 ( .A0(n527), .A1(n546), .B0(n547), .B1(n183), .Y(n1103) );
  OAI22XL U1609 ( .A0(n526), .A1(n546), .B0(n547), .B1(n182), .Y(n1102) );
  OAI22XL U1610 ( .A0(n525), .A1(n546), .B0(n547), .B1(n181), .Y(n1101) );
  OAI22XL U1611 ( .A0(n524), .A1(n546), .B0(n547), .B1(n180), .Y(n1100) );
  OAI22XL U1612 ( .A0(n1356), .A1(n546), .B0(n547), .B1(n179), .Y(n1099) );
  OAI22XL U1613 ( .A0(n1341), .A1(n608), .B0(n609), .B1(n386), .Y(n1306) );
  OAI22XL U1614 ( .A0(n1343), .A1(n608), .B0(n609), .B1(n385), .Y(n1305) );
  OAI22XL U1615 ( .A0(n1345), .A1(n608), .B0(n609), .B1(n384), .Y(n1304) );
  OAI22XL U1616 ( .A0(n1347), .A1(n608), .B0(n609), .B1(n383), .Y(n1303) );
  OAI22XL U1617 ( .A0(n1349), .A1(n608), .B0(n609), .B1(n382), .Y(n1302) );
  OAI22XL U1618 ( .A0(n1351), .A1(n608), .B0(n609), .B1(n381), .Y(n1301) );
  OAI22XL U1619 ( .A0(n1353), .A1(n608), .B0(n609), .B1(n380), .Y(n1300) );
  OAI22XL U1620 ( .A0(n1355), .A1(n608), .B0(n609), .B1(n379), .Y(n1299) );
  OAI22XL U1621 ( .A0(n1341), .A1(n588), .B0(n589), .B1(n322), .Y(n1242) );
  OAI22XL U1622 ( .A0(n1343), .A1(n588), .B0(n589), .B1(n321), .Y(n1241) );
  OAI22XL U1623 ( .A0(n1345), .A1(n588), .B0(n589), .B1(n320), .Y(n1240) );
  OAI22XL U1624 ( .A0(n1347), .A1(n588), .B0(n589), .B1(n319), .Y(n1239) );
  OAI22XL U1625 ( .A0(n1349), .A1(n588), .B0(n589), .B1(n318), .Y(n1238) );
  OAI22XL U1626 ( .A0(n1351), .A1(n588), .B0(n589), .B1(n317), .Y(n1237) );
  OAI22XL U1627 ( .A0(n1353), .A1(n588), .B0(n589), .B1(n316), .Y(n1236) );
  OAI22XL U1628 ( .A0(n1355), .A1(n588), .B0(n589), .B1(n315), .Y(n1235) );
  OAI22XL U1629 ( .A0(n1342), .A1(n569), .B0(n570), .B1(n258), .Y(n1178) );
  OAI22XL U1630 ( .A0(n1344), .A1(n569), .B0(n570), .B1(n257), .Y(n1177) );
  OAI22XL U1631 ( .A0(n1346), .A1(n569), .B0(n570), .B1(n256), .Y(n1176) );
  OAI22XL U1632 ( .A0(n1348), .A1(n569), .B0(n570), .B1(n255), .Y(n1175) );
  OAI22XL U1633 ( .A0(n1350), .A1(n569), .B0(n570), .B1(n254), .Y(n1174) );
  OAI22XL U1634 ( .A0(n1352), .A1(n569), .B0(n570), .B1(n253), .Y(n1173) );
  OAI22XL U1635 ( .A0(n1354), .A1(n569), .B0(n570), .B1(n252), .Y(n1172) );
  OAI22XL U1636 ( .A0(n1356), .A1(n569), .B0(n570), .B1(n251), .Y(n1171) );
  OAI22XL U1637 ( .A0(n1341), .A1(n606), .B0(n607), .B1(n378), .Y(n1298) );
  OAI22XL U1638 ( .A0(n1343), .A1(n606), .B0(n607), .B1(n377), .Y(n1297) );
  OAI22XL U1639 ( .A0(n1345), .A1(n606), .B0(n607), .B1(n376), .Y(n1296) );
  OAI22XL U1640 ( .A0(n1347), .A1(n606), .B0(n607), .B1(n375), .Y(n1295) );
  OAI22XL U1641 ( .A0(n1349), .A1(n606), .B0(n607), .B1(n374), .Y(n1294) );
  OAI22XL U1642 ( .A0(n1351), .A1(n606), .B0(n607), .B1(n373), .Y(n1293) );
  OAI22XL U1643 ( .A0(n1353), .A1(n606), .B0(n607), .B1(n372), .Y(n1292) );
  OAI22XL U1644 ( .A0(n1355), .A1(n606), .B0(n607), .B1(n371), .Y(n1291) );
  OAI22XL U1645 ( .A0(n1341), .A1(n586), .B0(n587), .B1(n314), .Y(n1234) );
  OAI22XL U1646 ( .A0(n1343), .A1(n586), .B0(n587), .B1(n313), .Y(n1233) );
  OAI22XL U1647 ( .A0(n1345), .A1(n586), .B0(n587), .B1(n312), .Y(n1232) );
  OAI22XL U1648 ( .A0(n1347), .A1(n586), .B0(n587), .B1(n311), .Y(n1231) );
  OAI22XL U1649 ( .A0(n1349), .A1(n586), .B0(n587), .B1(n310), .Y(n1230) );
  OAI22XL U1650 ( .A0(n1351), .A1(n586), .B0(n587), .B1(n309), .Y(n1229) );
  OAI22XL U1651 ( .A0(n1353), .A1(n586), .B0(n587), .B1(n308), .Y(n1228) );
  OAI22XL U1652 ( .A0(n1355), .A1(n586), .B0(n587), .B1(n307), .Y(n1227) );
  OAI22XL U1653 ( .A0(n1342), .A1(n567), .B0(n568), .B1(n250), .Y(n1170) );
  OAI22XL U1654 ( .A0(n1344), .A1(n567), .B0(n568), .B1(n249), .Y(n1169) );
  OAI22XL U1655 ( .A0(n1346), .A1(n567), .B0(n568), .B1(n248), .Y(n1168) );
  OAI22XL U1656 ( .A0(n1348), .A1(n567), .B0(n568), .B1(n247), .Y(n1167) );
  OAI22XL U1657 ( .A0(n1350), .A1(n567), .B0(n568), .B1(n246), .Y(n1166) );
  OAI22XL U1658 ( .A0(n1352), .A1(n567), .B0(n568), .B1(n245), .Y(n1165) );
  OAI22XL U1659 ( .A0(n1354), .A1(n567), .B0(n568), .B1(n244), .Y(n1164) );
  OAI22XL U1660 ( .A0(n1356), .A1(n567), .B0(n568), .B1(n243), .Y(n1163) );
  OAI22XL U1661 ( .A0(n530), .A1(n543), .B0(n544), .B1(n178), .Y(n1098) );
  OAI22XL U1662 ( .A0(n529), .A1(n543), .B0(n544), .B1(n177), .Y(n1097) );
  OAI22XL U1663 ( .A0(n528), .A1(n543), .B0(n544), .B1(n176), .Y(n1096) );
  OAI22XL U1664 ( .A0(n527), .A1(n543), .B0(n544), .B1(n175), .Y(n1095) );
  OAI22XL U1665 ( .A0(n526), .A1(n543), .B0(n544), .B1(n174), .Y(n1094) );
  OAI22XL U1666 ( .A0(n525), .A1(n543), .B0(n544), .B1(n173), .Y(n1093) );
  OAI22XL U1667 ( .A0(n524), .A1(n543), .B0(n544), .B1(n172), .Y(n1092) );
  OAI22XL U1668 ( .A0(n521), .A1(n543), .B0(n544), .B1(n171), .Y(n1091) );
  OAI22XL U1669 ( .A0(n1341), .A1(n604), .B0(n605), .B1(n370), .Y(n1290) );
  OAI22XL U1670 ( .A0(n1343), .A1(n604), .B0(n605), .B1(n369), .Y(n1289) );
  OAI22XL U1671 ( .A0(n1345), .A1(n604), .B0(n605), .B1(n368), .Y(n1288) );
  OAI22XL U1672 ( .A0(n1347), .A1(n604), .B0(n605), .B1(n367), .Y(n1287) );
  OAI22XL U1673 ( .A0(n1349), .A1(n604), .B0(n605), .B1(n366), .Y(n1286) );
  OAI22XL U1674 ( .A0(n1351), .A1(n604), .B0(n605), .B1(n365), .Y(n1285) );
  OAI22XL U1675 ( .A0(n1353), .A1(n604), .B0(n605), .B1(n364), .Y(n1284) );
  OAI22XL U1676 ( .A0(n1355), .A1(n604), .B0(n605), .B1(n363), .Y(n1283) );
  OAI22XL U1677 ( .A0(n1341), .A1(n584), .B0(n585), .B1(n306), .Y(n1226) );
  OAI22XL U1678 ( .A0(n1343), .A1(n584), .B0(n585), .B1(n305), .Y(n1225) );
  OAI22XL U1679 ( .A0(n1345), .A1(n584), .B0(n585), .B1(n304), .Y(n1224) );
  OAI22XL U1680 ( .A0(n1347), .A1(n584), .B0(n585), .B1(n303), .Y(n1223) );
  OAI22XL U1681 ( .A0(n1349), .A1(n584), .B0(n585), .B1(n302), .Y(n1222) );
  OAI22XL U1682 ( .A0(n1351), .A1(n584), .B0(n585), .B1(n301), .Y(n1221) );
  OAI22XL U1683 ( .A0(n1353), .A1(n584), .B0(n585), .B1(n300), .Y(n1220) );
  OAI22XL U1684 ( .A0(n1355), .A1(n584), .B0(n585), .B1(n299), .Y(n1219) );
  OAI22XL U1685 ( .A0(n1342), .A1(n565), .B0(n566), .B1(n242), .Y(n1162) );
  OAI22XL U1686 ( .A0(n1344), .A1(n565), .B0(n566), .B1(n241), .Y(n1161) );
  OAI22XL U1687 ( .A0(n1346), .A1(n565), .B0(n566), .B1(n240), .Y(n1160) );
  OAI22XL U1688 ( .A0(n1348), .A1(n565), .B0(n566), .B1(n239), .Y(n1159) );
  OAI22XL U1689 ( .A0(n1350), .A1(n565), .B0(n566), .B1(n238), .Y(n1158) );
  OAI22XL U1690 ( .A0(n1352), .A1(n565), .B0(n566), .B1(n237), .Y(n1157) );
  OAI22XL U1691 ( .A0(n1354), .A1(n565), .B0(n566), .B1(n236), .Y(n1156) );
  OAI22XL U1692 ( .A0(n1356), .A1(n565), .B0(n566), .B1(n235), .Y(n1155) );
  OAI22XL U1693 ( .A0(n1341), .A1(n598), .B0(n599), .B1(n346), .Y(n1266) );
  OAI22XL U1694 ( .A0(n1343), .A1(n598), .B0(n599), .B1(n345), .Y(n1265) );
  OAI22XL U1695 ( .A0(n1345), .A1(n598), .B0(n599), .B1(n344), .Y(n1264) );
  OAI22XL U1696 ( .A0(n1347), .A1(n598), .B0(n599), .B1(n343), .Y(n1263) );
  OAI22XL U1697 ( .A0(n1349), .A1(n598), .B0(n599), .B1(n342), .Y(n1262) );
  OAI22XL U1698 ( .A0(n1351), .A1(n598), .B0(n599), .B1(n341), .Y(n1261) );
  OAI22XL U1699 ( .A0(n1353), .A1(n598), .B0(n599), .B1(n340), .Y(n1260) );
  OAI22XL U1700 ( .A0(n1355), .A1(n598), .B0(n599), .B1(n339), .Y(n1259) );
  OAI22XL U1701 ( .A0(n1342), .A1(n578), .B0(n579), .B1(n282), .Y(n1202) );
  OAI22XL U1702 ( .A0(n1344), .A1(n578), .B0(n579), .B1(n281), .Y(n1201) );
  OAI22XL U1703 ( .A0(n1346), .A1(n578), .B0(n579), .B1(n280), .Y(n1200) );
  OAI22XL U1704 ( .A0(n1348), .A1(n578), .B0(n579), .B1(n279), .Y(n1199) );
  OAI22XL U1705 ( .A0(n1350), .A1(n578), .B0(n579), .B1(n278), .Y(n1198) );
  OAI22XL U1706 ( .A0(n1352), .A1(n578), .B0(n579), .B1(n277), .Y(n1197) );
  OAI22XL U1707 ( .A0(n1354), .A1(n578), .B0(n579), .B1(n276), .Y(n1196) );
  OAI22XL U1708 ( .A0(n1356), .A1(n578), .B0(n579), .B1(n275), .Y(n1195) );
  OAI22XL U1709 ( .A0(n1342), .A1(n559), .B0(n560), .B1(n218), .Y(n1138) );
  OAI22XL U1710 ( .A0(n1344), .A1(n559), .B0(n560), .B1(n217), .Y(n1137) );
  OAI22XL U1711 ( .A0(n1346), .A1(n559), .B0(n560), .B1(n216), .Y(n1136) );
  OAI22XL U1712 ( .A0(n1348), .A1(n559), .B0(n560), .B1(n215), .Y(n1135) );
  OAI22XL U1713 ( .A0(n1350), .A1(n559), .B0(n560), .B1(n214), .Y(n1134) );
  OAI22XL U1714 ( .A0(n1352), .A1(n559), .B0(n560), .B1(n213), .Y(n1133) );
  OAI22XL U1715 ( .A0(n1354), .A1(n559), .B0(n560), .B1(n212), .Y(n1132) );
  OAI22XL U1716 ( .A0(n1356), .A1(n559), .B0(n560), .B1(n211), .Y(n1131) );
  OAI22XL U1717 ( .A0(n1341), .A1(n600), .B0(n601), .B1(n354), .Y(n1274) );
  OAI22XL U1718 ( .A0(n1343), .A1(n600), .B0(n601), .B1(n353), .Y(n1273) );
  OAI22XL U1719 ( .A0(n1345), .A1(n600), .B0(n601), .B1(n352), .Y(n1272) );
  OAI22XL U1720 ( .A0(n1347), .A1(n600), .B0(n601), .B1(n351), .Y(n1271) );
  OAI22XL U1721 ( .A0(n1349), .A1(n600), .B0(n601), .B1(n350), .Y(n1270) );
  OAI22XL U1722 ( .A0(n1351), .A1(n600), .B0(n601), .B1(n349), .Y(n1269) );
  OAI22XL U1723 ( .A0(n1353), .A1(n600), .B0(n601), .B1(n348), .Y(n1268) );
  OAI22XL U1724 ( .A0(n1355), .A1(n600), .B0(n601), .B1(n347), .Y(n1267) );
  OAI22XL U1725 ( .A0(n1342), .A1(n580), .B0(n581), .B1(n290), .Y(n1210) );
  OAI22XL U1726 ( .A0(n1344), .A1(n580), .B0(n581), .B1(n289), .Y(n1209) );
  OAI22XL U1727 ( .A0(n1346), .A1(n580), .B0(n581), .B1(n288), .Y(n1208) );
  OAI22XL U1728 ( .A0(n1348), .A1(n580), .B0(n581), .B1(n287), .Y(n1207) );
  OAI22XL U1729 ( .A0(n1350), .A1(n580), .B0(n581), .B1(n286), .Y(n1206) );
  OAI22XL U1730 ( .A0(n1352), .A1(n580), .B0(n581), .B1(n285), .Y(n1205) );
  OAI22XL U1731 ( .A0(n1354), .A1(n580), .B0(n581), .B1(n284), .Y(n1204) );
  OAI22XL U1732 ( .A0(n1356), .A1(n580), .B0(n581), .B1(n283), .Y(n1203) );
  OAI22XL U1733 ( .A0(n1342), .A1(n561), .B0(n562), .B1(n226), .Y(n1146) );
  OAI22XL U1734 ( .A0(n1344), .A1(n561), .B0(n562), .B1(n225), .Y(n1145) );
  OAI22XL U1735 ( .A0(n1346), .A1(n561), .B0(n562), .B1(n224), .Y(n1144) );
  OAI22XL U1736 ( .A0(n1348), .A1(n561), .B0(n562), .B1(n223), .Y(n1143) );
  OAI22XL U1737 ( .A0(n1350), .A1(n561), .B0(n562), .B1(n222), .Y(n1142) );
  OAI22XL U1738 ( .A0(n1352), .A1(n561), .B0(n562), .B1(n221), .Y(n1141) );
  OAI22XL U1739 ( .A0(n1354), .A1(n561), .B0(n562), .B1(n220), .Y(n1140) );
  OAI22XL U1740 ( .A0(n1356), .A1(n561), .B0(n562), .B1(n219), .Y(n1139) );
  OAI22XL U1741 ( .A0(n1341), .A1(n602), .B0(n603), .B1(n362), .Y(n1282) );
  OAI22XL U1742 ( .A0(n1343), .A1(n602), .B0(n603), .B1(n361), .Y(n1281) );
  OAI22XL U1743 ( .A0(n1345), .A1(n602), .B0(n603), .B1(n360), .Y(n1280) );
  OAI22XL U1744 ( .A0(n1347), .A1(n602), .B0(n603), .B1(n359), .Y(n1279) );
  OAI22XL U1745 ( .A0(n1349), .A1(n602), .B0(n603), .B1(n358), .Y(n1278) );
  OAI22XL U1746 ( .A0(n1351), .A1(n602), .B0(n603), .B1(n357), .Y(n1277) );
  OAI22XL U1747 ( .A0(n1353), .A1(n602), .B0(n603), .B1(n356), .Y(n1276) );
  OAI22XL U1748 ( .A0(n1355), .A1(n602), .B0(n603), .B1(n355), .Y(n1275) );
  OAI22XL U1749 ( .A0(n1341), .A1(n582), .B0(n583), .B1(n298), .Y(n1218) );
  OAI22XL U1750 ( .A0(n1343), .A1(n582), .B0(n583), .B1(n297), .Y(n1217) );
  OAI22XL U1751 ( .A0(n1345), .A1(n582), .B0(n583), .B1(n296), .Y(n1216) );
  OAI22XL U1752 ( .A0(n1347), .A1(n582), .B0(n583), .B1(n295), .Y(n1215) );
  OAI22XL U1753 ( .A0(n1349), .A1(n582), .B0(n583), .B1(n294), .Y(n1214) );
  OAI22XL U1754 ( .A0(n1351), .A1(n582), .B0(n583), .B1(n293), .Y(n1213) );
  OAI22XL U1755 ( .A0(n1353), .A1(n582), .B0(n583), .B1(n292), .Y(n1212) );
  OAI22XL U1756 ( .A0(n1355), .A1(n582), .B0(n583), .B1(n291), .Y(n1211) );
  OAI22XL U1757 ( .A0(n1342), .A1(n563), .B0(n564), .B1(n234), .Y(n1154) );
  OAI22XL U1758 ( .A0(n1344), .A1(n563), .B0(n564), .B1(n233), .Y(n1153) );
  OAI22XL U1759 ( .A0(n1346), .A1(n563), .B0(n564), .B1(n232), .Y(n1152) );
  OAI22XL U1760 ( .A0(n1348), .A1(n563), .B0(n564), .B1(n231), .Y(n1151) );
  OAI22XL U1761 ( .A0(n1350), .A1(n563), .B0(n564), .B1(n230), .Y(n1150) );
  OAI22XL U1762 ( .A0(n1352), .A1(n563), .B0(n564), .B1(n229), .Y(n1149) );
  OAI22XL U1763 ( .A0(n1354), .A1(n563), .B0(n564), .B1(n228), .Y(n1148) );
  OAI22XL U1764 ( .A0(n1356), .A1(n563), .B0(n564), .B1(n227), .Y(n1147) );
  OAI21X1 U1765 ( .A0(n659), .A1(n1501), .B0(n667), .Y(matchCnt_w[0]) );
  NAND3X1 U1766 ( .A(n1459), .B(n661), .C(N818), .Y(n667) );
  OAI22XL U1767 ( .A0(n522), .A1(n1341), .B0(n523), .B1(n146), .Y(n1066) );
  OAI22XL U1768 ( .A0(n522), .A1(n1343), .B0(n523), .B1(n145), .Y(n1065) );
  OAI22XL U1769 ( .A0(n522), .A1(n1345), .B0(n523), .B1(n144), .Y(n1064) );
  OAI22XL U1770 ( .A0(n522), .A1(n1347), .B0(n523), .B1(n143), .Y(n1063) );
  OAI22XL U1771 ( .A0(n522), .A1(n1349), .B0(n523), .B1(n142), .Y(n1062) );
  OAI22XL U1772 ( .A0(n522), .A1(n1351), .B0(n523), .B1(n141), .Y(n1061) );
  OAI22XL U1773 ( .A0(n522), .A1(n1353), .B0(n523), .B1(n140), .Y(n1060) );
  OAI22XL U1774 ( .A0(n521), .A1(n522), .B0(n523), .B1(n139), .Y(n1059) );
  OAI22XL U1775 ( .A0(n1341), .A1(n592), .B0(n593), .B1(n338), .Y(n1258) );
  OAI22XL U1776 ( .A0(n1343), .A1(n592), .B0(n593), .B1(n337), .Y(n1257) );
  OAI22XL U1777 ( .A0(n1345), .A1(n592), .B0(n593), .B1(n336), .Y(n1256) );
  OAI22XL U1778 ( .A0(n1347), .A1(n592), .B0(n593), .B1(n335), .Y(n1255) );
  OAI22XL U1779 ( .A0(n1349), .A1(n592), .B0(n593), .B1(n334), .Y(n1254) );
  OAI22XL U1780 ( .A0(n1351), .A1(n592), .B0(n593), .B1(n333), .Y(n1253) );
  OAI22XL U1781 ( .A0(n1353), .A1(n592), .B0(n593), .B1(n332), .Y(n1252) );
  OAI22XL U1782 ( .A0(n1355), .A1(n592), .B0(n593), .B1(n331), .Y(n1251) );
  OAI22XL U1783 ( .A0(n1342), .A1(n575), .B0(n576), .B1(n274), .Y(n1194) );
  OAI22XL U1784 ( .A0(n1344), .A1(n575), .B0(n576), .B1(n273), .Y(n1193) );
  OAI22XL U1785 ( .A0(n1346), .A1(n575), .B0(n576), .B1(n272), .Y(n1192) );
  OAI22XL U1786 ( .A0(n1348), .A1(n575), .B0(n576), .B1(n271), .Y(n1191) );
  OAI22XL U1787 ( .A0(n1350), .A1(n575), .B0(n576), .B1(n270), .Y(n1190) );
  OAI22XL U1788 ( .A0(n1352), .A1(n575), .B0(n576), .B1(n269), .Y(n1189) );
  OAI22XL U1789 ( .A0(n1354), .A1(n575), .B0(n576), .B1(n268), .Y(n1188) );
  OAI22XL U1790 ( .A0(n1356), .A1(n575), .B0(n576), .B1(n267), .Y(n1187) );
  OAI22XL U1791 ( .A0(n1342), .A1(n556), .B0(n557), .B1(n210), .Y(n1130) );
  OAI22XL U1792 ( .A0(n1344), .A1(n556), .B0(n557), .B1(n209), .Y(n1129) );
  OAI22XL U1793 ( .A0(n1346), .A1(n556), .B0(n557), .B1(n208), .Y(n1128) );
  OAI22XL U1794 ( .A0(n1348), .A1(n556), .B0(n557), .B1(n207), .Y(n1127) );
  OAI22XL U1795 ( .A0(n1350), .A1(n556), .B0(n557), .B1(n206), .Y(n1126) );
  OAI22XL U1796 ( .A0(n1352), .A1(n556), .B0(n557), .B1(n205), .Y(n1125) );
  OAI22XL U1797 ( .A0(n1354), .A1(n556), .B0(n557), .B1(n204), .Y(n1124) );
  OAI22XL U1798 ( .A0(n1356), .A1(n556), .B0(n557), .B1(n203), .Y(n1123) );
  OAI22XL U1799 ( .A0(n1342), .A1(n571), .B0(n572), .B1(n266), .Y(n1186) );
  OAI22XL U1800 ( .A0(n1344), .A1(n571), .B0(n572), .B1(n265), .Y(n1185) );
  OAI22XL U1801 ( .A0(n1346), .A1(n571), .B0(n572), .B1(n264), .Y(n1184) );
  OAI22XL U1802 ( .A0(n1348), .A1(n571), .B0(n572), .B1(n263), .Y(n1183) );
  OAI22XL U1803 ( .A0(n1350), .A1(n571), .B0(n572), .B1(n262), .Y(n1182) );
  OAI22XL U1804 ( .A0(n1352), .A1(n571), .B0(n572), .B1(n261), .Y(n1181) );
  OAI22XL U1805 ( .A0(n1354), .A1(n571), .B0(n572), .B1(n260), .Y(n1180) );
  OAI22XL U1806 ( .A0(n1356), .A1(n571), .B0(n572), .B1(n259), .Y(n1179) );
  OAI22XL U1807 ( .A0(n1341), .A1(n590), .B0(n591), .B1(n330), .Y(n1250) );
  OAI22XL U1808 ( .A0(n1343), .A1(n590), .B0(n591), .B1(n329), .Y(n1249) );
  OAI22XL U1809 ( .A0(n1345), .A1(n590), .B0(n591), .B1(n328), .Y(n1248) );
  OAI22XL U1810 ( .A0(n1347), .A1(n590), .B0(n591), .B1(n327), .Y(n1247) );
  OAI22XL U1811 ( .A0(n1349), .A1(n590), .B0(n591), .B1(n326), .Y(n1246) );
  OAI22XL U1812 ( .A0(n1351), .A1(n590), .B0(n591), .B1(n325), .Y(n1245) );
  OAI22XL U1813 ( .A0(n1353), .A1(n590), .B0(n591), .B1(n324), .Y(n1244) );
  OAI22XL U1814 ( .A0(n1355), .A1(n590), .B0(n591), .B1(n323), .Y(n1243) );
  OAI22XL U1815 ( .A0(n1342), .A1(n552), .B0(n553), .B1(n202), .Y(n1122) );
  OAI22XL U1816 ( .A0(n1344), .A1(n552), .B0(n553), .B1(n201), .Y(n1121) );
  OAI22XL U1817 ( .A0(n1346), .A1(n552), .B0(n553), .B1(n200), .Y(n1120) );
  OAI22XL U1818 ( .A0(n1348), .A1(n552), .B0(n553), .B1(n199), .Y(n1119) );
  OAI22XL U1819 ( .A0(n1350), .A1(n552), .B0(n553), .B1(n198), .Y(n1118) );
  OAI22XL U1820 ( .A0(n1352), .A1(n552), .B0(n553), .B1(n197), .Y(n1117) );
  OAI22XL U1821 ( .A0(n1354), .A1(n552), .B0(n553), .B1(n196), .Y(n1116) );
  OAI22XL U1822 ( .A0(n1356), .A1(n552), .B0(n553), .B1(n195), .Y(n1115) );
  CLKBUFX3 U1823 ( .A(n596), .Y(n1331) );
  AOI22X1 U1824 ( .A0(N163), .A1(n1485), .B0(strCnt_r[2]), .B1(n975), .Y(n596)
         );
  CLKINVX1 U1825 ( .A(matchCnt2_r[3]), .Y(n1406) );
  OAI22XL U1826 ( .A0(n1341), .A1(n610), .B0(n611), .B1(n394), .Y(n1314) );
  OAI22XL U1827 ( .A0(n1343), .A1(n610), .B0(n611), .B1(n393), .Y(n1313) );
  OAI22XL U1828 ( .A0(n1345), .A1(n610), .B0(n611), .B1(n392), .Y(n1312) );
  OAI22XL U1829 ( .A0(n1347), .A1(n610), .B0(n611), .B1(n391), .Y(n1311) );
  OAI22XL U1830 ( .A0(n1349), .A1(n610), .B0(n611), .B1(n390), .Y(n1310) );
  OAI22XL U1831 ( .A0(n1351), .A1(n610), .B0(n611), .B1(n389), .Y(n1309) );
  OAI22XL U1832 ( .A0(n1353), .A1(n610), .B0(n611), .B1(n388), .Y(n1308) );
  OAI22XL U1833 ( .A0(n1355), .A1(n610), .B0(n611), .B1(n387), .Y(n1307) );
  AOI22X1 U1834 ( .A0(N167), .A1(n1485), .B0(strCnt_r[6]), .B1(n975), .Y(n613)
         );
  ADDFXL U1835 ( .A(n1321), .B(\add_0_root_sub_0_root_sub_228/B[8] ), .CI(
        \add_0_root_sub_0_root_sub_228/carry [4]), .CO(
        \add_0_root_sub_0_root_sub_228/carry [5]), .S(N765) );
  AOI22X1 U1836 ( .A0(N166), .A1(n1485), .B0(strCnt_r[5]), .B1(n975), .Y(n614)
         );
  ADDFXL U1837 ( .A(matchCnt_r[5]), .B(\add_0_root_sub_0_root_sub_228/B[8] ), 
        .CI(\add_0_root_sub_0_root_sub_228/carry [5]), .CO(
        \add_0_root_sub_0_root_sub_228/carry [6]), .S(N766) );
  OAI2BB2X1 U1838 ( .B0(n735), .B1(n637), .A0N(n1484), .A1N(matchCnt2_r[3]), 
        .Y(matchCnt2_w[3]) );
  AOI2BB2X1 U1839 ( .B0(n1332), .B1(tmp_r[3]), .A0N(n474), .A1N(n672), .Y(n735) );
  NAND3X1 U1840 ( .A(n1459), .B(n661), .C(N821), .Y(n664) );
  OAI2BB1X1 U1841 ( .A0N(starCnt_r[0]), .A1N(n644), .B0(n652), .Y(starCnt_w[0]) );
  NAND3X1 U1842 ( .A(n1459), .B(n1332), .C(N898), .Y(n652) );
  OAI2BB1X1 U1843 ( .A0N(starCnt_r[1]), .A1N(n644), .B0(n651), .Y(starCnt_w[1]) );
  NAND3X1 U1844 ( .A(n1459), .B(n1332), .C(N899), .Y(n651) );
  NAND3X1 U1845 ( .A(n1459), .B(n661), .C(N822), .Y(n663) );
  OAI2BB1X1 U1846 ( .A0N(starCnt_r[2]), .A1N(n644), .B0(n650), .Y(starCnt_w[2]) );
  NAND3X1 U1847 ( .A(n1459), .B(n1332), .C(N900), .Y(n650) );
  ADDFXL U1848 ( .A(matchCnt_r[3]), .B(\add_0_root_sub_0_root_sub_228/B[3] ), 
        .CI(\add_0_root_sub_0_root_sub_228/carry [3]), .CO(
        \add_0_root_sub_0_root_sub_228/carry [4]), .S(N764) );
  ADDFXL U1849 ( .A(matchCnt_r[6]), .B(\add_0_root_sub_0_root_sub_228/B[8] ), 
        .CI(\add_0_root_sub_0_root_sub_228/carry [6]), .CO(
        \add_0_root_sub_0_root_sub_228/carry [7]), .S(N767) );
  OAI2BB1X1 U1850 ( .A0N(starCnt_r[3]), .A1N(n644), .B0(n649), .Y(starCnt_w[3]) );
  NAND3X1 U1851 ( .A(n1459), .B(n1332), .C(N901), .Y(n649) );
  ADDFXL U1852 ( .A(matchCnt_r[2]), .B(\add_0_root_sub_0_root_sub_228/B[2] ), 
        .CI(\add_0_root_sub_0_root_sub_228/carry [2]), .CO(
        \add_0_root_sub_0_root_sub_228/carry [3]), .S(N763) );
  ADDFXL U1853 ( .A(matchCnt_r[1]), .B(\add_0_root_sub_0_root_sub_228/B[1] ), 
        .CI(\add_0_root_sub_0_root_sub_228/carry [1]), .CO(
        \add_0_root_sub_0_root_sub_228/carry [2]), .S(N762) );
  CLKINVX1 U1854 ( .A(matchCnt_r[5]), .Y(n1506) );
  NAND3X1 U1855 ( .A(n1459), .B(n661), .C(N823), .Y(n662) );
  NOR3X1 U1856 ( .A(n669), .B(continueFlag_r), .C(n642), .Y(n655) );
  OR2X1 U1857 ( .A(tmp_r[1]), .B(tmp_r[0]), .Y(n1369) );
  ADDFXL U1858 ( .A(\add_0_root_add_0_root_sub_291/A[3] ), .B(
        \add_0_root_add_0_root_sub_291/B[3] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [3]), .CO(
        \add_0_root_add_0_root_sub_291/carry [4]), .S(N967) );
  OAI2BB1X1 U1859 ( .A0N(starCnt_r[4]), .A1N(n644), .B0(n648), .Y(starCnt_w[4]) );
  NAND3X1 U1860 ( .A(n1459), .B(n1332), .C(N902), .Y(n648) );
  CLKINVX1 U1861 ( .A(matchCnt_r[6]), .Y(n1507) );
  NAND3X1 U1862 ( .A(n1459), .B(n661), .C(N824), .Y(n660) );
  OAI22XL U1863 ( .A0(n627), .A1(n628), .B0(n629), .B1(n1483), .Y(n626) );
  AOI211X1 U1864 ( .A0(ispattern), .A1(n624), .B0(n1470), .C0(n1485), .Y(n628)
         );
  NOR3BXL U1865 ( .AN(n620), .B(n630), .C(isstring), .Y(n627) );
  AOI2BB2X1 U1866 ( .B0(ispattern), .B1(n1490), .A0N(n1489), .A1N(ispattern), 
        .Y(n630) );
  CLKBUFX3 U1867 ( .A(reset), .Y(n1365) );
  CLKINVX1 U1868 ( .A(isstring), .Y(n1470) );
  CLKBUFX3 U1869 ( .A(reset), .Y(n1363) );
  OAI22XL U1870 ( .A0(n455), .A1(n687), .B0(n447), .B1(n688), .Y(n715) );
  OAI22XL U1871 ( .A0(n457), .A1(n687), .B0(n449), .B1(n688), .Y(n725) );
  OAI22XL U1872 ( .A0(n135), .A1(n701), .B0(n711), .B1(n682), .Y(N1157) );
  NOR4X1 U1873 ( .A(n712), .B(n713), .C(n714), .D(n715), .Y(n711) );
  OAI22XL U1874 ( .A0(n407), .A1(n693), .B0(n399), .B1(n694), .Y(n712) );
  OAI22XL U1875 ( .A0(n423), .A1(n691), .B0(n415), .B1(n692), .Y(n713) );
  OAI22XL U1876 ( .A0(n137), .A1(n701), .B0(n721), .B1(n682), .Y(N1155) );
  NOR4X1 U1877 ( .A(n722), .B(n723), .C(n724), .D(n725), .Y(n721) );
  OAI22XL U1878 ( .A0(n409), .A1(n693), .B0(n401), .B1(n694), .Y(n722) );
  OAI22XL U1879 ( .A0(n425), .A1(n691), .B0(n417), .B1(n692), .Y(n723) );
  NAND2X2 U1880 ( .A(chardata[0]), .B(n518), .Y(n497) );
  NAND2X2 U1881 ( .A(chardata[1]), .B(n518), .Y(n496) );
  NAND2X2 U1882 ( .A(chardata[2]), .B(n518), .Y(n495) );
  NAND2X2 U1883 ( .A(chardata[3]), .B(n518), .Y(n494) );
  NAND2X2 U1884 ( .A(chardata[4]), .B(n518), .Y(n493) );
  NAND2X2 U1885 ( .A(chardata[5]), .B(n518), .Y(n492) );
  NAND2X2 U1886 ( .A(chardata[6]), .B(n518), .Y(n491) );
  OR2X2 U1887 ( .A(ispattern), .B(n1366), .Y(n499) );
  OAI22XL U1888 ( .A0(n1461), .A1(n402), .B0(n1338), .B1(n497), .Y(n1002) );
  OAI22XL U1889 ( .A0(n1461), .A1(n401), .B0(n1338), .B1(n496), .Y(n1001) );
  OAI22XL U1890 ( .A0(n1461), .A1(n400), .B0(n1338), .B1(n495), .Y(n1000) );
  OAI22XL U1891 ( .A0(n1461), .A1(n399), .B0(n1338), .B1(n494), .Y(n999) );
  OAI22XL U1892 ( .A0(n1461), .A1(n398), .B0(n1338), .B1(n493), .Y(n998) );
  OAI22XL U1893 ( .A0(n1461), .A1(n397), .B0(n1338), .B1(n492), .Y(n997) );
  OAI22XL U1894 ( .A0(n1461), .A1(n396), .B0(n1338), .B1(n491), .Y(n996) );
  CLKBUFX3 U1895 ( .A(reset), .Y(n1366) );
  NAND2X2 U1896 ( .A(chardata[7]), .B(n518), .Y(n489) );
  OAI22XL U1897 ( .A0(n1467), .A1(n443), .B0(n489), .B1(n1333), .Y(n1043) );
  OAI22XL U1898 ( .A0(n1465), .A1(n427), .B0(n489), .B1(n1335), .Y(n1027) );
  OAI22XL U1899 ( .A0(n1463), .A1(n411), .B0(n489), .B1(n1336), .Y(n1011) );
  OAI22XL U1900 ( .A0(n1461), .A1(n395), .B0(n489), .B1(n1338), .Y(n995) );
  OAI22XL U1901 ( .A0(n1466), .A1(n435), .B0(n489), .B1(n1334), .Y(n1035) );
  OAI22XL U1902 ( .A0(n1462), .A1(n403), .B0(n489), .B1(n1337), .Y(n1003) );
  OAI22XL U1903 ( .A0(n1468), .A1(n451), .B0(n489), .B1(n517), .Y(n1051) );
  OAI22XL U1904 ( .A0(n1464), .A1(n419), .B0(n489), .B1(n507), .Y(n1019) );
  OAI22XL U1905 ( .A0(n1467), .A1(n450), .B0(n497), .B1(n1333), .Y(n1050) );
  OAI22XL U1906 ( .A0(n1467), .A1(n449), .B0(n496), .B1(n1333), .Y(n1049) );
  OAI22XL U1907 ( .A0(n1467), .A1(n448), .B0(n495), .B1(n1333), .Y(n1048) );
  OAI22XL U1908 ( .A0(n1467), .A1(n447), .B0(n494), .B1(n1333), .Y(n1047) );
  OAI22XL U1909 ( .A0(n1467), .A1(n446), .B0(n493), .B1(n1333), .Y(n1046) );
  OAI22XL U1910 ( .A0(n1467), .A1(n445), .B0(n492), .B1(n1333), .Y(n1045) );
  OAI22XL U1911 ( .A0(n1467), .A1(n444), .B0(n491), .B1(n1333), .Y(n1044) );
  OAI22XL U1912 ( .A0(n1465), .A1(n434), .B0(n497), .B1(n1335), .Y(n1034) );
  OAI22XL U1913 ( .A0(n1465), .A1(n433), .B0(n496), .B1(n1335), .Y(n1033) );
  OAI22XL U1914 ( .A0(n1465), .A1(n432), .B0(n495), .B1(n1335), .Y(n1032) );
  OAI22XL U1915 ( .A0(n1465), .A1(n431), .B0(n494), .B1(n1335), .Y(n1031) );
  OAI22XL U1916 ( .A0(n1465), .A1(n430), .B0(n493), .B1(n1335), .Y(n1030) );
  OAI22XL U1917 ( .A0(n1465), .A1(n429), .B0(n492), .B1(n1335), .Y(n1029) );
  OAI22XL U1918 ( .A0(n1465), .A1(n428), .B0(n491), .B1(n1335), .Y(n1028) );
  OAI22XL U1919 ( .A0(n1463), .A1(n418), .B0(n497), .B1(n1336), .Y(n1018) );
  OAI22XL U1920 ( .A0(n1463), .A1(n417), .B0(n496), .B1(n1336), .Y(n1017) );
  OAI22XL U1921 ( .A0(n1463), .A1(n416), .B0(n495), .B1(n1336), .Y(n1016) );
  OAI22XL U1922 ( .A0(n1463), .A1(n415), .B0(n494), .B1(n1336), .Y(n1015) );
  OAI22XL U1923 ( .A0(n1463), .A1(n414), .B0(n493), .B1(n1336), .Y(n1014) );
  OAI22XL U1924 ( .A0(n1463), .A1(n413), .B0(n492), .B1(n1336), .Y(n1013) );
  OAI22XL U1925 ( .A0(n1463), .A1(n412), .B0(n491), .B1(n1336), .Y(n1012) );
  OAI22XL U1926 ( .A0(n1466), .A1(n442), .B0(n497), .B1(n1334), .Y(n1042) );
  OAI22XL U1927 ( .A0(n1466), .A1(n441), .B0(n496), .B1(n1334), .Y(n1041) );
  OAI22XL U1928 ( .A0(n1466), .A1(n440), .B0(n495), .B1(n1334), .Y(n1040) );
  OAI22XL U1929 ( .A0(n1466), .A1(n439), .B0(n494), .B1(n1334), .Y(n1039) );
  OAI22XL U1930 ( .A0(n1466), .A1(n438), .B0(n493), .B1(n1334), .Y(n1038) );
  OAI22XL U1931 ( .A0(n1466), .A1(n437), .B0(n492), .B1(n1334), .Y(n1037) );
  OAI22XL U1932 ( .A0(n1466), .A1(n436), .B0(n491), .B1(n1334), .Y(n1036) );
  OAI22XL U1933 ( .A0(n1462), .A1(n410), .B0(n497), .B1(n1337), .Y(n1010) );
  OAI22XL U1934 ( .A0(n1462), .A1(n409), .B0(n496), .B1(n1337), .Y(n1009) );
  OAI22XL U1935 ( .A0(n1462), .A1(n408), .B0(n495), .B1(n1337), .Y(n1008) );
  OAI22XL U1936 ( .A0(n1462), .A1(n407), .B0(n494), .B1(n1337), .Y(n1007) );
  OAI22XL U1937 ( .A0(n1462), .A1(n406), .B0(n493), .B1(n1337), .Y(n1006) );
  OAI22XL U1938 ( .A0(n1462), .A1(n405), .B0(n492), .B1(n1337), .Y(n1005) );
  OAI22XL U1939 ( .A0(n1462), .A1(n404), .B0(n491), .B1(n1337), .Y(n1004) );
  OAI22XL U1940 ( .A0(n1468), .A1(n458), .B0(n497), .B1(n517), .Y(n1058) );
  OAI22XL U1941 ( .A0(n1468), .A1(n457), .B0(n496), .B1(n517), .Y(n1057) );
  OAI22XL U1942 ( .A0(n1468), .A1(n456), .B0(n495), .B1(n517), .Y(n1056) );
  OAI22XL U1943 ( .A0(n1468), .A1(n455), .B0(n494), .B1(n517), .Y(n1055) );
  OAI22XL U1944 ( .A0(n1468), .A1(n454), .B0(n493), .B1(n517), .Y(n1054) );
  OAI22XL U1945 ( .A0(n1468), .A1(n453), .B0(n492), .B1(n517), .Y(n1053) );
  OAI22XL U1946 ( .A0(n1468), .A1(n452), .B0(n491), .B1(n517), .Y(n1052) );
  OAI22XL U1947 ( .A0(n1464), .A1(n426), .B0(n497), .B1(n507), .Y(n1026) );
  OAI22XL U1948 ( .A0(n1464), .A1(n425), .B0(n496), .B1(n507), .Y(n1025) );
  OAI22XL U1949 ( .A0(n1464), .A1(n424), .B0(n495), .B1(n507), .Y(n1024) );
  OAI22XL U1950 ( .A0(n1464), .A1(n423), .B0(n494), .B1(n507), .Y(n1023) );
  OAI22XL U1951 ( .A0(n1464), .A1(n422), .B0(n493), .B1(n507), .Y(n1022) );
  OAI22XL U1952 ( .A0(n1464), .A1(n421), .B0(n492), .B1(n507), .Y(n1021) );
  OAI22XL U1953 ( .A0(n1464), .A1(n420), .B0(n491), .B1(n507), .Y(n1020) );
  OAI22XL U1954 ( .A0(n454), .A1(n687), .B0(n446), .B1(n688), .Y(n710) );
  OAI22XL U1955 ( .A0(n456), .A1(n687), .B0(n448), .B1(n688), .Y(n720) );
  OAI22XL U1956 ( .A0(n458), .A1(n687), .B0(n450), .B1(n688), .Y(n730) );
  OAI22XL U1957 ( .A0(n1496), .A1(n701), .B0(n706), .B1(n682), .Y(N1158) );
  NOR4X1 U1958 ( .A(n707), .B(n708), .C(n709), .D(n710), .Y(n706) );
  OAI22XL U1959 ( .A0(n406), .A1(n693), .B0(n398), .B1(n694), .Y(n707) );
  OAI22XL U1960 ( .A0(n422), .A1(n691), .B0(n414), .B1(n692), .Y(n708) );
  OAI22XL U1961 ( .A0(n1482), .A1(n701), .B0(n716), .B1(n682), .Y(N1156) );
  NOR4X1 U1962 ( .A(n717), .B(n718), .C(n719), .D(n720), .Y(n716) );
  OAI22XL U1963 ( .A0(n408), .A1(n693), .B0(n400), .B1(n694), .Y(n717) );
  OAI22XL U1964 ( .A0(n424), .A1(n691), .B0(n416), .B1(n692), .Y(n718) );
  OAI22XL U1965 ( .A0(n1480), .A1(n701), .B0(n726), .B1(n682), .Y(N1154) );
  NOR4X1 U1966 ( .A(n727), .B(n728), .C(n729), .D(n730), .Y(n726) );
  OAI22XL U1967 ( .A0(n410), .A1(n693), .B0(n402), .B1(n694), .Y(n727) );
  OAI22XL U1968 ( .A0(n426), .A1(n691), .B0(n418), .B1(n692), .Y(n728) );
  OAI22XL U1969 ( .A0(n453), .A1(n687), .B0(n445), .B1(n688), .Y(n705) );
  OAI22XL U1970 ( .A0(n452), .A1(n687), .B0(n444), .B1(n688), .Y(n699) );
  OAI22XL U1971 ( .A0(n451), .A1(n687), .B0(n443), .B1(n688), .Y(n686) );
  OAI2BB2XL U1972 ( .B0(n700), .B1(n682), .A0N(patMatch_r[5]), .A1N(n1458), 
        .Y(N1159) );
  NOR4X1 U1973 ( .A(n702), .B(n703), .C(n704), .D(n705), .Y(n700) );
  OAI22XL U1974 ( .A0(n405), .A1(n693), .B0(n397), .B1(n694), .Y(n702) );
  OAI22XL U1975 ( .A0(n421), .A1(n691), .B0(n413), .B1(n692), .Y(n703) );
  OAI2BB2XL U1976 ( .B0(n695), .B1(n682), .A0N(patMatch_r[6]), .A1N(n1458), 
        .Y(N1160) );
  NOR4X1 U1977 ( .A(n696), .B(n697), .C(n698), .D(n699), .Y(n695) );
  OAI22XL U1978 ( .A0(n404), .A1(n693), .B0(n396), .B1(n694), .Y(n696) );
  OAI22XL U1979 ( .A0(n420), .A1(n691), .B0(n412), .B1(n692), .Y(n697) );
  OAI2BB2XL U1980 ( .B0(n681), .B1(n682), .A0N(patMatch_r[7]), .A1N(n1458), 
        .Y(N1161) );
  NOR4X1 U1981 ( .A(n683), .B(n684), .C(n685), .D(n686), .Y(n681) );
  OAI22XL U1982 ( .A0(n403), .A1(n693), .B0(n395), .B1(n694), .Y(n683) );
  OAI22XL U1983 ( .A0(n419), .A1(n691), .B0(n411), .B1(n692), .Y(n684) );
  OAI2BB1X1 U1984 ( .A0N(starCnt_r[5]), .A1N(n644), .B0(n647), .Y(starCnt_w[5]) );
  NAND3X1 U1985 ( .A(n1459), .B(n1332), .C(N903), .Y(n647) );
  CLKBUFX3 U1986 ( .A(reset), .Y(n1362) );
  OAI22XL U1987 ( .A0(n473), .A1(n468), .B0(n476), .B1(n475), .Y(n992) );
  OAI22XL U1988 ( .A0(n473), .A1(n469), .B0(n477), .B1(n475), .Y(n993) );
  OAI22XL U1989 ( .A0(n473), .A1(n470), .B0(matchCnt2_r[0]), .B1(n475), .Y(
        n1318) );
  CLKBUFX3 U1990 ( .A(reset), .Y(n1364) );
  OAI22XL U1991 ( .A0(n473), .A1(n1498), .B0(n474), .B1(n475), .Y(n991) );
  CLKINVX1 U1992 ( .A(tmp_r[3]), .Y(n1498) );
  OAI2BB1X1 U1993 ( .A0N(starCnt_r[6]), .A1N(n644), .B0(n645), .Y(starCnt_w[6]) );
  NAND3X1 U1994 ( .A(n1459), .B(n1332), .C(N904), .Y(n645) );
  CLKBUFX3 U1995 ( .A(reset), .Y(n1361) );
  OAI32X1 U1996 ( .A0(n478), .A1(n479), .A2(n480), .B0(n1500), .B1(n1469), .Y(
        n994) );
  AOI22XL U1997 ( .A0(first_flag_r), .A1(n481), .B0(n482), .B1(n483), .Y(n480)
         );
  OAI21XL U1998 ( .A0(N778), .A1(n484), .B0(n1478), .Y(n481) );
  NOR4X1 U1999 ( .A(n485), .B(n486), .C(n1479), .D(n1499), .Y(n484) );
  AND3X1 U2000 ( .A(n636), .B(first_flag_r), .C(N778), .Y(n673) );
  AO22X1 U2001 ( .A0(N792), .A1(n673), .B0(n674), .B1(matchCnt_r[3]), .Y(N1486) );
  AO22X1 U2002 ( .A0(N793), .A1(n673), .B0(n674), .B1(matchCnt_r[4]), .Y(N1487) );
  AO22X1 U2003 ( .A0(N791), .A1(n673), .B0(n674), .B1(matchCnt_r[2]), .Y(N1485) );
  AO22X1 U2004 ( .A0(N790), .A1(n673), .B0(n674), .B1(matchCnt_r[1]), .Y(N1484) );
  AO22X1 U2005 ( .A0(n1501), .A1(n673), .B0(n674), .B1(matchCnt_r[0]), .Y(
        N1483) );
  OR2X1 U2006 ( .A(strCnt_r[1]), .B(strCnt_r[0]), .Y(n1373) );
  ADDFXL U2007 ( .A(\add_0_root_add_0_root_sub_291/A[2] ), .B(
        \add_0_root_add_0_root_sub_291/B[2] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [2]), .CO(
        \add_0_root_add_0_root_sub_291/carry [3]), .S(N966) );
  NOR2X1 U2008 ( .A(N863), .B(n1330), .Y(n1329) );
  OA21XL U2009 ( .A0(strCnt_r[5]), .A1(n1376), .B0(strCnt_r[6]), .Y(n1330) );
  ADDFXL U2010 ( .A(matchCnt2_r[3]), .B(starCnt_r[3]), .CI(
        \add_1_root_add_0_root_add_262_2/carry [3]), .CO(
        \add_1_root_add_0_root_add_262_2/carry [4]), .S(
        \add_1_root_add_0_root_add_262_2/SUM[3] ) );
  ADDFXL U2011 ( .A(matchCnt2_r[1]), .B(starCnt_r[1]), .CI(
        \add_1_root_add_0_root_add_262_2/carry [1]), .CO(
        \add_1_root_add_0_root_add_262_2/carry [2]), .S(
        \add_1_root_add_0_root_add_262_2/SUM[1] ) );
  ADDFXL U2012 ( .A(matchCnt2_r[2]), .B(starCnt_r[2]), .CI(
        \add_1_root_add_0_root_add_262_2/carry [2]), .CO(
        \add_1_root_add_0_root_add_262_2/carry [3]), .S(
        \add_1_root_add_0_root_add_262_2/SUM[2] ) );
  ADDFXL U2013 ( .A(\add_0_root_add_0_root_sub_291/A[1] ), .B(
        \add_0_root_add_0_root_sub_291/B[1] ), .CI(
        \add_0_root_add_0_root_sub_291/carry [1]), .CO(
        \add_0_root_add_0_root_sub_291/carry [2]), .S(N965) );
  ADDFXL U2014 ( .A(starCnt_r[1]), .B(matchCnt_r[1]), .CI(
        \add_1_root_add_0_root_sub_291/carry [1]), .CO(
        \add_1_root_add_0_root_sub_291/carry [2]), .S(
        \add_0_root_add_0_root_sub_291/B[1] ) );
  ADDFXL U2015 ( .A(starCnt_r[2]), .B(matchCnt_r[2]), .CI(
        \add_1_root_add_0_root_sub_291/carry [2]), .CO(
        \add_1_root_add_0_root_sub_291/carry [3]), .S(
        \add_0_root_add_0_root_sub_291/B[2] ) );
  ADDFXL U2016 ( .A(starCnt_r[3]), .B(matchCnt_r[3]), .CI(
        \add_1_root_add_0_root_sub_291/carry [3]), .CO(
        \add_1_root_add_0_root_sub_291/carry [4]), .S(
        \add_0_root_add_0_root_sub_291/B[3] ) );
  ADDFXL U2017 ( .A(starCnt_r[4]), .B(n1321), .CI(
        \add_1_root_add_0_root_sub_291/carry [4]), .CO(
        \add_1_root_add_0_root_sub_291/carry [5]), .S(
        \add_0_root_add_0_root_sub_291/B[4] ) );
  ADDFXL U2018 ( .A(starCnt_r[5]), .B(matchCnt_r[5]), .CI(
        \add_1_root_add_0_root_sub_291/carry [5]), .CO(
        \add_1_root_add_0_root_sub_291/carry [6]), .S(
        \add_0_root_add_0_root_sub_291/B[5] ) );
  ADDFXL U2019 ( .A(starCnt_r[6]), .B(matchCnt_r[6]), .CI(
        \add_1_root_add_0_root_sub_291/carry [6]), .CO(
        \add_0_root_add_0_root_sub_291/B[7] ), .S(
        \add_0_root_add_0_root_sub_291/B[6] ) );
  CLKINVX1 U2020 ( .A(N965), .Y(n1439) );
  AND4X1 U2021 ( .A(patMatch_r[2]), .B(n987), .C(n137), .D(n135), .Y(n485) );
  AND4X1 U2022 ( .A(patMatch_r[5]), .B(n1480), .C(n990), .D(n1496), .Y(n987)
         );
  NOR2X1 U2023 ( .A(patMatch_r[7]), .B(patMatch_r[6]), .Y(n990) );
  CLKINVX1 U2024 ( .A(patMatch_r[4]), .Y(n1496) );
  CLKINVX1 U2025 ( .A(patMatch_r[0]), .Y(n1480) );
  CLKINVX1 U2026 ( .A(patMatch_r[2]), .Y(n1482) );
  NAND4X1 U2027 ( .A(patMatch_r[4]), .B(patMatch_r[6]), .C(n988), .D(n989), 
        .Y(n745) );
  NOR4X1 U2028 ( .A(patMatch_r[7]), .B(patMatch_r[5]), .C(patMatch_r[0]), .D(
        n1482), .Y(n989) );
  NOR2X1 U2029 ( .A(n137), .B(n135), .Y(n988) );
  NAND2X2 U2030 ( .A(n977), .B(n978), .Y(n488) );
  NOR4X1 U2031 ( .A(n979), .B(n980), .C(n981), .D(n982), .Y(n978) );
  NOR4X1 U2032 ( .A(n983), .B(n984), .C(n985), .D(n986), .Y(n977) );
  XOR2X1 U2033 ( .A(strMatch_r[6]), .B(patMatch_r[6]), .Y(n979) );
  XNOR2X1 U2034 ( .A(strMatch_r[1]), .B(n137), .Y(n986) );
  XNOR2X1 U2035 ( .A(strMatch_r[3]), .B(n135), .Y(n984) );
  XNOR2X1 U2036 ( .A(strMatch_r[2]), .B(n1482), .Y(n983) );
  XNOR2X1 U2037 ( .A(strMatch_r[4]), .B(n1496), .Y(n981) );
  XOR2X1 U2038 ( .A(strMatch_r[7]), .B(patMatch_r[7]), .Y(n980) );
  XOR2X1 U2039 ( .A(strMatch_r[5]), .B(patMatch_r[5]), .Y(n982) );
  XNOR2X1 U2040 ( .A(n1497), .B(patMatch_r[0]), .Y(n985) );
  CLKINVX1 U2041 ( .A(strMatch_r[0]), .Y(n1497) );
  NOR2X1 U2042 ( .A(strMatch_r[2]), .B(strMatch_r[1]), .Y(n748) );
  NOR4X1 U2043 ( .A(strMatch_r[7]), .B(strMatch_r[6]), .C(strMatch_r[4]), .D(
        strMatch_r[3]), .Y(n749) );
  AND4X1 U2044 ( .A(n1502), .B(n1503), .C(n1501), .D(n737), .Y(n670) );
  NOR4X1 U2045 ( .A(matchCnt_r[6]), .B(matchCnt_r[5]), .C(matchCnt_r[4]), .D(
        matchCnt_r[3]), .Y(n737) );
  CLKINVX1 U2046 ( .A(matchCnt_r[2]), .Y(n1503) );
  CLKINVX1 U2047 ( .A(matchCnt_r[1]), .Y(n1502) );
  NOR3X2 U2048 ( .A(n1492), .B(state_r[2]), .C(n1491), .Y(n634) );
  CLKINVX1 U2049 ( .A(state_r[0]), .Y(n1492) );
  CLKINVX1 U2050 ( .A(state_r[1]), .Y(n1491) );
  XOR2X1 U2051 ( .A(n734), .B(matchCnt2_r[2]), .Y(n476) );
  XNOR2X1 U2052 ( .A(matchCnt2_r[3]), .B(n746), .Y(n474) );
  NOR2BX1 U2053 ( .AN(matchCnt2_r[2]), .B(n734), .Y(n746) );
  NAND2X1 U2054 ( .A(n631), .B(state_r[0]), .Y(n974) );
  NOR2X1 U2055 ( .A(state_r[1]), .B(state_r[2]), .Y(n631) );
  NAND2X1 U2056 ( .A(state_r[2]), .B(n629), .Y(n619) );
  NOR2X1 U2057 ( .A(state_r[1]), .B(state_r[0]), .Y(n629) );
  OR2X1 U2058 ( .A(patCnt_r[1]), .B(\add_0_root_sub_0_root_sub_228/B[0] ), .Y(
        n1377) );
  OAI32X4 U2059 ( .A0(n1493), .A1(patCnt_r[1]), .A2(n1490), .B0(n971), .B1(
        \add_0_root_sub_0_root_sub_228/B[1] ), .Y(n501) );
  OA21XL U2060 ( .A0(\add_0_root_sub_0_root_sub_228/B[0] ), .A1(n1490), .B0(
        n972), .Y(n971) );
  OA21XL U2061 ( .A0(patCnt_r[2]), .A1(n1490), .B0(n970), .Y(n969) );
  OA21XL U2062 ( .A0(patCnt_r[1]), .A1(n1490), .B0(n971), .Y(n970) );
  CLKINVX1 U2063 ( .A(N983), .Y(n1448) );
  NAND3X1 U2064 ( .A(\add_0_root_sub_0_root_sub_228/B[0] ), .B(n624), .C(
        patCnt_r[1]), .Y(n968) );
  CLKINVX1 U2065 ( .A(matchCnt2_r[2]), .Y(n1449) );
  CLKINVX1 U2066 ( .A(state_r[2]), .Y(n1483) );
  ADDHXL U2067 ( .A(matchCnt_r[1]), .B(matchCnt_r[0]), .CO(\add_233/carry [2]), 
        .S(N790) );
  ADDHXL U2068 ( .A(matchCnt_r[2]), .B(\add_233/carry [2]), .CO(
        \add_233/carry [3]), .S(N791) );
  ADDHXL U2069 ( .A(matchCnt_r[3]), .B(\add_233/carry [3]), .CO(
        \add_233/carry [4]), .S(N792) );
  CLKINVX1 U2070 ( .A(first_flag_r), .Y(n1500) );
  XNOR2X1 U2071 ( .A(\sub_2_root_add_1_root_sub_151_2/carry [3]), .B(
        matchCnt2_w[3]), .Y(N591) );
  OR2X1 U2072 ( .A(matchCnt2_w[2]), .B(
        \sub_2_root_add_1_root_sub_151_2/carry [2]), .Y(
        \sub_2_root_add_1_root_sub_151_2/carry [3]) );
  XNOR2X1 U2073 ( .A(\sub_2_root_add_1_root_sub_151_2/carry [2]), .B(
        matchCnt2_w[2]), .Y(N590) );
  OR2X1 U2074 ( .A(matchCnt2_w[1]), .B(
        \sub_2_root_add_1_root_sub_151_2/carry [1]), .Y(
        \sub_2_root_add_1_root_sub_151_2/carry [2]) );
  XNOR2X1 U2075 ( .A(\sub_2_root_add_1_root_sub_151_2/carry [1]), .B(
        matchCnt2_w[1]), .Y(N589) );
  AND2X1 U2076 ( .A(\add_1_root_add_0_root_add_262_2/carry [6]), .B(
        starCnt_r[6]), .Y(\add_1_root_add_0_root_add_262_2/SUM[7] ) );
  XOR2X1 U2077 ( .A(starCnt_r[6]), .B(
        \add_1_root_add_0_root_add_262_2/carry [6]), .Y(
        \add_1_root_add_0_root_add_262_2/SUM[6] ) );
  AND2X1 U2078 ( .A(\add_1_root_add_0_root_add_262_2/carry [5]), .B(
        starCnt_r[5]), .Y(\add_1_root_add_0_root_add_262_2/carry [6]) );
  XOR2X1 U2079 ( .A(starCnt_r[5]), .B(
        \add_1_root_add_0_root_add_262_2/carry [5]), .Y(
        \add_1_root_add_0_root_add_262_2/SUM[5] ) );
  AND2X1 U2080 ( .A(\add_1_root_add_0_root_add_262_2/carry [4]), .B(
        starCnt_r[4]), .Y(\add_1_root_add_0_root_add_262_2/carry [5]) );
  XOR2X1 U2081 ( .A(starCnt_r[4]), .B(
        \add_1_root_add_0_root_add_262_2/carry [4]), .Y(
        \add_1_root_add_0_root_add_262_2/SUM[4] ) );
  AND2X1 U2082 ( .A(matchCnt2_r[0]), .B(starCnt_r[0]), .Y(
        \add_1_root_add_0_root_add_262_2/carry [1]) );
  XOR2X1 U2083 ( .A(starCnt_r[0]), .B(matchCnt2_r[0]), .Y(
        \add_1_root_add_0_root_add_262_2/SUM[0] ) );
  XOR2X1 U2084 ( .A(\add_0_root_sub_0_root_sub_228/B[8] ), .B(
        \add_0_root_sub_0_root_sub_228/carry [8]), .Y(N769) );
  AND2X1 U2085 ( .A(\add_0_root_sub_0_root_sub_228/carry [7]), .B(
        \add_0_root_sub_0_root_sub_228/B[8] ), .Y(
        \add_0_root_sub_0_root_sub_228/carry [8]) );
  XOR2X1 U2086 ( .A(\add_0_root_sub_0_root_sub_228/B[8] ), .B(
        \add_0_root_sub_0_root_sub_228/carry [7]), .Y(N768) );
  OR2X1 U2087 ( .A(patCnt_r[3]), .B(\sub_1_root_sub_0_root_sub_228/carry [3]), 
        .Y(\sub_1_root_sub_0_root_sub_228/carry [4]) );
  XNOR2X1 U2088 ( .A(\sub_1_root_sub_0_root_sub_228/carry [3]), .B(patCnt_r[3]), .Y(\add_0_root_sub_0_root_sub_228/B[3] ) );
  AND2X1 U2089 ( .A(n470), .B(\add_0_root_add_0_root_sub_291/B[0] ), .Y(
        \add_0_root_add_0_root_sub_291/carry [1]) );
  AND2X1 U2090 ( .A(starCnt_r[0]), .B(matchCnt_r[0]), .Y(
        \add_1_root_add_0_root_sub_291/carry [1]) );
  OAI2BB1X1 U2091 ( .A0N(tmp_r[0]), .A1N(tmp_r[1]), .B0(n1369), .Y(
        \add_0_root_add_0_root_sub_291/A[1] ) );
  OR2X1 U2092 ( .A(n1369), .B(tmp_r[2]), .Y(n1370) );
  OAI2BB1X1 U2093 ( .A0N(n1369), .A1N(tmp_r[2]), .B0(n1370), .Y(
        \add_0_root_add_0_root_sub_291/A[2] ) );
  AO21X1 U2094 ( .A0(n1370), .A1(tmp_r[3]), .B0(
        \add_0_root_add_0_root_sub_291/A[9] ), .Y(
        \add_0_root_add_0_root_sub_291/A[3] ) );
  CLKINVX1 U2095 ( .A(\sub_1_root_sub_0_root_sub_228/carry [4]), .Y(
        \add_0_root_sub_0_root_sub_228/B[8] ) );
  OR2X1 U2096 ( .A(n1371), .B(patCnt_r[2]), .Y(n1372) );
  OAI2BB1X1 U2097 ( .A0N(n1371), .A1N(patCnt_r[2]), .B0(n1372), .Y(N775) );
  NOR2X1 U2098 ( .A(n1372), .B(patCnt_r[3]), .Y(N777) );
  AO21X1 U2099 ( .A0(n1372), .A1(patCnt_r[3]), .B0(N777), .Y(N776) );
  OAI2BB1X1 U2100 ( .A0N(strCnt_r[0]), .A1N(strCnt_r[1]), .B0(n1373), .Y(N857)
         );
  OR2X1 U2101 ( .A(n1373), .B(strCnt_r[2]), .Y(n1374) );
  OAI2BB1X1 U2102 ( .A0N(n1373), .A1N(strCnt_r[2]), .B0(n1374), .Y(N858) );
  OR2X1 U2103 ( .A(n1374), .B(strCnt_r[3]), .Y(n1375) );
  OAI2BB1X1 U2104 ( .A0N(n1374), .A1N(strCnt_r[3]), .B0(n1375), .Y(N859) );
  OR2X1 U2105 ( .A(n1375), .B(strCnt_r[4]), .Y(n1376) );
  OAI2BB1X1 U2106 ( .A0N(n1375), .A1N(strCnt_r[4]), .B0(n1376), .Y(N860) );
  XNOR2X1 U2107 ( .A(strCnt_r[5]), .B(n1376), .Y(N861) );
  XOR2X1 U2108 ( .A(\add_233/carry [4]), .B(matchCnt_r[4]), .Y(N793) );
  OAI2BB1X1 U2109 ( .A0N(\add_0_root_sub_0_root_sub_228/B[0] ), .A1N(
        patCnt_r[1]), .B0(n1377), .Y(N983) );
  OR2X1 U2110 ( .A(n1377), .B(patCnt_r[2]), .Y(n1378) );
  OAI2BB1X1 U2111 ( .A0N(n1377), .A1N(patCnt_r[2]), .B0(n1378), .Y(N984) );
  NOR2X1 U2112 ( .A(n1378), .B(patCnt_r[3]), .Y(N986) );
  AO21X1 U2113 ( .A0(n1378), .A1(patCnt_r[3]), .B0(N986), .Y(N985) );
  NOR2BX1 U2114 ( .AN(N765), .B(strCnt_r[4]), .Y(n1379) );
  OAI222XL U2115 ( .A0(N766), .A1(n1392), .B0(N766), .B1(n1379), .C0(n1379), 
        .C1(n1392), .Y(n1388) );
  AOI211X1 U2116 ( .A0(N767), .A1(n1398), .B0(N769), .C0(N768), .Y(n1391) );
  AO22X1 U2117 ( .A0(n1396), .A1(N761), .B0(n1395), .B1(N762), .Y(n1380) );
  OAI21XL U2118 ( .A0(N762), .A1(n1395), .B0(n1380), .Y(n1387) );
  NOR2X1 U2119 ( .A(n1397), .B(strCnt_r[2]), .Y(n1381) );
  OAI22XL U2120 ( .A0(n1381), .A1(n1394), .B0(N764), .B1(n1381), .Y(n1386) );
  NAND2X1 U2121 ( .A(strCnt_r[2]), .B(n1397), .Y(n1382) );
  OAI222XL U2122 ( .A0(N764), .A1(n1394), .B0(N764), .B1(n1382), .C0(n1382), 
        .C1(n1394), .Y(n1385) );
  OAI22XL U2123 ( .A0(N766), .A1(n1392), .B0(N765), .B1(n1393), .Y(n1383) );
  OA22X1 U2124 ( .A0(n1383), .A1(n1399), .B0(n1383), .B1(strCnt_r[6]), .Y(
        n1384) );
  AOI211X1 U2125 ( .A0(n1387), .A1(n1386), .B0(n1385), .C0(n1384), .Y(n1390)
         );
  OAI22XL U2126 ( .A0(strCnt_r[6]), .A1(n1399), .B0(strCnt_r[6]), .B1(n1388), 
        .Y(n1389) );
  AND2X1 U2127 ( .A(N775), .B(n1449), .Y(n1400) );
  OAI222XL U2128 ( .A0(N776), .A1(n1406), .B0(N776), .B1(n1400), .C0(n1400), 
        .C1(n1406), .Y(n1404) );
  OAI22XL U2129 ( .A0(N776), .A1(n1406), .B0(N775), .B1(n1449), .Y(n1402) );
  AOI211X1 U2130 ( .A0(matchCnt2_r[1]), .A1(n1405), .B0(n1402), .C0(n1401), 
        .Y(n1403) );
  NAND2BX1 U2131 ( .AN(N860), .B(N851), .Y(n1407) );
  OAI222XL U2132 ( .A0(N861), .A1(n1423), .B0(N861), .B1(n1407), .C0(n1423), 
        .C1(n1407), .Y(n1408) );
  OAI222XL U2133 ( .A0(N853), .A1(n1408), .B0(n1329), .B1(n1408), .C0(N853), 
        .C1(n1329), .Y(n1420) );
  NOR2BX1 U2134 ( .AN(N860), .B(N851), .Y(n1409) );
  OAI22XL U2135 ( .A0(n1409), .A1(n1423), .B0(N861), .B1(n1409), .Y(n1417) );
  NAND2BX1 U2136 ( .AN(N858), .B(N849), .Y(n1415) );
  OAI2BB2XL U2137 ( .B0(N847), .B1(strCnt_r[0]), .A0N(n1421), .A1N(N857), .Y(
        n1410) );
  OAI21XL U2138 ( .A0(N857), .A1(n1421), .B0(n1410), .Y(n1413) );
  NOR2BX1 U2139 ( .AN(N858), .B(N849), .Y(n1411) );
  OAI22XL U2140 ( .A0(n1411), .A1(n1422), .B0(N859), .B1(n1411), .Y(n1412) );
  AOI2BB2X1 U2141 ( .B0(n1413), .B1(n1412), .A0N(n1415), .A1N(n1422), .Y(n1414) );
  OAI221XL U2142 ( .A0(N859), .A1(n1415), .B0(N859), .B1(n1422), .C0(n1414), 
        .Y(n1416) );
  OAI211X1 U2143 ( .A0(N853), .A1(n1329), .B0(n1417), .C0(n1416), .Y(n1419) );
  NOR2X1 U2144 ( .A(N855), .B(N854), .Y(n1418) );
  AOI31X1 U2145 ( .A0(n1420), .A1(n1419), .A2(n1418), .B0(N863), .Y(N864) );
  NAND2BX1 U2146 ( .AN(strCnt_r[2]), .B(N966), .Y(n1426) );
  AO22X1 U2147 ( .A0(n1320), .A1(strCnt_r[0]), .B0(n1439), .B1(strCnt_r[1]), 
        .Y(n1424) );
  OAI21XL U2148 ( .A0(strCnt_r[1]), .A1(n1439), .B0(n1424), .Y(n1429) );
  NOR2BX1 U2149 ( .AN(strCnt_r[2]), .B(N966), .Y(n1425) );
  OAI22XL U2150 ( .A0(n1425), .A1(n1441), .B0(strCnt_r[3]), .B1(n1425), .Y(
        n1428) );
  OAI22XL U2151 ( .A0(strCnt_r[3]), .A1(n1441), .B0(strCnt_r[3]), .B1(n1426), 
        .Y(n1427) );
  AOI221XL U2152 ( .A0(N967), .A1(n1440), .B0(n1429), .B1(n1428), .C0(n1427), 
        .Y(n1437) );
  NOR2X1 U2153 ( .A(n1393), .B(N968), .Y(n1430) );
  OAI22XL U2154 ( .A0(n1430), .A1(n1442), .B0(strCnt_r[5]), .B1(n1430), .Y(
        n1431) );
  OAI21XL U2155 ( .A0(N970), .A1(n1438), .B0(n1431), .Y(n1436) );
  NAND2X1 U2156 ( .A(N968), .B(n1393), .Y(n1432) );
  OAI222XL U2157 ( .A0(strCnt_r[5]), .A1(n1442), .B0(strCnt_r[5]), .B1(n1432), 
        .C0(n1442), .C1(n1432), .Y(n1433) );
  OAI222XL U2158 ( .A0(N970), .A1(n1433), .B0(n1438), .B1(n1433), .C0(N970), 
        .C1(n1438), .Y(n1435) );
  NOR3X1 U2159 ( .A(N971), .B(N973), .C(N972), .Y(n1434) );
  OAI211X1 U2160 ( .A0(n1437), .A1(n1436), .B0(n1435), .C0(n1434), .Y(N974) );
  AND2X1 U2161 ( .A(N984), .B(n1449), .Y(n1443) );
  OAI222XL U2162 ( .A0(N985), .A1(n1406), .B0(N985), .B1(n1443), .C0(n1443), 
        .C1(n1406), .Y(n1447) );
  OAI22XL U2163 ( .A0(N985), .A1(n1406), .B0(N984), .B1(n1449), .Y(n1445) );
  OA22X1 U2164 ( .A0(\add_0_root_sub_0_root_sub_228/B[0] ), .A1(matchCnt2_r[0]), .B0(n1448), .B1(matchCnt2_r[1]), .Y(n1444) );
  AOI211X1 U2165 ( .A0(matchCnt2_r[1]), .A1(n1448), .B0(n1445), .C0(n1444), 
        .Y(n1446) );
  NOR3BXL U2166 ( .AN(n1447), .B(n1446), .C(N986), .Y(N987) );
endmodule


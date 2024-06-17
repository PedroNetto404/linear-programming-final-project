\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  delay_time[0] + delay_time[1] + delay_time[2] + delay_time[3]
   + delay_time[4] + delay_time[5] + delay_time[6] + delay_time[7]
   + delay_time[8] + delay_time[9]
Subject To
 R0: chosen_route[0,0] + chosen_route[0,1] + chosen_route[0,2]
   + chosen_route[0,3] + chosen_route[0,4] + chosen_route[0,5]
   + chosen_route[0,6] + chosen_route[0,7] + chosen_route[0,8]
   + chosen_route[0,9] = 1
 R1: chosen_route[1,0] + chosen_route[1,1] + chosen_route[1,2]
   + chosen_route[1,3] + chosen_route[1,4] + chosen_route[1,5]
   + chosen_route[1,6] + chosen_route[1,7] + chosen_route[1,8]
   + chosen_route[1,9] = 1
 R2: chosen_route[2,0] + chosen_route[2,1] + chosen_route[2,2]
   + chosen_route[2,3] + chosen_route[2,4] + chosen_route[2,5]
   + chosen_route[2,6] + chosen_route[2,7] + chosen_route[2,8]
   + chosen_route[2,9] = 1
 R3: chosen_route[3,0] + chosen_route[3,1] + chosen_route[3,2]
   + chosen_route[3,3] + chosen_route[3,4] + chosen_route[3,5]
   + chosen_route[3,6] + chosen_route[3,7] + chosen_route[3,8]
   + chosen_route[3,9] = 1
 R4: chosen_route[4,0] + chosen_route[4,1] + chosen_route[4,2]
   + chosen_route[4,3] + chosen_route[4,4] + chosen_route[4,5]
   + chosen_route[4,6] + chosen_route[4,7] + chosen_route[4,8]
   + chosen_route[4,9] = 1
 R5: chosen_route[5,0] + chosen_route[5,1] + chosen_route[5,2]
   + chosen_route[5,3] + chosen_route[5,4] + chosen_route[5,5]
   + chosen_route[5,6] + chosen_route[5,7] + chosen_route[5,8]
   + chosen_route[5,9] = 1
 R6: chosen_route[6,0] + chosen_route[6,1] + chosen_route[6,2]
   + chosen_route[6,3] + chosen_route[6,4] + chosen_route[6,5]
   + chosen_route[6,6] + chosen_route[6,7] + chosen_route[6,8]
   + chosen_route[6,9] = 1
 R7: chosen_route[7,0] + chosen_route[7,1] + chosen_route[7,2]
   + chosen_route[7,3] + chosen_route[7,4] + chosen_route[7,5]
   + chosen_route[7,6] + chosen_route[7,7] + chosen_route[7,8]
   + chosen_route[7,9] = 1
 R8: chosen_route[8,0] + chosen_route[8,1] + chosen_route[8,2]
   + chosen_route[8,3] + chosen_route[8,4] + chosen_route[8,5]
   + chosen_route[8,6] + chosen_route[8,7] + chosen_route[8,8]
   + chosen_route[8,9] = 1
 R9: chosen_route[9,0] + chosen_route[9,1] + chosen_route[9,2]
   + chosen_route[9,3] + chosen_route[9,4] + chosen_route[9,5]
   + chosen_route[9,6] + chosen_route[9,7] + chosen_route[9,8]
   + chosen_route[9,9] = 1
 R10: chosen_route[0,0] + chosen_route[1,0] + chosen_route[2,0]
   + chosen_route[3,0] + chosen_route[4,0] + chosen_route[5,0]
   + chosen_route[6,0] + chosen_route[7,0] + chosen_route[8,0]
   + chosen_route[9,0] = 1
 R11: chosen_route[0,1] + chosen_route[1,1] + chosen_route[2,1]
   + chosen_route[3,1] + chosen_route[4,1] + chosen_route[5,1]
   + chosen_route[6,1] + chosen_route[7,1] + chosen_route[8,1]
   + chosen_route[9,1] = 1
 R12: chosen_route[0,2] + chosen_route[1,2] + chosen_route[2,2]
   + chosen_route[3,2] + chosen_route[4,2] + chosen_route[5,2]
   + chosen_route[6,2] + chosen_route[7,2] + chosen_route[8,2]
   + chosen_route[9,2] = 1
 R13: chosen_route[0,3] + chosen_route[1,3] + chosen_route[2,3]
   + chosen_route[3,3] + chosen_route[4,3] + chosen_route[5,3]
   + chosen_route[6,3] + chosen_route[7,3] + chosen_route[8,3]
   + chosen_route[9,3] = 1
 R14: chosen_route[0,4] + chosen_route[1,4] + chosen_route[2,4]
   + chosen_route[3,4] + chosen_route[4,4] + chosen_route[5,4]
   + chosen_route[6,4] + chosen_route[7,4] + chosen_route[8,4]
   + chosen_route[9,4] = 1
 R15: chosen_route[0,5] + chosen_route[1,5] + chosen_route[2,5]
   + chosen_route[3,5] + chosen_route[4,5] + chosen_route[5,5]
   + chosen_route[6,5] + chosen_route[7,5] + chosen_route[8,5]
   + chosen_route[9,5] = 1
 R16: chosen_route[0,6] + chosen_route[1,6] + chosen_route[2,6]
   + chosen_route[3,6] + chosen_route[4,6] + chosen_route[5,6]
   + chosen_route[6,6] + chosen_route[7,6] + chosen_route[8,6]
   + chosen_route[9,6] = 1
 R17: chosen_route[0,7] + chosen_route[1,7] + chosen_route[2,7]
   + chosen_route[3,7] + chosen_route[4,7] + chosen_route[5,7]
   + chosen_route[6,7] + chosen_route[7,7] + chosen_route[8,7]
   + chosen_route[9,7] = 1
 R18: chosen_route[0,8] + chosen_route[1,8] + chosen_route[2,8]
   + chosen_route[3,8] + chosen_route[4,8] + chosen_route[5,8]
   + chosen_route[6,8] + chosen_route[7,8] + chosen_route[8,8]
   + chosen_route[9,8] = 1
 R19: chosen_route[0,9] + chosen_route[1,9] + chosen_route[2,9]
   + chosen_route[3,9] + chosen_route[4,9] + chosen_route[5,9]
   + chosen_route[6,9] + chosen_route[7,9] + chosen_route[8,9]
   + chosen_route[9,9] = 1
 R20: 1e+06 chosen_route[0,1] - arrival_time[0] + arrival_time[1]
   >= 1.000055542776308e+06
 R21: 1e+06 chosen_route[0,2] - arrival_time[0] + arrival_time[2]
   >= 1.0000478852795752e+06
 R22: 1e+06 chosen_route[0,3] - arrival_time[0] + arrival_time[3]
   >= 1.0000565685424949e+06
 R23: 1e+06 chosen_route[0,4] - arrival_time[0] + arrival_time[4]
   >= 1.0000743303437366e+06
 R24: 1e+06 chosen_route[0,5] - arrival_time[0] + arrival_time[5]
   >= 1.000072124891681e+06
 R25: 1e+06 chosen_route[0,6] - arrival_time[0] + arrival_time[6]
   >= 1.0000559464029229e+06
 R26: 1e+06 chosen_route[0,7] - arrival_time[0] + arrival_time[7]
   >= 1.0000667607669219e+06
 R27: 1e+06 chosen_route[0,8] - arrival_time[0] + arrival_time[8]
   >= 1.0000224722050542e+06
 R28: 1e+06 chosen_route[0,9] - arrival_time[0] + arrival_time[9] >= 1e+06
 R29: 1e+06 chosen_route[1,0] + arrival_time[0] - arrival_time[1]
   >= 1.000485542776308e+06
 R30: 1e+06 chosen_route[1,2] - arrival_time[1] + arrival_time[2]
   >= 1.0004390553851381e+06
 R31: 1e+06 chosen_route[1,3] - arrival_time[1] + arrival_time[3]
   >= 1.0005401135777277e+06
 R32: 1e+06 chosen_route[1,4] - arrival_time[1] + arrival_time[4]
   >= 1.0005021110255093e+06
 R33: 1e+06 chosen_route[1,5] - arrival_time[1] + arrival_time[5]
   >= 1.000546038786619e+06
 R34: 1e+06 chosen_route[1,6] - arrival_time[1] + arrival_time[6]
   >= 1.0005081856764376e+06
 R35: 1e+06 chosen_route[1,7] - arrival_time[1] + arrival_time[7]
   >= 1.0005217605579756e+06
 R36: 1e+06 chosen_route[1,8] - arrival_time[1] + arrival_time[8]
   >= 1.0005007106781186e+06
 R37: 1e+06 chosen_route[1,9] - arrival_time[1] + arrival_time[9]
   >= 1.000485542776308e+06
 R38: 1e+06 chosen_route[2,0] + arrival_time[0] - arrival_time[2]
   >= 1.0000648852795752e+06
 R39: 1e+06 chosen_route[2,1] + arrival_time[1] - arrival_time[2]
   >= 1.0000260553851381e+06
 R40: 1e+06 chosen_route[2,3] - arrival_time[2] + arrival_time[3]
   >= 1.0001204069630151e+06
 R41: 1e+06 chosen_route[2,4] - arrival_time[2] + arrival_time[4]
   >= 1.0000911484996476e+06
 R42: 1e+06 chosen_route[2,5] - arrival_time[2] + arrival_time[5]
   >= 1.000128503363178e+06
 R43: 1e+06 chosen_route[2,6] - arrival_time[2] + arrival_time[6]
   >= 1.0000934002617797e+06
 R44: 1e+06 chosen_route[2,7] - arrival_time[2] + arrival_time[7]
   >= 1.0001069888882029e+06
 R45: 1e+06 chosen_route[2,8] - arrival_time[2] + arrival_time[8]
   >= 1.0000789838688693e+06
 R46: 1e+06 chosen_route[2,9] - arrival_time[2] + arrival_time[9]
   >= 1.0000648852795752e+06
 R47: 1e+06 chosen_route[3,0] + arrival_time[0] - arrival_time[3]
   >= 1.0005055685424949e+06
 R48: 1e+06 chosen_route[3,1] + arrival_time[1] - arrival_time[3]
   >= 1.0005591135777277e+06
 R49: 1e+06 chosen_route[3,2] + arrival_time[2] - arrival_time[3]
   >= 1.0005524069630151e+06
 R50: 1e+06 chosen_route[3,4] - arrival_time[3] + arrival_time[4]
   >= 1.0005445248658727e+06
 R51: 1e+06 chosen_route[3,5] - arrival_time[3] + arrival_time[5]
   >= 1.0004836698716467e+06
 R52: 1e+06 chosen_route[3,6] - arrival_time[3] + arrival_time[6]
   >= 1.0005129531078213e+06
 R53: 1e+06 chosen_route[3,7] - arrival_time[3] + arrival_time[7]
   >= 1.0005126945837572e+06
 R54: 1e+06 chosen_route[3,8] - arrival_time[3] + arrival_time[8]
   >= 1.0005050802995713e+06
 R55: 1e+06 chosen_route[3,9] - arrival_time[3] + arrival_time[9]
   >= 1.0005055685424949e+06
 R56: 1e+06 chosen_route[4,0] + arrival_time[0] - arrival_time[4]
   >= 1.0005643303437366e+06
 R57: 1e+06 chosen_route[4,1] + arrival_time[1] - arrival_time[4]
   >= 1.0005621110255093e+06
 R58: 1e+06 chosen_route[4,2] + arrival_time[2] - arrival_time[4]
   >= 1.0005641484996476e+06
 R59: 1e+06 chosen_route[4,3] + arrival_time[3] - arrival_time[4]
   >= 1.0005855248658727e+06
 R60: 1e+06 chosen_route[4,5] - arrival_time[4] + arrival_time[5]
   >= 1.0005683390068867e+06
 R61: 1e+06 chosen_route[4,6] - arrival_time[4] + arrival_time[6]
   >= 1.0005220156211872e+06
 R62: 1e+06 chosen_route[4,7] - arrival_time[4] + arrival_time[7]
   >= 1.0005286264158316e+06
 R63: 1e+06 chosen_route[4,8] - arrival_time[4] + arrival_time[8]
   >= 1.0005865401470892e+06
 R64: 1e+06 chosen_route[4,9] - arrival_time[4] + arrival_time[9]
   >= 1.0005643303437366e+06
 R65: 1e+06 chosen_route[5,0] + arrival_time[0] - arrival_time[5]
   >= 1.000500124891681e+06
 R66: 1e+06 chosen_route[5,1] + arrival_time[1] - arrival_time[5]
   >= 1.000544038786619e+06
 R67: 1e+06 chosen_route[5,2] + arrival_time[2] - arrival_time[5]
   >= 1.000539503363178e+06
 R68: 1e+06 chosen_route[5,3] + arrival_time[3] - arrival_time[5]
   >= 1.0004626698716467e+06
 R69: 1e+06 chosen_route[5,4] + arrival_time[4] - arrival_time[5]
   >= 1.0005063390068867e+06
 R70: 1e+06 chosen_route[5,6] - arrival_time[5] + arrival_time[6]
   >= 1.000475539457296e+06
 R71: 1e+06 chosen_route[5,7] - arrival_time[5] + arrival_time[7]
   >= 1.0004683112887415e+06
 R72: 1e+06 chosen_route[5,8] - arrival_time[5] + arrival_time[8]
   >= 1.0005090246875958e+06
 R73: 1e+06 chosen_route[5,9] - arrival_time[5] + arrival_time[9]
   >= 1.000500124891681e+06
 R74: 1e+06 chosen_route[6,0] + arrival_time[0] - arrival_time[6]
   >= 1.0005909464029229e+06
 R75: 1e+06 chosen_route[6,1] + arrival_time[1] - arrival_time[6]
   >= 1.0006131856764376e+06
 R76: 1e+06 chosen_route[6,2] + arrival_time[2] - arrival_time[6]
   >= 1.0006114002617797e+06
 R77: 1e+06 chosen_route[6,3] + arrival_time[3] - arrival_time[6]
   >= 1.0005989531078213e+06
 R78: 1e+06 chosen_route[6,4] + arrival_time[4] - arrival_time[6]
   >= 1.0005670156211872e+06
 R79: 1e+06 chosen_route[6,5] + arrival_time[5] - arrival_time[6]
   >= 1.000582539457296e+06
 R80: 1e+06 chosen_route[6,7] - arrival_time[6] + arrival_time[7]
   >= 1.0005486014705087e+06
 R81: 1e+06 chosen_route[6,8] - arrival_time[6] + arrival_time[8]
   >= 1.0006107165767847e+06
 R82: 1e+06 chosen_route[6,9] - arrival_time[6] + arrival_time[9]
   >= 1.0005909464029229e+06
 R83: 1e+06 chosen_route[7,0] + arrival_time[0] - arrival_time[7]
   >= 1.0000947607669219e+06
 R84: 1e+06 chosen_route[7,1] + arrival_time[1] - arrival_time[7]
   >= 1.0001197605579756e+06
 R85: 1e+06 chosen_route[7,2] + arrival_time[2] - arrival_time[7]
   >= 1.0001179888882029e+06
 R86: 1e+06 chosen_route[7,3] + arrival_time[3] - arrival_time[7]
   >= 1.0000916945837572e+06
 R87: 1e+06 chosen_route[7,4] + arrival_time[4] - arrival_time[7]
   >= 1.0000666264158316e+06
 R88: 1e+06 chosen_route[7,5] + arrival_time[5] - arrival_time[7]
   >= 1.0000683112887415e+06
 R89: 1e+06 chosen_route[7,6] + arrival_time[6] - arrival_time[7]
   >= 1.0000416014705087e+06
 R90: 1e+06 chosen_route[7,8] - arrival_time[7] + arrival_time[8]
   >= 1.000112970583145e+06
 R91: 1e+06 chosen_route[7,9] - arrival_time[7] + arrival_time[9]
   >= 1.0000947607669219e+06
 R92: 1e+06 chosen_route[8,0] + arrival_time[0] - arrival_time[8]
   >= 1.0004414722050542e+06
 R93: 1e+06 chosen_route[8,1] + arrival_time[1] - arrival_time[8]
   >= 1.0004897106781186e+06
 R94: 1e+06 chosen_route[8,2] + arrival_time[2] - arrival_time[8]
   >= 1.0004809838688693e+06
 R95: 1e+06 chosen_route[8,3] + arrival_time[3] - arrival_time[8]
   >= 1.0004750802995713e+06
 R96: 1e+06 chosen_route[8,4] + arrival_time[4] - arrival_time[8]
   >= 1.0005155401470892e+06
 R97: 1e+06 chosen_route[8,5] + arrival_time[5] - arrival_time[8]
   >= 1.0005000246875958e+06
 R98: 1e+06 chosen_route[8,6] + arrival_time[6] - arrival_time[8]
   >= 1.0004947165767847e+06
 R99: 1e+06 chosen_route[8,7] + arrival_time[7] - arrival_time[8]
   >= 1.000503970583145e+06
 R100: 1e+06 chosen_route[8,9] - arrival_time[8] + arrival_time[9]
   >= 1.0004414722050542e+06
 R101: 1e+06 chosen_route[9,0] + arrival_time[0] - arrival_time[9]
   >= 1e+06
 R102: 1e+06 chosen_route[9,1] + arrival_time[1] - arrival_time[9]
   >= 1.000055542776308e+06
 R103: 1e+06 chosen_route[9,2] + arrival_time[2] - arrival_time[9]
   >= 1.0000478852795752e+06
 R104: 1e+06 chosen_route[9,3] + arrival_time[3] - arrival_time[9]
   >= 1.0000565685424949e+06
 R105: 1e+06 chosen_route[9,4] + arrival_time[4] - arrival_time[9]
   >= 1.0000743303437366e+06
 R106: 1e+06 chosen_route[9,5] + arrival_time[5] - arrival_time[9]
   >= 1.000072124891681e+06
 R107: 1e+06 chosen_route[9,6] + arrival_time[6] - arrival_time[9]
   >= 1.0000559464029229e+06
 R108: 1e+06 chosen_route[9,7] + arrival_time[7] - arrival_time[9]
   >= 1.0000667607669219e+06
 R109: 1e+06 chosen_route[9,8] + arrival_time[8] - arrival_time[9]
   >= 1.0000224722050542e+06
 R110: arrival_time[0] - delay_time[0] <= 0
 R111: arrival_time[1] - delay_time[1] <= 9
 R112: arrival_time[2] - delay_time[2] <= 7
 R113: arrival_time[3] - delay_time[3] <= 8
 R114: arrival_time[4] - delay_time[4] <= 20
 R115: arrival_time[5] - delay_time[5] <= 11
 R116: arrival_time[6] - delay_time[6] <= 17
 R117: arrival_time[7] - delay_time[7] <= 6
 R118: arrival_time[8] - delay_time[8] <= 7
 R119: arrival_time[9] - delay_time[9] <= 0
 R120: delay_time[0] >= 0
 R121: delay_time[1] >= 0
 R122: delay_time[2] >= 0
 R123: delay_time[3] >= 0
 R124: delay_time[4] >= 0
 R125: delay_time[5] >= 0
 R126: delay_time[6] >= 0
 R127: delay_time[7] >= 0
 R128: delay_time[8] >= 0
 R129: delay_time[9] >= 0
 R130: arrival_time[0] = 0
 R131: arrival_time[1] >= 0
 R132: arrival_time[2] >= 0
 R133: arrival_time[3] >= 0
 R134: arrival_time[4] >= 0
 R135: arrival_time[5] >= 0
 R136: arrival_time[6] >= 0
 R137: arrival_time[7] >= 0
 R138: arrival_time[8] >= 0
 R139: arrival_time[9] >= 0
Bounds
Binaries
 chosen_route[0,0] chosen_route[0,1] chosen_route[0,2] chosen_route[0,3]
 chosen_route[0,4] chosen_route[0,5] chosen_route[0,6] chosen_route[0,7]
 chosen_route[0,8] chosen_route[0,9] chosen_route[1,0] chosen_route[1,1]
 chosen_route[1,2] chosen_route[1,3] chosen_route[1,4] chosen_route[1,5]
 chosen_route[1,6] chosen_route[1,7] chosen_route[1,8] chosen_route[1,9]
 chosen_route[2,0] chosen_route[2,1] chosen_route[2,2] chosen_route[2,3]
 chosen_route[2,4] chosen_route[2,5] chosen_route[2,6] chosen_route[2,7]
 chosen_route[2,8] chosen_route[2,9] chosen_route[3,0] chosen_route[3,1]
 chosen_route[3,2] chosen_route[3,3] chosen_route[3,4] chosen_route[3,5]
 chosen_route[3,6] chosen_route[3,7] chosen_route[3,8] chosen_route[3,9]
 chosen_route[4,0] chosen_route[4,1] chosen_route[4,2] chosen_route[4,3]
 chosen_route[4,4] chosen_route[4,5] chosen_route[4,6] chosen_route[4,7]
 chosen_route[4,8] chosen_route[4,9] chosen_route[5,0] chosen_route[5,1]
 chosen_route[5,2] chosen_route[5,3] chosen_route[5,4] chosen_route[5,5]
 chosen_route[5,6] chosen_route[5,7] chosen_route[5,8] chosen_route[5,9]
 chosen_route[6,0] chosen_route[6,1] chosen_route[6,2] chosen_route[6,3]
 chosen_route[6,4] chosen_route[6,5] chosen_route[6,6] chosen_route[6,7]
 chosen_route[6,8] chosen_route[6,9] chosen_route[7,0] chosen_route[7,1]
 chosen_route[7,2] chosen_route[7,3] chosen_route[7,4] chosen_route[7,5]
 chosen_route[7,6] chosen_route[7,7] chosen_route[7,8] chosen_route[7,9]
 chosen_route[8,0] chosen_route[8,1] chosen_route[8,2] chosen_route[8,3]
 chosen_route[8,4] chosen_route[8,5] chosen_route[8,6] chosen_route[8,7]
 chosen_route[8,8] chosen_route[8,9] chosen_route[9,0] chosen_route[9,1]
 chosen_route[9,2] chosen_route[9,3] chosen_route[9,4] chosen_route[9,5]
 chosen_route[9,6] chosen_route[9,7] chosen_route[9,8] chosen_route[9,9]
End

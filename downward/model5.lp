\ENCODING=ISO-8859-1
\Problem name: IloCplex

Minimize
 obj: drop_ball1_rooma_left#0 + drop_ball1_rooma_right#1
      + drop_ball1_roomb_left#2 + drop_ball1_roomb_right#3
      + drop_ball10_rooma_left#4 + drop_ball10_rooma_right#5
      + drop_ball10_roomb_left#6 + drop_ball10_roomb_right#7
      + drop_ball11_rooma_left#8 + drop_ball11_rooma_right#9
      + drop_ball11_roomb_left#10 + drop_ball11_roomb_right#11
      + drop_ball12_rooma_left#12 + drop_ball12_rooma_right#13
      + drop_ball12_roomb_left#14 + drop_ball12_roomb_right#15
      + drop_ball2_rooma_left#16 + drop_ball2_rooma_right#17
      + drop_ball2_roomb_left#18 + drop_ball2_roomb_right#19
      + drop_ball3_rooma_left#20 + drop_ball3_rooma_right#21
      + drop_ball3_roomb_left#22 + drop_ball3_roomb_right#23
      + drop_ball4_rooma_left#24 + drop_ball4_rooma_right#25
      + drop_ball4_roomb_left#26 + drop_ball4_roomb_right#27
      + drop_ball5_rooma_left#28 + drop_ball5_rooma_right#29
      + drop_ball5_roomb_left#30 + drop_ball5_roomb_right#31
      + drop_ball6_rooma_left#32 + drop_ball6_rooma_right#33
      + drop_ball6_roomb_left#34 + drop_ball6_roomb_right#35
      + drop_ball7_rooma_left#36 + drop_ball7_rooma_right#37
      + drop_ball7_roomb_left#38 + drop_ball7_roomb_right#39
      + drop_ball8_rooma_left#40 + drop_ball8_rooma_right#41
      + drop_ball8_roomb_left#42 + drop_ball8_roomb_right#43
      + drop_ball9_rooma_left#44 + drop_ball9_rooma_right#45
      + drop_ball9_roomb_left#46 + drop_ball9_roomb_right#47
      + move_rooma_roomb#48 + move_roomb_rooma#49 + pick_ball1_rooma_left#50
      + pick_ball1_rooma_right#51 + pick_ball1_roomb_left#52
      + pick_ball1_roomb_right#53 + pick_ball10_rooma_left#54
      + pick_ball10_rooma_right#55 + pick_ball10_roomb_left#56
      + pick_ball10_roomb_right#57 + pick_ball11_rooma_left#58
      + pick_ball11_rooma_right#59 + pick_ball11_roomb_left#60
      + pick_ball11_roomb_right#61 + pick_ball12_rooma_left#62
      + pick_ball12_rooma_right#63 + pick_ball12_roomb_left#64
      + pick_ball12_roomb_right#65 + pick_ball2_rooma_left#66
      + pick_ball2_rooma_right#67 + pick_ball2_roomb_left#68
      + pick_ball2_roomb_right#69 + pick_ball3_rooma_left#70
      + pick_ball3_rooma_right#71 + pick_ball3_roomb_left#72
      + pick_ball3_roomb_right#73 + pick_ball4_rooma_left#74
      + pick_ball4_rooma_right#75 + pick_ball4_roomb_left#76
      + pick_ball4_roomb_right#77 + pick_ball5_rooma_left#78
      + pick_ball5_rooma_right#79 + pick_ball5_roomb_left#80
      + pick_ball5_roomb_right#81 + pick_ball6_rooma_left#82
      + pick_ball6_rooma_right#83 + pick_ball6_roomb_left#84
      + pick_ball6_roomb_right#85 + pick_ball7_rooma_left#86
      + pick_ball7_rooma_right#87 + pick_ball7_roomb_left#88
      + pick_ball7_roomb_right#89 + pick_ball8_rooma_left#90
      + pick_ball8_rooma_right#91 + pick_ball8_roomb_left#92
      + pick_ball8_roomb_right#93 + pick_ball9_rooma_left#94
      + pick_ball9_rooma_right#95 + pick_ball9_roomb_left#96
      + pick_ball9_roomb_right#97
Subject To
 c1:    drop_ball1_rooma_left#0 + drop_ball1_rooma_right#1
        + drop_ball1_roomb_left#2 + drop_ball1_roomb_right#3
        + drop_ball10_rooma_left#4 + drop_ball10_rooma_right#5
        + drop_ball10_roomb_left#6 + drop_ball10_roomb_right#7
        + drop_ball11_rooma_left#8 + drop_ball11_rooma_right#9
        + drop_ball11_roomb_left#10 + drop_ball11_roomb_right#11
        + drop_ball12_rooma_left#12 + drop_ball12_rooma_right#13
        + drop_ball12_roomb_left#14 + drop_ball12_roomb_right#15
        + drop_ball2_rooma_left#16 + drop_ball2_rooma_right#17
        + drop_ball2_roomb_left#18 + drop_ball2_roomb_right#19
        + drop_ball3_rooma_left#20 + drop_ball3_rooma_right#21
        + drop_ball3_roomb_left#22 + drop_ball3_roomb_right#23
        + drop_ball4_rooma_left#24 + drop_ball4_rooma_right#25
        + drop_ball4_roomb_left#26 + drop_ball4_roomb_right#27
        + drop_ball5_rooma_left#28 + drop_ball5_rooma_right#29
        + drop_ball5_roomb_left#30 + drop_ball5_roomb_right#31
        + drop_ball6_rooma_left#32 + drop_ball6_rooma_right#33
        + drop_ball6_roomb_left#34 + drop_ball6_roomb_right#35
        + drop_ball7_rooma_left#36 + drop_ball7_rooma_right#37
        + drop_ball7_roomb_left#38 + drop_ball7_roomb_right#39
        + drop_ball8_rooma_left#40 + drop_ball8_rooma_right#41
        + drop_ball8_roomb_left#42 + drop_ball8_roomb_right#43
        + drop_ball9_rooma_left#44 + drop_ball9_rooma_right#45
        + drop_ball9_roomb_left#46 + drop_ball9_roomb_right#47
        + move_rooma_roomb#48 + move_roomb_rooma#49 + pick_ball1_rooma_left#50
        + pick_ball1_rooma_right#51 + pick_ball1_roomb_left#52
        + pick_ball1_roomb_right#53 + pick_ball10_rooma_left#54
        + pick_ball10_rooma_right#55 + pick_ball10_roomb_left#56
        + pick_ball10_roomb_right#57 + pick_ball11_rooma_left#58
        + pick_ball11_rooma_right#59 + pick_ball11_roomb_left#60
        + pick_ball11_roomb_right#61 + pick_ball12_rooma_left#62
        + pick_ball12_rooma_right#63 + pick_ball12_roomb_left#64
        + pick_ball12_roomb_right#65 + pick_ball2_rooma_left#66
        + pick_ball2_rooma_right#67 + pick_ball2_roomb_left#68
        + pick_ball2_roomb_right#69 + pick_ball3_rooma_left#70
        + pick_ball3_rooma_right#71 + pick_ball3_roomb_left#72
        + pick_ball3_roomb_right#73 + pick_ball4_rooma_left#74
        + pick_ball4_rooma_right#75 + pick_ball4_roomb_left#76
        + pick_ball4_roomb_right#77 + pick_ball5_rooma_left#78
        + pick_ball5_rooma_right#79 + pick_ball5_roomb_left#80
        + pick_ball5_roomb_right#81 + pick_ball6_rooma_left#82
        + pick_ball6_rooma_right#83 + pick_ball6_roomb_left#84
        + pick_ball6_roomb_right#85 + pick_ball7_rooma_left#86
        + pick_ball7_rooma_right#87 + pick_ball7_roomb_left#88
        + pick_ball7_roomb_right#89 + pick_ball8_rooma_left#90
        + pick_ball8_rooma_right#91 + pick_ball8_roomb_left#92
        + pick_ball8_roomb_right#93 + pick_ball9_rooma_left#94
        + pick_ball9_rooma_right#95 + pick_ball9_roomb_left#96
        + pick_ball9_roomb_right#97 - YT#98  = 0
 c2:    drop_ball1_rooma_left#0 + drop_ball1_rooma_right#1
        + drop_ball1_roomb_left#2 + drop_ball1_roomb_right#3
        + drop_ball10_rooma_left#4 + drop_ball10_rooma_right#5
        + drop_ball10_roomb_left#6 + drop_ball10_roomb_right#7
        + drop_ball11_rooma_left#8 + drop_ball11_rooma_right#9
        + drop_ball11_roomb_left#10 + drop_ball11_roomb_right#11
        + drop_ball12_rooma_left#12 + drop_ball12_rooma_right#13
        + drop_ball12_roomb_left#14 + drop_ball12_roomb_right#15
        + drop_ball2_rooma_left#16 + drop_ball2_rooma_right#17
        + drop_ball2_roomb_left#18 + drop_ball2_roomb_right#19
        + drop_ball3_rooma_left#20 + drop_ball3_rooma_right#21
        + drop_ball3_roomb_left#22 + drop_ball3_roomb_right#23
        + drop_ball4_rooma_left#24 + drop_ball4_rooma_right#25
        + drop_ball4_roomb_left#26 + drop_ball4_roomb_right#27
        + drop_ball5_rooma_left#28 + drop_ball5_rooma_right#29
        + drop_ball5_roomb_left#30 + drop_ball5_roomb_right#31
        + drop_ball6_rooma_left#32 + drop_ball6_rooma_right#33
        + drop_ball6_roomb_left#34 + drop_ball6_roomb_right#35
        + drop_ball7_rooma_left#36 + drop_ball7_rooma_right#37
        + drop_ball7_roomb_left#38 + drop_ball7_roomb_right#39
        + drop_ball8_rooma_left#40 + drop_ball8_rooma_right#41
        + drop_ball8_roomb_left#42 + drop_ball8_roomb_right#43
        + drop_ball9_rooma_left#44 + drop_ball9_rooma_right#45
        + drop_ball9_roomb_left#46 + drop_ball9_roomb_right#47
        + move_rooma_roomb#48 + move_roomb_rooma#49 + pick_ball1_rooma_left#50
        + pick_ball1_rooma_right#51 + pick_ball1_roomb_left#52
        + pick_ball1_roomb_right#53 + pick_ball10_rooma_left#54
        + pick_ball10_rooma_right#55 + pick_ball10_roomb_left#56
        + pick_ball10_roomb_right#57 + pick_ball11_rooma_left#58
        + pick_ball11_rooma_right#59 + pick_ball11_roomb_left#60
        + pick_ball11_roomb_right#61 + pick_ball12_rooma_left#62
        + pick_ball12_rooma_right#63 + pick_ball12_roomb_left#64
        + pick_ball12_roomb_right#65 + pick_ball2_rooma_left#66
        + pick_ball2_rooma_right#67 + pick_ball2_roomb_left#68
        + pick_ball2_roomb_right#69 + pick_ball3_rooma_left#70
        + pick_ball3_rooma_right#71 + pick_ball3_roomb_left#72
        + pick_ball3_roomb_right#73 + pick_ball4_rooma_left#74
        + pick_ball4_rooma_right#75 + pick_ball4_roomb_left#76
        + pick_ball4_roomb_right#77 + pick_ball5_rooma_left#78
        + pick_ball5_rooma_right#79 + pick_ball5_roomb_left#80
        + pick_ball5_roomb_right#81 + pick_ball6_rooma_left#82
        + pick_ball6_rooma_right#83 + pick_ball6_roomb_left#84
        + pick_ball6_roomb_right#85 + pick_ball7_rooma_left#86
        + pick_ball7_rooma_right#87 + pick_ball7_roomb_left#88
        + pick_ball7_roomb_right#89 + pick_ball8_rooma_left#90
        + pick_ball8_rooma_right#91 + pick_ball8_roomb_left#92
        + pick_ball8_roomb_right#93 + pick_ball9_rooma_left#94
        + pick_ball9_rooma_right#95 + pick_ball9_roomb_left#96
        + pick_ball9_roomb_right#97 - YF#99  = 0
 c3:    _(drop_ball1_rooma_left_ge_2)#100 - _(drop_ball1_rooma_left_ge_1)#101
        <= 0
 c4:    - drop_ball1_rooma_left#0 + _(drop_ball1_rooma_left_ge_2)#100
        + _(drop_ball1_rooma_left_ge_1)#101 <= 0
 c5:    drop_ball1_rooma_left#0 - 10000000000 _(drop_ball1_rooma_left_ge_2)#100
        <= 1
 c6:    drop_ball1_rooma_left#0 - 10000000000 _(drop_ball1_rooma_left_ge_1)#101
        <= 0
 c7:    _(drop_ball1_rooma_right_ge_2)#102 - _(drop_ball1_rooma_right_ge_1)#103
        <= 0
 c8:    - drop_ball1_rooma_right#1 + _(drop_ball1_rooma_right_ge_2)#102
        + _(drop_ball1_rooma_right_ge_1)#103 <= 0
 c9:    drop_ball1_rooma_right#1
        - 10000000000 _(drop_ball1_rooma_right_ge_2)#102 <= 1
 c10:   drop_ball1_rooma_right#1
        - 10000000000 _(drop_ball1_rooma_right_ge_1)#103 <= 0
 c11:   _(drop_ball1_roomb_left_ge_2)#104 - _(drop_ball1_roomb_left_ge_1)#105
        <= 0
 c12:   - drop_ball1_roomb_left#2 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball1_roomb_left_ge_1)#105 <= 0
 c13:   drop_ball1_roomb_left#2 - 10000000000 _(drop_ball1_roomb_left_ge_2)#104
        <= 1
 c14:   drop_ball1_roomb_left#2 - 10000000000 _(drop_ball1_roomb_left_ge_1)#105
        <= 0
 c15:   _(drop_ball1_roomb_right_ge_2)#106 - _(drop_ball1_roomb_right_ge_1)#107
        <= 0
 c16:   - drop_ball1_roomb_right#3 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball1_roomb_right_ge_1)#107 <= 0
 c17:   drop_ball1_roomb_right#3
        - 10000000000 _(drop_ball1_roomb_right_ge_2)#106 <= 1
 c18:   drop_ball1_roomb_right#3
        - 10000000000 _(drop_ball1_roomb_right_ge_1)#107 <= 0
 c19:   _(drop_ball10_rooma_left_ge_2)#108 - _(drop_ball10_rooma_left_ge_1)#109
        <= 0
 c20:   - drop_ball10_rooma_left#4 + _(drop_ball10_rooma_left_ge_2)#108
        + _(drop_ball10_rooma_left_ge_1)#109 <= 0
 c21:   drop_ball10_rooma_left#4
        - 10000000000 _(drop_ball10_rooma_left_ge_2)#108 <= 1
 c22:   drop_ball10_rooma_left#4
        - 10000000000 _(drop_ball10_rooma_left_ge_1)#109 <= 0
 c23:   _(drop_ball10_rooma_right_ge_2)#110
        - _(drop_ball10_rooma_right_ge_1)#111 <= 0
 c24:   - drop_ball10_rooma_right#5 + _(drop_ball10_rooma_right_ge_2)#110
        + _(drop_ball10_rooma_right_ge_1)#111 <= 0
 c25:   drop_ball10_rooma_right#5
        - 10000000000 _(drop_ball10_rooma_right_ge_2)#110 <= 1
 c26:   drop_ball10_rooma_right#5
        - 10000000000 _(drop_ball10_rooma_right_ge_1)#111 <= 0
 c27:   _(drop_ball10_roomb_left_ge_2)#112 - _(drop_ball10_roomb_left_ge_1)#113
        <= 0
 c28:   - drop_ball10_roomb_left#6 + _(drop_ball10_roomb_left_ge_2)#112
        + _(drop_ball10_roomb_left_ge_1)#113 <= 0
 c29:   drop_ball10_roomb_left#6
        - 10000000000 _(drop_ball10_roomb_left_ge_2)#112 <= 1
 c30:   drop_ball10_roomb_left#6
        - 10000000000 _(drop_ball10_roomb_left_ge_1)#113 <= 0
 c31:   _(drop_ball10_roomb_right_ge_2)#114
        - _(drop_ball10_roomb_right_ge_1)#115 <= 0
 c32:   - drop_ball10_roomb_right#7 + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball10_roomb_right_ge_1)#115 <= 0
 c33:   drop_ball10_roomb_right#7
        - 10000000000 _(drop_ball10_roomb_right_ge_2)#114 <= 1
 c34:   drop_ball10_roomb_right#7
        - 10000000000 _(drop_ball10_roomb_right_ge_1)#115 <= 0
 c35:   _(drop_ball11_rooma_left_ge_2)#116 - _(drop_ball11_rooma_left_ge_1)#117
        <= 0
 c36:   - drop_ball11_rooma_left#8 + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_left_ge_3)#118 <= 0
 c37:   drop_ball11_rooma_left#8
        - 10000000000 _(drop_ball11_rooma_left_ge_2)#116 <= 1
 c38:   drop_ball11_rooma_left#8
        - 10000000000 _(drop_ball11_rooma_left_ge_1)#117 <= 0
 c39:   _(drop_ball11_rooma_right_ge_2)#119
        - _(drop_ball11_rooma_right_ge_1)#120 <= 0
 c40:   - drop_ball11_rooma_right#9 + _(drop_ball11_rooma_right_ge_2)#119
        + _(drop_ball11_rooma_right_ge_1)#120 <= 0
 c41:   drop_ball11_rooma_right#9
        - 10000000000 _(drop_ball11_rooma_right_ge_2)#119 <= 1
 c42:   drop_ball11_rooma_right#9
        - 10000000000 _(drop_ball11_rooma_right_ge_1)#120 <= 0
 c43:   _(drop_ball11_roomb_left_ge_2)#121 - _(drop_ball11_roomb_left_ge_1)#122
        <= 0
 c44:   - drop_ball11_roomb_left#10 + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball11_roomb_left_ge_3)#123 <= 0
 c45:   drop_ball11_roomb_left#10
        - 10000000000 _(drop_ball11_roomb_left_ge_2)#121 <= 1
 c46:   drop_ball11_roomb_left#10
        - 10000000000 _(drop_ball11_roomb_left_ge_1)#122 <= 0
 c47:   _(drop_ball11_roomb_right_ge_2)#124
        - _(drop_ball11_roomb_right_ge_1)#125 <= 0
 c48:   - drop_ball11_roomb_right#11 + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball11_roomb_right_ge_3)#126 <= 0
 c49:   drop_ball11_roomb_right#11
        - 10000000000 _(drop_ball11_roomb_right_ge_2)#124 <= 1
 c50:   drop_ball11_roomb_right#11
        - 10000000000 _(drop_ball11_roomb_right_ge_1)#125 <= 0
 c51:   _(drop_ball12_rooma_left_ge_2)#127 - _(drop_ball12_rooma_left_ge_1)#128
        <= 0
 c52:   - drop_ball12_rooma_left#12 + _(drop_ball12_rooma_left_ge_2)#127
        + _(drop_ball12_rooma_left_ge_1)#128 <= 0
 c53:   drop_ball12_rooma_left#12
        - 10000000000 _(drop_ball12_rooma_left_ge_2)#127 <= 1
 c54:   drop_ball12_rooma_left#12
        - 10000000000 _(drop_ball12_rooma_left_ge_1)#128 <= 0
 c55:   _(drop_ball12_rooma_right_ge_2)#129
        - _(drop_ball12_rooma_right_ge_1)#130 <= 0
 c56:   - drop_ball12_rooma_right#13 + _(drop_ball12_rooma_right_ge_2)#129
        + _(drop_ball12_rooma_right_ge_1)#130 <= 0
 c57:   drop_ball12_rooma_right#13
        - 10000000000 _(drop_ball12_rooma_right_ge_2)#129 <= 1
 c58:   drop_ball12_rooma_right#13
        - 10000000000 _(drop_ball12_rooma_right_ge_1)#130 <= 0
 c59:   _(drop_ball12_roomb_left_ge_2)#131 - _(drop_ball12_roomb_left_ge_1)#132
        <= 0
 c60:   - drop_ball12_roomb_left#14 + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball12_roomb_left_ge_1)#132
        + _(drop_ball12_roomb_left_ge_3)#133 <= 0
 c61:   drop_ball12_roomb_left#14
        - 10000000000 _(drop_ball12_roomb_left_ge_2)#131 <= 1
 c62:   drop_ball12_roomb_left#14
        - 10000000000 _(drop_ball12_roomb_left_ge_1)#132 <= 0
 c63:   _(drop_ball12_roomb_right_ge_2)#134
        - _(drop_ball12_roomb_right_ge_1)#135 <= 0
 c64:   - drop_ball12_roomb_right#15 + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball12_roomb_right_ge_1)#135 <= 0
 c65:   drop_ball12_roomb_right#15
        - 10000000000 _(drop_ball12_roomb_right_ge_2)#134 <= 1
 c66:   drop_ball12_roomb_right#15
        - 10000000000 _(drop_ball12_roomb_right_ge_1)#135 <= 0
 c67:   _(drop_ball2_rooma_left_ge_2)#136 - _(drop_ball2_rooma_left_ge_1)#137
        <= 0
 c68:   - drop_ball2_rooma_left#16 + _(drop_ball2_rooma_left_ge_2)#136
        + _(drop_ball2_rooma_left_ge_1)#137 <= 0
 c69:   drop_ball2_rooma_left#16
        - 10000000000 _(drop_ball2_rooma_left_ge_2)#136 <= 1
 c70:   drop_ball2_rooma_left#16
        - 10000000000 _(drop_ball2_rooma_left_ge_1)#137 <= 0
 c71:   _(drop_ball2_rooma_right_ge_2)#138 - _(drop_ball2_rooma_right_ge_1)#139
        <= 0
 c72:   - drop_ball2_rooma_right#17 + _(drop_ball2_rooma_right_ge_2)#138
        + _(drop_ball2_rooma_right_ge_1)#139 <= 0
 c73:   drop_ball2_rooma_right#17
        - 10000000000 _(drop_ball2_rooma_right_ge_2)#138 <= 1
 c74:   drop_ball2_rooma_right#17
        - 10000000000 _(drop_ball2_rooma_right_ge_1)#139 <= 0
 c75:   _(drop_ball2_roomb_left_ge_2)#140 - _(drop_ball2_roomb_left_ge_1)#141
        <= 0
 c76:   - drop_ball2_roomb_left#18 + _(drop_ball2_roomb_left_ge_2)#140
        + _(drop_ball2_roomb_left_ge_1)#141 <= 0
 c77:   drop_ball2_roomb_left#18
        - 10000000000 _(drop_ball2_roomb_left_ge_2)#140 <= 1
 c78:   drop_ball2_roomb_left#18
        - 10000000000 _(drop_ball2_roomb_left_ge_1)#141 <= 0
 c79:   _(drop_ball2_roomb_right_ge_2)#142 - _(drop_ball2_roomb_right_ge_1)#143
        <= 0
 c80:   - drop_ball2_roomb_right#19 + _(drop_ball2_roomb_right_ge_2)#142
        + _(drop_ball2_roomb_right_ge_1)#143 <= 0
 c81:   drop_ball2_roomb_right#19
        - 10000000000 _(drop_ball2_roomb_right_ge_2)#142 <= 1
 c82:   drop_ball2_roomb_right#19
        - 10000000000 _(drop_ball2_roomb_right_ge_1)#143 <= 0
 c83:   _(drop_ball3_rooma_left_ge_2)#144 - _(drop_ball3_rooma_left_ge_1)#145
        <= 0
 c84:   - drop_ball3_rooma_left#20 + _(drop_ball3_rooma_left_ge_2)#144
        + _(drop_ball3_rooma_left_ge_1)#145 <= 0
 c85:   drop_ball3_rooma_left#20
        - 10000000000 _(drop_ball3_rooma_left_ge_2)#144 <= 1
 c86:   drop_ball3_rooma_left#20
        - 10000000000 _(drop_ball3_rooma_left_ge_1)#145 <= 0
 c87:   _(drop_ball3_rooma_right_ge_2)#146 - _(drop_ball3_rooma_right_ge_1)#147
        <= 0
 c88:   - drop_ball3_rooma_right#21 + _(drop_ball3_rooma_right_ge_2)#146
        + _(drop_ball3_rooma_right_ge_1)#147 <= 0
 c89:   drop_ball3_rooma_right#21
        - 10000000000 _(drop_ball3_rooma_right_ge_2)#146 <= 1
 c90:   drop_ball3_rooma_right#21
        - 10000000000 _(drop_ball3_rooma_right_ge_1)#147 <= 0
 c91:   _(drop_ball3_roomb_left_ge_2)#148 - _(drop_ball3_roomb_left_ge_1)#149
        <= 0
 c92:   - drop_ball3_roomb_left#22 + _(drop_ball3_roomb_left_ge_2)#148
        + _(drop_ball3_roomb_left_ge_1)#149 <= 0
 c93:   drop_ball3_roomb_left#22
        - 10000000000 _(drop_ball3_roomb_left_ge_2)#148 <= 1
 c94:   drop_ball3_roomb_left#22
        - 10000000000 _(drop_ball3_roomb_left_ge_1)#149 <= 0
 c95:   _(drop_ball3_roomb_right_ge_2)#150 - _(drop_ball3_roomb_right_ge_1)#151
        <= 0
 c96:   - drop_ball3_roomb_right#23 + _(drop_ball3_roomb_right_ge_2)#150
        + _(drop_ball3_roomb_right_ge_1)#151 <= 0
 c97:   drop_ball3_roomb_right#23
        - 10000000000 _(drop_ball3_roomb_right_ge_2)#150 <= 1
 c98:   drop_ball3_roomb_right#23
        - 10000000000 _(drop_ball3_roomb_right_ge_1)#151 <= 0
 c99:   _(drop_ball4_rooma_left_ge_2)#152 - _(drop_ball4_rooma_left_ge_1)#153
        <= 0
 c100:  - drop_ball4_rooma_left#24 + _(drop_ball4_rooma_left_ge_2)#152
        + _(drop_ball4_rooma_left_ge_1)#153 <= 0
 c101:  drop_ball4_rooma_left#24
        - 10000000000 _(drop_ball4_rooma_left_ge_2)#152 <= 1
 c102:  drop_ball4_rooma_left#24
        - 10000000000 _(drop_ball4_rooma_left_ge_1)#153 <= 0
 c103:  _(drop_ball4_rooma_right_ge_2)#154 - _(drop_ball4_rooma_right_ge_1)#155
        <= 0
 c104:  - drop_ball4_rooma_right#25 + _(drop_ball4_rooma_right_ge_2)#154
        + _(drop_ball4_rooma_right_ge_1)#155 <= 0
 c105:  drop_ball4_rooma_right#25
        - 10000000000 _(drop_ball4_rooma_right_ge_2)#154 <= 1
 c106:  drop_ball4_rooma_right#25
        - 10000000000 _(drop_ball4_rooma_right_ge_1)#155 <= 0
 c107:  _(drop_ball4_roomb_left_ge_2)#156 - _(drop_ball4_roomb_left_ge_1)#157
        <= 0
 c108:  - drop_ball4_roomb_left#26 + _(drop_ball4_roomb_left_ge_2)#156
        + _(drop_ball4_roomb_left_ge_1)#157 <= 0
 c109:  drop_ball4_roomb_left#26
        - 10000000000 _(drop_ball4_roomb_left_ge_2)#156 <= 1
 c110:  drop_ball4_roomb_left#26
        - 10000000000 _(drop_ball4_roomb_left_ge_1)#157 <= 0
 c111:  _(drop_ball4_roomb_right_ge_2)#158 - _(drop_ball4_roomb_right_ge_1)#159
        <= 0
 c112:  - drop_ball4_roomb_right#27 + _(drop_ball4_roomb_right_ge_2)#158
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball4_roomb_right_ge_3)#160 <= 0
 c113:  drop_ball4_roomb_right#27
        - 10000000000 _(drop_ball4_roomb_right_ge_2)#158 <= 1
 c114:  drop_ball4_roomb_right#27
        - 10000000000 _(drop_ball4_roomb_right_ge_1)#159 <= 0
 c115:  _(drop_ball5_rooma_left_ge_2)#161 - _(drop_ball5_rooma_left_ge_1)#162
        <= 0
 c116:  - drop_ball5_rooma_left#28 + _(drop_ball5_rooma_left_ge_2)#161
        + _(drop_ball5_rooma_left_ge_1)#162 <= 0
 c117:  drop_ball5_rooma_left#28
        - 10000000000 _(drop_ball5_rooma_left_ge_2)#161 <= 1
 c118:  drop_ball5_rooma_left#28
        - 10000000000 _(drop_ball5_rooma_left_ge_1)#162 <= 0
 c119:  _(drop_ball5_rooma_right_ge_2)#163 - _(drop_ball5_rooma_right_ge_1)#164
        <= 0
 c120:  - drop_ball5_rooma_right#29 + _(drop_ball5_rooma_right_ge_2)#163
        + _(drop_ball5_rooma_right_ge_1)#164 <= 0
 c121:  drop_ball5_rooma_right#29
        - 10000000000 _(drop_ball5_rooma_right_ge_2)#163 <= 1
 c122:  drop_ball5_rooma_right#29
        - 10000000000 _(drop_ball5_rooma_right_ge_1)#164 <= 0
 c123:  _(drop_ball5_roomb_left_ge_2)#165 - _(drop_ball5_roomb_left_ge_1)#166
        <= 0
 c124:  - drop_ball5_roomb_left#30 + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball5_roomb_left_ge_1)#166 <= 0
 c125:  drop_ball5_roomb_left#30
        - 10000000000 _(drop_ball5_roomb_left_ge_2)#165 <= 1
 c126:  drop_ball5_roomb_left#30
        - 10000000000 _(drop_ball5_roomb_left_ge_1)#166 <= 0
 c127:  _(drop_ball5_roomb_right_ge_2)#167 - _(drop_ball5_roomb_right_ge_1)#168
        <= 0
 c128:  - drop_ball5_roomb_right#31 + _(drop_ball5_roomb_right_ge_2)#167
        + _(drop_ball5_roomb_right_ge_1)#168 <= 0
 c129:  drop_ball5_roomb_right#31
        - 10000000000 _(drop_ball5_roomb_right_ge_2)#167 <= 1
 c130:  drop_ball5_roomb_right#31
        - 10000000000 _(drop_ball5_roomb_right_ge_1)#168 <= 0
 c131:  _(drop_ball6_rooma_left_ge_2)#169 - _(drop_ball6_rooma_left_ge_1)#170
        <= 0
 c132:  - drop_ball6_rooma_left#32 + _(drop_ball6_rooma_left_ge_2)#169
        + _(drop_ball6_rooma_left_ge_1)#170 <= 0
 c133:  drop_ball6_rooma_left#32
        - 10000000000 _(drop_ball6_rooma_left_ge_2)#169 <= 1
 c134:  drop_ball6_rooma_left#32
        - 10000000000 _(drop_ball6_rooma_left_ge_1)#170 <= 0
 c135:  _(drop_ball6_rooma_right_ge_2)#171 - _(drop_ball6_rooma_right_ge_1)#172
        <= 0
 c136:  - drop_ball6_rooma_right#33 + _(drop_ball6_rooma_right_ge_2)#171
        + _(drop_ball6_rooma_right_ge_1)#172 <= 0
 c137:  drop_ball6_rooma_right#33
        - 10000000000 _(drop_ball6_rooma_right_ge_2)#171 <= 1
 c138:  drop_ball6_rooma_right#33
        - 10000000000 _(drop_ball6_rooma_right_ge_1)#172 <= 0
 c139:  _(drop_ball6_roomb_left_ge_2)#173 - _(drop_ball6_roomb_left_ge_1)#174
        <= 0
 c140:  - drop_ball6_roomb_left#34 + _(drop_ball6_roomb_left_ge_2)#173
        + _(drop_ball6_roomb_left_ge_1)#174 <= 0
 c141:  drop_ball6_roomb_left#34
        - 10000000000 _(drop_ball6_roomb_left_ge_2)#173 <= 1
 c142:  drop_ball6_roomb_left#34
        - 10000000000 _(drop_ball6_roomb_left_ge_1)#174 <= 0
 c143:  _(drop_ball6_roomb_right_ge_2)#175 - _(drop_ball6_roomb_right_ge_1)#176
        <= 0
 c144:  - drop_ball6_roomb_right#35 + _(drop_ball6_roomb_right_ge_2)#175
        + _(drop_ball6_roomb_right_ge_1)#176 <= 0
 c145:  drop_ball6_roomb_right#35
        - 10000000000 _(drop_ball6_roomb_right_ge_2)#175 <= 1
 c146:  drop_ball6_roomb_right#35
        - 10000000000 _(drop_ball6_roomb_right_ge_1)#176 <= 0
 c147:  _(drop_ball7_rooma_left_ge_2)#177 - _(drop_ball7_rooma_left_ge_1)#178
        <= 0
 c148:  - drop_ball7_rooma_left#36 + _(drop_ball7_rooma_left_ge_2)#177
        + _(drop_ball7_rooma_left_ge_1)#178 <= 0
 c149:  drop_ball7_rooma_left#36
        - 10000000000 _(drop_ball7_rooma_left_ge_2)#177 <= 1
 c150:  drop_ball7_rooma_left#36
        - 10000000000 _(drop_ball7_rooma_left_ge_1)#178 <= 0
 c151:  _(drop_ball7_rooma_right_ge_2)#179 - _(drop_ball7_rooma_right_ge_1)#180
        <= 0
 c152:  - drop_ball7_rooma_right#37 + _(drop_ball7_rooma_right_ge_2)#179
        + _(drop_ball7_rooma_right_ge_1)#180 <= 0
 c153:  drop_ball7_rooma_right#37
        - 10000000000 _(drop_ball7_rooma_right_ge_2)#179 <= 1
 c154:  drop_ball7_rooma_right#37
        - 10000000000 _(drop_ball7_rooma_right_ge_1)#180 <= 0
 c155:  _(drop_ball7_roomb_left_ge_2)#181 - _(drop_ball7_roomb_left_ge_1)#182
        <= 0
 c156:  - drop_ball7_roomb_left#38 + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball7_roomb_left_ge_1)#182 + _(drop_ball7_roomb_left_ge_3)#183
        <= 0
 c157:  drop_ball7_roomb_left#38
        - 10000000000 _(drop_ball7_roomb_left_ge_2)#181 <= 1
 c158:  drop_ball7_roomb_left#38
        - 10000000000 _(drop_ball7_roomb_left_ge_1)#182 <= 0
 c159:  _(drop_ball7_roomb_right_ge_2)#184 - _(drop_ball7_roomb_right_ge_1)#185
        <= 0
 c160:  - drop_ball7_roomb_right#39 + _(drop_ball7_roomb_right_ge_2)#184
        + _(drop_ball7_roomb_right_ge_1)#185 <= 0
 c161:  drop_ball7_roomb_right#39
        - 10000000000 _(drop_ball7_roomb_right_ge_2)#184 <= 1
 c162:  drop_ball7_roomb_right#39
        - 10000000000 _(drop_ball7_roomb_right_ge_1)#185 <= 0
 c163:  _(drop_ball8_rooma_left_ge_2)#186 - _(drop_ball8_rooma_left_ge_1)#187
        <= 0
 c164:  - drop_ball8_rooma_left#40 + _(drop_ball8_rooma_left_ge_2)#186
        + _(drop_ball8_rooma_left_ge_1)#187 <= 0
 c165:  drop_ball8_rooma_left#40
        - 10000000000 _(drop_ball8_rooma_left_ge_2)#186 <= 1
 c166:  drop_ball8_rooma_left#40
        - 10000000000 _(drop_ball8_rooma_left_ge_1)#187 <= 0
 c167:  _(drop_ball8_rooma_right_ge_2)#188 - _(drop_ball8_rooma_right_ge_1)#189
        <= 0
 c168:  - drop_ball8_rooma_right#41 + _(drop_ball8_rooma_right_ge_2)#188
        + _(drop_ball8_rooma_right_ge_1)#189 <= 0
 c169:  drop_ball8_rooma_right#41
        - 10000000000 _(drop_ball8_rooma_right_ge_2)#188 <= 1
 c170:  drop_ball8_rooma_right#41
        - 10000000000 _(drop_ball8_rooma_right_ge_1)#189 <= 0
 c171:  _(drop_ball8_roomb_left_ge_2)#190 - _(drop_ball8_roomb_left_ge_1)#191
        <= 0
 c172:  - drop_ball8_roomb_left#42 + _(drop_ball8_roomb_left_ge_2)#190
        + _(drop_ball8_roomb_left_ge_1)#191 <= 0
 c173:  drop_ball8_roomb_left#42
        - 10000000000 _(drop_ball8_roomb_left_ge_2)#190 <= 1
 c174:  drop_ball8_roomb_left#42
        - 10000000000 _(drop_ball8_roomb_left_ge_1)#191 <= 0
 c175:  _(drop_ball8_roomb_right_ge_2)#192 - _(drop_ball8_roomb_right_ge_1)#193
        <= 0
 c176:  - drop_ball8_roomb_right#43 + _(drop_ball8_roomb_right_ge_2)#192
        + _(drop_ball8_roomb_right_ge_1)#193 <= 0
 c177:  drop_ball8_roomb_right#43
        - 10000000000 _(drop_ball8_roomb_right_ge_2)#192 <= 1
 c178:  drop_ball8_roomb_right#43
        - 10000000000 _(drop_ball8_roomb_right_ge_1)#193 <= 0
 c179:  _(drop_ball9_rooma_left_ge_2)#194 - _(drop_ball9_rooma_left_ge_1)#195
        <= 0
 c180:  - drop_ball9_rooma_left#44 + _(drop_ball9_rooma_left_ge_2)#194
        + _(drop_ball9_rooma_left_ge_1)#195 <= 0
 c181:  drop_ball9_rooma_left#44
        - 10000000000 _(drop_ball9_rooma_left_ge_2)#194 <= 1
 c182:  drop_ball9_rooma_left#44
        - 10000000000 _(drop_ball9_rooma_left_ge_1)#195 <= 0
 c183:  _(drop_ball9_rooma_right_ge_2)#196 - _(drop_ball9_rooma_right_ge_1)#197
        <= 0
 c184:  - drop_ball9_rooma_right#45 + _(drop_ball9_rooma_right_ge_2)#196
        + _(drop_ball9_rooma_right_ge_1)#197 <= 0
 c185:  drop_ball9_rooma_right#45
        - 10000000000 _(drop_ball9_rooma_right_ge_2)#196 <= 1
 c186:  drop_ball9_rooma_right#45
        - 10000000000 _(drop_ball9_rooma_right_ge_1)#197 <= 0
 c187:  _(drop_ball9_roomb_left_ge_2)#198 - _(drop_ball9_roomb_left_ge_1)#199
        <= 0
 c188:  - drop_ball9_roomb_left#46 + _(drop_ball9_roomb_left_ge_2)#198
        + _(drop_ball9_roomb_left_ge_1)#199 <= 0
 c189:  drop_ball9_roomb_left#46
        - 10000000000 _(drop_ball9_roomb_left_ge_2)#198 <= 1
 c190:  drop_ball9_roomb_left#46
        - 10000000000 _(drop_ball9_roomb_left_ge_1)#199 <= 0
 c191:  _(drop_ball9_roomb_right_ge_2)#200 - _(drop_ball9_roomb_right_ge_1)#201
        <= 0
 c192:  - drop_ball9_roomb_right#47 + _(drop_ball9_roomb_right_ge_2)#200
        + _(drop_ball9_roomb_right_ge_1)#201 <= 0
 c193:  drop_ball9_roomb_right#47
        - 10000000000 _(drop_ball9_roomb_right_ge_2)#200 <= 1
 c194:  drop_ball9_roomb_right#47
        - 10000000000 _(drop_ball9_roomb_right_ge_1)#201 <= 0
 c195:  _(move_rooma_roomb_ge_2)#202 - _(move_rooma_roomb_ge_1)#203 <= 0
 c196:  - move_rooma_roomb#48 + _(move_rooma_roomb_ge_2)#202
        + _(move_rooma_roomb_ge_1)#203 + _(move_rooma_roomb_ge_3)#204 <= 0
 c197:  move_rooma_roomb#48 - 10000000000 _(move_rooma_roomb_ge_2)#202 <= 1
 c198:  move_rooma_roomb#48 - 10000000000 _(move_rooma_roomb_ge_1)#203 <= 0
 c199:  _(move_roomb_rooma_ge_2)#205 - _(move_roomb_rooma_ge_1)#206 <= 0
 c200:  - move_roomb_rooma#49 + _(move_roomb_rooma_ge_2)#205
        + _(move_roomb_rooma_ge_1)#206 <= 0
 c201:  move_roomb_rooma#49 - 10000000000 _(move_roomb_rooma_ge_2)#205 <= 1
 c202:  move_roomb_rooma#49 - 10000000000 _(move_roomb_rooma_ge_1)#206 <= 0
 c203:  _(pick_ball1_rooma_left_ge_2)#207 - _(pick_ball1_rooma_left_ge_1)#208
        <= 0
 c204:  - pick_ball1_rooma_left#50 + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_left_ge_1)#208 <= 0
 c205:  pick_ball1_rooma_left#50
        - 10000000000 _(pick_ball1_rooma_left_ge_2)#207 <= 1
 c206:  pick_ball1_rooma_left#50
        - 10000000000 _(pick_ball1_rooma_left_ge_1)#208 <= 0
 c207:  _(pick_ball1_rooma_right_ge_2)#209 - _(pick_ball1_rooma_right_ge_1)#210
        <= 0
 c208:  - pick_ball1_rooma_right#51 + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_rooma_right_ge_1)#210 <= 0
 c209:  pick_ball1_rooma_right#51
        - 10000000000 _(pick_ball1_rooma_right_ge_2)#209 <= 1
 c210:  pick_ball1_rooma_right#51
        - 10000000000 _(pick_ball1_rooma_right_ge_1)#210 <= 0
 c211:  _(pick_ball1_roomb_left_ge_2)#211 - _(pick_ball1_roomb_left_ge_1)#212
        <= 0
 c212:  - pick_ball1_roomb_left#52 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_left_ge_1)#212 + _(pick_ball1_roomb_left_ge_3)#213
        <= 0
 c213:  pick_ball1_roomb_left#52
        - 10000000000 _(pick_ball1_roomb_left_ge_2)#211 <= 1
 c214:  pick_ball1_roomb_left#52
        - 10000000000 _(pick_ball1_roomb_left_ge_1)#212 <= 0
 c215:  _(pick_ball1_roomb_right_ge_2)#214 - _(pick_ball1_roomb_right_ge_1)#215
        <= 0
 c216:  - pick_ball1_roomb_right#53 + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball1_roomb_right_ge_3)#216 <= 0
 c217:  pick_ball1_roomb_right#53
        - 10000000000 _(pick_ball1_roomb_right_ge_2)#214 <= 1
 c218:  pick_ball1_roomb_right#53
        - 10000000000 _(pick_ball1_roomb_right_ge_1)#215 <= 0
 c219:  _(pick_ball10_rooma_left_ge_2)#217 - _(pick_ball10_rooma_left_ge_1)#218
        <= 0
 c220:  - pick_ball10_rooma_left#54 + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_rooma_left_ge_1)#218 <= 0
 c221:  pick_ball10_rooma_left#54
        - 10000000000 _(pick_ball10_rooma_left_ge_2)#217 <= 1
 c222:  pick_ball10_rooma_left#54
        - 10000000000 _(pick_ball10_rooma_left_ge_1)#218 <= 0
 c223:  _(pick_ball10_rooma_right_ge_2)#219
        - _(pick_ball10_rooma_right_ge_1)#220 <= 0
 c224:  - pick_ball10_rooma_right#55 + _(pick_ball10_rooma_right_ge_2)#219
        + _(pick_ball10_rooma_right_ge_1)#220 <= 0
 c225:  pick_ball10_rooma_right#55
        - 10000000000 _(pick_ball10_rooma_right_ge_2)#219 <= 1
 c226:  pick_ball10_rooma_right#55
        - 10000000000 _(pick_ball10_rooma_right_ge_1)#220 <= 0
 c227:  _(pick_ball10_roomb_left_ge_2)#221 - _(pick_ball10_roomb_left_ge_1)#222
        <= 0
 c228:  - pick_ball10_roomb_left#56 + _(pick_ball10_roomb_left_ge_2)#221
        + _(pick_ball10_roomb_left_ge_1)#222 <= 0
 c229:  pick_ball10_roomb_left#56
        - 10000000000 _(pick_ball10_roomb_left_ge_2)#221 <= 1
 c230:  pick_ball10_roomb_left#56
        - 10000000000 _(pick_ball10_roomb_left_ge_1)#222 <= 0
 c231:  _(pick_ball10_roomb_right_ge_2)#223
        - _(pick_ball10_roomb_right_ge_1)#224 <= 0
 c232:  - pick_ball10_roomb_right#57 + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball10_roomb_right_ge_1)#224 <= 0
 c233:  pick_ball10_roomb_right#57
        - 10000000000 _(pick_ball10_roomb_right_ge_2)#223 <= 1
 c234:  pick_ball10_roomb_right#57
        - 10000000000 _(pick_ball10_roomb_right_ge_1)#224 <= 0
 c235:  _(pick_ball11_rooma_left_ge_2)#225 - _(pick_ball11_rooma_left_ge_1)#226
        <= 0
 c236:  - pick_ball11_rooma_left#58 + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_left_ge_1)#226 <= 0
 c237:  pick_ball11_rooma_left#58
        - 10000000000 _(pick_ball11_rooma_left_ge_2)#225 <= 1
 c238:  pick_ball11_rooma_left#58
        - 10000000000 _(pick_ball11_rooma_left_ge_1)#226 <= 0
 c239:  _(pick_ball11_rooma_right_ge_2)#227
        - _(pick_ball11_rooma_right_ge_1)#228 <= 0
 c240:  - pick_ball11_rooma_right#59 + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_rooma_right_ge_1)#228 <= 0
 c241:  pick_ball11_rooma_right#59
        - 10000000000 _(pick_ball11_rooma_right_ge_2)#227 <= 1
 c242:  pick_ball11_rooma_right#59
        - 10000000000 _(pick_ball11_rooma_right_ge_1)#228 <= 0
 c243:  _(pick_ball11_roomb_left_ge_2)#229 - _(pick_ball11_roomb_left_ge_1)#230
        <= 0
 c244:  - pick_ball11_roomb_left#60 + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_left_ge_1)#230 <= 0
 c245:  pick_ball11_roomb_left#60
        - 10000000000 _(pick_ball11_roomb_left_ge_2)#229 <= 1
 c246:  pick_ball11_roomb_left#60
        - 10000000000 _(pick_ball11_roomb_left_ge_1)#230 <= 0
 c247:  _(pick_ball11_roomb_right_ge_2)#231
        - _(pick_ball11_roomb_right_ge_1)#232 <= 0
 c248:  - pick_ball11_roomb_right#61 + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball11_roomb_right_ge_3)#233 <= 0
 c249:  pick_ball11_roomb_right#61
        - 10000000000 _(pick_ball11_roomb_right_ge_2)#231 <= 1
 c250:  pick_ball11_roomb_right#61
        - 10000000000 _(pick_ball11_roomb_right_ge_1)#232 <= 0
 c251:  _(pick_ball12_rooma_left_ge_2)#234 - _(pick_ball12_rooma_left_ge_1)#235
        <= 0
 c252:  - pick_ball12_rooma_left#62 + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_left_ge_1)#235 <= 0
 c253:  pick_ball12_rooma_left#62
        - 10000000000 _(pick_ball12_rooma_left_ge_2)#234 <= 1
 c254:  pick_ball12_rooma_left#62
        - 10000000000 _(pick_ball12_rooma_left_ge_1)#235 <= 0
 c255:  _(pick_ball12_rooma_right_ge_2)#236
        - _(pick_ball12_rooma_right_ge_1)#237 <= 0
 c256:  - pick_ball12_rooma_right#63 + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_rooma_right_ge_1)#237 <= 0
 c257:  pick_ball12_rooma_right#63
        - 10000000000 _(pick_ball12_rooma_right_ge_2)#236 <= 1
 c258:  pick_ball12_rooma_right#63
        - 10000000000 _(pick_ball12_rooma_right_ge_1)#237 <= 0
 c259:  _(pick_ball12_roomb_left_ge_2)#238 - _(pick_ball12_roomb_left_ge_1)#239
        <= 0
 c260:  - pick_ball12_roomb_left#64 + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_left_ge_1)#239 <= 0
 c261:  pick_ball12_roomb_left#64
        - 10000000000 _(pick_ball12_roomb_left_ge_2)#238 <= 1
 c262:  pick_ball12_roomb_left#64
        - 10000000000 _(pick_ball12_roomb_left_ge_1)#239 <= 0
 c263:  _(pick_ball12_roomb_right_ge_2)#240
        - _(pick_ball12_roomb_right_ge_1)#241 <= 0
 c264:  - pick_ball12_roomb_right#65 + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball12_roomb_right_ge_1)#241 <= 0
 c265:  pick_ball12_roomb_right#65
        - 10000000000 _(pick_ball12_roomb_right_ge_2)#240 <= 1
 c266:  pick_ball12_roomb_right#65
        - 10000000000 _(pick_ball12_roomb_right_ge_1)#241 <= 0
 c267:  _(pick_ball2_rooma_left_ge_2)#242 - _(pick_ball2_rooma_left_ge_1)#243
        <= 0
 c268:  - pick_ball2_rooma_left#66 + _(pick_ball2_rooma_left_ge_2)#242
        + _(pick_ball2_rooma_left_ge_1)#243 <= 0
 c269:  pick_ball2_rooma_left#66
        - 10000000000 _(pick_ball2_rooma_left_ge_2)#242 <= 1
 c270:  pick_ball2_rooma_left#66
        - 10000000000 _(pick_ball2_rooma_left_ge_1)#243 <= 0
 c271:  _(pick_ball2_rooma_right_ge_2)#244 - _(pick_ball2_rooma_right_ge_1)#245
        <= 0
 c272:  - pick_ball2_rooma_right#67 + _(pick_ball2_rooma_right_ge_2)#244
        + _(pick_ball2_rooma_right_ge_1)#245 <= 0
 c273:  pick_ball2_rooma_right#67
        - 10000000000 _(pick_ball2_rooma_right_ge_2)#244 <= 1
 c274:  pick_ball2_rooma_right#67
        - 10000000000 _(pick_ball2_rooma_right_ge_1)#245 <= 0
 c275:  _(pick_ball2_roomb_left_ge_2)#246 - _(pick_ball2_roomb_left_ge_1)#247
        <= 0
 c276:  - pick_ball2_roomb_left#68 + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_left_ge_1)#247 <= 0
 c277:  pick_ball2_roomb_left#68
        - 10000000000 _(pick_ball2_roomb_left_ge_2)#246 <= 1
 c278:  pick_ball2_roomb_left#68
        - 10000000000 _(pick_ball2_roomb_left_ge_1)#247 <= 0
 c279:  _(pick_ball2_roomb_right_ge_2)#248 - _(pick_ball2_roomb_right_ge_1)#249
        <= 0
 c280:  - pick_ball2_roomb_right#69 + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball2_roomb_right_ge_1)#249 <= 0
 c281:  pick_ball2_roomb_right#69
        - 10000000000 _(pick_ball2_roomb_right_ge_2)#248 <= 1
 c282:  pick_ball2_roomb_right#69
        - 10000000000 _(pick_ball2_roomb_right_ge_1)#249 <= 0
 c283:  _(pick_ball3_rooma_left_ge_2)#250 - _(pick_ball3_rooma_left_ge_1)#251
        <= 0
 c284:  - pick_ball3_rooma_left#70 + _(pick_ball3_rooma_left_ge_2)#250
        + _(pick_ball3_rooma_left_ge_1)#251 <= 0
 c285:  pick_ball3_rooma_left#70
        - 10000000000 _(pick_ball3_rooma_left_ge_2)#250 <= 1
 c286:  pick_ball3_rooma_left#70
        - 10000000000 _(pick_ball3_rooma_left_ge_1)#251 <= 0
 c287:  _(pick_ball3_rooma_right_ge_2)#252 - _(pick_ball3_rooma_right_ge_1)#253
        <= 0
 c288:  - pick_ball3_rooma_right#71 + _(pick_ball3_rooma_right_ge_2)#252
        + _(pick_ball3_rooma_right_ge_1)#253 <= 0
 c289:  pick_ball3_rooma_right#71
        - 10000000000 _(pick_ball3_rooma_right_ge_2)#252 <= 1
 c290:  pick_ball3_rooma_right#71
        - 10000000000 _(pick_ball3_rooma_right_ge_1)#253 <= 0
 c291:  _(pick_ball3_roomb_left_ge_2)#254 - _(pick_ball3_roomb_left_ge_1)#255
        <= 0
 c292:  - pick_ball3_roomb_left#72 + _(pick_ball3_roomb_left_ge_2)#254
        + _(pick_ball3_roomb_left_ge_1)#255 <= 0
 c293:  pick_ball3_roomb_left#72
        - 10000000000 _(pick_ball3_roomb_left_ge_2)#254 <= 1
 c294:  pick_ball3_roomb_left#72
        - 10000000000 _(pick_ball3_roomb_left_ge_1)#255 <= 0
 c295:  _(pick_ball3_roomb_right_ge_2)#256 - _(pick_ball3_roomb_right_ge_1)#257
        <= 0
 c296:  - pick_ball3_roomb_right#73 + _(pick_ball3_roomb_right_ge_2)#256
        + _(pick_ball3_roomb_right_ge_1)#257 <= 0
 c297:  pick_ball3_roomb_right#73
        - 10000000000 _(pick_ball3_roomb_right_ge_2)#256 <= 1
 c298:  pick_ball3_roomb_right#73
        - 10000000000 _(pick_ball3_roomb_right_ge_1)#257 <= 0
 c299:  _(pick_ball4_rooma_left_ge_2)#258 - _(pick_ball4_rooma_left_ge_1)#259
        <= 0
 c300:  - pick_ball4_rooma_left#74 + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_left_ge_1)#259 <= 0
 c301:  pick_ball4_rooma_left#74
        - 10000000000 _(pick_ball4_rooma_left_ge_2)#258 <= 1
 c302:  pick_ball4_rooma_left#74
        - 10000000000 _(pick_ball4_rooma_left_ge_1)#259 <= 0
 c303:  _(pick_ball4_rooma_right_ge_2)#260 - _(pick_ball4_rooma_right_ge_1)#261
        <= 0
 c304:  - pick_ball4_rooma_right#75 + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_rooma_right_ge_1)#261 <= 0
 c305:  pick_ball4_rooma_right#75
        - 10000000000 _(pick_ball4_rooma_right_ge_2)#260 <= 1
 c306:  pick_ball4_rooma_right#75
        - 10000000000 _(pick_ball4_rooma_right_ge_1)#261 <= 0
 c307:  _(pick_ball4_roomb_left_ge_2)#262 - _(pick_ball4_roomb_left_ge_1)#263
        <= 0
 c308:  - pick_ball4_roomb_left#76 + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_left_ge_1)#263 <= 0
 c309:  pick_ball4_roomb_left#76
        - 10000000000 _(pick_ball4_roomb_left_ge_2)#262 <= 1
 c310:  pick_ball4_roomb_left#76
        - 10000000000 _(pick_ball4_roomb_left_ge_1)#263 <= 0
 c311:  _(pick_ball4_roomb_right_ge_2)#264 - _(pick_ball4_roomb_right_ge_1)#265
        <= 0
 c312:  - pick_ball4_roomb_right#77 + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball4_roomb_right_ge_1)#265 <= 0
 c313:  pick_ball4_roomb_right#77
        - 10000000000 _(pick_ball4_roomb_right_ge_2)#264 <= 1
 c314:  pick_ball4_roomb_right#77
        - 10000000000 _(pick_ball4_roomb_right_ge_1)#265 <= 0
 c315:  _(pick_ball5_rooma_left_ge_2)#266 - _(pick_ball5_rooma_left_ge_1)#267
        <= 0
 c316:  - pick_ball5_rooma_left#78 + _(pick_ball5_rooma_left_ge_2)#266
        + _(pick_ball5_rooma_left_ge_1)#267 <= 0
 c317:  pick_ball5_rooma_left#78
        - 10000000000 _(pick_ball5_rooma_left_ge_2)#266 <= 1
 c318:  pick_ball5_rooma_left#78
        - 10000000000 _(pick_ball5_rooma_left_ge_1)#267 <= 0
 c319:  _(pick_ball5_rooma_right_ge_2)#268 - _(pick_ball5_rooma_right_ge_1)#269
        <= 0
 c320:  - pick_ball5_rooma_right#79 + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_rooma_right_ge_1)#269 <= 0
 c321:  pick_ball5_rooma_right#79
        - 10000000000 _(pick_ball5_rooma_right_ge_2)#268 <= 1
 c322:  pick_ball5_rooma_right#79
        - 10000000000 _(pick_ball5_rooma_right_ge_1)#269 <= 0
 c323:  _(pick_ball5_roomb_left_ge_2)#270 - _(pick_ball5_roomb_left_ge_1)#271
        <= 0
 c324:  - pick_ball5_roomb_left#80 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_left_ge_1)#271 <= 0
 c325:  pick_ball5_roomb_left#80
        - 10000000000 _(pick_ball5_roomb_left_ge_2)#270 <= 1
 c326:  pick_ball5_roomb_left#80
        - 10000000000 _(pick_ball5_roomb_left_ge_1)#271 <= 0
 c327:  _(pick_ball5_roomb_right_ge_2)#272 - _(pick_ball5_roomb_right_ge_1)#273
        <= 0
 c328:  - pick_ball5_roomb_right#81 + _(pick_ball5_roomb_right_ge_2)#272
        + _(pick_ball5_roomb_right_ge_1)#273 <= 0
 c329:  pick_ball5_roomb_right#81
        - 10000000000 _(pick_ball5_roomb_right_ge_2)#272 <= 1
 c330:  pick_ball5_roomb_right#81
        - 10000000000 _(pick_ball5_roomb_right_ge_1)#273 <= 0
 c331:  _(pick_ball6_rooma_left_ge_2)#274 - _(pick_ball6_rooma_left_ge_1)#275
        <= 0
 c332:  - pick_ball6_rooma_left#82 + _(pick_ball6_rooma_left_ge_2)#274
        + _(pick_ball6_rooma_left_ge_1)#275 <= 0
 c333:  pick_ball6_rooma_left#82
        - 10000000000 _(pick_ball6_rooma_left_ge_2)#274 <= 1
 c334:  pick_ball6_rooma_left#82
        - 10000000000 _(pick_ball6_rooma_left_ge_1)#275 <= 0
 c335:  _(pick_ball6_rooma_right_ge_2)#276 - _(pick_ball6_rooma_right_ge_1)#277
        <= 0
 c336:  - pick_ball6_rooma_right#83 + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_rooma_right_ge_1)#277 <= 0
 c337:  pick_ball6_rooma_right#83
        - 10000000000 _(pick_ball6_rooma_right_ge_2)#276 <= 1
 c338:  pick_ball6_rooma_right#83
        - 10000000000 _(pick_ball6_rooma_right_ge_1)#277 <= 0
 c339:  _(pick_ball6_roomb_left_ge_2)#278 - _(pick_ball6_roomb_left_ge_1)#279
        <= 0
 c340:  - pick_ball6_roomb_left#84 + _(pick_ball6_roomb_left_ge_2)#278
        + _(pick_ball6_roomb_left_ge_1)#279 <= 0
 c341:  pick_ball6_roomb_left#84
        - 10000000000 _(pick_ball6_roomb_left_ge_2)#278 <= 1
 c342:  pick_ball6_roomb_left#84
        - 10000000000 _(pick_ball6_roomb_left_ge_1)#279 <= 0
 c343:  _(pick_ball6_roomb_right_ge_2)#280 - _(pick_ball6_roomb_right_ge_1)#281
        <= 0
 c344:  - pick_ball6_roomb_right#85 + _(pick_ball6_roomb_right_ge_2)#280
        + _(pick_ball6_roomb_right_ge_1)#281 <= 0
 c345:  pick_ball6_roomb_right#85
        - 10000000000 _(pick_ball6_roomb_right_ge_2)#280 <= 1
 c346:  pick_ball6_roomb_right#85
        - 10000000000 _(pick_ball6_roomb_right_ge_1)#281 <= 0
 c347:  _(pick_ball7_rooma_left_ge_2)#282 - _(pick_ball7_rooma_left_ge_1)#283
        <= 0
 c348:  - pick_ball7_rooma_left#86 + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_left_ge_1)#283 <= 0
 c349:  pick_ball7_rooma_left#86
        - 10000000000 _(pick_ball7_rooma_left_ge_2)#282 <= 1
 c350:  pick_ball7_rooma_left#86
        - 10000000000 _(pick_ball7_rooma_left_ge_1)#283 <= 0
 c351:  _(pick_ball7_rooma_right_ge_2)#284 - _(pick_ball7_rooma_right_ge_1)#285
        <= 0
 c352:  - pick_ball7_rooma_right#87 + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_rooma_right_ge_1)#285 <= 0
 c353:  pick_ball7_rooma_right#87
        - 10000000000 _(pick_ball7_rooma_right_ge_2)#284 <= 1
 c354:  pick_ball7_rooma_right#87
        - 10000000000 _(pick_ball7_rooma_right_ge_1)#285 <= 0
 c355:  _(pick_ball7_roomb_left_ge_2)#286 - _(pick_ball7_roomb_left_ge_1)#287
        <= 0
 c356:  - pick_ball7_roomb_left#88 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_left_ge_1)#287 <= 0
 c357:  pick_ball7_roomb_left#88
        - 10000000000 _(pick_ball7_roomb_left_ge_2)#286 <= 1
 c358:  pick_ball7_roomb_left#88
        - 10000000000 _(pick_ball7_roomb_left_ge_1)#287 <= 0
 c359:  _(pick_ball7_roomb_right_ge_2)#288 - _(pick_ball7_roomb_right_ge_1)#289
        <= 0
 c360:  - pick_ball7_roomb_right#89 + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball7_roomb_right_ge_1)#289 <= 0
 c361:  pick_ball7_roomb_right#89
        - 10000000000 _(pick_ball7_roomb_right_ge_2)#288 <= 1
 c362:  pick_ball7_roomb_right#89
        - 10000000000 _(pick_ball7_roomb_right_ge_1)#289 <= 0
 c363:  _(pick_ball8_rooma_left_ge_2)#290 - _(pick_ball8_rooma_left_ge_1)#291
        <= 0
 c364:  - pick_ball8_rooma_left#90 + _(pick_ball8_rooma_left_ge_2)#290
        + _(pick_ball8_rooma_left_ge_1)#291 <= 0
 c365:  pick_ball8_rooma_left#90
        - 10000000000 _(pick_ball8_rooma_left_ge_2)#290 <= 1
 c366:  pick_ball8_rooma_left#90
        - 10000000000 _(pick_ball8_rooma_left_ge_1)#291 <= 0
 c367:  _(pick_ball8_rooma_right_ge_2)#292 - _(pick_ball8_rooma_right_ge_1)#293
        <= 0
 c368:  - pick_ball8_rooma_right#91 + _(pick_ball8_rooma_right_ge_2)#292
        + _(pick_ball8_rooma_right_ge_1)#293 <= 0
 c369:  pick_ball8_rooma_right#91
        - 10000000000 _(pick_ball8_rooma_right_ge_2)#292 <= 1
 c370:  pick_ball8_rooma_right#91
        - 10000000000 _(pick_ball8_rooma_right_ge_1)#293 <= 0
 c371:  _(pick_ball8_roomb_left_ge_2)#294 - _(pick_ball8_roomb_left_ge_1)#295
        <= 0
 c372:  - pick_ball8_roomb_left#92 + _(pick_ball8_roomb_left_ge_2)#294
        + _(pick_ball8_roomb_left_ge_1)#295 <= 0
 c373:  pick_ball8_roomb_left#92
        - 10000000000 _(pick_ball8_roomb_left_ge_2)#294 <= 1
 c374:  pick_ball8_roomb_left#92
        - 10000000000 _(pick_ball8_roomb_left_ge_1)#295 <= 0
 c375:  _(pick_ball8_roomb_right_ge_2)#296 - _(pick_ball8_roomb_right_ge_1)#297
        <= 0
 c376:  - pick_ball8_roomb_right#93 + _(pick_ball8_roomb_right_ge_2)#296
        + _(pick_ball8_roomb_right_ge_1)#297 <= 0
 c377:  pick_ball8_roomb_right#93
        - 10000000000 _(pick_ball8_roomb_right_ge_2)#296 <= 1
 c378:  pick_ball8_roomb_right#93
        - 10000000000 _(pick_ball8_roomb_right_ge_1)#297 <= 0
 c379:  _(pick_ball9_rooma_left_ge_2)#298 - _(pick_ball9_rooma_left_ge_1)#299
        <= 0
 c380:  - pick_ball9_rooma_left#94 + _(pick_ball9_rooma_left_ge_2)#298
        + _(pick_ball9_rooma_left_ge_1)#299 <= 0
 c381:  pick_ball9_rooma_left#94
        - 10000000000 _(pick_ball9_rooma_left_ge_2)#298 <= 1
 c382:  pick_ball9_rooma_left#94
        - 10000000000 _(pick_ball9_rooma_left_ge_1)#299 <= 0
 c383:  _(pick_ball9_rooma_right_ge_2)#300 - _(pick_ball9_rooma_right_ge_1)#301
        <= 0
 c384:  - pick_ball9_rooma_right#95 + _(pick_ball9_rooma_right_ge_2)#300
        + _(pick_ball9_rooma_right_ge_1)#301 <= 0
 c385:  pick_ball9_rooma_right#95
        - 10000000000 _(pick_ball9_rooma_right_ge_2)#300 <= 1
 c386:  pick_ball9_rooma_right#95
        - 10000000000 _(pick_ball9_rooma_right_ge_1)#301 <= 0
 c387:  _(pick_ball9_roomb_left_ge_2)#302 - _(pick_ball9_roomb_left_ge_1)#303
        <= 0
 c388:  - pick_ball9_roomb_left#96 + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_left_ge_1)#303 <= 0
 c389:  pick_ball9_roomb_left#96
        - 10000000000 _(pick_ball9_roomb_left_ge_2)#302 <= 1
 c390:  pick_ball9_roomb_left#96
        - 10000000000 _(pick_ball9_roomb_left_ge_1)#303 <= 0
 c391:  _(pick_ball9_roomb_right_ge_2)#304 - _(pick_ball9_roomb_right_ge_1)#305
        <= 0
 c392:  - pick_ball9_roomb_right#97 + _(pick_ball9_roomb_right_ge_2)#304
        + _(pick_ball9_roomb_right_ge_1)#305 <= 0
 c393:  pick_ball9_roomb_right#97
        - 10000000000 _(pick_ball9_roomb_right_ge_2)#304 <= 1
 c394:  pick_ball9_roomb_right#97
        - 10000000000 _(pick_ball9_roomb_right_ge_1)#305 <= 0
 c395:  _(YT_ge_2)#306 - _(YT_ge_1)#307 <= 0
 c396:  - YT#98 + _(YT_ge_2)#306 + _(YT_ge_1)#307 <= 0
 c397:  YT#98 - 10000000000 _(YT_ge_2)#306 <= 1
 c398:  YT#98 - 10000000000 _(YT_ge_1)#307 <= 0
 c399:  _(YF_ge_2)#308 - _(YF_ge_1)#309 <= 0
 c400:  - YF#99 + _(YF_ge_2)#308 + _(YF_ge_1)#309 + _(YF_ge_3)#310
        + _(YF_ge_4)#311 + _(YF_ge_5)#312 + _(YF_ge_6)#313 + _(YF_ge_7)#314
        + _(YF_ge_8)#315 + _(YF_ge_9)#316 + _(YF_ge_10)#317 + _(YF_ge_11)#318
        + _(YF_ge_12)#319 + _(YF_ge_13)#320 + _(YF_ge_14)#321 + _(YF_ge_15)#322
        + _(YF_ge_16)#323 + _(YF_ge_17)#324 + _(YF_ge_18)#325 + _(YF_ge_19)#326
        + _(YF_ge_20)#327 + _(YF_ge_21)#328 + _(YF_ge_22)#329 + _(YF_ge_23)#330
        + _(YF_ge_24)#331 + _(YF_ge_25)#332 + _(YF_ge_26)#333 + _(YF_ge_27)#334
        + _(YF_ge_28)#335 + _(YF_ge_29)#336 + _(YF_ge_30)#337 + _(YF_ge_31)#338
        + _(YF_ge_32)#339 + _(YF_ge_33)#340 + _(YF_ge_34)#341 + _(YF_ge_35)#342
        + _(YF_ge_36)#343 + _(YF_ge_37)#344 + _(YF_ge_38)#345 + _(YF_ge_39)#346
        + _(YF_ge_40)#347 + _(YF_ge_41)#348 + _(YF_ge_42)#349 + _(YF_ge_43)#350
        <= 0
 c401:  YF#99 - 10000000000 _(YF_ge_2)#308 <= 1
 c402:  YF#99 - 10000000000 _(YF_ge_1)#309 <= 0
 c403:  - move_rooma_roomb#48 + move_roomb_rooma#49 >= -1
 c404:  move_rooma_roomb#48 - move_roomb_rooma#49 >= 0
 c405:  - drop_ball1_rooma_left#0 - drop_ball1_roomb_left#2
        + pick_ball1_rooma_left#50 + pick_ball1_roomb_left#52 >= 0
 c406:  - drop_ball10_rooma_left#4 - drop_ball10_roomb_left#6
        + pick_ball10_rooma_left#54 + pick_ball10_roomb_left#56 >= 0
 c407:  - drop_ball11_rooma_left#8 - drop_ball11_roomb_left#10
        + pick_ball11_rooma_left#58 + pick_ball11_roomb_left#60 >= 0
 c408:  - drop_ball12_rooma_left#12 - drop_ball12_roomb_left#14
        + pick_ball12_rooma_left#62 + pick_ball12_roomb_left#64 >= 0
 c409:  - drop_ball2_rooma_left#16 - drop_ball2_roomb_left#18
        + pick_ball2_rooma_left#66 + pick_ball2_roomb_left#68 >= 0
 c410:  - drop_ball3_rooma_left#20 - drop_ball3_roomb_left#22
        + pick_ball3_rooma_left#70 + pick_ball3_roomb_left#72 >= 0
 c411:  - drop_ball4_rooma_left#24 - drop_ball4_roomb_left#26
        + pick_ball4_rooma_left#74 + pick_ball4_roomb_left#76 >= 0
 c412:  - drop_ball5_rooma_left#28 - drop_ball5_roomb_left#30
        + pick_ball5_rooma_left#78 + pick_ball5_roomb_left#80 >= 0
 c413:  - drop_ball6_rooma_left#32 - drop_ball6_roomb_left#34
        + pick_ball6_rooma_left#82 + pick_ball6_roomb_left#84 >= 0
 c414:  - drop_ball7_rooma_left#36 - drop_ball7_roomb_left#38
        + pick_ball7_rooma_left#86 + pick_ball7_roomb_left#88 >= 0
 c415:  - drop_ball8_rooma_left#40 - drop_ball8_roomb_left#42
        + pick_ball8_rooma_left#90 + pick_ball8_roomb_left#92 >= 0
 c416:  - drop_ball9_rooma_left#44 - drop_ball9_roomb_left#46
        + pick_ball9_rooma_left#94 + pick_ball9_roomb_left#96 >= 0
 c417:  drop_ball1_rooma_left#0 + drop_ball1_roomb_left#2
        + drop_ball10_rooma_left#4 + drop_ball10_roomb_left#6
        + drop_ball11_rooma_left#8 + drop_ball11_roomb_left#10
        + drop_ball12_rooma_left#12 + drop_ball12_roomb_left#14
        + drop_ball2_rooma_left#16 + drop_ball2_roomb_left#18
        + drop_ball3_rooma_left#20 + drop_ball3_roomb_left#22
        + drop_ball4_rooma_left#24 + drop_ball4_roomb_left#26
        + drop_ball5_rooma_left#28 + drop_ball5_roomb_left#30
        + drop_ball6_rooma_left#32 + drop_ball6_roomb_left#34
        + drop_ball7_rooma_left#36 + drop_ball7_roomb_left#38
        + drop_ball8_rooma_left#40 + drop_ball8_roomb_left#42
        + drop_ball9_rooma_left#44 + drop_ball9_roomb_left#46
        - pick_ball1_rooma_left#50 - pick_ball1_roomb_left#52
        - pick_ball10_rooma_left#54 - pick_ball10_roomb_left#56
        - pick_ball11_rooma_left#58 - pick_ball11_roomb_left#60
        - pick_ball12_rooma_left#62 - pick_ball12_roomb_left#64
        - pick_ball2_rooma_left#66 - pick_ball2_roomb_left#68
        - pick_ball3_rooma_left#70 - pick_ball3_roomb_left#72
        - pick_ball4_rooma_left#74 - pick_ball4_roomb_left#76
        - pick_ball5_rooma_left#78 - pick_ball5_roomb_left#80
        - pick_ball6_rooma_left#82 - pick_ball6_roomb_left#84
        - pick_ball7_rooma_left#86 - pick_ball7_roomb_left#88
        - pick_ball8_rooma_left#90 - pick_ball8_roomb_left#92
        - pick_ball9_rooma_left#94 - pick_ball9_roomb_left#96 >= -1
 c418:  - drop_ball1_rooma_right#1 - drop_ball1_roomb_right#3
        + pick_ball1_rooma_right#51 + pick_ball1_roomb_right#53 >= 0
 c419:  - drop_ball10_rooma_right#5 - drop_ball10_roomb_right#7
        + pick_ball10_rooma_right#55 + pick_ball10_roomb_right#57 >= 0
 c420:  - drop_ball11_rooma_right#9 - drop_ball11_roomb_right#11
        + pick_ball11_rooma_right#59 + pick_ball11_roomb_right#61 >= 0
 c421:  - drop_ball12_rooma_right#13 - drop_ball12_roomb_right#15
        + pick_ball12_rooma_right#63 + pick_ball12_roomb_right#65 >= 0
 c422:  - drop_ball2_rooma_right#17 - drop_ball2_roomb_right#19
        + pick_ball2_rooma_right#67 + pick_ball2_roomb_right#69 >= 0
 c423:  - drop_ball3_rooma_right#21 - drop_ball3_roomb_right#23
        + pick_ball3_rooma_right#71 + pick_ball3_roomb_right#73 >= 0
 c424:  - drop_ball4_rooma_right#25 - drop_ball4_roomb_right#27
        + pick_ball4_rooma_right#75 + pick_ball4_roomb_right#77 >= 0
 c425:  - drop_ball5_rooma_right#29 - drop_ball5_roomb_right#31
        + pick_ball5_rooma_right#79 + pick_ball5_roomb_right#81 >= 0
 c426:  - drop_ball6_rooma_right#33 - drop_ball6_roomb_right#35
        + pick_ball6_rooma_right#83 + pick_ball6_roomb_right#85 >= 0
 c427:  - drop_ball7_rooma_right#37 - drop_ball7_roomb_right#39
        + pick_ball7_rooma_right#87 + pick_ball7_roomb_right#89 >= 0
 c428:  - drop_ball8_rooma_right#41 - drop_ball8_roomb_right#43
        + pick_ball8_rooma_right#91 + pick_ball8_roomb_right#93 >= 0
 c429:  - drop_ball9_rooma_right#45 - drop_ball9_roomb_right#47
        + pick_ball9_rooma_right#95 + pick_ball9_roomb_right#97 >= 0
 c430:  drop_ball1_rooma_right#1 + drop_ball1_roomb_right#3
        + drop_ball10_rooma_right#5 + drop_ball10_roomb_right#7
        + drop_ball11_rooma_right#9 + drop_ball11_roomb_right#11
        + drop_ball12_rooma_right#13 + drop_ball12_roomb_right#15
        + drop_ball2_rooma_right#17 + drop_ball2_roomb_right#19
        + drop_ball3_rooma_right#21 + drop_ball3_roomb_right#23
        + drop_ball4_rooma_right#25 + drop_ball4_roomb_right#27
        + drop_ball5_rooma_right#29 + drop_ball5_roomb_right#31
        + drop_ball6_rooma_right#33 + drop_ball6_roomb_right#35
        + drop_ball7_rooma_right#37 + drop_ball7_roomb_right#39
        + drop_ball8_rooma_right#41 + drop_ball8_roomb_right#43
        + drop_ball9_rooma_right#45 + drop_ball9_roomb_right#47
        - pick_ball1_rooma_right#51 - pick_ball1_roomb_right#53
        - pick_ball10_rooma_right#55 - pick_ball10_roomb_right#57
        - pick_ball11_rooma_right#59 - pick_ball11_roomb_right#61
        - pick_ball12_rooma_right#63 - pick_ball12_roomb_right#65
        - pick_ball2_rooma_right#67 - pick_ball2_roomb_right#69
        - pick_ball3_rooma_right#71 - pick_ball3_roomb_right#73
        - pick_ball4_rooma_right#75 - pick_ball4_roomb_right#77
        - pick_ball5_rooma_right#79 - pick_ball5_roomb_right#81
        - pick_ball6_rooma_right#83 - pick_ball6_roomb_right#85
        - pick_ball7_rooma_right#87 - pick_ball7_roomb_right#89
        - pick_ball8_rooma_right#91 - pick_ball8_roomb_right#93
        - pick_ball9_rooma_right#95 - pick_ball9_roomb_right#97 >= -1
 c431:  drop_ball1_rooma_left#0 + drop_ball1_rooma_right#1
        - pick_ball1_rooma_left#50 - pick_ball1_rooma_right#51 >= -1
 c432:  drop_ball1_roomb_left#2 + drop_ball1_roomb_right#3
        - pick_ball1_roomb_left#52 - pick_ball1_roomb_right#53 >= 1
 c433:  pick_ball1_rooma_left#50 + pick_ball1_rooma_right#51
        + pick_ball1_roomb_left#52 + pick_ball1_roomb_right#53 >= 0
 c434:  drop_ball10_rooma_left#4 + drop_ball10_rooma_right#5
        - pick_ball10_rooma_left#54 - pick_ball10_rooma_right#55 >= -1
 c435:  drop_ball10_roomb_left#6 + drop_ball10_roomb_right#7
        - pick_ball10_roomb_left#56 - pick_ball10_roomb_right#57 >= 1
 c436:  pick_ball10_rooma_left#54 + pick_ball10_rooma_right#55
        + pick_ball10_roomb_left#56 + pick_ball10_roomb_right#57 >= 0
 c437:  drop_ball11_rooma_left#8 + drop_ball11_rooma_right#9
        - pick_ball11_rooma_left#58 - pick_ball11_rooma_right#59 >= -1
 c438:  drop_ball11_roomb_left#10 + drop_ball11_roomb_right#11
        - pick_ball11_roomb_left#60 - pick_ball11_roomb_right#61 >= 1
 c439:  pick_ball11_rooma_left#58 + pick_ball11_rooma_right#59
        + pick_ball11_roomb_left#60 + pick_ball11_roomb_right#61 >= 0
 c440:  drop_ball12_rooma_left#12 + drop_ball12_rooma_right#13
        - pick_ball12_rooma_left#62 - pick_ball12_rooma_right#63 >= -1
 c441:  drop_ball12_roomb_left#14 + drop_ball12_roomb_right#15
        - pick_ball12_roomb_left#64 - pick_ball12_roomb_right#65 >= 1
 c442:  pick_ball12_rooma_left#62 + pick_ball12_rooma_right#63
        + pick_ball12_roomb_left#64 + pick_ball12_roomb_right#65 >= 0
 c443:  drop_ball2_rooma_left#16 + drop_ball2_rooma_right#17
        - pick_ball2_rooma_left#66 - pick_ball2_rooma_right#67 >= -1
 c444:  drop_ball2_roomb_left#18 + drop_ball2_roomb_right#19
        - pick_ball2_roomb_left#68 - pick_ball2_roomb_right#69 >= 1
 c445:  pick_ball2_rooma_left#66 + pick_ball2_rooma_right#67
        + pick_ball2_roomb_left#68 + pick_ball2_roomb_right#69 >= 0
 c446:  drop_ball3_rooma_left#20 + drop_ball3_rooma_right#21
        - pick_ball3_rooma_left#70 - pick_ball3_rooma_right#71 >= -1
 c447:  drop_ball3_roomb_left#22 + drop_ball3_roomb_right#23
        - pick_ball3_roomb_left#72 - pick_ball3_roomb_right#73 >= 1
 c448:  pick_ball3_rooma_left#70 + pick_ball3_rooma_right#71
        + pick_ball3_roomb_left#72 + pick_ball3_roomb_right#73 >= 0
 c449:  drop_ball4_rooma_left#24 + drop_ball4_rooma_right#25
        - pick_ball4_rooma_left#74 - pick_ball4_rooma_right#75 >= -1
 c450:  drop_ball4_roomb_left#26 + drop_ball4_roomb_right#27
        - pick_ball4_roomb_left#76 - pick_ball4_roomb_right#77 >= 1
 c451:  pick_ball4_rooma_left#74 + pick_ball4_rooma_right#75
        + pick_ball4_roomb_left#76 + pick_ball4_roomb_right#77 >= 0
 c452:  drop_ball5_rooma_left#28 + drop_ball5_rooma_right#29
        - pick_ball5_rooma_left#78 - pick_ball5_rooma_right#79 >= -1
 c453:  drop_ball5_roomb_left#30 + drop_ball5_roomb_right#31
        - pick_ball5_roomb_left#80 - pick_ball5_roomb_right#81 >= 1
 c454:  pick_ball5_rooma_left#78 + pick_ball5_rooma_right#79
        + pick_ball5_roomb_left#80 + pick_ball5_roomb_right#81 >= 0
 c455:  drop_ball6_rooma_left#32 + drop_ball6_rooma_right#33
        - pick_ball6_rooma_left#82 - pick_ball6_rooma_right#83 >= -1
 c456:  drop_ball6_roomb_left#34 + drop_ball6_roomb_right#35
        - pick_ball6_roomb_left#84 - pick_ball6_roomb_right#85 >= 1
 c457:  pick_ball6_rooma_left#82 + pick_ball6_rooma_right#83
        + pick_ball6_roomb_left#84 + pick_ball6_roomb_right#85 >= 0
 c458:  drop_ball7_rooma_left#36 + drop_ball7_rooma_right#37
        - pick_ball7_rooma_left#86 - pick_ball7_rooma_right#87 >= -1
 c459:  drop_ball7_roomb_left#38 + drop_ball7_roomb_right#39
        - pick_ball7_roomb_left#88 - pick_ball7_roomb_right#89 >= 1
 c460:  pick_ball7_rooma_left#86 + pick_ball7_rooma_right#87
        + pick_ball7_roomb_left#88 + pick_ball7_roomb_right#89 >= 0
 c461:  drop_ball8_rooma_left#40 + drop_ball8_rooma_right#41
        - pick_ball8_rooma_left#90 - pick_ball8_rooma_right#91 >= -1
 c462:  drop_ball8_roomb_left#42 + drop_ball8_roomb_right#43
        - pick_ball8_roomb_left#92 - pick_ball8_roomb_right#93 >= 1
 c463:  pick_ball8_rooma_left#90 + pick_ball8_rooma_right#91
        + pick_ball8_roomb_left#92 + pick_ball8_roomb_right#93 >= 0
 c464:  drop_ball9_rooma_left#44 + drop_ball9_rooma_right#45
        - pick_ball9_rooma_left#94 - pick_ball9_rooma_right#95 >= -1
 c465:  drop_ball9_roomb_left#46 + drop_ball9_roomb_right#47
        - pick_ball9_roomb_left#96 - pick_ball9_roomb_right#97 >= 1
 c466:  pick_ball9_rooma_left#94 + pick_ball9_rooma_right#95
        + pick_ball9_roomb_left#96 + pick_ball9_roomb_right#97 >= 0
 c467:  _(drop_ball1_roomb_left_ge_1)#105 + _(drop_ball1_roomb_right_ge_1)#107
        >= 1
 c468:  _(drop_ball10_roomb_left_ge_1)#113
        + _(drop_ball10_roomb_right_ge_1)#115 >= 1
 c469:  _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball11_roomb_right_ge_1)#125 >= 1
 c470:  _(drop_ball12_roomb_left_ge_1)#132
        + _(drop_ball12_roomb_right_ge_1)#135 >= 1
 c471:  _(drop_ball2_roomb_left_ge_1)#141 + _(drop_ball2_roomb_right_ge_1)#143
        >= 1
 c472:  _(drop_ball3_roomb_left_ge_1)#149 + _(drop_ball3_roomb_right_ge_1)#151
        >= 1
 c473:  _(drop_ball4_roomb_left_ge_1)#157 + _(drop_ball4_roomb_right_ge_1)#159
        >= 1
 c474:  _(drop_ball5_roomb_left_ge_1)#166 + _(drop_ball5_roomb_right_ge_1)#168
        >= 1
 c475:  _(drop_ball6_roomb_left_ge_1)#174 + _(drop_ball6_roomb_right_ge_1)#176
        >= 1
 c476:  _(drop_ball7_roomb_left_ge_1)#182 + _(drop_ball7_roomb_right_ge_1)#185
        >= 1
 c477:  _(drop_ball8_roomb_left_ge_1)#191 + _(drop_ball8_roomb_right_ge_1)#193
        >= 1
 c478:  _(drop_ball9_roomb_left_ge_1)#199 + _(drop_ball9_roomb_right_ge_1)#201
        >= 1
 c479:  _(move_rooma_roomb_ge_1)#203 >= 1
 c480:  _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_rooma_right_ge_1)#301
        >= 1
 c481:  _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_rooma_right_ge_1)#210
        >= 1
 c482:  _(pick_ball10_rooma_left_ge_1)#218
        + _(pick_ball10_rooma_right_ge_1)#220 >= 1
 c483:  _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball11_rooma_right_ge_1)#228 >= 1
 c484:  _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_rooma_right_ge_1)#237 >= 1
 c485:  _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_rooma_right_ge_1)#245
        >= 1
 c486:  _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_rooma_right_ge_1)#253
        >= 1
 c487:  _(pick_ball4_rooma_left_ge_1)#259 + _(pick_ball4_rooma_right_ge_1)#261
        >= 1
 c488:  _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_rooma_right_ge_1)#269
        >= 1
 c489:  _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_rooma_right_ge_1)#277
        >= 1
 c490:  _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_rooma_right_ge_1)#285
        >= 1
 c491:  _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_rooma_right_ge_1)#293
        >= 1
 c492:  - var_312#351 + var_461#352 >= -1
 c493:  - var_313#353 + var_460#354 >= 0
 c494:  - var_314#355 + var_463#356 + var_467#357 >= 0
 c495:  - var_315#358 + var_471#359 + var_475#360 >= 0
 c496:  - var_316#361 + var_479#362 + var_483#363 >= 0
 c497:  - var_317#364 + var_487#365 + var_491#366 >= 0
 c498:  - var_318#367 + var_495#368 + var_499#369 >= 0
 c499:  - var_319#370 + var_503#371 + var_507#372 >= 0
 c500:  - var_320#373 + var_511#374 + var_515#375 >= 0
 c501:  - var_321#376 + var_519#377 + var_523#378 >= 0
 c502:  - var_322#379 + var_527#380 + var_531#381 >= 0
 c503:  - var_323#382 + var_535#383 + var_539#384 >= 0
 c504:  - var_324#385 + var_543#386 + var_547#387 >= 0
 c505:  - var_325#388 + var_551#389 + var_555#390 >= 0
 c506:  - var_326#391 + var_365#392 + var_369#393 + var_373#394 + var_377#395
        + var_381#396 + var_385#397 + var_389#398 + var_393#399 + var_397#400
        + var_401#401 + var_405#402 + var_409#403 + var_413#404 + var_417#405
        + var_421#406 + var_425#407 + var_429#408 + var_433#409 + var_437#410
        + var_441#411 + var_445#412 + var_449#413 + var_453#414 + var_457#415
        >= -1
 c507:  - var_327#416 + var_465#417 + var_469#418 >= 0
 c508:  - var_328#419 + var_473#420 + var_477#421 >= 0
 c509:  - var_329#422 + var_481#423 + var_485#424 >= 0
 c510:  - var_330#425 + var_489#426 + var_493#427 >= 0
 c511:  - var_331#428 + var_497#429 + var_501#430 >= 0
 c512:  - var_332#431 + var_505#432 + var_509#433 >= 0
 c513:  - var_333#434 + var_513#435 + var_517#436 >= 0
 c514:  - var_334#437 + var_521#438 + var_525#439 >= 0
 c515:  - var_335#440 + var_529#441 + var_533#442 >= 0
 c516:  - var_336#443 + var_537#444 + var_541#445 >= 0
 c517:  - var_337#446 + var_545#447 + var_549#448 >= 0
 c518:  - var_338#449 + var_553#450 + var_557#451 >= 0
 c519:  - var_339#452 + var_367#453 + var_371#454 + var_375#455 + var_379#456
        + var_383#457 + var_387#458 + var_391#459 + var_395#460 + var_399#461
        + var_403#462 + var_407#463 + var_411#464 + var_415#465 + var_419#466
        + var_423#467 + var_427#468 + var_431#469 + var_435#470 + var_439#471
        + var_443#472 + var_447#473 + var_451#474 + var_455#475 + var_459#476
        >= -1
 c520:  - var_340#477 + var_364#478 + var_366#479 >= -1
 c521:  - var_300#480 + var_368#481 + var_370#482 >= 0
 c522:  - var_341#483 + var_462#484 + var_464#485 + var_466#486 + var_468#487
        >= 0
 c523:  - var_342#488 + var_372#489 + var_374#490 >= -1
 c524:  - var_301#491 + var_376#492 + var_378#493 >= 0
 c525:  - var_343#494 + var_470#495 + var_472#496 + var_474#497 + var_476#498
        >= 0
 c526:  - var_344#499 + var_380#500 + var_382#501 >= -1
 c527:  - var_302#502 + var_384#503 + var_386#504 >= 0
 c528:  - var_345#505 + var_478#506 + var_480#507 + var_482#508 + var_484#509
        >= 0
 c529:  - var_346#510 + var_388#511 + var_390#512 >= -1
 c530:  - var_303#513 + var_392#514 + var_394#515 >= 0
 c531:  - var_347#516 + var_486#517 + var_488#518 + var_490#519 + var_492#520
        >= 0
 c532:  - var_348#521 + var_396#522 + var_398#523 >= -1
 c533:  - var_304#524 + var_400#525 + var_402#526 >= 0
 c534:  - var_349#527 + var_494#528 + var_496#529 + var_498#530 + var_500#531
        >= 0
 c535:  - var_350#532 + var_404#533 + var_406#534 >= -1
 c536:  - var_305#535 + var_408#536 + var_410#537 >= 0
 c537:  - var_351#538 + var_502#539 + var_504#540 + var_506#541 + var_508#542
        >= 0
 c538:  - var_352#543 + var_412#544 + var_414#545 >= -1
 c539:  - var_306#546 + var_416#547 + var_418#548 >= 0
 c540:  - var_353#549 + var_510#550 + var_512#551 + var_514#552 + var_516#553
        >= 0
 c541:  - var_354#554 + var_420#555 + var_422#556 >= -1
 c542:  - var_307#557 + var_424#558 + var_426#559 >= 0
 c543:  - var_355#560 + var_518#561 + var_520#562 + var_522#563 + var_524#564
        >= 0
 c544:  - var_356#565 + var_428#566 + var_430#567 >= -1
 c545:  - var_308#568 + var_432#569 + var_434#570 >= 0
 c546:  - var_357#571 + var_526#572 + var_528#573 + var_530#574 + var_532#575
        >= 0
 c547:  - var_358#576 + var_436#577 + var_438#578 >= -1
 c548:  - var_309#579 + var_440#580 + var_442#581 >= 0
 c549:  - var_359#582 + var_534#583 + var_536#584 + var_538#585 + var_540#586
        >= 0
 c550:  - var_360#587 + var_444#588 + var_446#589 >= -1
 c551:  - var_310#590 + var_448#591 + var_450#592 >= 0
 c552:  - var_361#593 + var_542#594 + var_544#595 + var_546#596 + var_548#597
        >= 0
 c553:  - var_362#598 + var_452#599 + var_454#600 >= -1
 c554:  - var_311#601 + var_456#602 + var_458#603 >= 0
 c555:  - var_363#604 + var_550#605 + var_552#606 + var_554#607 + var_556#608
        >= 0
 c556:  - var_364#478 + var_558#609 >= 0
 c557:  - var_365#392 + var_558#609 >= 0
 c558:  - var_366#479 + var_559#610 >= 0
 c559:  - var_367#453 + var_559#610 >= 0
 c560:  - var_368#481 + var_560#611 >= 0
 c561:  - var_369#393 + var_560#611 >= 0
 c562:  - var_370#482 + var_561#612 >= 0
 c563:  - var_371#454 + var_561#612 >= 0
 c564:  - var_372#489 + var_562#613 >= 0
 c565:  - var_373#394 + var_562#613 >= 0
 c566:  - var_374#490 + var_563#614 >= 0
 c567:  - var_375#455 + var_563#614 >= 0
 c568:  - var_376#492 + var_564#615 >= 0
 c569:  - var_377#395 + var_564#615 >= 0
 c570:  - var_378#493 + var_565#616 >= 0
 c571:  - var_379#456 + var_565#616 >= 0
 c572:  - var_380#500 + var_566#617 >= 0
 c573:  - var_381#396 + var_566#617 >= 0
 c574:  - var_382#501 + var_567#618 >= 0
 c575:  - var_383#457 + var_567#618 >= 0
 c576:  - var_384#503 + var_568#619 >= 0
 c577:  - var_385#397 + var_568#619 >= 0
 c578:  - var_386#504 + var_569#620 >= 0
 c579:  - var_387#458 + var_569#620 >= 0
 c580:  - var_388#511 + var_570#621 >= 0
 c581:  - var_389#398 + var_570#621 >= 0
 c582:  - var_390#512 + var_571#622 >= 0
 c583:  - var_391#459 + var_571#622 >= 0
 c584:  - var_392#514 + var_572#623 >= 0
 c585:  - var_393#399 + var_572#623 >= 0
 c586:  - var_394#515 + var_573#624 >= 0
 c587:  - var_395#460 + var_573#624 >= 0
 c588:  - var_396#522 + var_574#625 >= 0
 c589:  - var_397#400 + var_574#625 >= 0
 c590:  - var_398#523 + var_575#626 >= 0
 c591:  - var_399#461 + var_575#626 >= 0
 c592:  - var_400#525 + var_576#627 >= 0
 c593:  - var_401#401 + var_576#627 >= 0
 c594:  - var_402#526 + var_577#628 >= 0
 c595:  - var_403#462 + var_577#628 >= 0
 c596:  - var_404#533 + var_578#629 >= 0
 c597:  - var_405#402 + var_578#629 >= 0
 c598:  - var_406#534 + var_579#630 >= 0
 c599:  - var_407#463 + var_579#630 >= 0
 c600:  - var_408#536 + var_580#631 >= 0
 c601:  - var_409#403 + var_580#631 >= 0
 c602:  - var_410#537 + var_581#632 >= 0
 c603:  - var_411#464 + var_581#632 >= 0
 c604:  - var_412#544 + var_582#633 >= 0
 c605:  - var_413#404 + var_582#633 >= 0
 c606:  - var_414#545 + var_583#634 >= 0
 c607:  - var_415#465 + var_583#634 >= 0
 c608:  - var_416#547 + var_584#635 >= 0
 c609:  - var_417#405 + var_584#635 >= 0
 c610:  - var_418#548 + var_585#636 >= 0
 c611:  - var_419#466 + var_585#636 >= 0
 c612:  - var_420#555 + var_586#637 >= 0
 c613:  - var_421#406 + var_586#637 >= 0
 c614:  - var_422#556 + var_587#638 >= 0
 c615:  - var_423#467 + var_587#638 >= 0
 c616:  - var_424#558 + var_588#639 >= 0
 c617:  - var_425#407 + var_588#639 >= 0
 c618:  - var_426#559 + var_589#640 >= 0
 c619:  - var_427#468 + var_589#640 >= 0
 c620:  - var_428#566 + var_590#641 >= 0
 c621:  - var_429#408 + var_590#641 >= 0
 c622:  - var_430#567 + var_591#642 >= 0
 c623:  - var_431#469 + var_591#642 >= 0
 c624:  - var_432#569 + var_592#643 >= 0
 c625:  - var_433#409 + var_592#643 >= 0
 c626:  - var_434#570 + var_593#644 >= 0
 c627:  - var_435#470 + var_593#644 >= 0
 c628:  - var_436#577 + var_594#645 >= 0
 c629:  - var_437#410 + var_594#645 >= 0
 c630:  - var_438#578 + var_595#646 >= 0
 c631:  - var_439#471 + var_595#646 >= 0
 c632:  - var_440#580 + var_596#647 >= 0
 c633:  - var_441#411 + var_596#647 >= 0
 c634:  - var_442#581 + var_597#648 >= 0
 c635:  - var_443#472 + var_597#648 >= 0
 c636:  - var_444#588 + var_598#649 >= 0
 c637:  - var_445#412 + var_598#649 >= 0
 c638:  - var_446#589 + var_599#650 >= 0
 c639:  - var_447#473 + var_599#650 >= 0
 c640:  - var_448#591 + var_600#651 >= 0
 c641:  - var_449#413 + var_600#651 >= 0
 c642:  - var_450#592 + var_601#652 >= 0
 c643:  - var_451#474 + var_601#652 >= 0
 c644:  - var_452#599 + var_602#653 >= 0
 c645:  - var_453#414 + var_602#653 >= 0
 c646:  - var_454#600 + var_603#654 >= 0
 c647:  - var_455#475 + var_603#654 >= 0
 c648:  - var_456#602 + var_604#655 >= 0
 c649:  - var_457#415 + var_604#655 >= 0
 c650:  - var_458#603 + var_605#656 >= 0
 c651:  - var_459#476 + var_605#656 >= 0
 c652:  - var_460#354 + var_606#657 >= 0
 c653:  - var_461#352 + var_607#658 >= 0
 c654:  - var_462#484 + var_608#659 >= 0
 c655:  - var_463#356 + var_608#659 >= 0
 c656:  - var_464#485 + var_609#660 >= 0
 c657:  - var_465#417 + var_609#660 >= 0
 c658:  - var_466#486 + var_610#661 >= 0
 c659:  - var_467#357 + var_610#661 >= 0
 c660:  - var_468#487 + var_611#662 >= 0
 c661:  - var_469#418 + var_611#662 >= 0
 c662:  - var_470#495 + var_612#663 >= 0
 c663:  - var_471#359 + var_612#663 >= 0
 c664:  - var_472#496 + var_613#664 >= 0
 c665:  - var_473#420 + var_613#664 >= 0
 c666:  - var_474#497 + var_614#665 >= 0
 c667:  - var_475#360 + var_614#665 >= 0
 c668:  - var_476#498 + var_615#666 >= 0
 c669:  - var_477#421 + var_615#666 >= 0
 c670:  - var_478#506 + var_616#667 >= 0
 c671:  - var_479#362 + var_616#667 >= 0
 c672:  - var_480#507 + var_617#668 >= 0
 c673:  - var_481#423 + var_617#668 >= 0
 c674:  - var_482#508 + var_618#669 >= 0
 c675:  - var_483#363 + var_618#669 >= 0
 c676:  - var_484#509 + var_619#670 >= 0
 c677:  - var_485#424 + var_619#670 >= 0
 c678:  - var_486#517 + var_620#671 >= 0
 c679:  - var_487#365 + var_620#671 >= 0
 c680:  - var_488#518 + var_621#672 >= 0
 c681:  - var_489#426 + var_621#672 >= 0
 c682:  - var_490#519 + var_622#673 >= 0
 c683:  - var_491#366 + var_622#673 >= 0
 c684:  - var_492#520 + var_623#674 >= 0
 c685:  - var_493#427 + var_623#674 >= 0
 c686:  - var_494#528 + var_624#675 >= 0
 c687:  - var_495#368 + var_624#675 >= 0
 c688:  - var_496#529 + var_625#676 >= 0
 c689:  - var_497#429 + var_625#676 >= 0
 c690:  - var_498#530 + var_626#677 >= 0
 c691:  - var_499#369 + var_626#677 >= 0
 c692:  - var_500#531 + var_627#678 >= 0
 c693:  - var_501#430 + var_627#678 >= 0
 c694:  - var_502#539 + var_628#679 >= 0
 c695:  - var_503#371 + var_628#679 >= 0
 c696:  - var_504#540 + var_629#680 >= 0
 c697:  - var_505#432 + var_629#680 >= 0
 c698:  - var_506#541 + var_630#681 >= 0
 c699:  - var_507#372 + var_630#681 >= 0
 c700:  - var_508#542 + var_631#682 >= 0
 c701:  - var_509#433 + var_631#682 >= 0
 c702:  - var_510#550 + var_632#683 >= 0
 c703:  - var_511#374 + var_632#683 >= 0
 c704:  - var_512#551 + var_633#684 >= 0
 c705:  - var_513#435 + var_633#684 >= 0
 c706:  - var_514#552 + var_634#685 >= 0
 c707:  - var_515#375 + var_634#685 >= 0
 c708:  - var_516#553 + var_635#686 >= 0
 c709:  - var_517#436 + var_635#686 >= 0
 c710:  - var_518#561 + var_636#687 >= 0
 c711:  - var_519#377 + var_636#687 >= 0
 c712:  - var_520#562 + var_637#688 >= 0
 c713:  - var_521#438 + var_637#688 >= 0
 c714:  - var_522#563 + var_638#689 >= 0
 c715:  - var_523#378 + var_638#689 >= 0
 c716:  - var_524#564 + var_639#690 >= 0
 c717:  - var_525#439 + var_639#690 >= 0
 c718:  - var_526#572 + var_640#691 >= 0
 c719:  - var_527#380 + var_640#691 >= 0
 c720:  - var_528#573 + var_641#692 >= 0
 c721:  - var_529#441 + var_641#692 >= 0
 c722:  - var_530#574 + var_642#693 >= 0
 c723:  - var_531#381 + var_642#693 >= 0
 c724:  - var_532#575 + var_643#694 >= 0
 c725:  - var_533#442 + var_643#694 >= 0
 c726:  - var_534#583 + var_644#695 >= 0
 c727:  - var_535#383 + var_644#695 >= 0
 c728:  - var_536#584 + var_645#696 >= 0
 c729:  - var_537#444 + var_645#696 >= 0
 c730:  - var_538#585 + var_646#697 >= 0
 c731:  - var_539#384 + var_646#697 >= 0
 c732:  - var_540#586 + var_647#698 >= 0
 c733:  - var_541#445 + var_647#698 >= 0
 c734:  - var_542#594 + var_648#699 >= 0
 c735:  - var_543#386 + var_648#699 >= 0
 c736:  - var_544#595 + var_649#700 >= 0
 c737:  - var_545#447 + var_649#700 >= 0
 c738:  - var_546#596 + var_650#701 >= 0
 c739:  - var_547#387 + var_650#701 >= 0
 c740:  - var_548#597 + var_651#702 >= 0
 c741:  - var_549#448 + var_651#702 >= 0
 c742:  - var_550#605 + var_652#703 >= 0
 c743:  - var_551#389 + var_652#703 >= 0
 c744:  - var_552#606 + var_653#704 >= 0
 c745:  - var_553#450 + var_653#704 >= 0
 c746:  - var_554#607 + var_654#705 >= 0
 c747:  - var_555#390 + var_654#705 >= 0
 c748:  - var_556#608 + var_655#706 >= 0
 c749:  - var_557#451 + var_655#706 >= 0
 c750:  var_312#351 - var_558#609 >= 0
 c751:  var_314#355 - var_558#609 >= 0
 c752:  var_312#351 - var_559#610 >= 0
 c753:  var_327#416 - var_559#610 >= 0
 c754:  var_313#353 - var_560#611 >= 0
 c755:  var_314#355 - var_560#611 >= 0
 c756:  var_313#353 - var_561#612 >= 0
 c757:  var_327#416 - var_561#612 >= 0
 c758:  var_312#351 - var_562#613 >= 0
 c759:  var_315#358 - var_562#613 >= 0
 c760:  var_312#351 - var_563#614 >= 0
 c761:  var_328#419 - var_563#614 >= 0
 c762:  var_313#353 - var_564#615 >= 0
 c763:  var_315#358 - var_564#615 >= 0
 c764:  var_313#353 - var_565#616 >= 0
 c765:  var_328#419 - var_565#616 >= 0
 c766:  var_312#351 - var_566#617 >= 0
 c767:  var_316#361 - var_566#617 >= 0
 c768:  var_312#351 - var_567#618 >= 0
 c769:  var_329#422 - var_567#618 >= 0
 c770:  var_313#353 - var_568#619 >= 0
 c771:  var_316#361 - var_568#619 >= 0
 c772:  var_313#353 - var_569#620 >= 0
 c773:  var_329#422 - var_569#620 >= 0
 c774:  var_312#351 - var_570#621 >= 0
 c775:  var_317#364 - var_570#621 >= 0
 c776:  var_312#351 - var_571#622 >= 0
 c777:  var_330#425 - var_571#622 >= 0
 c778:  var_313#353 - var_572#623 >= 0
 c779:  var_317#364 - var_572#623 >= 0
 c780:  var_313#353 - var_573#624 >= 0
 c781:  var_330#425 - var_573#624 >= 0
 c782:  var_312#351 - var_574#625 >= 0
 c783:  var_318#367 - var_574#625 >= 0
 c784:  var_312#351 - var_575#626 >= 0
 c785:  var_331#428 - var_575#626 >= 0
 c786:  var_313#353 - var_576#627 >= 0
 c787:  var_318#367 - var_576#627 >= 0
 c788:  var_313#353 - var_577#628 >= 0
 c789:  var_331#428 - var_577#628 >= 0
 c790:  var_312#351 - var_578#629 >= 0
 c791:  var_319#370 - var_578#629 >= 0
 c792:  var_312#351 - var_579#630 >= 0
 c793:  var_332#431 - var_579#630 >= 0
 c794:  var_313#353 - var_580#631 >= 0
 c795:  var_319#370 - var_580#631 >= 0
 c796:  var_313#353 - var_581#632 >= 0
 c797:  var_332#431 - var_581#632 >= 0
 c798:  var_312#351 - var_582#633 >= 0
 c799:  var_320#373 - var_582#633 >= 0
 c800:  var_312#351 - var_583#634 >= 0
 c801:  var_333#434 - var_583#634 >= 0
 c802:  var_313#353 - var_584#635 >= 0
 c803:  var_320#373 - var_584#635 >= 0
 c804:  var_313#353 - var_585#636 >= 0
 c805:  var_333#434 - var_585#636 >= 0
 c806:  var_312#351 - var_586#637 >= 0
 c807:  var_321#376 - var_586#637 >= 0
 c808:  var_312#351 - var_587#638 >= 0
 c809:  var_334#437 - var_587#638 >= 0
 c810:  var_313#353 - var_588#639 >= 0
 c811:  var_321#376 - var_588#639 >= 0
 c812:  var_313#353 - var_589#640 >= 0
 c813:  var_334#437 - var_589#640 >= 0
 c814:  var_312#351 - var_590#641 >= 0
 c815:  var_322#379 - var_590#641 >= 0
 c816:  var_312#351 - var_591#642 >= 0
 c817:  var_335#440 - var_591#642 >= 0
 c818:  var_313#353 - var_592#643 >= 0
 c819:  var_322#379 - var_592#643 >= 0
 c820:  var_313#353 - var_593#644 >= 0
 c821:  var_335#440 - var_593#644 >= 0
 c822:  var_312#351 - var_594#645 >= 0
 c823:  var_323#382 - var_594#645 >= 0
 c824:  var_312#351 - var_595#646 >= 0
 c825:  var_336#443 - var_595#646 >= 0
 c826:  var_313#353 - var_596#647 >= 0
 c827:  var_323#382 - var_596#647 >= 0
 c828:  var_313#353 - var_597#648 >= 0
 c829:  var_336#443 - var_597#648 >= 0
 c830:  var_312#351 - var_598#649 >= 0
 c831:  var_324#385 - var_598#649 >= 0
 c832:  var_312#351 - var_599#650 >= 0
 c833:  var_337#446 - var_599#650 >= 0
 c834:  var_313#353 - var_600#651 >= 0
 c835:  var_324#385 - var_600#651 >= 0
 c836:  var_313#353 - var_601#652 >= 0
 c837:  var_337#446 - var_601#652 >= 0
 c838:  var_312#351 - var_602#653 >= 0
 c839:  var_325#388 - var_602#653 >= 0
 c840:  var_312#351 - var_603#654 >= 0
 c841:  var_338#449 - var_603#654 >= 0
 c842:  var_313#353 - var_604#655 >= 0
 c843:  var_325#388 - var_604#655 >= 0
 c844:  var_313#353 - var_605#656 >= 0
 c845:  var_338#449 - var_605#656 >= 0
 c846:  var_312#351 - var_606#657 >= 0
 c847:  var_313#353 - var_607#658 >= 0
 c848:  var_312#351 - var_608#659 >= 0
 c849:  var_340#477 - var_608#659 >= 0
 c850:  var_326#391 - var_608#659 >= 0
 c851:  var_312#351 - var_609#660 >= 0
 c852:  var_340#477 - var_609#660 >= 0
 c853:  var_339#452 - var_609#660 >= 0
 c854:  var_313#353 - var_610#661 >= 0
 c855:  var_300#480 - var_610#661 >= 0
 c856:  var_326#391 - var_610#661 >= 0
 c857:  var_313#353 - var_611#662 >= 0
 c858:  var_300#480 - var_611#662 >= 0
 c859:  var_339#452 - var_611#662 >= 0
 c860:  var_312#351 - var_612#663 >= 0
 c861:  var_342#488 - var_612#663 >= 0
 c862:  var_326#391 - var_612#663 >= 0
 c863:  var_312#351 - var_613#664 >= 0
 c864:  var_342#488 - var_613#664 >= 0
 c865:  var_339#452 - var_613#664 >= 0
 c866:  var_313#353 - var_614#665 >= 0
 c867:  var_301#491 - var_614#665 >= 0
 c868:  var_326#391 - var_614#665 >= 0
 c869:  var_313#353 - var_615#666 >= 0
 c870:  var_301#491 - var_615#666 >= 0
 c871:  var_339#452 - var_615#666 >= 0
 c872:  var_312#351 - var_616#667 >= 0
 c873:  var_344#499 - var_616#667 >= 0
 c874:  var_326#391 - var_616#667 >= 0
 c875:  var_312#351 - var_617#668 >= 0
 c876:  var_344#499 - var_617#668 >= 0
 c877:  var_339#452 - var_617#668 >= 0
 c878:  var_313#353 - var_618#669 >= 0
 c879:  var_302#502 - var_618#669 >= 0
 c880:  var_326#391 - var_618#669 >= 0
 c881:  var_313#353 - var_619#670 >= 0
 c882:  var_302#502 - var_619#670 >= 0
 c883:  var_339#452 - var_619#670 >= 0
 c884:  var_312#351 - var_620#671 >= 0
 c885:  var_346#510 - var_620#671 >= 0
 c886:  var_326#391 - var_620#671 >= 0
 c887:  var_312#351 - var_621#672 >= 0
 c888:  var_346#510 - var_621#672 >= 0
 c889:  var_339#452 - var_621#672 >= 0
 c890:  var_313#353 - var_622#673 >= 0
 c891:  var_303#513 - var_622#673 >= 0
 c892:  var_326#391 - var_622#673 >= 0
 c893:  var_313#353 - var_623#674 >= 0
 c894:  var_303#513 - var_623#674 >= 0
 c895:  var_339#452 - var_623#674 >= 0
 c896:  var_312#351 - var_624#675 >= 0
 c897:  var_348#521 - var_624#675 >= 0
 c898:  var_326#391 - var_624#675 >= 0
 c899:  var_312#351 - var_625#676 >= 0
 c900:  var_348#521 - var_625#676 >= 0
 c901:  var_339#452 - var_625#676 >= 0
 c902:  var_313#353 - var_626#677 >= 0
 c903:  var_304#524 - var_626#677 >= 0
 c904:  var_326#391 - var_626#677 >= 0
 c905:  var_313#353 - var_627#678 >= 0
 c906:  var_304#524 - var_627#678 >= 0
 c907:  var_339#452 - var_627#678 >= 0
 c908:  var_312#351 - var_628#679 >= 0
 c909:  var_350#532 - var_628#679 >= 0
 c910:  var_326#391 - var_628#679 >= 0
 c911:  var_312#351 - var_629#680 >= 0
 c912:  var_350#532 - var_629#680 >= 0
 c913:  var_339#452 - var_629#680 >= 0
 c914:  var_313#353 - var_630#681 >= 0
 c915:  var_305#535 - var_630#681 >= 0
 c916:  var_326#391 - var_630#681 >= 0
 c917:  var_313#353 - var_631#682 >= 0
 c918:  var_305#535 - var_631#682 >= 0
 c919:  var_339#452 - var_631#682 >= 0
 c920:  var_312#351 - var_632#683 >= 0
 c921:  var_352#543 - var_632#683 >= 0
 c922:  var_326#391 - var_632#683 >= 0
 c923:  var_312#351 - var_633#684 >= 0
 c924:  var_352#543 - var_633#684 >= 0
 c925:  var_339#452 - var_633#684 >= 0
 c926:  var_313#353 - var_634#685 >= 0
 c927:  var_306#546 - var_634#685 >= 0
 c928:  var_326#391 - var_634#685 >= 0
 c929:  var_313#353 - var_635#686 >= 0
 c930:  var_306#546 - var_635#686 >= 0
 c931:  var_339#452 - var_635#686 >= 0
 c932:  var_312#351 - var_636#687 >= 0
 c933:  var_354#554 - var_636#687 >= 0
 c934:  var_326#391 - var_636#687 >= 0
 c935:  var_312#351 - var_637#688 >= 0
 c936:  var_354#554 - var_637#688 >= 0
 c937:  var_339#452 - var_637#688 >= 0
 c938:  var_313#353 - var_638#689 >= 0
 c939:  var_307#557 - var_638#689 >= 0
 c940:  var_326#391 - var_638#689 >= 0
 c941:  var_313#353 - var_639#690 >= 0
 c942:  var_307#557 - var_639#690 >= 0
 c943:  var_339#452 - var_639#690 >= 0
 c944:  var_312#351 - var_640#691 >= 0
 c945:  var_356#565 - var_640#691 >= 0
 c946:  var_326#391 - var_640#691 >= 0
 c947:  var_312#351 - var_641#692 >= 0
 c948:  var_356#565 - var_641#692 >= 0
 c949:  var_339#452 - var_641#692 >= 0
 c950:  var_313#353 - var_642#693 >= 0
 c951:  var_308#568 - var_642#693 >= 0
 c952:  var_326#391 - var_642#693 >= 0
 c953:  var_313#353 - var_643#694 >= 0
 c954:  var_308#568 - var_643#694 >= 0
 c955:  var_339#452 - var_643#694 >= 0
 c956:  var_312#351 - var_644#695 >= 0
 c957:  var_358#576 - var_644#695 >= 0
 c958:  var_326#391 - var_644#695 >= 0
 c959:  var_312#351 - var_645#696 >= 0
 c960:  var_358#576 - var_645#696 >= 0
 c961:  var_339#452 - var_645#696 >= 0
 c962:  var_313#353 - var_646#697 >= 0
 c963:  var_309#579 - var_646#697 >= 0
 c964:  var_326#391 - var_646#697 >= 0
 c965:  var_313#353 - var_647#698 >= 0
 c966:  var_309#579 - var_647#698 >= 0
 c967:  var_339#452 - var_647#698 >= 0
 c968:  var_312#351 - var_648#699 >= 0
 c969:  var_360#587 - var_648#699 >= 0
 c970:  var_326#391 - var_648#699 >= 0
 c971:  var_312#351 - var_649#700 >= 0
 c972:  var_360#587 - var_649#700 >= 0
 c973:  var_339#452 - var_649#700 >= 0
 c974:  var_313#353 - var_650#701 >= 0
 c975:  var_310#590 - var_650#701 >= 0
 c976:  var_326#391 - var_650#701 >= 0
 c977:  var_313#353 - var_651#702 >= 0
 c978:  var_310#590 - var_651#702 >= 0
 c979:  var_339#452 - var_651#702 >= 0
 c980:  var_312#351 - var_652#703 >= 0
 c981:  var_362#598 - var_652#703 >= 0
 c982:  var_326#391 - var_652#703 >= 0
 c983:  var_312#351 - var_653#704 >= 0
 c984:  var_362#598 - var_653#704 >= 0
 c985:  var_339#452 - var_653#704 >= 0
 c986:  var_313#353 - var_654#705 >= 0
 c987:  var_311#601 - var_654#705 >= 0
 c988:  var_326#391 - var_654#705 >= 0
 c989:  var_313#353 - var_655#706 >= 0
 c990:  var_311#601 - var_655#706 >= 0
 c991:  var_339#452 - var_655#706 >= 0
 c992:  var_656#707 - var_657#708 >= 0
 c993:  var_656#707 - var_658#709 >= 0
 c994:  - var_657#708 + var_659#710 >= 0
 c995:  var_659#710 - var_660#711 >= 0
 c996:  var_661#712 - var_662#713 >= 0
 c997:  - var_658#709 + var_661#712 >= 0
 c998:  - var_662#713 + var_663#714 >= 0
 c999:  - var_660#711 + var_663#714 >= 0
 c1000: - var_657#708 + var_664#715 >= 0
 c1001: var_664#715 - var_665#716 >= 0
 c1002: - var_657#708 + var_666#717 >= 0
 c1003: var_666#717 - var_667#718 >= 0
 c1004: - var_662#713 + var_668#719 >= 0
 c1005: - var_665#716 + var_668#719 >= 0
 c1006: - var_662#713 + var_669#720 >= 0
 c1007: - var_667#718 + var_669#720 >= 0
 c1008: - var_657#708 + var_670#721 >= 0
 c1009: var_670#721 - var_671#722 >= 0
 c1010: - var_657#708 + var_672#723 >= 0
 c1011: var_672#723 - var_673#724 >= 0
 c1012: - var_662#713 + var_674#725 >= 0
 c1013: - var_671#722 + var_674#725 >= 0
 c1014: - var_662#713 + var_675#726 >= 0
 c1015: - var_673#724 + var_675#726 >= 0
 c1016: - var_657#708 + var_676#727 >= 0
 c1017: var_676#727 - var_677#728 >= 0
 c1018: - var_657#708 + var_678#729 >= 0
 c1019: var_678#729 - var_679#730 >= 0
 c1020: - var_662#713 + var_680#731 >= 0
 c1021: - var_677#728 + var_680#731 >= 0
 c1022: - var_662#713 + var_681#732 >= 0
 c1023: - var_679#730 + var_681#732 >= 0
 c1024: - var_657#708 + var_682#733 >= 0
 c1025: var_682#733 - var_683#734 >= 0
 c1026: - var_657#708 + var_684#735 >= 0
 c1027: var_684#735 - var_685#736 >= 0
 c1028: - var_662#713 + var_686#737 >= 0
 c1029: - var_683#734 + var_686#737 >= 0
 c1030: - var_662#713 + var_687#738 >= 0
 c1031: - var_685#736 + var_687#738 >= 0
 c1032: - var_657#708 + var_688#739 >= 0
 c1033: var_688#739 - var_689#740 >= 0
 c1034: - var_657#708 + var_690#741 >= 0
 c1035: var_690#741 - var_691#742 >= 0
 c1036: - var_662#713 + var_692#743 >= 0
 c1037: - var_689#740 + var_692#743 >= 0
 c1038: - var_662#713 + var_693#744 >= 0
 c1039: - var_691#742 + var_693#744 >= 0
 c1040: - var_657#708 + var_694#745 >= 0
 c1041: var_694#745 - var_695#746 >= 0
 c1042: - var_657#708 + var_696#747 >= 0
 c1043: var_696#747 - var_697#748 >= 0
 c1044: - var_662#713 + var_698#749 >= 0
 c1045: - var_695#746 + var_698#749 >= 0
 c1046: - var_662#713 + var_699#750 >= 0
 c1047: - var_697#748 + var_699#750 >= 0
 c1048: - var_657#708 + var_700#751 >= 0
 c1049: var_700#751 - var_701#752 >= 0
 c1050: - var_657#708 + var_702#753 >= 0
 c1051: var_702#753 - var_703#754 >= 0
 c1052: - var_662#713 + var_704#755 >= 0
 c1053: - var_701#752 + var_704#755 >= 0
 c1054: - var_662#713 + var_705#756 >= 0
 c1055: - var_703#754 + var_705#756 >= 0
 c1056: - var_657#708 + var_706#757 >= 0
 c1057: var_706#757 - var_707#758 >= 0
 c1058: - var_657#708 + var_708#759 >= 0
 c1059: var_708#759 - var_709#760 >= 0
 c1060: - var_662#713 + var_710#761 >= 0
 c1061: - var_707#758 + var_710#761 >= 0
 c1062: - var_662#713 + var_711#762 >= 0
 c1063: - var_709#760 + var_711#762 >= 0
 c1064: - var_657#708 + var_712#763 >= 0
 c1065: var_712#763 - var_713#764 >= 0
 c1066: - var_657#708 + var_714#765 >= 0
 c1067: var_714#765 - var_715#766 >= 0
 c1068: - var_662#713 + var_716#767 >= 0
 c1069: - var_713#764 + var_716#767 >= 0
 c1070: - var_662#713 + var_717#768 >= 0
 c1071: - var_715#766 + var_717#768 >= 0
 c1072: - var_657#708 + var_718#769 >= 0
 c1073: var_718#769 - var_719#770 >= 0
 c1074: - var_657#708 + var_720#771 >= 0
 c1075: var_720#771 - var_721#772 >= 0
 c1076: - var_662#713 + var_722#773 >= 0
 c1077: - var_719#770 + var_722#773 >= 0
 c1078: - var_662#713 + var_723#774 >= 0
 c1079: - var_721#772 + var_723#774 >= 0
 c1080: - var_657#708 + var_724#775 >= 0
 c1081: var_724#775 - var_725#776 >= 0
 c1082: - var_657#708 + var_726#777 >= 0
 c1083: var_726#777 - var_727#778 >= 0
 c1084: - var_662#713 + var_728#779 >= 0
 c1085: - var_725#776 + var_728#779 >= 0
 c1086: - var_662#713 + var_729#780 >= 0
 c1087: - var_727#778 + var_729#780 >= 0
 c1088: - var_657#708 + var_730#781 >= 0
 c1089: - var_662#713 + var_731#782 >= 0
 c1090: - var_657#708 + var_732#783 >= 0
 c1091: var_732#783 - var_733#784 >= 0
 c1092: var_732#783 - var_734#785 >= 0
 c1093: - var_657#708 + var_735#786 >= 0
 c1094: - var_733#784 + var_735#786 >= 0
 c1095: var_735#786 - var_736#787 >= 0
 c1096: - var_662#713 + var_737#788 >= 0
 c1097: var_737#788 - var_738#789 >= 0
 c1098: - var_734#785 + var_737#788 >= 0
 c1099: - var_662#713 + var_739#790 >= 0
 c1100: - var_738#789 + var_739#790 >= 0
 c1101: - var_736#787 + var_739#790 >= 0
 c1102: - var_657#708 + var_740#791 >= 0
 c1103: var_740#791 - var_741#792 >= 0
 c1104: - var_734#785 + var_740#791 >= 0
 c1105: - var_657#708 + var_742#793 >= 0
 c1106: - var_741#792 + var_742#793 >= 0
 c1107: - var_736#787 + var_742#793 >= 0
 c1108: - var_662#713 + var_743#794 >= 0
 c1109: var_743#794 - var_744#795 >= 0
 c1110: - var_734#785 + var_743#794 >= 0
 c1111: - var_662#713 + var_745#796 >= 0
 c1112: - var_744#795 + var_745#796 >= 0
 c1113: - var_736#787 + var_745#796 >= 0
 c1114: - var_657#708 + var_746#797 >= 0
 c1115: var_746#797 - var_747#798 >= 0
 c1116: - var_734#785 + var_746#797 >= 0
 c1117: - var_657#708 + var_748#799 >= 0
 c1118: - var_747#798 + var_748#799 >= 0
 c1119: - var_736#787 + var_748#799 >= 0
 c1120: - var_662#713 + var_749#800 >= 0
 c1121: var_749#800 - var_750#801 >= 0
 c1122: - var_734#785 + var_749#800 >= 0
 c1123: - var_662#713 + var_751#802 >= 0
 c1124: - var_750#801 + var_751#802 >= 0
 c1125: - var_736#787 + var_751#802 >= 0
 c1126: - var_657#708 + var_752#803 >= 0
 c1127: var_752#803 - var_753#804 >= 0
 c1128: - var_734#785 + var_752#803 >= 0
 c1129: - var_657#708 + var_754#805 >= 0
 c1130: - var_753#804 + var_754#805 >= 0
 c1131: - var_736#787 + var_754#805 >= 0
 c1132: - var_662#713 + var_755#806 >= 0
 c1133: var_755#806 - var_756#807 >= 0
 c1134: - var_734#785 + var_755#806 >= 0
 c1135: - var_662#713 + var_757#808 >= 0
 c1136: - var_756#807 + var_757#808 >= 0
 c1137: - var_736#787 + var_757#808 >= 0
 c1138: - var_657#708 + var_758#809 >= 0
 c1139: var_758#809 - var_759#810 >= 0
 c1140: - var_734#785 + var_758#809 >= 0
 c1141: - var_657#708 + var_760#811 >= 0
 c1142: - var_759#810 + var_760#811 >= 0
 c1143: - var_736#787 + var_760#811 >= 0
 c1144: - var_662#713 + var_761#812 >= 0
 c1145: var_761#812 - var_762#813 >= 0
 c1146: - var_734#785 + var_761#812 >= 0
 c1147: - var_662#713 + var_763#814 >= 0
 c1148: - var_762#813 + var_763#814 >= 0
 c1149: - var_736#787 + var_763#814 >= 0
 c1150: - var_657#708 + var_764#815 >= 0
 c1151: var_764#815 - var_765#816 >= 0
 c1152: - var_734#785 + var_764#815 >= 0
 c1153: - var_657#708 + var_766#817 >= 0
 c1154: - var_765#816 + var_766#817 >= 0
 c1155: - var_736#787 + var_766#817 >= 0
 c1156: - var_662#713 + var_767#818 >= 0
 c1157: var_767#818 - var_768#819 >= 0
 c1158: - var_734#785 + var_767#818 >= 0
 c1159: - var_662#713 + var_769#820 >= 0
 c1160: - var_768#819 + var_769#820 >= 0
 c1161: - var_736#787 + var_769#820 >= 0
 c1162: - var_657#708 + var_770#821 >= 0
 c1163: var_770#821 - var_771#822 >= 0
 c1164: - var_734#785 + var_770#821 >= 0
 c1165: - var_657#708 + var_772#823 >= 0
 c1166: - var_771#822 + var_772#823 >= 0
 c1167: - var_736#787 + var_772#823 >= 0
 c1168: - var_662#713 + var_773#824 >= 0
 c1169: var_773#824 - var_774#825 >= 0
 c1170: - var_734#785 + var_773#824 >= 0
 c1171: - var_662#713 + var_775#826 >= 0
 c1172: - var_774#825 + var_775#826 >= 0
 c1173: - var_736#787 + var_775#826 >= 0
 c1174: - var_657#708 + var_776#827 >= 0
 c1175: var_776#827 - var_777#828 >= 0
 c1176: - var_734#785 + var_776#827 >= 0
 c1177: - var_657#708 + var_778#829 >= 0
 c1178: - var_777#828 + var_778#829 >= 0
 c1179: - var_736#787 + var_778#829 >= 0
 c1180: - var_662#713 + var_779#830 >= 0
 c1181: var_779#830 - var_780#831 >= 0
 c1182: - var_734#785 + var_779#830 >= 0
 c1183: - var_662#713 + var_781#832 >= 0
 c1184: - var_780#831 + var_781#832 >= 0
 c1185: - var_736#787 + var_781#832 >= 0
 c1186: - var_657#708 + var_782#833 >= 0
 c1187: var_782#833 - var_783#834 >= 0
 c1188: - var_734#785 + var_782#833 >= 0
 c1189: - var_657#708 + var_784#835 >= 0
 c1190: - var_783#834 + var_784#835 >= 0
 c1191: - var_736#787 + var_784#835 >= 0
 c1192: - var_662#713 + var_785#836 >= 0
 c1193: var_785#836 - var_786#837 >= 0
 c1194: - var_734#785 + var_785#836 >= 0
 c1195: - var_662#713 + var_787#838 >= 0
 c1196: - var_786#837 + var_787#838 >= 0
 c1197: - var_736#787 + var_787#838 >= 0
 c1198: - var_657#708 + var_788#839 >= 0
 c1199: var_788#839 - var_789#840 >= 0
 c1200: - var_734#785 + var_788#839 >= 0
 c1201: - var_657#708 + var_790#841 >= 0
 c1202: - var_789#840 + var_790#841 >= 0
 c1203: - var_736#787 + var_790#841 >= 0
 c1204: - var_662#713 + var_791#842 >= 0
 c1205: var_791#842 - var_792#843 >= 0
 c1206: - var_734#785 + var_791#842 >= 0
 c1207: - var_662#713 + var_793#844 >= 0
 c1208: - var_792#843 + var_793#844 >= 0
 c1209: - var_736#787 + var_793#844 >= 0
 c1210: - var_657#708 + var_794#845 >= 0
 c1211: var_794#845 - var_795#846 >= 0
 c1212: - var_734#785 + var_794#845 >= 0
 c1213: - var_657#708 + var_796#847 >= 0
 c1214: - var_795#846 + var_796#847 >= 0
 c1215: - var_736#787 + var_796#847 >= 0
 c1216: - var_662#713 + var_797#848 >= 0
 c1217: var_797#848 - var_798#849 >= 0
 c1218: - var_734#785 + var_797#848 >= 0
 c1219: - var_662#713 + var_799#850 >= 0
 c1220: - var_798#849 + var_799#850 >= 0
 c1221: - var_736#787 + var_799#850 >= 0
 c1222: - var_657#708 + var_800#851 >= 0
 c1223: var_800#851 - var_801#852 >= 0
 c1224: - var_734#785 + var_800#851 >= 0
 c1225: - var_657#708 + var_802#853 >= 0
 c1226: - var_801#852 + var_802#853 >= 0
 c1227: - var_736#787 + var_802#853 >= 0
 c1228: - var_662#713 + var_803#854 >= 0
 c1229: var_803#854 - var_804#855 >= 0
 c1230: - var_734#785 + var_803#854 >= 0
 c1231: - var_662#713 + var_805#856 >= 0
 c1232: - var_804#855 + var_805#856 >= 0
 c1233: - var_736#787 + var_805#856 >= 0
 c1234: - 99 var_364#478 - var_656#707 + var_733#784 >= -98
 c1235: - 99 var_365#392 - var_656#707 + var_734#785 >= -98
 c1236: - 99 var_366#479 - var_659#710 + var_733#784 >= -98
 c1237: - 99 var_367#453 - var_659#710 + var_736#787 >= -98
 c1238: - 99 var_368#481 - var_661#712 + var_738#789 >= -98
 c1239: - 99 var_369#393 - var_661#712 + var_734#785 >= -98
 c1240: - 99 var_370#482 - var_663#714 + var_738#789 >= -98
 c1241: - 99 var_371#454 - var_663#714 + var_736#787 >= -98
 c1242: - 99 var_372#489 - var_664#715 + var_741#792 >= -98
 c1243: - 99 var_373#394 - var_664#715 + var_734#785 >= -98
 c1244: - 99 var_374#490 - var_666#717 + var_741#792 >= -98
 c1245: - 99 var_375#455 - var_666#717 + var_736#787 >= -98
 c1246: - 99 var_376#492 - var_668#719 + var_744#795 >= -98
 c1247: - 99 var_377#395 - var_668#719 + var_734#785 >= -98
 c1248: - 99 var_378#493 - var_669#720 + var_744#795 >= -98
 c1249: - 99 var_379#456 - var_669#720 + var_736#787 >= -98
 c1250: - 99 var_380#500 - var_670#721 + var_747#798 >= -98
 c1251: - 99 var_381#396 - var_670#721 + var_734#785 >= -98
 c1252: - 99 var_382#501 - var_672#723 + var_747#798 >= -98
 c1253: - 99 var_383#457 - var_672#723 + var_736#787 >= -98
 c1254: - 99 var_384#503 - var_674#725 + var_750#801 >= -98
 c1255: - 99 var_385#397 - var_674#725 + var_734#785 >= -98
 c1256: - 99 var_386#504 - var_675#726 + var_750#801 >= -98
 c1257: - 99 var_387#458 - var_675#726 + var_736#787 >= -98
 c1258: - 99 var_388#511 - var_676#727 + var_753#804 >= -98
 c1259: - 99 var_389#398 - var_676#727 + var_734#785 >= -98
 c1260: - 99 var_390#512 - var_678#729 + var_753#804 >= -98
 c1261: - 99 var_391#459 - var_678#729 + var_736#787 >= -98
 c1262: - 99 var_392#514 - var_680#731 + var_756#807 >= -98
 c1263: - 99 var_393#399 - var_680#731 + var_734#785 >= -98
 c1264: - 99 var_394#515 - var_681#732 + var_756#807 >= -98
 c1265: - 99 var_395#460 - var_681#732 + var_736#787 >= -98
 c1266: - 99 var_396#522 - var_682#733 + var_759#810 >= -98
 c1267: - 99 var_397#400 - var_682#733 + var_734#785 >= -98
 c1268: - 99 var_398#523 - var_684#735 + var_759#810 >= -98
 c1269: - 99 var_399#461 - var_684#735 + var_736#787 >= -98
 c1270: - 99 var_400#525 - var_686#737 + var_762#813 >= -98
 c1271: - 99 var_401#401 - var_686#737 + var_734#785 >= -98
 c1272: - 99 var_402#526 - var_687#738 + var_762#813 >= -98
 c1273: - 99 var_403#462 - var_687#738 + var_736#787 >= -98
 c1274: - 99 var_404#533 - var_688#739 + var_765#816 >= -98
 c1275: - 99 var_405#402 - var_688#739 + var_734#785 >= -98
 c1276: - 99 var_406#534 - var_690#741 + var_765#816 >= -98
 c1277: - 99 var_407#463 - var_690#741 + var_736#787 >= -98
 c1278: - 99 var_408#536 - var_692#743 + var_768#819 >= -98
 c1279: - 99 var_409#403 - var_692#743 + var_734#785 >= -98
 c1280: - 99 var_410#537 - var_693#744 + var_768#819 >= -98
 c1281: - 99 var_411#464 - var_693#744 + var_736#787 >= -98
 c1282: - 99 var_412#544 - var_694#745 + var_771#822 >= -98
 c1283: - 99 var_413#404 - var_694#745 + var_734#785 >= -98
 c1284: - 99 var_414#545 - var_696#747 + var_771#822 >= -98
 c1285: - 99 var_415#465 - var_696#747 + var_736#787 >= -98
 c1286: - 99 var_416#547 - var_698#749 + var_774#825 >= -98
 c1287: - 99 var_417#405 - var_698#749 + var_734#785 >= -98
 c1288: - 99 var_418#548 - var_699#750 + var_774#825 >= -98
 c1289: - 99 var_419#466 - var_699#750 + var_736#787 >= -98
 c1290: - 99 var_420#555 - var_700#751 + var_777#828 >= -98
 c1291: - 99 var_421#406 - var_700#751 + var_734#785 >= -98
 c1292: - 99 var_422#556 - var_702#753 + var_777#828 >= -98
 c1293: - 99 var_423#467 - var_702#753 + var_736#787 >= -98
 c1294: - 99 var_424#558 - var_704#755 + var_780#831 >= -98
 c1295: - 99 var_425#407 - var_704#755 + var_734#785 >= -98
 c1296: - 99 var_426#559 - var_705#756 + var_780#831 >= -98
 c1297: - 99 var_427#468 - var_705#756 + var_736#787 >= -98
 c1298: - 99 var_428#566 - var_706#757 + var_783#834 >= -98
 c1299: - 99 var_429#408 - var_706#757 + var_734#785 >= -98
 c1300: - 99 var_430#567 - var_708#759 + var_783#834 >= -98
 c1301: - 99 var_431#469 - var_708#759 + var_736#787 >= -98
 c1302: - 99 var_432#569 - var_710#761 + var_786#837 >= -98
 c1303: - 99 var_433#409 - var_710#761 + var_734#785 >= -98
 c1304: - 99 var_434#570 - var_711#762 + var_786#837 >= -98
 c1305: - 99 var_435#470 - var_711#762 + var_736#787 >= -98
 c1306: - 99 var_436#577 - var_712#763 + var_789#840 >= -98
 c1307: - 99 var_437#410 - var_712#763 + var_734#785 >= -98
 c1308: - 99 var_438#578 - var_714#765 + var_789#840 >= -98
 c1309: - 99 var_439#471 - var_714#765 + var_736#787 >= -98
 c1310: - 99 var_440#580 - var_716#767 + var_792#843 >= -98
 c1311: - 99 var_441#411 - var_716#767 + var_734#785 >= -98
 c1312: - 99 var_442#581 - var_717#768 + var_792#843 >= -98
 c1313: - 99 var_443#472 - var_717#768 + var_736#787 >= -98
 c1314: - 99 var_444#588 - var_718#769 + var_795#846 >= -98
 c1315: - 99 var_445#412 - var_718#769 + var_734#785 >= -98
 c1316: - 99 var_446#589 - var_720#771 + var_795#846 >= -98
 c1317: - 99 var_447#473 - var_720#771 + var_736#787 >= -98
 c1318: - 99 var_448#591 - var_722#773 + var_798#849 >= -98
 c1319: - 99 var_449#413 - var_722#773 + var_734#785 >= -98
 c1320: - 99 var_450#592 - var_723#774 + var_798#849 >= -98
 c1321: - 99 var_451#474 - var_723#774 + var_736#787 >= -98
 c1322: - 99 var_452#599 - var_724#775 + var_801#852 >= -98
 c1323: - 99 var_453#414 - var_724#775 + var_734#785 >= -98
 c1324: - 99 var_454#600 - var_726#777 + var_801#852 >= -98
 c1325: - 99 var_455#475 - var_726#777 + var_736#787 >= -98
 c1326: - 99 var_456#602 - var_728#779 + var_804#855 >= -98
 c1327: - 99 var_457#415 - var_728#779 + var_734#785 >= -98
 c1328: - 99 var_458#603 - var_729#780 + var_804#855 >= -98
 c1329: - 99 var_459#476 - var_729#780 + var_736#787 >= -98
 c1330: - 99 var_460#354 + var_662#713 - var_730#781 >= -98
 c1331: - 99 var_461#352 + var_657#708 - var_731#782 >= -98
 c1332: - 99 var_462#484 - var_732#783 + var_806#857 >= -98
 c1333: - 99 var_463#356 + var_658#709 - var_732#783 >= -98
 c1334: - 99 var_464#485 - var_735#786 + var_806#857 >= -98
 c1335: - 99 var_465#417 + var_660#711 - var_735#786 >= -98
 c1336: - 99 var_466#486 - var_737#788 + var_806#857 >= -98
 c1337: - 99 var_467#357 + var_658#709 - var_737#788 >= -98
 c1338: - 99 var_468#487 - var_739#790 + var_806#857 >= -98
 c1339: - 99 var_469#418 + var_660#711 - var_739#790 >= -98
 c1340: - 99 var_470#495 - var_740#791 + var_807#858 >= -98
 c1341: - 99 var_471#359 + var_665#716 - var_740#791 >= -98
 c1342: - 99 var_472#496 - var_742#793 + var_807#858 >= -98
 c1343: - 99 var_473#420 + var_667#718 - var_742#793 >= -98
 c1344: - 99 var_474#497 - var_743#794 + var_807#858 >= -98
 c1345: - 99 var_475#360 + var_665#716 - var_743#794 >= -98
 c1346: - 99 var_476#498 - var_745#796 + var_807#858 >= -98
 c1347: - 99 var_477#421 + var_667#718 - var_745#796 >= -98
 c1348: - 99 var_478#506 - var_746#797 + var_808#859 >= -98
 c1349: - 99 var_479#362 + var_671#722 - var_746#797 >= -98
 c1350: - 99 var_480#507 - var_748#799 + var_808#859 >= -98
 c1351: - 99 var_481#423 + var_673#724 - var_748#799 >= -98
 c1352: - 99 var_482#508 - var_749#800 + var_808#859 >= -98
 c1353: - 99 var_483#363 + var_671#722 - var_749#800 >= -98
 c1354: - 99 var_484#509 - var_751#802 + var_808#859 >= -98
 c1355: - 99 var_485#424 + var_673#724 - var_751#802 >= -98
 c1356: - 99 var_486#517 - var_752#803 + var_809#860 >= -98
 c1357: - 99 var_487#365 + var_677#728 - var_752#803 >= -98
 c1358: - 99 var_488#518 - var_754#805 + var_809#860 >= -98
 c1359: - 99 var_489#426 + var_679#730 - var_754#805 >= -98
 c1360: - 99 var_490#519 - var_755#806 + var_809#860 >= -98
 c1361: - 99 var_491#366 + var_677#728 - var_755#806 >= -98
 c1362: - 99 var_492#520 - var_757#808 + var_809#860 >= -98
 c1363: - 99 var_493#427 + var_679#730 - var_757#808 >= -98
 c1364: - 99 var_494#528 - var_758#809 + var_810#861 >= -98
 c1365: - 99 var_495#368 + var_683#734 - var_758#809 >= -98
 c1366: - 99 var_496#529 - var_760#811 + var_810#861 >= -98
 c1367: - 99 var_497#429 + var_685#736 - var_760#811 >= -98
 c1368: - 99 var_498#530 - var_761#812 + var_810#861 >= -98
 c1369: - 99 var_499#369 + var_683#734 - var_761#812 >= -98
 c1370: - 99 var_500#531 - var_763#814 + var_810#861 >= -98
 c1371: - 99 var_501#430 + var_685#736 - var_763#814 >= -98
 c1372: - 99 var_502#539 - var_764#815 + var_811#862 >= -98
 c1373: - 99 var_503#371 + var_689#740 - var_764#815 >= -98
 c1374: - 99 var_504#540 - var_766#817 + var_811#862 >= -98
 c1375: - 99 var_505#432 + var_691#742 - var_766#817 >= -98
 c1376: - 99 var_506#541 - var_767#818 + var_811#862 >= -98
 c1377: - 99 var_507#372 + var_689#740 - var_767#818 >= -98
 c1378: - 99 var_508#542 - var_769#820 + var_811#862 >= -98
 c1379: - 99 var_509#433 + var_691#742 - var_769#820 >= -98
 c1380: - 99 var_510#550 - var_770#821 + var_812#863 >= -98
 c1381: - 99 var_511#374 + var_695#746 - var_770#821 >= -98
 c1382: - 99 var_512#551 - var_772#823 + var_812#863 >= -98
 c1383: - 99 var_513#435 + var_697#748 - var_772#823 >= -98
 c1384: - 99 var_514#552 - var_773#824 + var_812#863 >= -98
 c1385: - 99 var_515#375 + var_695#746 - var_773#824 >= -98
 c1386: - 99 var_516#553 - var_775#826 + var_812#863 >= -98
 c1387: - 99 var_517#436 + var_697#748 - var_775#826 >= -98
 c1388: - 99 var_518#561 - var_776#827 + var_813#864 >= -98
 c1389: - 99 var_519#377 + var_701#752 - var_776#827 >= -98
 c1390: - 99 var_520#562 - var_778#829 + var_813#864 >= -98
 c1391: - 99 var_521#438 + var_703#754 - var_778#829 >= -98
 c1392: - 99 var_522#563 - var_779#830 + var_813#864 >= -98
 c1393: - 99 var_523#378 + var_701#752 - var_779#830 >= -98
 c1394: - 99 var_524#564 - var_781#832 + var_813#864 >= -98
 c1395: - 99 var_525#439 + var_703#754 - var_781#832 >= -98
 c1396: - 99 var_526#572 - var_782#833 + var_814#865 >= -98
 c1397: - 99 var_527#380 + var_707#758 - var_782#833 >= -98
 c1398: - 99 var_528#573 - var_784#835 + var_814#865 >= -98
 c1399: - 99 var_529#441 + var_709#760 - var_784#835 >= -98
 c1400: - 99 var_530#574 - var_785#836 + var_814#865 >= -98
 c1401: - 99 var_531#381 + var_707#758 - var_785#836 >= -98
 c1402: - 99 var_532#575 - var_787#838 + var_814#865 >= -98
 c1403: - 99 var_533#442 + var_709#760 - var_787#838 >= -98
 c1404: - 99 var_534#583 - var_788#839 + var_815#866 >= -98
 c1405: - 99 var_535#383 + var_713#764 - var_788#839 >= -98
 c1406: - 99 var_536#584 - var_790#841 + var_815#866 >= -98
 c1407: - 99 var_537#444 + var_715#766 - var_790#841 >= -98
 c1408: - 99 var_538#585 - var_791#842 + var_815#866 >= -98
 c1409: - 99 var_539#384 + var_713#764 - var_791#842 >= -98
 c1410: - 99 var_540#586 - var_793#844 + var_815#866 >= -98
 c1411: - 99 var_541#445 + var_715#766 - var_793#844 >= -98
 c1412: - 99 var_542#594 - var_794#845 + var_816#867 >= -98
 c1413: - 99 var_543#386 + var_719#770 - var_794#845 >= -98
 c1414: - 99 var_544#595 - var_796#847 + var_816#867 >= -98
 c1415: - 99 var_545#447 + var_721#772 - var_796#847 >= -98
 c1416: - 99 var_546#596 - var_797#848 + var_816#867 >= -98
 c1417: - 99 var_547#387 + var_719#770 - var_797#848 >= -98
 c1418: - 99 var_548#597 - var_799#850 + var_816#867 >= -98
 c1419: - 99 var_549#448 + var_721#772 - var_799#850 >= -98
 c1420: - 99 var_550#605 - var_800#851 + var_817#868 >= -98
 c1421: - 99 var_551#389 + var_725#776 - var_800#851 >= -98
 c1422: - 99 var_552#606 - var_802#853 + var_817#868 >= -98
 c1423: - 99 var_553#450 + var_727#778 - var_802#853 >= -98
 c1424: - 99 var_554#607 - var_803#854 + var_817#868 >= -98
 c1425: - 99 var_555#390 + var_725#776 - var_803#854 >= -98
 c1426: - 99 var_556#608 - var_805#856 + var_817#868 >= -98
 c1427: - 99 var_557#451 + var_727#778 - var_805#856 >= -98
 c1428: drop_ball1_rooma_left#0 - var_558#609 >= 0
 c1429: drop_ball1_rooma_right#1 - var_559#610 >= 0
 c1430: drop_ball1_roomb_left#2 - var_560#611 >= 0
 c1431: drop_ball1_roomb_right#3 - var_561#612 >= 0
 c1432: drop_ball10_rooma_left#4 - var_562#613 >= 0
 c1433: drop_ball10_rooma_right#5 - var_563#614 >= 0
 c1434: drop_ball10_roomb_left#6 - var_564#615 >= 0
 c1435: drop_ball10_roomb_right#7 - var_565#616 >= 0
 c1436: drop_ball11_rooma_left#8 - var_566#617 >= 0
 c1437: drop_ball11_rooma_right#9 - var_567#618 >= 0
 c1438: drop_ball11_roomb_left#10 - var_568#619 >= 0
 c1439: drop_ball11_roomb_right#11 - var_569#620 >= 0
 c1440: drop_ball12_rooma_left#12 - var_570#621 >= 0
 c1441: drop_ball12_rooma_right#13 - var_571#622 >= 0
 c1442: drop_ball12_roomb_left#14 - var_572#623 >= 0
 c1443: drop_ball12_roomb_right#15 - var_573#624 >= 0
 c1444: drop_ball2_rooma_left#16 - var_574#625 >= 0
 c1445: drop_ball2_rooma_right#17 - var_575#626 >= 0
 c1446: drop_ball2_roomb_left#18 - var_576#627 >= 0
 c1447: drop_ball2_roomb_right#19 - var_577#628 >= 0
 c1448: drop_ball3_rooma_left#20 - var_578#629 >= 0
 c1449: drop_ball3_rooma_right#21 - var_579#630 >= 0
 c1450: drop_ball3_roomb_left#22 - var_580#631 >= 0
 c1451: drop_ball3_roomb_right#23 - var_581#632 >= 0
 c1452: drop_ball4_rooma_left#24 - var_582#633 >= 0
 c1453: drop_ball4_rooma_right#25 - var_583#634 >= 0
 c1454: drop_ball4_roomb_left#26 - var_584#635 >= 0
 c1455: drop_ball4_roomb_right#27 - var_585#636 >= 0
 c1456: drop_ball5_rooma_left#28 - var_586#637 >= 0
 c1457: drop_ball5_rooma_right#29 - var_587#638 >= 0
 c1458: drop_ball5_roomb_left#30 - var_588#639 >= 0
 c1459: drop_ball5_roomb_right#31 - var_589#640 >= 0
 c1460: drop_ball6_rooma_left#32 - var_590#641 >= 0
 c1461: drop_ball6_rooma_right#33 - var_591#642 >= 0
 c1462: drop_ball6_roomb_left#34 - var_592#643 >= 0
 c1463: drop_ball6_roomb_right#35 - var_593#644 >= 0
 c1464: drop_ball7_rooma_left#36 - var_594#645 >= 0
 c1465: drop_ball7_rooma_right#37 - var_595#646 >= 0
 c1466: drop_ball7_roomb_left#38 - var_596#647 >= 0
 c1467: drop_ball7_roomb_right#39 - var_597#648 >= 0
 c1468: drop_ball8_rooma_left#40 - var_598#649 >= 0
 c1469: drop_ball8_rooma_right#41 - var_599#650 >= 0
 c1470: drop_ball8_roomb_left#42 - var_600#651 >= 0
 c1471: drop_ball8_roomb_right#43 - var_601#652 >= 0
 c1472: drop_ball9_rooma_left#44 - var_602#653 >= 0
 c1473: drop_ball9_rooma_right#45 - var_603#654 >= 0
 c1474: drop_ball9_roomb_left#46 - var_604#655 >= 0
 c1475: drop_ball9_roomb_right#47 - var_605#656 >= 0
 c1476: move_rooma_roomb#48 - var_606#657 >= 0
 c1477: move_roomb_rooma#49 - var_607#658 >= 0
 c1478: pick_ball1_rooma_left#50 - var_608#659 >= 0
 c1479: pick_ball1_rooma_right#51 - var_609#660 >= 0
 c1480: pick_ball1_roomb_left#52 - var_610#661 >= 0
 c1481: pick_ball1_roomb_right#53 - var_611#662 >= 0
 c1482: pick_ball10_rooma_left#54 - var_612#663 >= 0
 c1483: pick_ball10_rooma_right#55 - var_613#664 >= 0
 c1484: pick_ball10_roomb_left#56 - var_614#665 >= 0
 c1485: pick_ball10_roomb_right#57 - var_615#666 >= 0
 c1486: pick_ball11_rooma_left#58 - var_616#667 >= 0
 c1487: pick_ball11_rooma_right#59 - var_617#668 >= 0
 c1488: pick_ball11_roomb_left#60 - var_618#669 >= 0
 c1489: pick_ball11_roomb_right#61 - var_619#670 >= 0
 c1490: pick_ball12_rooma_left#62 - var_620#671 >= 0
 c1491: pick_ball12_rooma_right#63 - var_621#672 >= 0
 c1492: pick_ball12_roomb_left#64 - var_622#673 >= 0
 c1493: pick_ball12_roomb_right#65 - var_623#674 >= 0
 c1494: pick_ball2_rooma_left#66 - var_624#675 >= 0
 c1495: pick_ball2_rooma_right#67 - var_625#676 >= 0
 c1496: pick_ball2_roomb_left#68 - var_626#677 >= 0
 c1497: pick_ball2_roomb_right#69 - var_627#678 >= 0
 c1498: pick_ball3_rooma_left#70 - var_628#679 >= 0
 c1499: pick_ball3_rooma_right#71 - var_629#680 >= 0
 c1500: pick_ball3_roomb_left#72 - var_630#681 >= 0
 c1501: pick_ball3_roomb_right#73 - var_631#682 >= 0
 c1502: pick_ball4_rooma_left#74 - var_632#683 >= 0
 c1503: pick_ball4_rooma_right#75 - var_633#684 >= 0
 c1504: pick_ball4_roomb_left#76 - var_634#685 >= 0
 c1505: pick_ball4_roomb_right#77 - var_635#686 >= 0
 c1506: pick_ball5_rooma_left#78 - var_636#687 >= 0
 c1507: pick_ball5_rooma_right#79 - var_637#688 >= 0
 c1508: pick_ball5_roomb_left#80 - var_638#689 >= 0
 c1509: pick_ball5_roomb_right#81 - var_639#690 >= 0
 c1510: pick_ball6_rooma_left#82 - var_640#691 >= 0
 c1511: pick_ball6_rooma_right#83 - var_641#692 >= 0
 c1512: pick_ball6_roomb_left#84 - var_642#693 >= 0
 c1513: pick_ball6_roomb_right#85 - var_643#694 >= 0
 c1514: pick_ball7_rooma_left#86 - var_644#695 >= 0
 c1515: pick_ball7_rooma_right#87 - var_645#696 >= 0
 c1516: pick_ball7_roomb_left#88 - var_646#697 >= 0
 c1517: pick_ball7_roomb_right#89 - var_647#698 >= 0
 c1518: pick_ball8_rooma_left#90 - var_648#699 >= 0
 c1519: pick_ball8_rooma_right#91 - var_649#700 >= 0
 c1520: pick_ball8_roomb_left#92 - var_650#701 >= 0
 c1521: pick_ball8_roomb_right#93 - var_651#702 >= 0
 c1522: pick_ball9_rooma_left#94 - var_652#703 >= 0
 c1523: pick_ball9_rooma_right#95 - var_653#704 >= 0
 c1524: pick_ball9_roomb_left#96 - var_654#705 >= 0
 c1525: pick_ball9_roomb_right#97 - var_655#706 >= 0
 c1526: - _(YF_ge_40)#347 + _(YF_ge_41)#348 <= 0
 c1527: - _(YF_ge_39)#346 + _(YF_ge_40)#347 <= 0
 c1528: - _(YF_ge_38)#345 + _(YF_ge_39)#346 <= 0
 c1529: - _(YF_ge_37)#344 + _(YF_ge_38)#345 <= 0
 c1530: - _(YF_ge_36)#343 + _(YF_ge_37)#344 <= 0
 c1531: - _(YF_ge_35)#342 + _(YF_ge_36)#343 <= 0
 c1532: - _(YF_ge_34)#341 + _(YF_ge_35)#342 <= 0
 c1533: - _(YF_ge_33)#340 + _(YF_ge_34)#341 <= 0
 c1534: - _(YF_ge_32)#339 + _(YF_ge_33)#340 <= 0
 c1535: - _(YF_ge_31)#338 + _(YF_ge_32)#339 <= 0
 c1536: - _(YF_ge_30)#337 + _(YF_ge_31)#338 <= 0
 c1537: - _(YF_ge_29)#336 + _(YF_ge_30)#337 <= 0
 c1538: - _(YF_ge_28)#335 + _(YF_ge_29)#336 <= 0
 c1539: - _(YF_ge_27)#334 + _(YF_ge_28)#335 <= 0
 c1540: - _(YF_ge_26)#333 + _(YF_ge_27)#334 <= 0
 c1541: - _(YF_ge_25)#332 + _(YF_ge_26)#333 <= 0
 c1542: - _(YF_ge_24)#331 + _(YF_ge_25)#332 <= 0
 c1543: - _(YF_ge_23)#330 + _(YF_ge_24)#331 <= 0
 c1544: - _(YF_ge_22)#329 + _(YF_ge_23)#330 <= 0
 c1545: - _(YF_ge_21)#328 + _(YF_ge_22)#329 <= 0
 c1546: - _(YF_ge_20)#327 + _(YF_ge_21)#328 <= 0
 c1547: - _(YF_ge_19)#326 + _(YF_ge_20)#327 <= 0
 c1548: - _(YF_ge_18)#325 + _(YF_ge_19)#326 <= 0
 c1549: - _(YF_ge_17)#324 + _(YF_ge_18)#325 <= 0
 c1550: - _(YF_ge_16)#323 + _(YF_ge_17)#324 <= 0
 c1551: - _(YF_ge_15)#322 + _(YF_ge_16)#323 <= 0
 c1552: - _(YF_ge_14)#321 + _(YF_ge_15)#322 <= 0
 c1553: - _(YF_ge_13)#320 + _(YF_ge_14)#321 <= 0
 c1554: - _(YF_ge_12)#319 + _(YF_ge_13)#320 <= 0
 c1555: - _(YF_ge_11)#318 + _(YF_ge_12)#319 <= 0
 c1556: - _(YF_ge_10)#317 + _(YF_ge_11)#318 <= 0
 c1557: - _(YF_ge_9)#316 + _(YF_ge_10)#317 <= 0
 c1558: - _(YF_ge_8)#315 + _(YF_ge_9)#316 <= 0
 c1559: - _(YF_ge_7)#314 + _(YF_ge_8)#315 <= 0
 c1560: - _(YF_ge_6)#313 + _(YF_ge_7)#314 <= 0
 c1561: - _(YF_ge_5)#312 + _(YF_ge_6)#313 <= 0
 c1562: - _(YF_ge_4)#311 + _(YF_ge_5)#312 <= 0
 c1563: - _(YF_ge_3)#310 + _(YF_ge_4)#311 <= 0
 c1564: - _(YF_ge_2)#308 + _(YF_ge_3)#310 <= 0
 c1565: YF#99 - 10000000000 _(YF_ge_41)#348 <= 40
 c1566: YF#99 - 10000000000 _(YF_ge_40)#347 <= 39
 c1567: YF#99 - 10000000000 _(YF_ge_39)#346 <= 38
 c1568: YF#99 - 10000000000 _(YF_ge_38)#345 <= 37
 c1569: YF#99 - 10000000000 _(YF_ge_37)#344 <= 36
 c1570: YF#99 - 10000000000 _(YF_ge_36)#343 <= 35
 c1571: YF#99 - 10000000000 _(YF_ge_35)#342 <= 34
 c1572: YF#99 - 10000000000 _(YF_ge_34)#341 <= 33
 c1573: YF#99 - 10000000000 _(YF_ge_33)#340 <= 32
 c1574: YF#99 - 10000000000 _(YF_ge_32)#339 <= 31
 c1575: YF#99 - 10000000000 _(YF_ge_31)#338 <= 30
 c1576: YF#99 - 10000000000 _(YF_ge_30)#337 <= 29
 c1577: YF#99 - 10000000000 _(YF_ge_29)#336 <= 28
 c1578: YF#99 - 10000000000 _(YF_ge_28)#335 <= 27
 c1579: YF#99 - 10000000000 _(YF_ge_27)#334 <= 26
 c1580: YF#99 - 10000000000 _(YF_ge_26)#333 <= 25
 c1581: YF#99 - 10000000000 _(YF_ge_25)#332 <= 24
 c1582: YF#99 - 10000000000 _(YF_ge_24)#331 <= 23
 c1583: YF#99 - 10000000000 _(YF_ge_23)#330 <= 22
 c1584: YF#99 - 10000000000 _(YF_ge_22)#329 <= 21
 c1585: YF#99 - 10000000000 _(YF_ge_21)#328 <= 20
 c1586: YF#99 - 10000000000 _(YF_ge_20)#327 <= 19
 c1587: YF#99 - 10000000000 _(YF_ge_19)#326 <= 18
 c1588: YF#99 - 10000000000 _(YF_ge_18)#325 <= 17
 c1589: YF#99 - 10000000000 _(YF_ge_17)#324 <= 16
 c1590: YF#99 - 10000000000 _(YF_ge_16)#323 <= 15
 c1591: YF#99 - 10000000000 _(YF_ge_15)#322 <= 14
 c1592: YF#99 - 10000000000 _(YF_ge_14)#321 <= 13
 c1593: YF#99 - 10000000000 _(YF_ge_13)#320 <= 12
 c1594: YF#99 - 10000000000 _(YF_ge_12)#319 <= 11
 c1595: YF#99 - 10000000000 _(YF_ge_11)#318 <= 10
 c1596: YF#99 - 10000000000 _(YF_ge_10)#317 <= 9
 c1597: YF#99 - 10000000000 _(YF_ge_9)#316 <= 8
 c1598: YF#99 - 10000000000 _(YF_ge_8)#315 <= 7
 c1599: YF#99 - 10000000000 _(YF_ge_7)#314 <= 6
 c1600: YF#99 - 10000000000 _(YF_ge_6)#313 <= 5
 c1601: YF#99 - 10000000000 _(YF_ge_5)#312 <= 4
 c1602: YF#99 - 10000000000 _(YF_ge_4)#311 <= 3
 c1603: YF#99 - 10000000000 _(YF_ge_3)#310 <= 2
 c1604: - _(YF_ge_42)#349 + _(YF_ge_43)#350 <= 0
 c1605: - _(YF_ge_41)#348 + _(YF_ge_42)#349 <= 0
 c1606: YF#99 - 10000000000 _(YF_ge_43)#350 <= 42
 c1607: YF#99 - 10000000000 _(YF_ge_42)#349 <= 41
 c1608: - _(move_rooma_roomb_ge_2)#202 + _(move_rooma_roomb_ge_3)#204 <= 0
 c1609: move_rooma_roomb#48 - 10000000000 _(move_rooma_roomb_ge_3)#204 <= 2
 c1610: - _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_left_ge_3)#123 <= 0
 c1611: drop_ball11_roomb_left#10
        - 10000000000 _(drop_ball11_roomb_left_ge_3)#123 <= 2
 c1612: - _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball12_roomb_left_ge_3)#133 <= 0
 c1613: drop_ball12_roomb_left#14
        - 10000000000 _(drop_ball12_roomb_left_ge_3)#133 <= 2
 c1614: - _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball11_roomb_right_ge_3)#233 <= 0
 c1615: pick_ball11_roomb_right#61
        - 10000000000 _(pick_ball11_roomb_right_ge_3)#233 <= 2
 c1616: - _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball7_roomb_left_ge_3)#183
        <= 0
 c1617: drop_ball7_roomb_left#38
        - 10000000000 _(drop_ball7_roomb_left_ge_3)#183 <= 2
 c1618: - _(drop_ball4_roomb_right_ge_2)#158
        + _(drop_ball4_roomb_right_ge_3)#160 <= 0
 c1619: drop_ball4_roomb_right#27
        - 10000000000 _(drop_ball4_roomb_right_ge_3)#160 <= 2
 c1620: - _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_left_ge_3)#118 <= 0
 c1621: drop_ball11_rooma_left#8
        - 10000000000 _(drop_ball11_rooma_left_ge_3)#118 <= 2
 c1622: - _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball11_roomb_right_ge_3)#126 <= 0
 c1623: drop_ball11_roomb_right#11
        - 10000000000 _(drop_ball11_roomb_right_ge_3)#126 <= 2
 c1624: - _(pick_ball1_roomb_left_ge_2)#211 + _(pick_ball1_roomb_left_ge_3)#213
        <= 0
 c1625: pick_ball1_roomb_left#52
        - 10000000000 _(pick_ball1_roomb_left_ge_3)#213 <= 2
 c1626: - _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball1_roomb_right_ge_3)#216 <= 0
 c1627: pick_ball1_roomb_right#53
        - 10000000000 _(pick_ball1_roomb_right_ge_3)#216 <= 2
 c1628: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1629: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1630: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_3)#118
        + _(drop_ball11_rooma_right_ge_2)#119
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1631: _(drop_ball5_roomb_left_ge_1)#166 + _(drop_ball6_roomb_right_ge_1)#176
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1632: _(drop_ball5_roomb_left_ge_1)#166 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1633: _(drop_ball5_roomb_left_ge_1)#166 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1634: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1635: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197
        + _(drop_ball9_roomb_left_ge_1)#199 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_2)#298 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_2)#304 + _(YF_ge_43)#350 >= 1
 c1636: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(YF_ge_39)#346 >= 1
 c1637: _(drop_ball1_roomb_right_ge_2)#106 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197
        + _(drop_ball9_roomb_left_ge_1)#199 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_2)#298 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1638: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_2)#108
        + _(drop_ball10_roomb_right_ge_1)#115
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1639: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1640: _(drop_ball7_roomb_left_ge_1)#182 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1641: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball4_roomb_left_ge_1)#157
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_1)#259 + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1642: _(drop_ball4_roomb_right_ge_1)#159 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1643: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_roomb_right_ge_1)#115
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_1)#141
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_2)#219
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_2)#242 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1644: _(drop_ball2_roomb_left_ge_1)#141 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1645: _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1646: _(drop_ball2_roomb_left_ge_1)#141 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1647: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_3)#126
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball6_roomb_left_ge_1)#174
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_3)#233
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1648: _(move_rooma_roomb_ge_3)#204 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1649: _(move_roomb_rooma_ge_2)#205 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1650: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1651: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1652: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1653: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_right_ge_2)#184
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1654: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1655: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball4_roomb_left_ge_2)#156
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258 + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1656: _(drop_ball1_rooma_left_ge_2)#100 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball4_roomb_left_ge_2)#156
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1657: _(drop_ball1_rooma_left_ge_2)#100 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball4_roomb_left_ge_2)#156
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1658: _(drop_ball1_rooma_left_ge_2)#100 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1659: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball5_rooma_left_ge_2)#161
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_1)#259 + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_2)#272
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1660: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball6_roomb_left_ge_1)#174
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1661: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1662: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1663: _(drop_ball11_roomb_left_ge_1)#122 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1664: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_roomb_right_ge_2)#184
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_1)#287 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1665: _(drop_ball10_roomb_right_ge_1)#115 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1666: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_3)#213
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1667: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_right_ge_1)#197
        + _(drop_ball9_roomb_left_ge_2)#198 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_2)#298
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1668: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_2)#152
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_roomb_right_ge_2)#192
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_2)#292
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_2)#296
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1669: _(drop_ball7_roomb_right_ge_1)#185 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1670: _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1671: _(drop_ball7_roomb_right_ge_1)#185 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1672: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_roomb_left_ge_2)#112
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_1)#141
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_rooma_right_ge_2)#219
        + _(pick_ball10_roomb_left_ge_2)#221
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_2)#242 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1673: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_2)#190 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_roomb_rooma_ge_2)#205 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_2)#290
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1674: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_3)#204
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1675: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_2)#256
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1676: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_2)#140
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1677: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1678: _(drop_ball5_roomb_left_ge_1)#166 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball9_rooma_left_ge_1)#299
        + _(YF_ge_37)#344 >= 1
 c1679: _(drop_ball11_roomb_left_ge_1)#122 + _(drop_ball7_roomb_right_ge_1)#185
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1680: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_2)#140
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_2)#242
        + _(pick_ball2_rooma_right_ge_2)#244
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1681: _(drop_ball1_roomb_left_ge_1)#105 + _(drop_ball7_roomb_left_ge_1)#182
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball9_rooma_left_ge_1)#299
        + _(YF_ge_37)#344 >= 1
 c1682: _(drop_ball6_roomb_right_ge_1)#176 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1683: _(drop_ball7_roomb_left_ge_1)#182 + _(drop_ball8_roomb_left_ge_1)#191
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1684: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1685: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball9_rooma_left_ge_1)#299
        + _(YF_ge_37)#344 >= 1
 c1686: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_2)#179
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1687: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_2)#190 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_2)#290
        + _(pick_ball8_rooma_right_ge_2)#292
        + _(pick_ball8_roomb_left_ge_2)#294
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1688: _(drop_ball11_roomb_left_ge_1)#122 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1689: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1690: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_2)#140
        + _(drop_ball2_roomb_right_ge_2)#142
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1691: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1692: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_roomb_right_ge_2)#167
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_2)#272
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_2)#280
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1693: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1694: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_right_ge_1)#155
        + _(drop_ball4_roomb_left_ge_2)#156
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258 + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1695: _(YF_ge_35)#342 >= 1
 c1696: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_roomb_right_ge_2)#167
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_2)#272
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1697: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_3)#204
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1698: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1699: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_roomb_right_ge_1)#115
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_1)#141
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_2)#219
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_2)#242 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1700: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1701: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_1)#191
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_2)#290 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1702: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_2)#272
        + _(pick_ball6_rooma_left_ge_2)#274 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1703: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_1)#191 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1704: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_3)#183 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1705: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1706: _(drop_ball7_roomb_left_ge_1)#182 + _(drop_ball8_roomb_left_ge_1)#191
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1707: _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball9_rooma_left_ge_1)#299
        + _(YF_ge_37)#344 >= 1
 c1708: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_2)#186
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_3)#233
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1709: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1710: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_1)#191
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_2)#290 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1711: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1712: _(drop_ball6_roomb_left_ge_1)#174 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1713: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1714: _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_3)#213
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1715: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_roomb_left_ge_2)#156
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1716: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_2)#140
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_2)#242
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1717: _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1718: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_1)#107
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1719: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1720: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1721: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1722: _(drop_ball9_roomb_right_ge_1)#201 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(YF_ge_37)#344 >= 1
 c1723: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1724: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_1)#135
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1725: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1726: _(drop_ball1_roomb_left_ge_2)#104 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1727: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1728: _(drop_ball10_roomb_right_ge_1)#115 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1729: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_roomb_left_ge_2)#156 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_roomb_right_ge_1)#168
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1730: _(drop_ball1_roomb_left_ge_1)#105 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1731: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_rooma_right_ge_2)#129
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1732: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_roomb_left_ge_2)#156 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1733: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1734: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1735: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1736: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1737: _(drop_ball5_roomb_left_ge_1)#166 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1738: _(drop_ball6_roomb_left_ge_1)#174 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1739: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1740: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1741: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_left_ge_1)#187 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_roomb_rooma_ge_2)#205 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1742: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_3)#204
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1743: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1744: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_2)#127
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_roomb_left_ge_2)#156 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1745: _(move_rooma_roomb_ge_3)#204 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1746: _(drop_ball4_roomb_right_ge_1)#159 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1747: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195
        + _(drop_ball9_roomb_right_ge_1)#201 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_2)#294
        + _(pick_ball8_roomb_right_ge_2)#296
        + _(pick_ball9_rooma_right_ge_2)#300
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1748: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1749: _(drop_ball5_roomb_left_ge_1)#166 + _(drop_ball6_roomb_left_ge_1)#174
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1750: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1751: _(move_roomb_rooma_ge_2)#205 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1752: _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball7_roomb_right_ge_1)#185
        + _(drop_ball8_roomb_right_ge_1)#193 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1753: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1754: _(move_roomb_rooma_ge_1)#206 + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1755: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1756: _(move_roomb_rooma_ge_2)#205 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1757: _(drop_ball1_roomb_left_ge_1)#105 + _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball7_roomb_right_ge_1)#185 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1758: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_2)#205
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1759: _(drop_ball1_roomb_right_ge_2)#106 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_roomb_left_ge_2)#156 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1760: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_1)#107
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_1)#191
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_2)#290 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1761: _(drop_ball1_roomb_right_ge_2)#106 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_2)#262
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1762: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_roomb_right_ge_1)#115
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_2)#219
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1763: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_3)#216
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1764: _(drop_ball7_roomb_right_ge_1)#185 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293 + _(YF_ge_37)#344 >= 1
 c1765: _(drop_ball10_roomb_left_ge_1)#113 + _(drop_ball11_roomb_left_ge_1)#122
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1766: _(drop_ball10_roomb_right_ge_1)#115 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1767: _(drop_ball10_roomb_right_ge_1)#115
        + _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball7_roomb_right_ge_1)#185 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1768: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1769: _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball7_roomb_right_ge_1)#185 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1770: _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball6_roomb_right_ge_1)#176
        + _(drop_ball7_roomb_right_ge_1)#185 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1771: _(drop_ball2_roomb_right_ge_1)#143 + _(drop_ball5_roomb_left_ge_1)#166
        + _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1772: _(drop_ball1_roomb_left_ge_2)#104 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_2)#221
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1773: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1774: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1775: _(move_roomb_rooma_ge_2)#205 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1776: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_2)#186
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1777: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1778: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1779: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_2)#186
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_2)#190 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball8_rooma_right_ge_2)#292
        + _(pick_ball8_roomb_left_ge_2)#294
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1780: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1781: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_3)#133
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1782: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_2)#276
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1783: _(drop_ball1_rooma_right_ge_2)#102 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_2)#288
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1784: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_1)#159
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_1)#166
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1785: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_3)#123
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1786: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181 + _(drop_ball8_rooma_left_ge_2)#186
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball8_roomb_left_ge_2)#190 + _(drop_ball9_rooma_left_ge_1)#195
        + _(move_rooma_roomb_ge_2)#202 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_2)#292
        + _(pick_ball8_roomb_left_ge_2)#294
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1787: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1788: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_roomb_right_ge_1)#185
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1789: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_roomb_right_ge_1)#168
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1790: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1791: _(drop_ball7_roomb_right_ge_1)#185 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1792: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1793: _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_roomb_right_ge_1)#185
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1794: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_2)#221
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_2)#256
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1795: _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170 + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_roomb_right_ge_1)#185
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1796: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball12_roomb_left_ge_2)#131
        + _(drop_ball12_roomb_right_ge_2)#134
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_2)#181
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_3)#204
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_2)#234
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1797: _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball11_rooma_right_ge_2)#119
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_2)#158
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1798: _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball4_roomb_right_ge_3)#160
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1799: _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_roomb_right_ge_3)#160
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_left_ge_2)#258
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1800: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_1)#122
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_2)#256
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_2)#264
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_2)#274 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1801: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball4_rooma_left_ge_2)#152
        + _(drop_ball4_roomb_right_ge_2)#158
        + _(drop_ball5_rooma_left_ge_1)#162 + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_2)#248
        + _(pick_ball3_rooma_right_ge_1)#253
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_2)#260
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_1)#285
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1802: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_left_ge_2)#217
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1803: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1804: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_roomb_right_ge_1)#107
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137 + _(drop_ball3_rooma_left_ge_1)#145
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1805: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1806: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball11_roomb_right_ge_1)#125
        + _(drop_ball12_rooma_right_ge_1)#130
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_roomb_right_ge_1)#185
        + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball9_rooma_right_ge_1)#197
        + _(drop_ball9_roomb_left_ge_2)#198 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_1)#208 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_left_ge_1)#235
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_right_ge_2)#284
        + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_1)#293
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_2)#298
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1807: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_3)#213
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1808: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball1_roomb_right_ge_2)#106
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_2)#116
        + _(drop_ball11_roomb_right_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_2)#211
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1809: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_2)#221
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1810: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball5_roomb_right_ge_2)#167
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_2)#268
        + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_2)#272
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1811: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1812: _(drop_ball4_roomb_right_ge_1)#159 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_1)#208
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_left_ge_1)#299 + _(YF_ge_37)#344 >= 1
 c1813: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1814: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1815: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1816: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1817: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_1)#105
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182 + _(drop_ball8_rooma_left_ge_1)#187
        + _(drop_ball8_roomb_right_ge_2)#192
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207 + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_2)#236
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_rooma_left_ge_1)#243 + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_right_ge_2)#292
        + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_2)#296
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1818: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1819: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_left_ge_1)#178
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball1_rooma_right_ge_2)#209
        + _(pick_ball1_roomb_left_ge_3)#213
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_rooma_right_ge_2)#227
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1820: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_2)#171
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_2)#221
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_1)#226
        + _(pick_ball11_roomb_left_ge_2)#229
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_2)#270
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_2)#286
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_2)#302
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_43)#350 >= 1
 c1821: _(move_roomb_rooma_ge_1)#206 + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball6_rooma_left_ge_1)#275
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1822: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_rooma_left_ge_1)#218
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1823: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball2_rooma_right_ge_1)#139
        + _(drop_ball2_roomb_left_ge_2)#140
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153 + _(drop_ball5_rooma_left_ge_1)#162
        + _(drop_ball6_rooma_left_ge_1)#170
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball7_roomb_left_ge_1)#182
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_rooma_roomb_ge_3)#204
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball1_roomb_right_ge_2)#214
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_2)#238
        + _(pick_ball12_roomb_right_ge_2)#240
        + _(pick_ball2_roomb_left_ge_2)#246
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_right_ge_1)#277
        + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_2)#282 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1824: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball10_rooma_right_ge_1)#111
        + _(drop_ball10_roomb_right_ge_2)#114
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball1_roomb_right_ge_1)#215
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_2)#223
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball11_roomb_right_ge_2)#231
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_1)#267 + _(pick_ball5_roomb_left_ge_1)#271
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_41)#348 >= 1
 c1825: _(drop_ball1_rooma_left_ge_1)#101 + _(drop_ball1_rooma_right_ge_1)#103
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_right_ge_1)#120
        + _(drop_ball11_roomb_left_ge_2)#121
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_right_ge_1)#197 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_roomb_left_ge_1)#212
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_left_ge_2)#225
        + _(pick_ball11_roomb_right_ge_1)#232
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_left_ge_1)#299 + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1826: _(drop_ball11_roomb_left_ge_1)#122 + _(move_rooma_roomb_ge_2)#202
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1827: _(drop_ball10_roomb_left_ge_1)#113 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1828: _(drop_ball1_rooma_right_ge_1)#103 + _(drop_ball1_roomb_left_ge_2)#104
        + _(drop_ball10_rooma_left_ge_1)#109
        + _(drop_ball11_rooma_left_ge_1)#117
        + _(drop_ball12_rooma_left_ge_1)#128
        + _(drop_ball2_rooma_left_ge_1)#137
        + _(drop_ball3_rooma_right_ge_1)#147
        + _(drop_ball4_rooma_left_ge_1)#153
        + _(drop_ball5_rooma_right_ge_1)#164
        + _(drop_ball5_roomb_left_ge_2)#165
        + _(drop_ball6_rooma_right_ge_1)#172
        + _(drop_ball7_rooma_right_ge_1)#180
        + _(drop_ball8_rooma_right_ge_1)#189
        + _(drop_ball9_rooma_left_ge_1)#195 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball1_rooma_left_ge_2)#207
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball10_roomb_left_ge_1)#222
        + _(pick_ball10_roomb_right_ge_1)#224
        + _(pick_ball11_rooma_right_ge_1)#228
        + _(pick_ball11_roomb_left_ge_1)#230
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball12_roomb_left_ge_1)#239
        + _(pick_ball12_roomb_right_ge_1)#241
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball2_roomb_left_ge_1)#247
        + _(pick_ball2_roomb_right_ge_1)#249
        + _(pick_ball3_rooma_left_ge_1)#251 + _(pick_ball3_roomb_left_ge_1)#255
        + _(pick_ball3_roomb_right_ge_1)#257
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball4_roomb_left_ge_1)#263
        + _(pick_ball4_roomb_right_ge_1)#265
        + _(pick_ball5_rooma_left_ge_2)#266
        + _(pick_ball5_roomb_right_ge_1)#273
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball6_roomb_left_ge_1)#279
        + _(pick_ball6_roomb_right_ge_1)#281
        + _(pick_ball7_rooma_left_ge_1)#283 + _(pick_ball7_roomb_left_ge_1)#287
        + _(pick_ball7_roomb_right_ge_1)#289
        + _(pick_ball8_rooma_left_ge_1)#291 + _(pick_ball8_roomb_left_ge_1)#295
        + _(pick_ball8_roomb_right_ge_1)#297
        + _(pick_ball9_rooma_right_ge_1)#301
        + _(pick_ball9_roomb_left_ge_1)#303
        + _(pick_ball9_roomb_right_ge_1)#305 + _(YF_ge_39)#346 >= 1
 c1829: _(move_roomb_rooma_ge_1)#206 + _(pick_ball1_rooma_right_ge_1)#210
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1830: _(move_roomb_rooma_ge_1)#206 + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball5_rooma_right_ge_1)#269
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
 c1831: _(drop_ball5_roomb_left_ge_1)#166 + _(move_roomb_rooma_ge_1)#206
        + _(pick_ball10_rooma_right_ge_1)#220
        + _(pick_ball12_rooma_right_ge_1)#237
        + _(pick_ball2_rooma_right_ge_1)#245
        + _(pick_ball3_rooma_left_ge_1)#251
        + _(pick_ball4_rooma_right_ge_1)#261
        + _(pick_ball6_rooma_left_ge_1)#275 + _(pick_ball7_rooma_left_ge_1)#283
        + _(pick_ball8_rooma_left_ge_1)#291
        + _(pick_ball9_rooma_right_ge_1)#301 + _(YF_ge_37)#344 >= 1
Bounds
      drop_ball1_rooma_left#0 >= 0
      drop_ball1_rooma_right#1 >= 0
      drop_ball1_roomb_left#2 >= 0
      drop_ball1_roomb_right#3 >= 0
      drop_ball10_rooma_left#4 >= 0
      drop_ball10_rooma_right#5 >= 0
      drop_ball10_roomb_left#6 >= 0
      drop_ball10_roomb_right#7 >= 0
      drop_ball11_rooma_left#8 >= 0
      drop_ball11_rooma_right#9 >= 0
      drop_ball11_roomb_left#10 >= 0
      drop_ball11_roomb_right#11 >= 0
      drop_ball12_rooma_left#12 >= 0
      drop_ball12_rooma_right#13 >= 0
      drop_ball12_roomb_left#14 >= 0
      drop_ball12_roomb_right#15 >= 0
      drop_ball2_rooma_left#16 >= 0
      drop_ball2_rooma_right#17 >= 0
      drop_ball2_roomb_left#18 >= 0
      drop_ball2_roomb_right#19 >= 0
      drop_ball3_rooma_left#20 >= 0
      drop_ball3_rooma_right#21 >= 0
      drop_ball3_roomb_left#22 >= 0
      drop_ball3_roomb_right#23 >= 0
      drop_ball4_rooma_left#24 >= 0
      drop_ball4_rooma_right#25 >= 0
      drop_ball4_roomb_left#26 >= 0
      drop_ball4_roomb_right#27 >= 0
      drop_ball5_rooma_left#28 >= 0
      drop_ball5_rooma_right#29 >= 0
      drop_ball5_roomb_left#30 >= 0
      drop_ball5_roomb_right#31 >= 0
      drop_ball6_rooma_left#32 >= 0
      drop_ball6_rooma_right#33 >= 0
      drop_ball6_roomb_left#34 >= 0
      drop_ball6_roomb_right#35 >= 0
      drop_ball7_rooma_left#36 >= 0
      drop_ball7_rooma_right#37 >= 0
      drop_ball7_roomb_left#38 >= 0
      drop_ball7_roomb_right#39 >= 0
      drop_ball8_rooma_left#40 >= 0
      drop_ball8_rooma_right#41 >= 0
      drop_ball8_roomb_left#42 >= 0
      drop_ball8_roomb_right#43 >= 0
      drop_ball9_rooma_left#44 >= 0
      drop_ball9_rooma_right#45 >= 0
      drop_ball9_roomb_left#46 >= 0
      drop_ball9_roomb_right#47 >= 0
      move_rooma_roomb#48 >= 0
      move_roomb_rooma#49 >= 0
      pick_ball1_rooma_left#50 >= 0
      pick_ball1_rooma_right#51 >= 0
      pick_ball1_roomb_left#52 >= 0
      pick_ball1_roomb_right#53 >= 0
      pick_ball10_rooma_left#54 >= 0
      pick_ball10_rooma_right#55 >= 0
      pick_ball10_roomb_left#56 >= 0
      pick_ball10_roomb_right#57 >= 0
      pick_ball11_rooma_left#58 >= 0
      pick_ball11_rooma_right#59 >= 0
      pick_ball11_roomb_left#60 >= 0
      pick_ball11_roomb_right#61 >= 0
      pick_ball12_rooma_left#62 >= 0
      pick_ball12_rooma_right#63 >= 0
      pick_ball12_roomb_left#64 >= 0
      pick_ball12_roomb_right#65 >= 0
      pick_ball2_rooma_left#66 >= 0
      pick_ball2_rooma_right#67 >= 0
      pick_ball2_roomb_left#68 >= 0
      pick_ball2_roomb_right#69 >= 0
      pick_ball3_rooma_left#70 >= 0
      pick_ball3_rooma_right#71 >= 0
      pick_ball3_roomb_left#72 >= 0
      pick_ball3_roomb_right#73 >= 0
      pick_ball4_rooma_left#74 >= 0
      pick_ball4_rooma_right#75 >= 0
      pick_ball4_roomb_left#76 >= 0
      pick_ball4_roomb_right#77 >= 0
      pick_ball5_rooma_left#78 >= 0
      pick_ball5_rooma_right#79 >= 0
      pick_ball5_roomb_left#80 >= 0
      pick_ball5_roomb_right#81 >= 0
      pick_ball6_rooma_left#82 >= 0
      pick_ball6_rooma_right#83 >= 0
      pick_ball6_roomb_left#84 >= 0
      pick_ball6_roomb_right#85 >= 0
      pick_ball7_rooma_left#86 >= 0
      pick_ball7_rooma_right#87 >= 0
      pick_ball7_roomb_left#88 >= 0
      pick_ball7_roomb_right#89 >= 0
      pick_ball8_rooma_left#90 >= 0
      pick_ball8_rooma_right#91 >= 0
      pick_ball8_roomb_left#92 >= 0
      pick_ball8_roomb_right#93 >= 0
      pick_ball9_rooma_left#94 >= 0
      pick_ball9_rooma_right#95 >= 0
      pick_ball9_roomb_left#96 >= 0
      pick_ball9_roomb_right#97 >= 0
      YT#98 >= 0
      YF#99 >= 0
 0 <= _(drop_ball1_rooma_left_ge_2)#100 <= 1
 0 <= _(drop_ball1_rooma_left_ge_1)#101 <= 1
 0 <= _(drop_ball1_rooma_right_ge_2)#102 <= 1
 0 <= _(drop_ball1_rooma_right_ge_1)#103 <= 1
 0 <= _(drop_ball1_roomb_left_ge_2)#104 <= 1
 0 <= _(drop_ball1_roomb_left_ge_1)#105 <= 1
 0 <= _(drop_ball1_roomb_right_ge_2)#106 <= 1
 0 <= _(drop_ball1_roomb_right_ge_1)#107 <= 1
 0 <= _(drop_ball10_rooma_left_ge_2)#108 <= 1
 0 <= _(drop_ball10_rooma_left_ge_1)#109 <= 1
 0 <= _(drop_ball10_rooma_right_ge_2)#110 <= 1
 0 <= _(drop_ball10_rooma_right_ge_1)#111 <= 1
 0 <= _(drop_ball10_roomb_left_ge_2)#112 <= 1
 0 <= _(drop_ball10_roomb_left_ge_1)#113 <= 1
 0 <= _(drop_ball10_roomb_right_ge_2)#114 <= 1
 0 <= _(drop_ball10_roomb_right_ge_1)#115 <= 1
 0 <= _(drop_ball11_rooma_left_ge_2)#116 <= 1
 0 <= _(drop_ball11_rooma_left_ge_1)#117 <= 1
 0 <= _(drop_ball11_rooma_left_ge_3)#118 <= 1
 0 <= _(drop_ball11_rooma_right_ge_2)#119 <= 1
 0 <= _(drop_ball11_rooma_right_ge_1)#120 <= 1
 0 <= _(drop_ball11_roomb_left_ge_2)#121 <= 1
 0 <= _(drop_ball11_roomb_left_ge_1)#122 <= 1
 0 <= _(drop_ball11_roomb_left_ge_3)#123 <= 1
 0 <= _(drop_ball11_roomb_right_ge_2)#124 <= 1
 0 <= _(drop_ball11_roomb_right_ge_1)#125 <= 1
 0 <= _(drop_ball11_roomb_right_ge_3)#126 <= 1
 0 <= _(drop_ball12_rooma_left_ge_2)#127 <= 1
 0 <= _(drop_ball12_rooma_left_ge_1)#128 <= 1
 0 <= _(drop_ball12_rooma_right_ge_2)#129 <= 1
 0 <= _(drop_ball12_rooma_right_ge_1)#130 <= 1
 0 <= _(drop_ball12_roomb_left_ge_2)#131 <= 1
 0 <= _(drop_ball12_roomb_left_ge_1)#132 <= 1
 0 <= _(drop_ball12_roomb_left_ge_3)#133 <= 1
 0 <= _(drop_ball12_roomb_right_ge_2)#134 <= 1
 0 <= _(drop_ball12_roomb_right_ge_1)#135 <= 1
 0 <= _(drop_ball2_rooma_left_ge_2)#136 <= 1
 0 <= _(drop_ball2_rooma_left_ge_1)#137 <= 1
 0 <= _(drop_ball2_rooma_right_ge_2)#138 <= 1
 0 <= _(drop_ball2_rooma_right_ge_1)#139 <= 1
 0 <= _(drop_ball2_roomb_left_ge_2)#140 <= 1
 0 <= _(drop_ball2_roomb_left_ge_1)#141 <= 1
 0 <= _(drop_ball2_roomb_right_ge_2)#142 <= 1
 0 <= _(drop_ball2_roomb_right_ge_1)#143 <= 1
 0 <= _(drop_ball3_rooma_left_ge_2)#144 <= 1
 0 <= _(drop_ball3_rooma_left_ge_1)#145 <= 1
 0 <= _(drop_ball3_rooma_right_ge_2)#146 <= 1
 0 <= _(drop_ball3_rooma_right_ge_1)#147 <= 1
 0 <= _(drop_ball3_roomb_left_ge_2)#148 <= 1
 0 <= _(drop_ball3_roomb_left_ge_1)#149 <= 1
 0 <= _(drop_ball3_roomb_right_ge_2)#150 <= 1
 0 <= _(drop_ball3_roomb_right_ge_1)#151 <= 1
 0 <= _(drop_ball4_rooma_left_ge_2)#152 <= 1
 0 <= _(drop_ball4_rooma_left_ge_1)#153 <= 1
 0 <= _(drop_ball4_rooma_right_ge_2)#154 <= 1
 0 <= _(drop_ball4_rooma_right_ge_1)#155 <= 1
 0 <= _(drop_ball4_roomb_left_ge_2)#156 <= 1
 0 <= _(drop_ball4_roomb_left_ge_1)#157 <= 1
 0 <= _(drop_ball4_roomb_right_ge_2)#158 <= 1
 0 <= _(drop_ball4_roomb_right_ge_1)#159 <= 1
 0 <= _(drop_ball4_roomb_right_ge_3)#160 <= 1
 0 <= _(drop_ball5_rooma_left_ge_2)#161 <= 1
 0 <= _(drop_ball5_rooma_left_ge_1)#162 <= 1
 0 <= _(drop_ball5_rooma_right_ge_2)#163 <= 1
 0 <= _(drop_ball5_rooma_right_ge_1)#164 <= 1
 0 <= _(drop_ball5_roomb_left_ge_2)#165 <= 1
 0 <= _(drop_ball5_roomb_left_ge_1)#166 <= 1
 0 <= _(drop_ball5_roomb_right_ge_2)#167 <= 1
 0 <= _(drop_ball5_roomb_right_ge_1)#168 <= 1
 0 <= _(drop_ball6_rooma_left_ge_2)#169 <= 1
 0 <= _(drop_ball6_rooma_left_ge_1)#170 <= 1
 0 <= _(drop_ball6_rooma_right_ge_2)#171 <= 1
 0 <= _(drop_ball6_rooma_right_ge_1)#172 <= 1
 0 <= _(drop_ball6_roomb_left_ge_2)#173 <= 1
 0 <= _(drop_ball6_roomb_left_ge_1)#174 <= 1
 0 <= _(drop_ball6_roomb_right_ge_2)#175 <= 1
 0 <= _(drop_ball6_roomb_right_ge_1)#176 <= 1
 0 <= _(drop_ball7_rooma_left_ge_2)#177 <= 1
 0 <= _(drop_ball7_rooma_left_ge_1)#178 <= 1
 0 <= _(drop_ball7_rooma_right_ge_2)#179 <= 1
 0 <= _(drop_ball7_rooma_right_ge_1)#180 <= 1
 0 <= _(drop_ball7_roomb_left_ge_2)#181 <= 1
 0 <= _(drop_ball7_roomb_left_ge_1)#182 <= 1
 0 <= _(drop_ball7_roomb_left_ge_3)#183 <= 1
 0 <= _(drop_ball7_roomb_right_ge_2)#184 <= 1
 0 <= _(drop_ball7_roomb_right_ge_1)#185 <= 1
 0 <= _(drop_ball8_rooma_left_ge_2)#186 <= 1
 0 <= _(drop_ball8_rooma_left_ge_1)#187 <= 1
 0 <= _(drop_ball8_rooma_right_ge_2)#188 <= 1
 0 <= _(drop_ball8_rooma_right_ge_1)#189 <= 1
 0 <= _(drop_ball8_roomb_left_ge_2)#190 <= 1
 0 <= _(drop_ball8_roomb_left_ge_1)#191 <= 1
 0 <= _(drop_ball8_roomb_right_ge_2)#192 <= 1
 0 <= _(drop_ball8_roomb_right_ge_1)#193 <= 1
 0 <= _(drop_ball9_rooma_left_ge_2)#194 <= 1
 0 <= _(drop_ball9_rooma_left_ge_1)#195 <= 1
 0 <= _(drop_ball9_rooma_right_ge_2)#196 <= 1
 0 <= _(drop_ball9_rooma_right_ge_1)#197 <= 1
 0 <= _(drop_ball9_roomb_left_ge_2)#198 <= 1
 0 <= _(drop_ball9_roomb_left_ge_1)#199 <= 1
 0 <= _(drop_ball9_roomb_right_ge_2)#200 <= 1
 0 <= _(drop_ball9_roomb_right_ge_1)#201 <= 1
 0 <= _(move_rooma_roomb_ge_2)#202 <= 1
 0 <= _(move_rooma_roomb_ge_1)#203 <= 1
 0 <= _(move_rooma_roomb_ge_3)#204 <= 1
 0 <= _(move_roomb_rooma_ge_2)#205 <= 1
 0 <= _(move_roomb_rooma_ge_1)#206 <= 1
 0 <= _(pick_ball1_rooma_left_ge_2)#207 <= 1
 0 <= _(pick_ball1_rooma_left_ge_1)#208 <= 1
 0 <= _(pick_ball1_rooma_right_ge_2)#209 <= 1
 0 <= _(pick_ball1_rooma_right_ge_1)#210 <= 1
 0 <= _(pick_ball1_roomb_left_ge_2)#211 <= 1
 0 <= _(pick_ball1_roomb_left_ge_1)#212 <= 1
 0 <= _(pick_ball1_roomb_left_ge_3)#213 <= 1
 0 <= _(pick_ball1_roomb_right_ge_2)#214 <= 1
 0 <= _(pick_ball1_roomb_right_ge_1)#215 <= 1
 0 <= _(pick_ball1_roomb_right_ge_3)#216 <= 1
 0 <= _(pick_ball10_rooma_left_ge_2)#217 <= 1
 0 <= _(pick_ball10_rooma_left_ge_1)#218 <= 1
 0 <= _(pick_ball10_rooma_right_ge_2)#219 <= 1
 0 <= _(pick_ball10_rooma_right_ge_1)#220 <= 1
 0 <= _(pick_ball10_roomb_left_ge_2)#221 <= 1
 0 <= _(pick_ball10_roomb_left_ge_1)#222 <= 1
 0 <= _(pick_ball10_roomb_right_ge_2)#223 <= 1
 0 <= _(pick_ball10_roomb_right_ge_1)#224 <= 1
 0 <= _(pick_ball11_rooma_left_ge_2)#225 <= 1
 0 <= _(pick_ball11_rooma_left_ge_1)#226 <= 1
 0 <= _(pick_ball11_rooma_right_ge_2)#227 <= 1
 0 <= _(pick_ball11_rooma_right_ge_1)#228 <= 1
 0 <= _(pick_ball11_roomb_left_ge_2)#229 <= 1
 0 <= _(pick_ball11_roomb_left_ge_1)#230 <= 1
 0 <= _(pick_ball11_roomb_right_ge_2)#231 <= 1
 0 <= _(pick_ball11_roomb_right_ge_1)#232 <= 1
 0 <= _(pick_ball11_roomb_right_ge_3)#233 <= 1
 0 <= _(pick_ball12_rooma_left_ge_2)#234 <= 1
 0 <= _(pick_ball12_rooma_left_ge_1)#235 <= 1
 0 <= _(pick_ball12_rooma_right_ge_2)#236 <= 1
 0 <= _(pick_ball12_rooma_right_ge_1)#237 <= 1
 0 <= _(pick_ball12_roomb_left_ge_2)#238 <= 1
 0 <= _(pick_ball12_roomb_left_ge_1)#239 <= 1
 0 <= _(pick_ball12_roomb_right_ge_2)#240 <= 1
 0 <= _(pick_ball12_roomb_right_ge_1)#241 <= 1
 0 <= _(pick_ball2_rooma_left_ge_2)#242 <= 1
 0 <= _(pick_ball2_rooma_left_ge_1)#243 <= 1
 0 <= _(pick_ball2_rooma_right_ge_2)#244 <= 1
 0 <= _(pick_ball2_rooma_right_ge_1)#245 <= 1
 0 <= _(pick_ball2_roomb_left_ge_2)#246 <= 1
 0 <= _(pick_ball2_roomb_left_ge_1)#247 <= 1
 0 <= _(pick_ball2_roomb_right_ge_2)#248 <= 1
 0 <= _(pick_ball2_roomb_right_ge_1)#249 <= 1
 0 <= _(pick_ball3_rooma_left_ge_2)#250 <= 1
 0 <= _(pick_ball3_rooma_left_ge_1)#251 <= 1
 0 <= _(pick_ball3_rooma_right_ge_2)#252 <= 1
 0 <= _(pick_ball3_rooma_right_ge_1)#253 <= 1
 0 <= _(pick_ball3_roomb_left_ge_2)#254 <= 1
 0 <= _(pick_ball3_roomb_left_ge_1)#255 <= 1
 0 <= _(pick_ball3_roomb_right_ge_2)#256 <= 1
 0 <= _(pick_ball3_roomb_right_ge_1)#257 <= 1
 0 <= _(pick_ball4_rooma_left_ge_2)#258 <= 1
 0 <= _(pick_ball4_rooma_left_ge_1)#259 <= 1
 0 <= _(pick_ball4_rooma_right_ge_2)#260 <= 1
 0 <= _(pick_ball4_rooma_right_ge_1)#261 <= 1
 0 <= _(pick_ball4_roomb_left_ge_2)#262 <= 1
 0 <= _(pick_ball4_roomb_left_ge_1)#263 <= 1
 0 <= _(pick_ball4_roomb_right_ge_2)#264 <= 1
 0 <= _(pick_ball4_roomb_right_ge_1)#265 <= 1
 0 <= _(pick_ball5_rooma_left_ge_2)#266 <= 1
 0 <= _(pick_ball5_rooma_left_ge_1)#267 <= 1
 0 <= _(pick_ball5_rooma_right_ge_2)#268 <= 1
 0 <= _(pick_ball5_rooma_right_ge_1)#269 <= 1
 0 <= _(pick_ball5_roomb_left_ge_2)#270 <= 1
 0 <= _(pick_ball5_roomb_left_ge_1)#271 <= 1
 0 <= _(pick_ball5_roomb_right_ge_2)#272 <= 1
 0 <= _(pick_ball5_roomb_right_ge_1)#273 <= 1
 0 <= _(pick_ball6_rooma_left_ge_2)#274 <= 1
 0 <= _(pick_ball6_rooma_left_ge_1)#275 <= 1
 0 <= _(pick_ball6_rooma_right_ge_2)#276 <= 1
 0 <= _(pick_ball6_rooma_right_ge_1)#277 <= 1
 0 <= _(pick_ball6_roomb_left_ge_2)#278 <= 1
 0 <= _(pick_ball6_roomb_left_ge_1)#279 <= 1
 0 <= _(pick_ball6_roomb_right_ge_2)#280 <= 1
 0 <= _(pick_ball6_roomb_right_ge_1)#281 <= 1
 0 <= _(pick_ball7_rooma_left_ge_2)#282 <= 1
 0 <= _(pick_ball7_rooma_left_ge_1)#283 <= 1
 0 <= _(pick_ball7_rooma_right_ge_2)#284 <= 1
 0 <= _(pick_ball7_rooma_right_ge_1)#285 <= 1
 0 <= _(pick_ball7_roomb_left_ge_2)#286 <= 1
 0 <= _(pick_ball7_roomb_left_ge_1)#287 <= 1
 0 <= _(pick_ball7_roomb_right_ge_2)#288 <= 1
 0 <= _(pick_ball7_roomb_right_ge_1)#289 <= 1
 0 <= _(pick_ball8_rooma_left_ge_2)#290 <= 1
 0 <= _(pick_ball8_rooma_left_ge_1)#291 <= 1
 0 <= _(pick_ball8_rooma_right_ge_2)#292 <= 1
 0 <= _(pick_ball8_rooma_right_ge_1)#293 <= 1
 0 <= _(pick_ball8_roomb_left_ge_2)#294 <= 1
 0 <= _(pick_ball8_roomb_left_ge_1)#295 <= 1
 0 <= _(pick_ball8_roomb_right_ge_2)#296 <= 1
 0 <= _(pick_ball8_roomb_right_ge_1)#297 <= 1
 0 <= _(pick_ball9_rooma_left_ge_2)#298 <= 1
 0 <= _(pick_ball9_rooma_left_ge_1)#299 <= 1
 0 <= _(pick_ball9_rooma_right_ge_2)#300 <= 1
 0 <= _(pick_ball9_rooma_right_ge_1)#301 <= 1
 0 <= _(pick_ball9_roomb_left_ge_2)#302 <= 1
 0 <= _(pick_ball9_roomb_left_ge_1)#303 <= 1
 0 <= _(pick_ball9_roomb_right_ge_2)#304 <= 1
 0 <= _(pick_ball9_roomb_right_ge_1)#305 <= 1
 0 <= _(YT_ge_2)#306 <= 1
 0 <= _(YT_ge_1)#307 <= 1
 0 <= _(YF_ge_2)#308 <= 1
 0 <= _(YF_ge_1)#309 <= 1
 0 <= _(YF_ge_3)#310 <= 1
 0 <= _(YF_ge_4)#311 <= 1
 0 <= _(YF_ge_5)#312 <= 1
 0 <= _(YF_ge_6)#313 <= 1
 0 <= _(YF_ge_7)#314 <= 1
 0 <= _(YF_ge_8)#315 <= 1
 0 <= _(YF_ge_9)#316 <= 1
 0 <= _(YF_ge_10)#317 <= 1
 0 <= _(YF_ge_11)#318 <= 1
 0 <= _(YF_ge_12)#319 <= 1
 0 <= _(YF_ge_13)#320 <= 1
 0 <= _(YF_ge_14)#321 <= 1
 0 <= _(YF_ge_15)#322 <= 1
 0 <= _(YF_ge_16)#323 <= 1
 0 <= _(YF_ge_17)#324 <= 1
 0 <= _(YF_ge_18)#325 <= 1
 0 <= _(YF_ge_19)#326 <= 1
 0 <= _(YF_ge_20)#327 <= 1
 0 <= _(YF_ge_21)#328 <= 1
 0 <= _(YF_ge_22)#329 <= 1
 0 <= _(YF_ge_23)#330 <= 1
 0 <= _(YF_ge_24)#331 <= 1
 0 <= _(YF_ge_25)#332 <= 1
 0 <= _(YF_ge_26)#333 <= 1
 0 <= _(YF_ge_27)#334 <= 1
 0 <= _(YF_ge_28)#335 <= 1
 0 <= _(YF_ge_29)#336 <= 1
 0 <= _(YF_ge_30)#337 <= 1
 0 <= _(YF_ge_31)#338 <= 1
 0 <= _(YF_ge_32)#339 <= 1
 0 <= _(YF_ge_33)#340 <= 1
 0 <= _(YF_ge_34)#341 <= 1
 0 <= _(YF_ge_35)#342 <= 1
 0 <= _(YF_ge_36)#343 <= 1
 0 <= _(YF_ge_37)#344 <= 1
 0 <= _(YF_ge_38)#345 <= 1
 0 <= _(YF_ge_39)#346 <= 1
 0 <= _(YF_ge_40)#347 <= 1
 0 <= _(YF_ge_41)#348 <= 1
 0 <= _(YF_ge_42)#349 <= 1
 0 <= _(YF_ge_43)#350 <= 1
 0 <= var_312#351 <= 1
 0 <= var_461#352 <= 1
 0 <= var_313#353 <= 1
 0 <= var_460#354 <= 1
 0 <= var_314#355 <= 1
 0 <= var_463#356 <= 1
 0 <= var_467#357 <= 1
 0 <= var_315#358 <= 1
 0 <= var_471#359 <= 1
 0 <= var_475#360 <= 1
 0 <= var_316#361 <= 1
 0 <= var_479#362 <= 1
 0 <= var_483#363 <= 1
 0 <= var_317#364 <= 1
 0 <= var_487#365 <= 1
 0 <= var_491#366 <= 1
 0 <= var_318#367 <= 1
 0 <= var_495#368 <= 1
 0 <= var_499#369 <= 1
 0 <= var_319#370 <= 1
 0 <= var_503#371 <= 1
 0 <= var_507#372 <= 1
 0 <= var_320#373 <= 1
 0 <= var_511#374 <= 1
 0 <= var_515#375 <= 1
 0 <= var_321#376 <= 1
 0 <= var_519#377 <= 1
 0 <= var_523#378 <= 1
 0 <= var_322#379 <= 1
 0 <= var_527#380 <= 1
 0 <= var_531#381 <= 1
 0 <= var_323#382 <= 1
 0 <= var_535#383 <= 1
 0 <= var_539#384 <= 1
 0 <= var_324#385 <= 1
 0 <= var_543#386 <= 1
 0 <= var_547#387 <= 1
 0 <= var_325#388 <= 1
 0 <= var_551#389 <= 1
 0 <= var_555#390 <= 1
 0 <= var_326#391 <= 1
 0 <= var_365#392 <= 1
 0 <= var_369#393 <= 1
 0 <= var_373#394 <= 1
 0 <= var_377#395 <= 1
 0 <= var_381#396 <= 1
 0 <= var_385#397 <= 1
 0 <= var_389#398 <= 1
 0 <= var_393#399 <= 1
 0 <= var_397#400 <= 1
 0 <= var_401#401 <= 1
 0 <= var_405#402 <= 1
 0 <= var_409#403 <= 1
 0 <= var_413#404 <= 1
 0 <= var_417#405 <= 1
 0 <= var_421#406 <= 1
 0 <= var_425#407 <= 1
 0 <= var_429#408 <= 1
 0 <= var_433#409 <= 1
 0 <= var_437#410 <= 1
 0 <= var_441#411 <= 1
 0 <= var_445#412 <= 1
 0 <= var_449#413 <= 1
 0 <= var_453#414 <= 1
 0 <= var_457#415 <= 1
 0 <= var_327#416 <= 1
 0 <= var_465#417 <= 1
 0 <= var_469#418 <= 1
 0 <= var_328#419 <= 1
 0 <= var_473#420 <= 1
 0 <= var_477#421 <= 1
 0 <= var_329#422 <= 1
 0 <= var_481#423 <= 1
 0 <= var_485#424 <= 1
 0 <= var_330#425 <= 1
 0 <= var_489#426 <= 1
 0 <= var_493#427 <= 1
 0 <= var_331#428 <= 1
 0 <= var_497#429 <= 1
 0 <= var_501#430 <= 1
 0 <= var_332#431 <= 1
 0 <= var_505#432 <= 1
 0 <= var_509#433 <= 1
 0 <= var_333#434 <= 1
 0 <= var_513#435 <= 1
 0 <= var_517#436 <= 1
 0 <= var_334#437 <= 1
 0 <= var_521#438 <= 1
 0 <= var_525#439 <= 1
 0 <= var_335#440 <= 1
 0 <= var_529#441 <= 1
 0 <= var_533#442 <= 1
 0 <= var_336#443 <= 1
 0 <= var_537#444 <= 1
 0 <= var_541#445 <= 1
 0 <= var_337#446 <= 1
 0 <= var_545#447 <= 1
 0 <= var_549#448 <= 1
 0 <= var_338#449 <= 1
 0 <= var_553#450 <= 1
 0 <= var_557#451 <= 1
 0 <= var_339#452 <= 1
 0 <= var_367#453 <= 1
 0 <= var_371#454 <= 1
 0 <= var_375#455 <= 1
 0 <= var_379#456 <= 1
 0 <= var_383#457 <= 1
 0 <= var_387#458 <= 1
 0 <= var_391#459 <= 1
 0 <= var_395#460 <= 1
 0 <= var_399#461 <= 1
 0 <= var_403#462 <= 1
 0 <= var_407#463 <= 1
 0 <= var_411#464 <= 1
 0 <= var_415#465 <= 1
 0 <= var_419#466 <= 1
 0 <= var_423#467 <= 1
 0 <= var_427#468 <= 1
 0 <= var_431#469 <= 1
 0 <= var_435#470 <= 1
 0 <= var_439#471 <= 1
 0 <= var_443#472 <= 1
 0 <= var_447#473 <= 1
 0 <= var_451#474 <= 1
 0 <= var_455#475 <= 1
 0 <= var_459#476 <= 1
 0 <= var_340#477 <= 1
 0 <= var_364#478 <= 1
 0 <= var_366#479 <= 1
      var_300#480 = 1
 0 <= var_368#481 <= 1
 0 <= var_370#482 <= 1
 0 <= var_341#483 <= 1
 0 <= var_462#484 <= 1
 0 <= var_464#485 <= 1
 0 <= var_466#486 <= 1
 0 <= var_468#487 <= 1
 0 <= var_342#488 <= 1
 0 <= var_372#489 <= 1
 0 <= var_374#490 <= 1
      var_301#491 = 1
 0 <= var_376#492 <= 1
 0 <= var_378#493 <= 1
 0 <= var_343#494 <= 1
 0 <= var_470#495 <= 1
 0 <= var_472#496 <= 1
 0 <= var_474#497 <= 1
 0 <= var_476#498 <= 1
 0 <= var_344#499 <= 1
 0 <= var_380#500 <= 1
 0 <= var_382#501 <= 1
      var_302#502 = 1
 0 <= var_384#503 <= 1
 0 <= var_386#504 <= 1
 0 <= var_345#505 <= 1
 0 <= var_478#506 <= 1
 0 <= var_480#507 <= 1
 0 <= var_482#508 <= 1
 0 <= var_484#509 <= 1
 0 <= var_346#510 <= 1
 0 <= var_388#511 <= 1
 0 <= var_390#512 <= 1
      var_303#513 = 1
 0 <= var_392#514 <= 1
 0 <= var_394#515 <= 1
 0 <= var_347#516 <= 1
 0 <= var_486#517 <= 1
 0 <= var_488#518 <= 1
 0 <= var_490#519 <= 1
 0 <= var_492#520 <= 1
 0 <= var_348#521 <= 1
 0 <= var_396#522 <= 1
 0 <= var_398#523 <= 1
      var_304#524 = 1
 0 <= var_400#525 <= 1
 0 <= var_402#526 <= 1
 0 <= var_349#527 <= 1
 0 <= var_494#528 <= 1
 0 <= var_496#529 <= 1
 0 <= var_498#530 <= 1
 0 <= var_500#531 <= 1
 0 <= var_350#532 <= 1
 0 <= var_404#533 <= 1
 0 <= var_406#534 <= 1
      var_305#535 = 1
 0 <= var_408#536 <= 1
 0 <= var_410#537 <= 1
 0 <= var_351#538 <= 1
 0 <= var_502#539 <= 1
 0 <= var_504#540 <= 1
 0 <= var_506#541 <= 1
 0 <= var_508#542 <= 1
 0 <= var_352#543 <= 1
 0 <= var_412#544 <= 1
 0 <= var_414#545 <= 1
      var_306#546 = 1
 0 <= var_416#547 <= 1
 0 <= var_418#548 <= 1
 0 <= var_353#549 <= 1
 0 <= var_510#550 <= 1
 0 <= var_512#551 <= 1
 0 <= var_514#552 <= 1
 0 <= var_516#553 <= 1
 0 <= var_354#554 <= 1
 0 <= var_420#555 <= 1
 0 <= var_422#556 <= 1
      var_307#557 = 1
 0 <= var_424#558 <= 1
 0 <= var_426#559 <= 1
 0 <= var_355#560 <= 1
 0 <= var_518#561 <= 1
 0 <= var_520#562 <= 1
 0 <= var_522#563 <= 1
 0 <= var_524#564 <= 1
 0 <= var_356#565 <= 1
 0 <= var_428#566 <= 1
 0 <= var_430#567 <= 1
      var_308#568 = 1
 0 <= var_432#569 <= 1
 0 <= var_434#570 <= 1
 0 <= var_357#571 <= 1
 0 <= var_526#572 <= 1
 0 <= var_528#573 <= 1
 0 <= var_530#574 <= 1
 0 <= var_532#575 <= 1
 0 <= var_358#576 <= 1
 0 <= var_436#577 <= 1
 0 <= var_438#578 <= 1
      var_309#579 = 1
 0 <= var_440#580 <= 1
 0 <= var_442#581 <= 1
 0 <= var_359#582 <= 1
 0 <= var_534#583 <= 1
 0 <= var_536#584 <= 1
 0 <= var_538#585 <= 1
 0 <= var_540#586 <= 1
 0 <= var_360#587 <= 1
 0 <= var_444#588 <= 1
 0 <= var_446#589 <= 1
      var_310#590 = 1
 0 <= var_448#591 <= 1
 0 <= var_450#592 <= 1
 0 <= var_361#593 <= 1
 0 <= var_542#594 <= 1
 0 <= var_544#595 <= 1
 0 <= var_546#596 <= 1
 0 <= var_548#597 <= 1
 0 <= var_362#598 <= 1
 0 <= var_452#599 <= 1
 0 <= var_454#600 <= 1
      var_311#601 = 1
 0 <= var_456#602 <= 1
 0 <= var_458#603 <= 1
 0 <= var_363#604 <= 1
 0 <= var_550#605 <= 1
 0 <= var_552#606 <= 1
 0 <= var_554#607 <= 1
 0 <= var_556#608 <= 1
 0 <= var_558#609 <= 1
 0 <= var_559#610 <= 1
 0 <= var_560#611 <= 1
 0 <= var_561#612 <= 1
 0 <= var_562#613 <= 1
 0 <= var_563#614 <= 1
 0 <= var_564#615 <= 1
 0 <= var_565#616 <= 1
 0 <= var_566#617 <= 1
 0 <= var_567#618 <= 1
 0 <= var_568#619 <= 1
 0 <= var_569#620 <= 1
 0 <= var_570#621 <= 1
 0 <= var_571#622 <= 1
 0 <= var_572#623 <= 1
 0 <= var_573#624 <= 1
 0 <= var_574#625 <= 1
 0 <= var_575#626 <= 1
 0 <= var_576#627 <= 1
 0 <= var_577#628 <= 1
 0 <= var_578#629 <= 1
 0 <= var_579#630 <= 1
 0 <= var_580#631 <= 1
 0 <= var_581#632 <= 1
 0 <= var_582#633 <= 1
 0 <= var_583#634 <= 1
 0 <= var_584#635 <= 1
 0 <= var_585#636 <= 1
 0 <= var_586#637 <= 1
 0 <= var_587#638 <= 1
 0 <= var_588#639 <= 1
 0 <= var_589#640 <= 1
 0 <= var_590#641 <= 1
 0 <= var_591#642 <= 1
 0 <= var_592#643 <= 1
 0 <= var_593#644 <= 1
 0 <= var_594#645 <= 1
 0 <= var_595#646 <= 1
 0 <= var_596#647 <= 1
 0 <= var_597#648 <= 1
 0 <= var_598#649 <= 1
 0 <= var_599#650 <= 1
 0 <= var_600#651 <= 1
 0 <= var_601#652 <= 1
 0 <= var_602#653 <= 1
 0 <= var_603#654 <= 1
 0 <= var_604#655 <= 1
 0 <= var_605#656 <= 1
 0 <= var_606#657 <= 1
 0 <= var_607#658 <= 1
 0 <= var_608#659 <= 1
 0 <= var_609#660 <= 1
 0 <= var_610#661 <= 1
 0 <= var_611#662 <= 1
 0 <= var_612#663 <= 1
 0 <= var_613#664 <= 1
 0 <= var_614#665 <= 1
 0 <= var_615#666 <= 1
 0 <= var_616#667 <= 1
 0 <= var_617#668 <= 1
 0 <= var_618#669 <= 1
 0 <= var_619#670 <= 1
 0 <= var_620#671 <= 1
 0 <= var_621#672 <= 1
 0 <= var_622#673 <= 1
 0 <= var_623#674 <= 1
 0 <= var_624#675 <= 1
 0 <= var_625#676 <= 1
 0 <= var_626#677 <= 1
 0 <= var_627#678 <= 1
 0 <= var_628#679 <= 1
 0 <= var_629#680 <= 1
 0 <= var_630#681 <= 1
 0 <= var_631#682 <= 1
 0 <= var_632#683 <= 1
 0 <= var_633#684 <= 1
 0 <= var_634#685 <= 1
 0 <= var_635#686 <= 1
 0 <= var_636#687 <= 1
 0 <= var_637#688 <= 1
 0 <= var_638#689 <= 1
 0 <= var_639#690 <= 1
 0 <= var_640#691 <= 1
 0 <= var_641#692 <= 1
 0 <= var_642#693 <= 1
 0 <= var_643#694 <= 1
 0 <= var_644#695 <= 1
 0 <= var_645#696 <= 1
 0 <= var_646#697 <= 1
 0 <= var_647#698 <= 1
 0 <= var_648#699 <= 1
 0 <= var_649#700 <= 1
 0 <= var_650#701 <= 1
 0 <= var_651#702 <= 1
 0 <= var_652#703 <= 1
 0 <= var_653#704 <= 1
 0 <= var_654#705 <= 1
 0 <= var_655#706 <= 1
 0 <= var_656#707 <= 98
 0 <= var_657#708 <= 98
 0 <= var_658#709 <= 98
 0 <= var_659#710 <= 98
 0 <= var_660#711 <= 98
 0 <= var_661#712 <= 98
 0 <= var_662#713 <= 98
 0 <= var_663#714 <= 98
 0 <= var_664#715 <= 98
 0 <= var_665#716 <= 98
 0 <= var_666#717 <= 98
 0 <= var_667#718 <= 98
 0 <= var_668#719 <= 98
 0 <= var_669#720 <= 98
 0 <= var_670#721 <= 98
 0 <= var_671#722 <= 98
 0 <= var_672#723 <= 98
 0 <= var_673#724 <= 98
 0 <= var_674#725 <= 98
 0 <= var_675#726 <= 98
 0 <= var_676#727 <= 98
 0 <= var_677#728 <= 98
 0 <= var_678#729 <= 98
 0 <= var_679#730 <= 98
 0 <= var_680#731 <= 98
 0 <= var_681#732 <= 98
 0 <= var_682#733 <= 98
 0 <= var_683#734 <= 98
 0 <= var_684#735 <= 98
 0 <= var_685#736 <= 98
 0 <= var_686#737 <= 98
 0 <= var_687#738 <= 98
 0 <= var_688#739 <= 98
 0 <= var_689#740 <= 98
 0 <= var_690#741 <= 98
 0 <= var_691#742 <= 98
 0 <= var_692#743 <= 98
 0 <= var_693#744 <= 98
 0 <= var_694#745 <= 98
 0 <= var_695#746 <= 98
 0 <= var_696#747 <= 98
 0 <= var_697#748 <= 98
 0 <= var_698#749 <= 98
 0 <= var_699#750 <= 98
 0 <= var_700#751 <= 98
 0 <= var_701#752 <= 98
 0 <= var_702#753 <= 98
 0 <= var_703#754 <= 98
 0 <= var_704#755 <= 98
 0 <= var_705#756 <= 98
 0 <= var_706#757 <= 98
 0 <= var_707#758 <= 98
 0 <= var_708#759 <= 98
 0 <= var_709#760 <= 98
 0 <= var_710#761 <= 98
 0 <= var_711#762 <= 98
 0 <= var_712#763 <= 98
 0 <= var_713#764 <= 98
 0 <= var_714#765 <= 98
 0 <= var_715#766 <= 98
 0 <= var_716#767 <= 98
 0 <= var_717#768 <= 98
 0 <= var_718#769 <= 98
 0 <= var_719#770 <= 98
 0 <= var_720#771 <= 98
 0 <= var_721#772 <= 98
 0 <= var_722#773 <= 98
 0 <= var_723#774 <= 98
 0 <= var_724#775 <= 98
 0 <= var_725#776 <= 98
 0 <= var_726#777 <= 98
 0 <= var_727#778 <= 98
 0 <= var_728#779 <= 98
 0 <= var_729#780 <= 98
 0 <= var_730#781 <= 98
 0 <= var_731#782 <= 98
 0 <= var_732#783 <= 98
 0 <= var_733#784 <= 98
 0 <= var_734#785 <= 98
 0 <= var_735#786 <= 98
 0 <= var_736#787 <= 98
 0 <= var_737#788 <= 98
 0 <= var_738#789 <= 98
 0 <= var_739#790 <= 98
 0 <= var_740#791 <= 98
 0 <= var_741#792 <= 98
 0 <= var_742#793 <= 98
 0 <= var_743#794 <= 98
 0 <= var_744#795 <= 98
 0 <= var_745#796 <= 98
 0 <= var_746#797 <= 98
 0 <= var_747#798 <= 98
 0 <= var_748#799 <= 98
 0 <= var_749#800 <= 98
 0 <= var_750#801 <= 98
 0 <= var_751#802 <= 98
 0 <= var_752#803 <= 98
 0 <= var_753#804 <= 98
 0 <= var_754#805 <= 98
 0 <= var_755#806 <= 98
 0 <= var_756#807 <= 98
 0 <= var_757#808 <= 98
 0 <= var_758#809 <= 98
 0 <= var_759#810 <= 98
 0 <= var_760#811 <= 98
 0 <= var_761#812 <= 98
 0 <= var_762#813 <= 98
 0 <= var_763#814 <= 98
 0 <= var_764#815 <= 98
 0 <= var_765#816 <= 98
 0 <= var_766#817 <= 98
 0 <= var_767#818 <= 98
 0 <= var_768#819 <= 98
 0 <= var_769#820 <= 98
 0 <= var_770#821 <= 98
 0 <= var_771#822 <= 98
 0 <= var_772#823 <= 98
 0 <= var_773#824 <= 98
 0 <= var_774#825 <= 98
 0 <= var_775#826 <= 98
 0 <= var_776#827 <= 98
 0 <= var_777#828 <= 98
 0 <= var_778#829 <= 98
 0 <= var_779#830 <= 98
 0 <= var_780#831 <= 98
 0 <= var_781#832 <= 98
 0 <= var_782#833 <= 98
 0 <= var_783#834 <= 98
 0 <= var_784#835 <= 98
 0 <= var_785#836 <= 98
 0 <= var_786#837 <= 98
 0 <= var_787#838 <= 98
 0 <= var_788#839 <= 98
 0 <= var_789#840 <= 98
 0 <= var_790#841 <= 98
 0 <= var_791#842 <= 98
 0 <= var_792#843 <= 98
 0 <= var_793#844 <= 98
 0 <= var_794#845 <= 98
 0 <= var_795#846 <= 98
 0 <= var_796#847 <= 98
 0 <= var_797#848 <= 98
 0 <= var_798#849 <= 98
 0 <= var_799#850 <= 98
 0 <= var_800#851 <= 98
 0 <= var_801#852 <= 98
 0 <= var_802#853 <= 98
 0 <= var_803#854 <= 98
 0 <= var_804#855 <= 98
 0 <= var_805#856 <= 98
 0 <= var_806#857 <= 98
 0 <= var_807#858 <= 98
 0 <= var_808#859 <= 98
 0 <= var_809#860 <= 98
 0 <= var_810#861 <= 98
 0 <= var_811#862 <= 98
 0 <= var_812#863 <= 98
 0 <= var_813#864 <= 98
 0 <= var_814#865 <= 98
 0 <= var_815#866 <= 98
 0 <= var_816#867 <= 98
 0 <= var_817#868 <= 98
Binaries
 _(drop_ball1_rooma_left_ge_2)#100  _(drop_ball1_rooma_left_ge_1)#101 
 _(drop_ball1_rooma_right_ge_2)#102  _(drop_ball1_rooma_right_ge_1)#103 
 _(drop_ball1_roomb_left_ge_2)#104  _(drop_ball1_roomb_left_ge_1)#105 
 _(drop_ball1_roomb_right_ge_2)#106  _(drop_ball1_roomb_right_ge_1)#107 
 _(drop_ball10_rooma_left_ge_2)#108  _(drop_ball10_rooma_left_ge_1)#109 
 _(drop_ball10_rooma_right_ge_2)#110  _(drop_ball10_rooma_right_ge_1)#111 
 _(drop_ball10_roomb_left_ge_2)#112  _(drop_ball10_roomb_left_ge_1)#113 
 _(drop_ball10_roomb_right_ge_2)#114  _(drop_ball10_roomb_right_ge_1)#115 
 _(drop_ball11_rooma_left_ge_2)#116  _(drop_ball11_rooma_left_ge_1)#117 
 _(drop_ball11_rooma_left_ge_3)#118  _(drop_ball11_rooma_right_ge_2)#119 
 _(drop_ball11_rooma_right_ge_1)#120  _(drop_ball11_roomb_left_ge_2)#121 
 _(drop_ball11_roomb_left_ge_1)#122  _(drop_ball11_roomb_left_ge_3)#123 
 _(drop_ball11_roomb_right_ge_2)#124  _(drop_ball11_roomb_right_ge_1)#125 
 _(drop_ball11_roomb_right_ge_3)#126  _(drop_ball12_rooma_left_ge_2)#127 
 _(drop_ball12_rooma_left_ge_1)#128  _(drop_ball12_rooma_right_ge_2)#129 
 _(drop_ball12_rooma_right_ge_1)#130  _(drop_ball12_roomb_left_ge_2)#131 
 _(drop_ball12_roomb_left_ge_1)#132  _(drop_ball12_roomb_left_ge_3)#133 
 _(drop_ball12_roomb_right_ge_2)#134  _(drop_ball12_roomb_right_ge_1)#135 
 _(drop_ball2_rooma_left_ge_2)#136  _(drop_ball2_rooma_left_ge_1)#137 
 _(drop_ball2_rooma_right_ge_2)#138  _(drop_ball2_rooma_right_ge_1)#139 
 _(drop_ball2_roomb_left_ge_2)#140  _(drop_ball2_roomb_left_ge_1)#141 
 _(drop_ball2_roomb_right_ge_2)#142  _(drop_ball2_roomb_right_ge_1)#143 
 _(drop_ball3_rooma_left_ge_2)#144  _(drop_ball3_rooma_left_ge_1)#145 
 _(drop_ball3_rooma_right_ge_2)#146  _(drop_ball3_rooma_right_ge_1)#147 
 _(drop_ball3_roomb_left_ge_2)#148  _(drop_ball3_roomb_left_ge_1)#149 
 _(drop_ball3_roomb_right_ge_2)#150  _(drop_ball3_roomb_right_ge_1)#151 
 _(drop_ball4_rooma_left_ge_2)#152  _(drop_ball4_rooma_left_ge_1)#153 
 _(drop_ball4_rooma_right_ge_2)#154  _(drop_ball4_rooma_right_ge_1)#155 
 _(drop_ball4_roomb_left_ge_2)#156  _(drop_ball4_roomb_left_ge_1)#157 
 _(drop_ball4_roomb_right_ge_2)#158  _(drop_ball4_roomb_right_ge_1)#159 
 _(drop_ball4_roomb_right_ge_3)#160  _(drop_ball5_rooma_left_ge_2)#161 
 _(drop_ball5_rooma_left_ge_1)#162  _(drop_ball5_rooma_right_ge_2)#163 
 _(drop_ball5_rooma_right_ge_1)#164  _(drop_ball5_roomb_left_ge_2)#165 
 _(drop_ball5_roomb_left_ge_1)#166  _(drop_ball5_roomb_right_ge_2)#167 
 _(drop_ball5_roomb_right_ge_1)#168  _(drop_ball6_rooma_left_ge_2)#169 
 _(drop_ball6_rooma_left_ge_1)#170  _(drop_ball6_rooma_right_ge_2)#171 
 _(drop_ball6_rooma_right_ge_1)#172  _(drop_ball6_roomb_left_ge_2)#173 
 _(drop_ball6_roomb_left_ge_1)#174  _(drop_ball6_roomb_right_ge_2)#175 
 _(drop_ball6_roomb_right_ge_1)#176  _(drop_ball7_rooma_left_ge_2)#177 
 _(drop_ball7_rooma_left_ge_1)#178  _(drop_ball7_rooma_right_ge_2)#179 
 _(drop_ball7_rooma_right_ge_1)#180  _(drop_ball7_roomb_left_ge_2)#181 
 _(drop_ball7_roomb_left_ge_1)#182  _(drop_ball7_roomb_left_ge_3)#183 
 _(drop_ball7_roomb_right_ge_2)#184  _(drop_ball7_roomb_right_ge_1)#185 
 _(drop_ball8_rooma_left_ge_2)#186  _(drop_ball8_rooma_left_ge_1)#187 
 _(drop_ball8_rooma_right_ge_2)#188  _(drop_ball8_rooma_right_ge_1)#189 
 _(drop_ball8_roomb_left_ge_2)#190  _(drop_ball8_roomb_left_ge_1)#191 
 _(drop_ball8_roomb_right_ge_2)#192  _(drop_ball8_roomb_right_ge_1)#193 
 _(drop_ball9_rooma_left_ge_2)#194  _(drop_ball9_rooma_left_ge_1)#195 
 _(drop_ball9_rooma_right_ge_2)#196  _(drop_ball9_rooma_right_ge_1)#197 
 _(drop_ball9_roomb_left_ge_2)#198  _(drop_ball9_roomb_left_ge_1)#199 
 _(drop_ball9_roomb_right_ge_2)#200  _(drop_ball9_roomb_right_ge_1)#201 
 _(move_rooma_roomb_ge_2)#202  _(move_rooma_roomb_ge_1)#203 
 _(move_rooma_roomb_ge_3)#204  _(move_roomb_rooma_ge_2)#205 
 _(move_roomb_rooma_ge_1)#206  _(pick_ball1_rooma_left_ge_2)#207 
 _(pick_ball1_rooma_left_ge_1)#208  _(pick_ball1_rooma_right_ge_2)#209 
 _(pick_ball1_rooma_right_ge_1)#210  _(pick_ball1_roomb_left_ge_2)#211 
 _(pick_ball1_roomb_left_ge_1)#212  _(pick_ball1_roomb_left_ge_3)#213 
 _(pick_ball1_roomb_right_ge_2)#214  _(pick_ball1_roomb_right_ge_1)#215 
 _(pick_ball1_roomb_right_ge_3)#216  _(pick_ball10_rooma_left_ge_2)#217 
 _(pick_ball10_rooma_left_ge_1)#218  _(pick_ball10_rooma_right_ge_2)#219 
 _(pick_ball10_rooma_right_ge_1)#220  _(pick_ball10_roomb_left_ge_2)#221 
 _(pick_ball10_roomb_left_ge_1)#222  _(pick_ball10_roomb_right_ge_2)#223 
 _(pick_ball10_roomb_right_ge_1)#224  _(pick_ball11_rooma_left_ge_2)#225 
 _(pick_ball11_rooma_left_ge_1)#226  _(pick_ball11_rooma_right_ge_2)#227 
 _(pick_ball11_rooma_right_ge_1)#228  _(pick_ball11_roomb_left_ge_2)#229 
 _(pick_ball11_roomb_left_ge_1)#230  _(pick_ball11_roomb_right_ge_2)#231 
 _(pick_ball11_roomb_right_ge_1)#232  _(pick_ball11_roomb_right_ge_3)#233 
 _(pick_ball12_rooma_left_ge_2)#234  _(pick_ball12_rooma_left_ge_1)#235 
 _(pick_ball12_rooma_right_ge_2)#236  _(pick_ball12_rooma_right_ge_1)#237 
 _(pick_ball12_roomb_left_ge_2)#238  _(pick_ball12_roomb_left_ge_1)#239 
 _(pick_ball12_roomb_right_ge_2)#240  _(pick_ball12_roomb_right_ge_1)#241 
 _(pick_ball2_rooma_left_ge_2)#242  _(pick_ball2_rooma_left_ge_1)#243 
 _(pick_ball2_rooma_right_ge_2)#244  _(pick_ball2_rooma_right_ge_1)#245 
 _(pick_ball2_roomb_left_ge_2)#246  _(pick_ball2_roomb_left_ge_1)#247 
 _(pick_ball2_roomb_right_ge_2)#248  _(pick_ball2_roomb_right_ge_1)#249 
 _(pick_ball3_rooma_left_ge_2)#250  _(pick_ball3_rooma_left_ge_1)#251 
 _(pick_ball3_rooma_right_ge_2)#252  _(pick_ball3_rooma_right_ge_1)#253 
 _(pick_ball3_roomb_left_ge_2)#254  _(pick_ball3_roomb_left_ge_1)#255 
 _(pick_ball3_roomb_right_ge_2)#256  _(pick_ball3_roomb_right_ge_1)#257 
 _(pick_ball4_rooma_left_ge_2)#258  _(pick_ball4_rooma_left_ge_1)#259 
 _(pick_ball4_rooma_right_ge_2)#260  _(pick_ball4_rooma_right_ge_1)#261 
 _(pick_ball4_roomb_left_ge_2)#262  _(pick_ball4_roomb_left_ge_1)#263 
 _(pick_ball4_roomb_right_ge_2)#264  _(pick_ball4_roomb_right_ge_1)#265 
 _(pick_ball5_rooma_left_ge_2)#266  _(pick_ball5_rooma_left_ge_1)#267 
 _(pick_ball5_rooma_right_ge_2)#268  _(pick_ball5_rooma_right_ge_1)#269 
 _(pick_ball5_roomb_left_ge_2)#270  _(pick_ball5_roomb_left_ge_1)#271 
 _(pick_ball5_roomb_right_ge_2)#272  _(pick_ball5_roomb_right_ge_1)#273 
 _(pick_ball6_rooma_left_ge_2)#274  _(pick_ball6_rooma_left_ge_1)#275 
 _(pick_ball6_rooma_right_ge_2)#276  _(pick_ball6_rooma_right_ge_1)#277 
 _(pick_ball6_roomb_left_ge_2)#278  _(pick_ball6_roomb_left_ge_1)#279 
 _(pick_ball6_roomb_right_ge_2)#280  _(pick_ball6_roomb_right_ge_1)#281 
 _(pick_ball7_rooma_left_ge_2)#282  _(pick_ball7_rooma_left_ge_1)#283 
 _(pick_ball7_rooma_right_ge_2)#284  _(pick_ball7_rooma_right_ge_1)#285 
 _(pick_ball7_roomb_left_ge_2)#286  _(pick_ball7_roomb_left_ge_1)#287 
 _(pick_ball7_roomb_right_ge_2)#288  _(pick_ball7_roomb_right_ge_1)#289 
 _(pick_ball8_rooma_left_ge_2)#290  _(pick_ball8_rooma_left_ge_1)#291 
 _(pick_ball8_rooma_right_ge_2)#292  _(pick_ball8_rooma_right_ge_1)#293 
 _(pick_ball8_roomb_left_ge_2)#294  _(pick_ball8_roomb_left_ge_1)#295 
 _(pick_ball8_roomb_right_ge_2)#296  _(pick_ball8_roomb_right_ge_1)#297 
 _(pick_ball9_rooma_left_ge_2)#298  _(pick_ball9_rooma_left_ge_1)#299 
 _(pick_ball9_rooma_right_ge_2)#300  _(pick_ball9_rooma_right_ge_1)#301 
 _(pick_ball9_roomb_left_ge_2)#302  _(pick_ball9_roomb_left_ge_1)#303 
 _(pick_ball9_roomb_right_ge_2)#304  _(pick_ball9_roomb_right_ge_1)#305 
 _(YT_ge_2)#306  _(YT_ge_1)#307  _(YF_ge_2)#308  _(YF_ge_1)#309 
 _(YF_ge_3)#310  _(YF_ge_4)#311  _(YF_ge_5)#312  _(YF_ge_6)#313 
 _(YF_ge_7)#314  _(YF_ge_8)#315  _(YF_ge_9)#316  _(YF_ge_10)#317 
 _(YF_ge_11)#318  _(YF_ge_12)#319  _(YF_ge_13)#320  _(YF_ge_14)#321 
 _(YF_ge_15)#322  _(YF_ge_16)#323  _(YF_ge_17)#324  _(YF_ge_18)#325 
 _(YF_ge_19)#326  _(YF_ge_20)#327  _(YF_ge_21)#328  _(YF_ge_22)#329 
 _(YF_ge_23)#330  _(YF_ge_24)#331  _(YF_ge_25)#332  _(YF_ge_26)#333 
 _(YF_ge_27)#334  _(YF_ge_28)#335  _(YF_ge_29)#336  _(YF_ge_30)#337 
 _(YF_ge_31)#338  _(YF_ge_32)#339  _(YF_ge_33)#340  _(YF_ge_34)#341 
 _(YF_ge_35)#342  _(YF_ge_36)#343  _(YF_ge_37)#344  _(YF_ge_38)#345 
 _(YF_ge_39)#346  _(YF_ge_40)#347  _(YF_ge_41)#348  _(YF_ge_42)#349 
 _(YF_ge_43)#350  var_312#351  var_461#352  var_313#353  var_460#354 
 var_314#355  var_463#356  var_467#357  var_315#358  var_471#359  var_475#360 
 var_316#361  var_479#362  var_483#363  var_317#364  var_487#365  var_491#366 
 var_318#367  var_495#368  var_499#369  var_319#370  var_503#371  var_507#372 
 var_320#373  var_511#374  var_515#375  var_321#376  var_519#377  var_523#378 
 var_322#379  var_527#380  var_531#381  var_323#382  var_535#383  var_539#384 
 var_324#385  var_543#386  var_547#387  var_325#388  var_551#389  var_555#390 
 var_326#391  var_365#392  var_369#393  var_373#394  var_377#395  var_381#396 
 var_385#397  var_389#398  var_393#399  var_397#400  var_401#401  var_405#402 
 var_409#403  var_413#404  var_417#405  var_421#406  var_425#407  var_429#408 
 var_433#409  var_437#410  var_441#411  var_445#412  var_449#413  var_453#414 
 var_457#415  var_327#416  var_465#417  var_469#418  var_328#419  var_473#420 
 var_477#421  var_329#422  var_481#423  var_485#424  var_330#425  var_489#426 
 var_493#427  var_331#428  var_497#429  var_501#430  var_332#431  var_505#432 
 var_509#433  var_333#434  var_513#435  var_517#436  var_334#437  var_521#438 
 var_525#439  var_335#440  var_529#441  var_533#442  var_336#443  var_537#444 
 var_541#445  var_337#446  var_545#447  var_549#448  var_338#449  var_553#450 
 var_557#451  var_339#452  var_367#453  var_371#454  var_375#455  var_379#456 
 var_383#457  var_387#458  var_391#459  var_395#460  var_399#461  var_403#462 
 var_407#463  var_411#464  var_415#465  var_419#466  var_423#467  var_427#468 
 var_431#469  var_435#470  var_439#471  var_443#472  var_447#473  var_451#474 
 var_455#475  var_459#476  var_340#477  var_364#478  var_366#479  var_368#481 
 var_370#482  var_341#483  var_462#484  var_464#485  var_466#486  var_468#487 
 var_342#488  var_372#489  var_374#490  var_376#492  var_378#493  var_343#494 
 var_470#495  var_472#496  var_474#497  var_476#498  var_344#499  var_380#500 
 var_382#501  var_384#503  var_386#504  var_345#505  var_478#506  var_480#507 
 var_482#508  var_484#509  var_346#510  var_388#511  var_390#512  var_392#514 
 var_394#515  var_347#516  var_486#517  var_488#518  var_490#519  var_492#520 
 var_348#521  var_396#522  var_398#523  var_400#525  var_402#526  var_349#527 
 var_494#528  var_496#529  var_498#530  var_500#531  var_350#532  var_404#533 
 var_406#534  var_408#536  var_410#537  var_351#538  var_502#539  var_504#540 
 var_506#541  var_508#542  var_352#543  var_412#544  var_414#545  var_416#547 
 var_418#548  var_353#549  var_510#550  var_512#551  var_514#552  var_516#553 
 var_354#554  var_420#555  var_422#556  var_424#558  var_426#559  var_355#560 
 var_518#561  var_520#562  var_522#563  var_524#564  var_356#565  var_428#566 
 var_430#567  var_432#569  var_434#570  var_357#571  var_526#572  var_528#573 
 var_530#574  var_532#575  var_358#576  var_436#577  var_438#578  var_440#580 
 var_442#581  var_359#582  var_534#583  var_536#584  var_538#585  var_540#586 
 var_360#587  var_444#588  var_446#589  var_448#591  var_450#592  var_361#593 
 var_542#594  var_544#595  var_546#596  var_548#597  var_362#598  var_452#599 
 var_454#600  var_456#602  var_458#603  var_363#604  var_550#605  var_552#606 
 var_554#607  var_556#608  var_558#609  var_559#610  var_560#611  var_561#612 
 var_562#613  var_563#614  var_564#615  var_565#616  var_566#617  var_567#618 
 var_568#619  var_569#620  var_570#621  var_571#622  var_572#623  var_573#624 
 var_574#625  var_575#626  var_576#627  var_577#628  var_578#629  var_579#630 
 var_580#631  var_581#632  var_582#633  var_583#634  var_584#635  var_585#636 
 var_586#637  var_587#638  var_588#639  var_589#640  var_590#641  var_591#642 
 var_592#643  var_593#644  var_594#645  var_595#646  var_596#647  var_597#648 
 var_598#649  var_599#650  var_600#651  var_601#652  var_602#653  var_603#654 
 var_604#655  var_605#656  var_606#657  var_607#658  var_608#659  var_609#660 
 var_610#661  var_611#662  var_612#663  var_613#664  var_614#665  var_615#666 
 var_616#667  var_617#668  var_618#669  var_619#670  var_620#671  var_621#672 
 var_622#673  var_623#674  var_624#675  var_625#676  var_626#677  var_627#678 
 var_628#679  var_629#680  var_630#681  var_631#682  var_632#683  var_633#684 
 var_634#685  var_635#686  var_636#687  var_637#688  var_638#689  var_639#690 
 var_640#691  var_641#692  var_642#693  var_643#694  var_644#695  var_645#696 
 var_646#697  var_647#698  var_648#699  var_649#700  var_650#701  var_651#702 
 var_652#703  var_653#704  var_654#705  var_655#706 
Generals
 drop_ball1_rooma_left#0  drop_ball1_rooma_right#1  drop_ball1_roomb_left#2 
 drop_ball1_roomb_right#3  drop_ball10_rooma_left#4  drop_ball10_rooma_right#5 
 drop_ball10_roomb_left#6  drop_ball10_roomb_right#7  drop_ball11_rooma_left#8 
 drop_ball11_rooma_right#9  drop_ball11_roomb_left#10 
 drop_ball11_roomb_right#11  drop_ball12_rooma_left#12 
 drop_ball12_rooma_right#13  drop_ball12_roomb_left#14 
 drop_ball12_roomb_right#15  drop_ball2_rooma_left#16 
 drop_ball2_rooma_right#17  drop_ball2_roomb_left#18 
 drop_ball2_roomb_right#19  drop_ball3_rooma_left#20 
 drop_ball3_rooma_right#21  drop_ball3_roomb_left#22 
 drop_ball3_roomb_right#23  drop_ball4_rooma_left#24 
 drop_ball4_rooma_right#25  drop_ball4_roomb_left#26 
 drop_ball4_roomb_right#27  drop_ball5_rooma_left#28 
 drop_ball5_rooma_right#29  drop_ball5_roomb_left#30 
 drop_ball5_roomb_right#31  drop_ball6_rooma_left#32 
 drop_ball6_rooma_right#33  drop_ball6_roomb_left#34 
 drop_ball6_roomb_right#35  drop_ball7_rooma_left#36 
 drop_ball7_rooma_right#37  drop_ball7_roomb_left#38 
 drop_ball7_roomb_right#39  drop_ball8_rooma_left#40 
 drop_ball8_rooma_right#41  drop_ball8_roomb_left#42 
 drop_ball8_roomb_right#43  drop_ball9_rooma_left#44 
 drop_ball9_rooma_right#45  drop_ball9_roomb_left#46 
 drop_ball9_roomb_right#47  move_rooma_roomb#48  move_roomb_rooma#49 
 pick_ball1_rooma_left#50  pick_ball1_rooma_right#51  pick_ball1_roomb_left#52 
 pick_ball1_roomb_right#53  pick_ball10_rooma_left#54 
 pick_ball10_rooma_right#55  pick_ball10_roomb_left#56 
 pick_ball10_roomb_right#57  pick_ball11_rooma_left#58 
 pick_ball11_rooma_right#59  pick_ball11_roomb_left#60 
 pick_ball11_roomb_right#61  pick_ball12_rooma_left#62 
 pick_ball12_rooma_right#63  pick_ball12_roomb_left#64 
 pick_ball12_roomb_right#65  pick_ball2_rooma_left#66 
 pick_ball2_rooma_right#67  pick_ball2_roomb_left#68 
 pick_ball2_roomb_right#69  pick_ball3_rooma_left#70 
 pick_ball3_rooma_right#71  pick_ball3_roomb_left#72 
 pick_ball3_roomb_right#73  pick_ball4_rooma_left#74 
 pick_ball4_rooma_right#75  pick_ball4_roomb_left#76 
 pick_ball4_roomb_right#77  pick_ball5_rooma_left#78 
 pick_ball5_rooma_right#79  pick_ball5_roomb_left#80 
 pick_ball5_roomb_right#81  pick_ball6_rooma_left#82 
 pick_ball6_rooma_right#83  pick_ball6_roomb_left#84 
 pick_ball6_roomb_right#85  pick_ball7_rooma_left#86 
 pick_ball7_rooma_right#87  pick_ball7_roomb_left#88 
 pick_ball7_roomb_right#89  pick_ball8_rooma_left#90 
 pick_ball8_rooma_right#91  pick_ball8_roomb_left#92 
 pick_ball8_roomb_right#93  pick_ball9_rooma_left#94 
 pick_ball9_rooma_right#95  pick_ball9_roomb_left#96 
 pick_ball9_roomb_right#97  YT#98  YF#99  var_300#480  var_301#491 
 var_302#502  var_303#513  var_304#524  var_305#535  var_306#546  var_307#557 
 var_308#568  var_309#579  var_310#590  var_311#601  var_656#707  var_657#708 
 var_658#709  var_659#710  var_660#711  var_661#712  var_662#713  var_663#714 
 var_664#715  var_665#716  var_666#717  var_667#718  var_668#719  var_669#720 
 var_670#721  var_671#722  var_672#723  var_673#724  var_674#725  var_675#726 
 var_676#727  var_677#728  var_678#729  var_679#730  var_680#731  var_681#732 
 var_682#733  var_683#734  var_684#735  var_685#736  var_686#737  var_687#738 
 var_688#739  var_689#740  var_690#741  var_691#742  var_692#743  var_693#744 
 var_694#745  var_695#746  var_696#747  var_697#748  var_698#749  var_699#750 
 var_700#751  var_701#752  var_702#753  var_703#754  var_704#755  var_705#756 
 var_706#757  var_707#758  var_708#759  var_709#760  var_710#761  var_711#762 
 var_712#763  var_713#764  var_714#765  var_715#766  var_716#767  var_717#768 
 var_718#769  var_719#770  var_720#771  var_721#772  var_722#773  var_723#774 
 var_724#775  var_725#776  var_726#777  var_727#778  var_728#779  var_729#780 
 var_730#781  var_731#782  var_732#783  var_733#784  var_734#785  var_735#786 
 var_736#787  var_737#788  var_738#789  var_739#790  var_740#791  var_741#792 
 var_742#793  var_743#794  var_744#795  var_745#796  var_746#797  var_747#798 
 var_748#799  var_749#800  var_750#801  var_751#802  var_752#803  var_753#804 
 var_754#805  var_755#806  var_756#807  var_757#808  var_758#809  var_759#810 
 var_760#811  var_761#812  var_762#813  var_763#814  var_764#815  var_765#816 
 var_766#817  var_767#818  var_768#819  var_769#820  var_770#821  var_771#822 
 var_772#823  var_773#824  var_774#825  var_775#826  var_776#827  var_777#828 
 var_778#829  var_779#830  var_780#831  var_781#832  var_782#833  var_783#834 
 var_784#835  var_785#836  var_786#837  var_787#838  var_788#839  var_789#840 
 var_790#841  var_791#842  var_792#843  var_793#844  var_794#845  var_795#846 
 var_796#847  var_797#848  var_798#849  var_799#850  var_800#851  var_801#852 
 var_802#853  var_803#854  var_804#855  var_805#856  var_806#857  var_807#858 
 var_808#859  var_809#860  var_810#861  var_811#862  var_812#863  var_813#864 
 var_814#865  var_815#866  var_816#867  var_817#868 
End

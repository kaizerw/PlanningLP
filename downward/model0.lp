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
        + _(drop_ball11_rooma_left_ge_1)#117 <= 0
 c37:   drop_ball11_rooma_left#8
        - 10000000000 _(drop_ball11_rooma_left_ge_2)#116 <= 1
 c38:   drop_ball11_rooma_left#8
        - 10000000000 _(drop_ball11_rooma_left_ge_1)#117 <= 0
 c39:   _(drop_ball11_rooma_right_ge_2)#118
        - _(drop_ball11_rooma_right_ge_1)#119 <= 0
 c40:   - drop_ball11_rooma_right#9 + _(drop_ball11_rooma_right_ge_2)#118
        + _(drop_ball11_rooma_right_ge_1)#119 <= 0
 c41:   drop_ball11_rooma_right#9
        - 10000000000 _(drop_ball11_rooma_right_ge_2)#118 <= 1
 c42:   drop_ball11_rooma_right#9
        - 10000000000 _(drop_ball11_rooma_right_ge_1)#119 <= 0
 c43:   _(drop_ball11_roomb_left_ge_2)#120 - _(drop_ball11_roomb_left_ge_1)#121
        <= 0
 c44:   - drop_ball11_roomb_left#10 + _(drop_ball11_roomb_left_ge_2)#120
        + _(drop_ball11_roomb_left_ge_1)#121 <= 0
 c45:   drop_ball11_roomb_left#10
        - 10000000000 _(drop_ball11_roomb_left_ge_2)#120 <= 1
 c46:   drop_ball11_roomb_left#10
        - 10000000000 _(drop_ball11_roomb_left_ge_1)#121 <= 0
 c47:   _(drop_ball11_roomb_right_ge_2)#122
        - _(drop_ball11_roomb_right_ge_1)#123 <= 0
 c48:   - drop_ball11_roomb_right#11 + _(drop_ball11_roomb_right_ge_2)#122
        + _(drop_ball11_roomb_right_ge_1)#123 <= 0
 c49:   drop_ball11_roomb_right#11
        - 10000000000 _(drop_ball11_roomb_right_ge_2)#122 <= 1
 c50:   drop_ball11_roomb_right#11
        - 10000000000 _(drop_ball11_roomb_right_ge_1)#123 <= 0
 c51:   _(drop_ball12_rooma_left_ge_2)#124 - _(drop_ball12_rooma_left_ge_1)#125
        <= 0
 c52:   - drop_ball12_rooma_left#12 + _(drop_ball12_rooma_left_ge_2)#124
        + _(drop_ball12_rooma_left_ge_1)#125 <= 0
 c53:   drop_ball12_rooma_left#12
        - 10000000000 _(drop_ball12_rooma_left_ge_2)#124 <= 1
 c54:   drop_ball12_rooma_left#12
        - 10000000000 _(drop_ball12_rooma_left_ge_1)#125 <= 0
 c55:   _(drop_ball12_rooma_right_ge_2)#126
        - _(drop_ball12_rooma_right_ge_1)#127 <= 0
 c56:   - drop_ball12_rooma_right#13 + _(drop_ball12_rooma_right_ge_2)#126
        + _(drop_ball12_rooma_right_ge_1)#127 <= 0
 c57:   drop_ball12_rooma_right#13
        - 10000000000 _(drop_ball12_rooma_right_ge_2)#126 <= 1
 c58:   drop_ball12_rooma_right#13
        - 10000000000 _(drop_ball12_rooma_right_ge_1)#127 <= 0
 c59:   _(drop_ball12_roomb_left_ge_2)#128 - _(drop_ball12_roomb_left_ge_1)#129
        <= 0
 c60:   - drop_ball12_roomb_left#14 + _(drop_ball12_roomb_left_ge_2)#128
        + _(drop_ball12_roomb_left_ge_1)#129 <= 0
 c61:   drop_ball12_roomb_left#14
        - 10000000000 _(drop_ball12_roomb_left_ge_2)#128 <= 1
 c62:   drop_ball12_roomb_left#14
        - 10000000000 _(drop_ball12_roomb_left_ge_1)#129 <= 0
 c63:   _(drop_ball12_roomb_right_ge_2)#130
        - _(drop_ball12_roomb_right_ge_1)#131 <= 0
 c64:   - drop_ball12_roomb_right#15 + _(drop_ball12_roomb_right_ge_2)#130
        + _(drop_ball12_roomb_right_ge_1)#131 <= 0
 c65:   drop_ball12_roomb_right#15
        - 10000000000 _(drop_ball12_roomb_right_ge_2)#130 <= 1
 c66:   drop_ball12_roomb_right#15
        - 10000000000 _(drop_ball12_roomb_right_ge_1)#131 <= 0
 c67:   _(drop_ball2_rooma_left_ge_2)#132 - _(drop_ball2_rooma_left_ge_1)#133
        <= 0
 c68:   - drop_ball2_rooma_left#16 + _(drop_ball2_rooma_left_ge_2)#132
        + _(drop_ball2_rooma_left_ge_1)#133 <= 0
 c69:   drop_ball2_rooma_left#16
        - 10000000000 _(drop_ball2_rooma_left_ge_2)#132 <= 1
 c70:   drop_ball2_rooma_left#16
        - 10000000000 _(drop_ball2_rooma_left_ge_1)#133 <= 0
 c71:   _(drop_ball2_rooma_right_ge_2)#134 - _(drop_ball2_rooma_right_ge_1)#135
        <= 0
 c72:   - drop_ball2_rooma_right#17 + _(drop_ball2_rooma_right_ge_2)#134
        + _(drop_ball2_rooma_right_ge_1)#135 <= 0
 c73:   drop_ball2_rooma_right#17
        - 10000000000 _(drop_ball2_rooma_right_ge_2)#134 <= 1
 c74:   drop_ball2_rooma_right#17
        - 10000000000 _(drop_ball2_rooma_right_ge_1)#135 <= 0
 c75:   _(drop_ball2_roomb_left_ge_2)#136 - _(drop_ball2_roomb_left_ge_1)#137
        <= 0
 c76:   - drop_ball2_roomb_left#18 + _(drop_ball2_roomb_left_ge_2)#136
        + _(drop_ball2_roomb_left_ge_1)#137 <= 0
 c77:   drop_ball2_roomb_left#18
        - 10000000000 _(drop_ball2_roomb_left_ge_2)#136 <= 1
 c78:   drop_ball2_roomb_left#18
        - 10000000000 _(drop_ball2_roomb_left_ge_1)#137 <= 0
 c79:   _(drop_ball2_roomb_right_ge_2)#138 - _(drop_ball2_roomb_right_ge_1)#139
        <= 0
 c80:   - drop_ball2_roomb_right#19 + _(drop_ball2_roomb_right_ge_2)#138
        + _(drop_ball2_roomb_right_ge_1)#139 <= 0
 c81:   drop_ball2_roomb_right#19
        - 10000000000 _(drop_ball2_roomb_right_ge_2)#138 <= 1
 c82:   drop_ball2_roomb_right#19
        - 10000000000 _(drop_ball2_roomb_right_ge_1)#139 <= 0
 c83:   _(drop_ball3_rooma_left_ge_2)#140 - _(drop_ball3_rooma_left_ge_1)#141
        <= 0
 c84:   - drop_ball3_rooma_left#20 + _(drop_ball3_rooma_left_ge_2)#140
        + _(drop_ball3_rooma_left_ge_1)#141 <= 0
 c85:   drop_ball3_rooma_left#20
        - 10000000000 _(drop_ball3_rooma_left_ge_2)#140 <= 1
 c86:   drop_ball3_rooma_left#20
        - 10000000000 _(drop_ball3_rooma_left_ge_1)#141 <= 0
 c87:   _(drop_ball3_rooma_right_ge_2)#142 - _(drop_ball3_rooma_right_ge_1)#143
        <= 0
 c88:   - drop_ball3_rooma_right#21 + _(drop_ball3_rooma_right_ge_2)#142
        + _(drop_ball3_rooma_right_ge_1)#143 <= 0
 c89:   drop_ball3_rooma_right#21
        - 10000000000 _(drop_ball3_rooma_right_ge_2)#142 <= 1
 c90:   drop_ball3_rooma_right#21
        - 10000000000 _(drop_ball3_rooma_right_ge_1)#143 <= 0
 c91:   _(drop_ball3_roomb_left_ge_2)#144 - _(drop_ball3_roomb_left_ge_1)#145
        <= 0
 c92:   - drop_ball3_roomb_left#22 + _(drop_ball3_roomb_left_ge_2)#144
        + _(drop_ball3_roomb_left_ge_1)#145 <= 0
 c93:   drop_ball3_roomb_left#22
        - 10000000000 _(drop_ball3_roomb_left_ge_2)#144 <= 1
 c94:   drop_ball3_roomb_left#22
        - 10000000000 _(drop_ball3_roomb_left_ge_1)#145 <= 0
 c95:   _(drop_ball3_roomb_right_ge_2)#146 - _(drop_ball3_roomb_right_ge_1)#147
        <= 0
 c96:   - drop_ball3_roomb_right#23 + _(drop_ball3_roomb_right_ge_2)#146
        + _(drop_ball3_roomb_right_ge_1)#147 <= 0
 c97:   drop_ball3_roomb_right#23
        - 10000000000 _(drop_ball3_roomb_right_ge_2)#146 <= 1
 c98:   drop_ball3_roomb_right#23
        - 10000000000 _(drop_ball3_roomb_right_ge_1)#147 <= 0
 c99:   _(drop_ball4_rooma_left_ge_2)#148 - _(drop_ball4_rooma_left_ge_1)#149
        <= 0
 c100:  - drop_ball4_rooma_left#24 + _(drop_ball4_rooma_left_ge_2)#148
        + _(drop_ball4_rooma_left_ge_1)#149 <= 0
 c101:  drop_ball4_rooma_left#24
        - 10000000000 _(drop_ball4_rooma_left_ge_2)#148 <= 1
 c102:  drop_ball4_rooma_left#24
        - 10000000000 _(drop_ball4_rooma_left_ge_1)#149 <= 0
 c103:  _(drop_ball4_rooma_right_ge_2)#150 - _(drop_ball4_rooma_right_ge_1)#151
        <= 0
 c104:  - drop_ball4_rooma_right#25 + _(drop_ball4_rooma_right_ge_2)#150
        + _(drop_ball4_rooma_right_ge_1)#151 <= 0
 c105:  drop_ball4_rooma_right#25
        - 10000000000 _(drop_ball4_rooma_right_ge_2)#150 <= 1
 c106:  drop_ball4_rooma_right#25
        - 10000000000 _(drop_ball4_rooma_right_ge_1)#151 <= 0
 c107:  _(drop_ball4_roomb_left_ge_2)#152 - _(drop_ball4_roomb_left_ge_1)#153
        <= 0
 c108:  - drop_ball4_roomb_left#26 + _(drop_ball4_roomb_left_ge_2)#152
        + _(drop_ball4_roomb_left_ge_1)#153 <= 0
 c109:  drop_ball4_roomb_left#26
        - 10000000000 _(drop_ball4_roomb_left_ge_2)#152 <= 1
 c110:  drop_ball4_roomb_left#26
        - 10000000000 _(drop_ball4_roomb_left_ge_1)#153 <= 0
 c111:  _(drop_ball4_roomb_right_ge_2)#154 - _(drop_ball4_roomb_right_ge_1)#155
        <= 0
 c112:  - drop_ball4_roomb_right#27 + _(drop_ball4_roomb_right_ge_2)#154
        + _(drop_ball4_roomb_right_ge_1)#155 <= 0
 c113:  drop_ball4_roomb_right#27
        - 10000000000 _(drop_ball4_roomb_right_ge_2)#154 <= 1
 c114:  drop_ball4_roomb_right#27
        - 10000000000 _(drop_ball4_roomb_right_ge_1)#155 <= 0
 c115:  _(drop_ball5_rooma_left_ge_2)#156 - _(drop_ball5_rooma_left_ge_1)#157
        <= 0
 c116:  - drop_ball5_rooma_left#28 + _(drop_ball5_rooma_left_ge_2)#156
        + _(drop_ball5_rooma_left_ge_1)#157 <= 0
 c117:  drop_ball5_rooma_left#28
        - 10000000000 _(drop_ball5_rooma_left_ge_2)#156 <= 1
 c118:  drop_ball5_rooma_left#28
        - 10000000000 _(drop_ball5_rooma_left_ge_1)#157 <= 0
 c119:  _(drop_ball5_rooma_right_ge_2)#158 - _(drop_ball5_rooma_right_ge_1)#159
        <= 0
 c120:  - drop_ball5_rooma_right#29 + _(drop_ball5_rooma_right_ge_2)#158
        + _(drop_ball5_rooma_right_ge_1)#159 <= 0
 c121:  drop_ball5_rooma_right#29
        - 10000000000 _(drop_ball5_rooma_right_ge_2)#158 <= 1
 c122:  drop_ball5_rooma_right#29
        - 10000000000 _(drop_ball5_rooma_right_ge_1)#159 <= 0
 c123:  _(drop_ball5_roomb_left_ge_2)#160 - _(drop_ball5_roomb_left_ge_1)#161
        <= 0
 c124:  - drop_ball5_roomb_left#30 + _(drop_ball5_roomb_left_ge_2)#160
        + _(drop_ball5_roomb_left_ge_1)#161 <= 0
 c125:  drop_ball5_roomb_left#30
        - 10000000000 _(drop_ball5_roomb_left_ge_2)#160 <= 1
 c126:  drop_ball5_roomb_left#30
        - 10000000000 _(drop_ball5_roomb_left_ge_1)#161 <= 0
 c127:  _(drop_ball5_roomb_right_ge_2)#162 - _(drop_ball5_roomb_right_ge_1)#163
        <= 0
 c128:  - drop_ball5_roomb_right#31 + _(drop_ball5_roomb_right_ge_2)#162
        + _(drop_ball5_roomb_right_ge_1)#163 <= 0
 c129:  drop_ball5_roomb_right#31
        - 10000000000 _(drop_ball5_roomb_right_ge_2)#162 <= 1
 c130:  drop_ball5_roomb_right#31
        - 10000000000 _(drop_ball5_roomb_right_ge_1)#163 <= 0
 c131:  _(drop_ball6_rooma_left_ge_2)#164 - _(drop_ball6_rooma_left_ge_1)#165
        <= 0
 c132:  - drop_ball6_rooma_left#32 + _(drop_ball6_rooma_left_ge_2)#164
        + _(drop_ball6_rooma_left_ge_1)#165 <= 0
 c133:  drop_ball6_rooma_left#32
        - 10000000000 _(drop_ball6_rooma_left_ge_2)#164 <= 1
 c134:  drop_ball6_rooma_left#32
        - 10000000000 _(drop_ball6_rooma_left_ge_1)#165 <= 0
 c135:  _(drop_ball6_rooma_right_ge_2)#166 - _(drop_ball6_rooma_right_ge_1)#167
        <= 0
 c136:  - drop_ball6_rooma_right#33 + _(drop_ball6_rooma_right_ge_2)#166
        + _(drop_ball6_rooma_right_ge_1)#167 <= 0
 c137:  drop_ball6_rooma_right#33
        - 10000000000 _(drop_ball6_rooma_right_ge_2)#166 <= 1
 c138:  drop_ball6_rooma_right#33
        - 10000000000 _(drop_ball6_rooma_right_ge_1)#167 <= 0
 c139:  _(drop_ball6_roomb_left_ge_2)#168 - _(drop_ball6_roomb_left_ge_1)#169
        <= 0
 c140:  - drop_ball6_roomb_left#34 + _(drop_ball6_roomb_left_ge_2)#168
        + _(drop_ball6_roomb_left_ge_1)#169 <= 0
 c141:  drop_ball6_roomb_left#34
        - 10000000000 _(drop_ball6_roomb_left_ge_2)#168 <= 1
 c142:  drop_ball6_roomb_left#34
        - 10000000000 _(drop_ball6_roomb_left_ge_1)#169 <= 0
 c143:  _(drop_ball6_roomb_right_ge_2)#170 - _(drop_ball6_roomb_right_ge_1)#171
        <= 0
 c144:  - drop_ball6_roomb_right#35 + _(drop_ball6_roomb_right_ge_2)#170
        + _(drop_ball6_roomb_right_ge_1)#171 <= 0
 c145:  drop_ball6_roomb_right#35
        - 10000000000 _(drop_ball6_roomb_right_ge_2)#170 <= 1
 c146:  drop_ball6_roomb_right#35
        - 10000000000 _(drop_ball6_roomb_right_ge_1)#171 <= 0
 c147:  _(drop_ball7_rooma_left_ge_2)#172 - _(drop_ball7_rooma_left_ge_1)#173
        <= 0
 c148:  - drop_ball7_rooma_left#36 + _(drop_ball7_rooma_left_ge_2)#172
        + _(drop_ball7_rooma_left_ge_1)#173 <= 0
 c149:  drop_ball7_rooma_left#36
        - 10000000000 _(drop_ball7_rooma_left_ge_2)#172 <= 1
 c150:  drop_ball7_rooma_left#36
        - 10000000000 _(drop_ball7_rooma_left_ge_1)#173 <= 0
 c151:  _(drop_ball7_rooma_right_ge_2)#174 - _(drop_ball7_rooma_right_ge_1)#175
        <= 0
 c152:  - drop_ball7_rooma_right#37 + _(drop_ball7_rooma_right_ge_2)#174
        + _(drop_ball7_rooma_right_ge_1)#175 <= 0
 c153:  drop_ball7_rooma_right#37
        - 10000000000 _(drop_ball7_rooma_right_ge_2)#174 <= 1
 c154:  drop_ball7_rooma_right#37
        - 10000000000 _(drop_ball7_rooma_right_ge_1)#175 <= 0
 c155:  _(drop_ball7_roomb_left_ge_2)#176 - _(drop_ball7_roomb_left_ge_1)#177
        <= 0
 c156:  - drop_ball7_roomb_left#38 + _(drop_ball7_roomb_left_ge_2)#176
        + _(drop_ball7_roomb_left_ge_1)#177 <= 0
 c157:  drop_ball7_roomb_left#38
        - 10000000000 _(drop_ball7_roomb_left_ge_2)#176 <= 1
 c158:  drop_ball7_roomb_left#38
        - 10000000000 _(drop_ball7_roomb_left_ge_1)#177 <= 0
 c159:  _(drop_ball7_roomb_right_ge_2)#178 - _(drop_ball7_roomb_right_ge_1)#179
        <= 0
 c160:  - drop_ball7_roomb_right#39 + _(drop_ball7_roomb_right_ge_2)#178
        + _(drop_ball7_roomb_right_ge_1)#179 <= 0
 c161:  drop_ball7_roomb_right#39
        - 10000000000 _(drop_ball7_roomb_right_ge_2)#178 <= 1
 c162:  drop_ball7_roomb_right#39
        - 10000000000 _(drop_ball7_roomb_right_ge_1)#179 <= 0
 c163:  _(drop_ball8_rooma_left_ge_2)#180 - _(drop_ball8_rooma_left_ge_1)#181
        <= 0
 c164:  - drop_ball8_rooma_left#40 + _(drop_ball8_rooma_left_ge_2)#180
        + _(drop_ball8_rooma_left_ge_1)#181 <= 0
 c165:  drop_ball8_rooma_left#40
        - 10000000000 _(drop_ball8_rooma_left_ge_2)#180 <= 1
 c166:  drop_ball8_rooma_left#40
        - 10000000000 _(drop_ball8_rooma_left_ge_1)#181 <= 0
 c167:  _(drop_ball8_rooma_right_ge_2)#182 - _(drop_ball8_rooma_right_ge_1)#183
        <= 0
 c168:  - drop_ball8_rooma_right#41 + _(drop_ball8_rooma_right_ge_2)#182
        + _(drop_ball8_rooma_right_ge_1)#183 <= 0
 c169:  drop_ball8_rooma_right#41
        - 10000000000 _(drop_ball8_rooma_right_ge_2)#182 <= 1
 c170:  drop_ball8_rooma_right#41
        - 10000000000 _(drop_ball8_rooma_right_ge_1)#183 <= 0
 c171:  _(drop_ball8_roomb_left_ge_2)#184 - _(drop_ball8_roomb_left_ge_1)#185
        <= 0
 c172:  - drop_ball8_roomb_left#42 + _(drop_ball8_roomb_left_ge_2)#184
        + _(drop_ball8_roomb_left_ge_1)#185 <= 0
 c173:  drop_ball8_roomb_left#42
        - 10000000000 _(drop_ball8_roomb_left_ge_2)#184 <= 1
 c174:  drop_ball8_roomb_left#42
        - 10000000000 _(drop_ball8_roomb_left_ge_1)#185 <= 0
 c175:  _(drop_ball8_roomb_right_ge_2)#186 - _(drop_ball8_roomb_right_ge_1)#187
        <= 0
 c176:  - drop_ball8_roomb_right#43 + _(drop_ball8_roomb_right_ge_2)#186
        + _(drop_ball8_roomb_right_ge_1)#187 <= 0
 c177:  drop_ball8_roomb_right#43
        - 10000000000 _(drop_ball8_roomb_right_ge_2)#186 <= 1
 c178:  drop_ball8_roomb_right#43
        - 10000000000 _(drop_ball8_roomb_right_ge_1)#187 <= 0
 c179:  _(drop_ball9_rooma_left_ge_2)#188 - _(drop_ball9_rooma_left_ge_1)#189
        <= 0
 c180:  - drop_ball9_rooma_left#44 + _(drop_ball9_rooma_left_ge_2)#188
        + _(drop_ball9_rooma_left_ge_1)#189 <= 0
 c181:  drop_ball9_rooma_left#44
        - 10000000000 _(drop_ball9_rooma_left_ge_2)#188 <= 1
 c182:  drop_ball9_rooma_left#44
        - 10000000000 _(drop_ball9_rooma_left_ge_1)#189 <= 0
 c183:  _(drop_ball9_rooma_right_ge_2)#190 - _(drop_ball9_rooma_right_ge_1)#191
        <= 0
 c184:  - drop_ball9_rooma_right#45 + _(drop_ball9_rooma_right_ge_2)#190
        + _(drop_ball9_rooma_right_ge_1)#191 <= 0
 c185:  drop_ball9_rooma_right#45
        - 10000000000 _(drop_ball9_rooma_right_ge_2)#190 <= 1
 c186:  drop_ball9_rooma_right#45
        - 10000000000 _(drop_ball9_rooma_right_ge_1)#191 <= 0
 c187:  _(drop_ball9_roomb_left_ge_2)#192 - _(drop_ball9_roomb_left_ge_1)#193
        <= 0
 c188:  - drop_ball9_roomb_left#46 + _(drop_ball9_roomb_left_ge_2)#192
        + _(drop_ball9_roomb_left_ge_1)#193 <= 0
 c189:  drop_ball9_roomb_left#46
        - 10000000000 _(drop_ball9_roomb_left_ge_2)#192 <= 1
 c190:  drop_ball9_roomb_left#46
        - 10000000000 _(drop_ball9_roomb_left_ge_1)#193 <= 0
 c191:  _(drop_ball9_roomb_right_ge_2)#194 - _(drop_ball9_roomb_right_ge_1)#195
        <= 0
 c192:  - drop_ball9_roomb_right#47 + _(drop_ball9_roomb_right_ge_2)#194
        + _(drop_ball9_roomb_right_ge_1)#195 <= 0
 c193:  drop_ball9_roomb_right#47
        - 10000000000 _(drop_ball9_roomb_right_ge_2)#194 <= 1
 c194:  drop_ball9_roomb_right#47
        - 10000000000 _(drop_ball9_roomb_right_ge_1)#195 <= 0
 c195:  _(move_rooma_roomb_ge_2)#196 - _(move_rooma_roomb_ge_1)#197 <= 0
 c196:  - move_rooma_roomb#48 + _(move_rooma_roomb_ge_2)#196
        + _(move_rooma_roomb_ge_1)#197 <= 0
 c197:  move_rooma_roomb#48 - 10000000000 _(move_rooma_roomb_ge_2)#196 <= 1
 c198:  move_rooma_roomb#48 - 10000000000 _(move_rooma_roomb_ge_1)#197 <= 0
 c199:  _(move_roomb_rooma_ge_2)#198 - _(move_roomb_rooma_ge_1)#199 <= 0
 c200:  - move_roomb_rooma#49 + _(move_roomb_rooma_ge_2)#198
        + _(move_roomb_rooma_ge_1)#199 <= 0
 c201:  move_roomb_rooma#49 - 10000000000 _(move_roomb_rooma_ge_2)#198 <= 1
 c202:  move_roomb_rooma#49 - 10000000000 _(move_roomb_rooma_ge_1)#199 <= 0
 c203:  _(pick_ball1_rooma_left_ge_2)#200 - _(pick_ball1_rooma_left_ge_1)#201
        <= 0
 c204:  - pick_ball1_rooma_left#50 + _(pick_ball1_rooma_left_ge_2)#200
        + _(pick_ball1_rooma_left_ge_1)#201 <= 0
 c205:  pick_ball1_rooma_left#50
        - 10000000000 _(pick_ball1_rooma_left_ge_2)#200 <= 1
 c206:  pick_ball1_rooma_left#50
        - 10000000000 _(pick_ball1_rooma_left_ge_1)#201 <= 0
 c207:  _(pick_ball1_rooma_right_ge_2)#202 - _(pick_ball1_rooma_right_ge_1)#203
        <= 0
 c208:  - pick_ball1_rooma_right#51 + _(pick_ball1_rooma_right_ge_2)#202
        + _(pick_ball1_rooma_right_ge_1)#203 <= 0
 c209:  pick_ball1_rooma_right#51
        - 10000000000 _(pick_ball1_rooma_right_ge_2)#202 <= 1
 c210:  pick_ball1_rooma_right#51
        - 10000000000 _(pick_ball1_rooma_right_ge_1)#203 <= 0
 c211:  _(pick_ball1_roomb_left_ge_2)#204 - _(pick_ball1_roomb_left_ge_1)#205
        <= 0
 c212:  - pick_ball1_roomb_left#52 + _(pick_ball1_roomb_left_ge_2)#204
        + _(pick_ball1_roomb_left_ge_1)#205 <= 0
 c213:  pick_ball1_roomb_left#52
        - 10000000000 _(pick_ball1_roomb_left_ge_2)#204 <= 1
 c214:  pick_ball1_roomb_left#52
        - 10000000000 _(pick_ball1_roomb_left_ge_1)#205 <= 0
 c215:  _(pick_ball1_roomb_right_ge_2)#206 - _(pick_ball1_roomb_right_ge_1)#207
        <= 0
 c216:  - pick_ball1_roomb_right#53 + _(pick_ball1_roomb_right_ge_2)#206
        + _(pick_ball1_roomb_right_ge_1)#207 <= 0
 c217:  pick_ball1_roomb_right#53
        - 10000000000 _(pick_ball1_roomb_right_ge_2)#206 <= 1
 c218:  pick_ball1_roomb_right#53
        - 10000000000 _(pick_ball1_roomb_right_ge_1)#207 <= 0
 c219:  _(pick_ball10_rooma_left_ge_2)#208 - _(pick_ball10_rooma_left_ge_1)#209
        <= 0
 c220:  - pick_ball10_rooma_left#54 + _(pick_ball10_rooma_left_ge_2)#208
        + _(pick_ball10_rooma_left_ge_1)#209 <= 0
 c221:  pick_ball10_rooma_left#54
        - 10000000000 _(pick_ball10_rooma_left_ge_2)#208 <= 1
 c222:  pick_ball10_rooma_left#54
        - 10000000000 _(pick_ball10_rooma_left_ge_1)#209 <= 0
 c223:  _(pick_ball10_rooma_right_ge_2)#210
        - _(pick_ball10_rooma_right_ge_1)#211 <= 0
 c224:  - pick_ball10_rooma_right#55 + _(pick_ball10_rooma_right_ge_2)#210
        + _(pick_ball10_rooma_right_ge_1)#211 <= 0
 c225:  pick_ball10_rooma_right#55
        - 10000000000 _(pick_ball10_rooma_right_ge_2)#210 <= 1
 c226:  pick_ball10_rooma_right#55
        - 10000000000 _(pick_ball10_rooma_right_ge_1)#211 <= 0
 c227:  _(pick_ball10_roomb_left_ge_2)#212 - _(pick_ball10_roomb_left_ge_1)#213
        <= 0
 c228:  - pick_ball10_roomb_left#56 + _(pick_ball10_roomb_left_ge_2)#212
        + _(pick_ball10_roomb_left_ge_1)#213 <= 0
 c229:  pick_ball10_roomb_left#56
        - 10000000000 _(pick_ball10_roomb_left_ge_2)#212 <= 1
 c230:  pick_ball10_roomb_left#56
        - 10000000000 _(pick_ball10_roomb_left_ge_1)#213 <= 0
 c231:  _(pick_ball10_roomb_right_ge_2)#214
        - _(pick_ball10_roomb_right_ge_1)#215 <= 0
 c232:  - pick_ball10_roomb_right#57 + _(pick_ball10_roomb_right_ge_2)#214
        + _(pick_ball10_roomb_right_ge_1)#215 <= 0
 c233:  pick_ball10_roomb_right#57
        - 10000000000 _(pick_ball10_roomb_right_ge_2)#214 <= 1
 c234:  pick_ball10_roomb_right#57
        - 10000000000 _(pick_ball10_roomb_right_ge_1)#215 <= 0
 c235:  _(pick_ball11_rooma_left_ge_2)#216 - _(pick_ball11_rooma_left_ge_1)#217
        <= 0
 c236:  - pick_ball11_rooma_left#58 + _(pick_ball11_rooma_left_ge_2)#216
        + _(pick_ball11_rooma_left_ge_1)#217 <= 0
 c237:  pick_ball11_rooma_left#58
        - 10000000000 _(pick_ball11_rooma_left_ge_2)#216 <= 1
 c238:  pick_ball11_rooma_left#58
        - 10000000000 _(pick_ball11_rooma_left_ge_1)#217 <= 0
 c239:  _(pick_ball11_rooma_right_ge_2)#218
        - _(pick_ball11_rooma_right_ge_1)#219 <= 0
 c240:  - pick_ball11_rooma_right#59 + _(pick_ball11_rooma_right_ge_2)#218
        + _(pick_ball11_rooma_right_ge_1)#219 <= 0
 c241:  pick_ball11_rooma_right#59
        - 10000000000 _(pick_ball11_rooma_right_ge_2)#218 <= 1
 c242:  pick_ball11_rooma_right#59
        - 10000000000 _(pick_ball11_rooma_right_ge_1)#219 <= 0
 c243:  _(pick_ball11_roomb_left_ge_2)#220 - _(pick_ball11_roomb_left_ge_1)#221
        <= 0
 c244:  - pick_ball11_roomb_left#60 + _(pick_ball11_roomb_left_ge_2)#220
        + _(pick_ball11_roomb_left_ge_1)#221 <= 0
 c245:  pick_ball11_roomb_left#60
        - 10000000000 _(pick_ball11_roomb_left_ge_2)#220 <= 1
 c246:  pick_ball11_roomb_left#60
        - 10000000000 _(pick_ball11_roomb_left_ge_1)#221 <= 0
 c247:  _(pick_ball11_roomb_right_ge_2)#222
        - _(pick_ball11_roomb_right_ge_1)#223 <= 0
 c248:  - pick_ball11_roomb_right#61 + _(pick_ball11_roomb_right_ge_2)#222
        + _(pick_ball11_roomb_right_ge_1)#223 <= 0
 c249:  pick_ball11_roomb_right#61
        - 10000000000 _(pick_ball11_roomb_right_ge_2)#222 <= 1
 c250:  pick_ball11_roomb_right#61
        - 10000000000 _(pick_ball11_roomb_right_ge_1)#223 <= 0
 c251:  _(pick_ball12_rooma_left_ge_2)#224 - _(pick_ball12_rooma_left_ge_1)#225
        <= 0
 c252:  - pick_ball12_rooma_left#62 + _(pick_ball12_rooma_left_ge_2)#224
        + _(pick_ball12_rooma_left_ge_1)#225 <= 0
 c253:  pick_ball12_rooma_left#62
        - 10000000000 _(pick_ball12_rooma_left_ge_2)#224 <= 1
 c254:  pick_ball12_rooma_left#62
        - 10000000000 _(pick_ball12_rooma_left_ge_1)#225 <= 0
 c255:  _(pick_ball12_rooma_right_ge_2)#226
        - _(pick_ball12_rooma_right_ge_1)#227 <= 0
 c256:  - pick_ball12_rooma_right#63 + _(pick_ball12_rooma_right_ge_2)#226
        + _(pick_ball12_rooma_right_ge_1)#227 <= 0
 c257:  pick_ball12_rooma_right#63
        - 10000000000 _(pick_ball12_rooma_right_ge_2)#226 <= 1
 c258:  pick_ball12_rooma_right#63
        - 10000000000 _(pick_ball12_rooma_right_ge_1)#227 <= 0
 c259:  _(pick_ball12_roomb_left_ge_2)#228 - _(pick_ball12_roomb_left_ge_1)#229
        <= 0
 c260:  - pick_ball12_roomb_left#64 + _(pick_ball12_roomb_left_ge_2)#228
        + _(pick_ball12_roomb_left_ge_1)#229 <= 0
 c261:  pick_ball12_roomb_left#64
        - 10000000000 _(pick_ball12_roomb_left_ge_2)#228 <= 1
 c262:  pick_ball12_roomb_left#64
        - 10000000000 _(pick_ball12_roomb_left_ge_1)#229 <= 0
 c263:  _(pick_ball12_roomb_right_ge_2)#230
        - _(pick_ball12_roomb_right_ge_1)#231 <= 0
 c264:  - pick_ball12_roomb_right#65 + _(pick_ball12_roomb_right_ge_2)#230
        + _(pick_ball12_roomb_right_ge_1)#231 <= 0
 c265:  pick_ball12_roomb_right#65
        - 10000000000 _(pick_ball12_roomb_right_ge_2)#230 <= 1
 c266:  pick_ball12_roomb_right#65
        - 10000000000 _(pick_ball12_roomb_right_ge_1)#231 <= 0
 c267:  _(pick_ball2_rooma_left_ge_2)#232 - _(pick_ball2_rooma_left_ge_1)#233
        <= 0
 c268:  - pick_ball2_rooma_left#66 + _(pick_ball2_rooma_left_ge_2)#232
        + _(pick_ball2_rooma_left_ge_1)#233 <= 0
 c269:  pick_ball2_rooma_left#66
        - 10000000000 _(pick_ball2_rooma_left_ge_2)#232 <= 1
 c270:  pick_ball2_rooma_left#66
        - 10000000000 _(pick_ball2_rooma_left_ge_1)#233 <= 0
 c271:  _(pick_ball2_rooma_right_ge_2)#234 - _(pick_ball2_rooma_right_ge_1)#235
        <= 0
 c272:  - pick_ball2_rooma_right#67 + _(pick_ball2_rooma_right_ge_2)#234
        + _(pick_ball2_rooma_right_ge_1)#235 <= 0
 c273:  pick_ball2_rooma_right#67
        - 10000000000 _(pick_ball2_rooma_right_ge_2)#234 <= 1
 c274:  pick_ball2_rooma_right#67
        - 10000000000 _(pick_ball2_rooma_right_ge_1)#235 <= 0
 c275:  _(pick_ball2_roomb_left_ge_2)#236 - _(pick_ball2_roomb_left_ge_1)#237
        <= 0
 c276:  - pick_ball2_roomb_left#68 + _(pick_ball2_roomb_left_ge_2)#236
        + _(pick_ball2_roomb_left_ge_1)#237 <= 0
 c277:  pick_ball2_roomb_left#68
        - 10000000000 _(pick_ball2_roomb_left_ge_2)#236 <= 1
 c278:  pick_ball2_roomb_left#68
        - 10000000000 _(pick_ball2_roomb_left_ge_1)#237 <= 0
 c279:  _(pick_ball2_roomb_right_ge_2)#238 - _(pick_ball2_roomb_right_ge_1)#239
        <= 0
 c280:  - pick_ball2_roomb_right#69 + _(pick_ball2_roomb_right_ge_2)#238
        + _(pick_ball2_roomb_right_ge_1)#239 <= 0
 c281:  pick_ball2_roomb_right#69
        - 10000000000 _(pick_ball2_roomb_right_ge_2)#238 <= 1
 c282:  pick_ball2_roomb_right#69
        - 10000000000 _(pick_ball2_roomb_right_ge_1)#239 <= 0
 c283:  _(pick_ball3_rooma_left_ge_2)#240 - _(pick_ball3_rooma_left_ge_1)#241
        <= 0
 c284:  - pick_ball3_rooma_left#70 + _(pick_ball3_rooma_left_ge_2)#240
        + _(pick_ball3_rooma_left_ge_1)#241 <= 0
 c285:  pick_ball3_rooma_left#70
        - 10000000000 _(pick_ball3_rooma_left_ge_2)#240 <= 1
 c286:  pick_ball3_rooma_left#70
        - 10000000000 _(pick_ball3_rooma_left_ge_1)#241 <= 0
 c287:  _(pick_ball3_rooma_right_ge_2)#242 - _(pick_ball3_rooma_right_ge_1)#243
        <= 0
 c288:  - pick_ball3_rooma_right#71 + _(pick_ball3_rooma_right_ge_2)#242
        + _(pick_ball3_rooma_right_ge_1)#243 <= 0
 c289:  pick_ball3_rooma_right#71
        - 10000000000 _(pick_ball3_rooma_right_ge_2)#242 <= 1
 c290:  pick_ball3_rooma_right#71
        - 10000000000 _(pick_ball3_rooma_right_ge_1)#243 <= 0
 c291:  _(pick_ball3_roomb_left_ge_2)#244 - _(pick_ball3_roomb_left_ge_1)#245
        <= 0
 c292:  - pick_ball3_roomb_left#72 + _(pick_ball3_roomb_left_ge_2)#244
        + _(pick_ball3_roomb_left_ge_1)#245 <= 0
 c293:  pick_ball3_roomb_left#72
        - 10000000000 _(pick_ball3_roomb_left_ge_2)#244 <= 1
 c294:  pick_ball3_roomb_left#72
        - 10000000000 _(pick_ball3_roomb_left_ge_1)#245 <= 0
 c295:  _(pick_ball3_roomb_right_ge_2)#246 - _(pick_ball3_roomb_right_ge_1)#247
        <= 0
 c296:  - pick_ball3_roomb_right#73 + _(pick_ball3_roomb_right_ge_2)#246
        + _(pick_ball3_roomb_right_ge_1)#247 <= 0
 c297:  pick_ball3_roomb_right#73
        - 10000000000 _(pick_ball3_roomb_right_ge_2)#246 <= 1
 c298:  pick_ball3_roomb_right#73
        - 10000000000 _(pick_ball3_roomb_right_ge_1)#247 <= 0
 c299:  _(pick_ball4_rooma_left_ge_2)#248 - _(pick_ball4_rooma_left_ge_1)#249
        <= 0
 c300:  - pick_ball4_rooma_left#74 + _(pick_ball4_rooma_left_ge_2)#248
        + _(pick_ball4_rooma_left_ge_1)#249 <= 0
 c301:  pick_ball4_rooma_left#74
        - 10000000000 _(pick_ball4_rooma_left_ge_2)#248 <= 1
 c302:  pick_ball4_rooma_left#74
        - 10000000000 _(pick_ball4_rooma_left_ge_1)#249 <= 0
 c303:  _(pick_ball4_rooma_right_ge_2)#250 - _(pick_ball4_rooma_right_ge_1)#251
        <= 0
 c304:  - pick_ball4_rooma_right#75 + _(pick_ball4_rooma_right_ge_2)#250
        + _(pick_ball4_rooma_right_ge_1)#251 <= 0
 c305:  pick_ball4_rooma_right#75
        - 10000000000 _(pick_ball4_rooma_right_ge_2)#250 <= 1
 c306:  pick_ball4_rooma_right#75
        - 10000000000 _(pick_ball4_rooma_right_ge_1)#251 <= 0
 c307:  _(pick_ball4_roomb_left_ge_2)#252 - _(pick_ball4_roomb_left_ge_1)#253
        <= 0
 c308:  - pick_ball4_roomb_left#76 + _(pick_ball4_roomb_left_ge_2)#252
        + _(pick_ball4_roomb_left_ge_1)#253 <= 0
 c309:  pick_ball4_roomb_left#76
        - 10000000000 _(pick_ball4_roomb_left_ge_2)#252 <= 1
 c310:  pick_ball4_roomb_left#76
        - 10000000000 _(pick_ball4_roomb_left_ge_1)#253 <= 0
 c311:  _(pick_ball4_roomb_right_ge_2)#254 - _(pick_ball4_roomb_right_ge_1)#255
        <= 0
 c312:  - pick_ball4_roomb_right#77 + _(pick_ball4_roomb_right_ge_2)#254
        + _(pick_ball4_roomb_right_ge_1)#255 <= 0
 c313:  pick_ball4_roomb_right#77
        - 10000000000 _(pick_ball4_roomb_right_ge_2)#254 <= 1
 c314:  pick_ball4_roomb_right#77
        - 10000000000 _(pick_ball4_roomb_right_ge_1)#255 <= 0
 c315:  _(pick_ball5_rooma_left_ge_2)#256 - _(pick_ball5_rooma_left_ge_1)#257
        <= 0
 c316:  - pick_ball5_rooma_left#78 + _(pick_ball5_rooma_left_ge_2)#256
        + _(pick_ball5_rooma_left_ge_1)#257 <= 0
 c317:  pick_ball5_rooma_left#78
        - 10000000000 _(pick_ball5_rooma_left_ge_2)#256 <= 1
 c318:  pick_ball5_rooma_left#78
        - 10000000000 _(pick_ball5_rooma_left_ge_1)#257 <= 0
 c319:  _(pick_ball5_rooma_right_ge_2)#258 - _(pick_ball5_rooma_right_ge_1)#259
        <= 0
 c320:  - pick_ball5_rooma_right#79 + _(pick_ball5_rooma_right_ge_2)#258
        + _(pick_ball5_rooma_right_ge_1)#259 <= 0
 c321:  pick_ball5_rooma_right#79
        - 10000000000 _(pick_ball5_rooma_right_ge_2)#258 <= 1
 c322:  pick_ball5_rooma_right#79
        - 10000000000 _(pick_ball5_rooma_right_ge_1)#259 <= 0
 c323:  _(pick_ball5_roomb_left_ge_2)#260 - _(pick_ball5_roomb_left_ge_1)#261
        <= 0
 c324:  - pick_ball5_roomb_left#80 + _(pick_ball5_roomb_left_ge_2)#260
        + _(pick_ball5_roomb_left_ge_1)#261 <= 0
 c325:  pick_ball5_roomb_left#80
        - 10000000000 _(pick_ball5_roomb_left_ge_2)#260 <= 1
 c326:  pick_ball5_roomb_left#80
        - 10000000000 _(pick_ball5_roomb_left_ge_1)#261 <= 0
 c327:  _(pick_ball5_roomb_right_ge_2)#262 - _(pick_ball5_roomb_right_ge_1)#263
        <= 0
 c328:  - pick_ball5_roomb_right#81 + _(pick_ball5_roomb_right_ge_2)#262
        + _(pick_ball5_roomb_right_ge_1)#263 <= 0
 c329:  pick_ball5_roomb_right#81
        - 10000000000 _(pick_ball5_roomb_right_ge_2)#262 <= 1
 c330:  pick_ball5_roomb_right#81
        - 10000000000 _(pick_ball5_roomb_right_ge_1)#263 <= 0
 c331:  _(pick_ball6_rooma_left_ge_2)#264 - _(pick_ball6_rooma_left_ge_1)#265
        <= 0
 c332:  - pick_ball6_rooma_left#82 + _(pick_ball6_rooma_left_ge_2)#264
        + _(pick_ball6_rooma_left_ge_1)#265 <= 0
 c333:  pick_ball6_rooma_left#82
        - 10000000000 _(pick_ball6_rooma_left_ge_2)#264 <= 1
 c334:  pick_ball6_rooma_left#82
        - 10000000000 _(pick_ball6_rooma_left_ge_1)#265 <= 0
 c335:  _(pick_ball6_rooma_right_ge_2)#266 - _(pick_ball6_rooma_right_ge_1)#267
        <= 0
 c336:  - pick_ball6_rooma_right#83 + _(pick_ball6_rooma_right_ge_2)#266
        + _(pick_ball6_rooma_right_ge_1)#267 <= 0
 c337:  pick_ball6_rooma_right#83
        - 10000000000 _(pick_ball6_rooma_right_ge_2)#266 <= 1
 c338:  pick_ball6_rooma_right#83
        - 10000000000 _(pick_ball6_rooma_right_ge_1)#267 <= 0
 c339:  _(pick_ball6_roomb_left_ge_2)#268 - _(pick_ball6_roomb_left_ge_1)#269
        <= 0
 c340:  - pick_ball6_roomb_left#84 + _(pick_ball6_roomb_left_ge_2)#268
        + _(pick_ball6_roomb_left_ge_1)#269 <= 0
 c341:  pick_ball6_roomb_left#84
        - 10000000000 _(pick_ball6_roomb_left_ge_2)#268 <= 1
 c342:  pick_ball6_roomb_left#84
        - 10000000000 _(pick_ball6_roomb_left_ge_1)#269 <= 0
 c343:  _(pick_ball6_roomb_right_ge_2)#270 - _(pick_ball6_roomb_right_ge_1)#271
        <= 0
 c344:  - pick_ball6_roomb_right#85 + _(pick_ball6_roomb_right_ge_2)#270
        + _(pick_ball6_roomb_right_ge_1)#271 <= 0
 c345:  pick_ball6_roomb_right#85
        - 10000000000 _(pick_ball6_roomb_right_ge_2)#270 <= 1
 c346:  pick_ball6_roomb_right#85
        - 10000000000 _(pick_ball6_roomb_right_ge_1)#271 <= 0
 c347:  _(pick_ball7_rooma_left_ge_2)#272 - _(pick_ball7_rooma_left_ge_1)#273
        <= 0
 c348:  - pick_ball7_rooma_left#86 + _(pick_ball7_rooma_left_ge_2)#272
        + _(pick_ball7_rooma_left_ge_1)#273 <= 0
 c349:  pick_ball7_rooma_left#86
        - 10000000000 _(pick_ball7_rooma_left_ge_2)#272 <= 1
 c350:  pick_ball7_rooma_left#86
        - 10000000000 _(pick_ball7_rooma_left_ge_1)#273 <= 0
 c351:  _(pick_ball7_rooma_right_ge_2)#274 - _(pick_ball7_rooma_right_ge_1)#275
        <= 0
 c352:  - pick_ball7_rooma_right#87 + _(pick_ball7_rooma_right_ge_2)#274
        + _(pick_ball7_rooma_right_ge_1)#275 <= 0
 c353:  pick_ball7_rooma_right#87
        - 10000000000 _(pick_ball7_rooma_right_ge_2)#274 <= 1
 c354:  pick_ball7_rooma_right#87
        - 10000000000 _(pick_ball7_rooma_right_ge_1)#275 <= 0
 c355:  _(pick_ball7_roomb_left_ge_2)#276 - _(pick_ball7_roomb_left_ge_1)#277
        <= 0
 c356:  - pick_ball7_roomb_left#88 + _(pick_ball7_roomb_left_ge_2)#276
        + _(pick_ball7_roomb_left_ge_1)#277 <= 0
 c357:  pick_ball7_roomb_left#88
        - 10000000000 _(pick_ball7_roomb_left_ge_2)#276 <= 1
 c358:  pick_ball7_roomb_left#88
        - 10000000000 _(pick_ball7_roomb_left_ge_1)#277 <= 0
 c359:  _(pick_ball7_roomb_right_ge_2)#278 - _(pick_ball7_roomb_right_ge_1)#279
        <= 0
 c360:  - pick_ball7_roomb_right#89 + _(pick_ball7_roomb_right_ge_2)#278
        + _(pick_ball7_roomb_right_ge_1)#279 <= 0
 c361:  pick_ball7_roomb_right#89
        - 10000000000 _(pick_ball7_roomb_right_ge_2)#278 <= 1
 c362:  pick_ball7_roomb_right#89
        - 10000000000 _(pick_ball7_roomb_right_ge_1)#279 <= 0
 c363:  _(pick_ball8_rooma_left_ge_2)#280 - _(pick_ball8_rooma_left_ge_1)#281
        <= 0
 c364:  - pick_ball8_rooma_left#90 + _(pick_ball8_rooma_left_ge_2)#280
        + _(pick_ball8_rooma_left_ge_1)#281 <= 0
 c365:  pick_ball8_rooma_left#90
        - 10000000000 _(pick_ball8_rooma_left_ge_2)#280 <= 1
 c366:  pick_ball8_rooma_left#90
        - 10000000000 _(pick_ball8_rooma_left_ge_1)#281 <= 0
 c367:  _(pick_ball8_rooma_right_ge_2)#282 - _(pick_ball8_rooma_right_ge_1)#283
        <= 0
 c368:  - pick_ball8_rooma_right#91 + _(pick_ball8_rooma_right_ge_2)#282
        + _(pick_ball8_rooma_right_ge_1)#283 <= 0
 c369:  pick_ball8_rooma_right#91
        - 10000000000 _(pick_ball8_rooma_right_ge_2)#282 <= 1
 c370:  pick_ball8_rooma_right#91
        - 10000000000 _(pick_ball8_rooma_right_ge_1)#283 <= 0
 c371:  _(pick_ball8_roomb_left_ge_2)#284 - _(pick_ball8_roomb_left_ge_1)#285
        <= 0
 c372:  - pick_ball8_roomb_left#92 + _(pick_ball8_roomb_left_ge_2)#284
        + _(pick_ball8_roomb_left_ge_1)#285 <= 0
 c373:  pick_ball8_roomb_left#92
        - 10000000000 _(pick_ball8_roomb_left_ge_2)#284 <= 1
 c374:  pick_ball8_roomb_left#92
        - 10000000000 _(pick_ball8_roomb_left_ge_1)#285 <= 0
 c375:  _(pick_ball8_roomb_right_ge_2)#286 - _(pick_ball8_roomb_right_ge_1)#287
        <= 0
 c376:  - pick_ball8_roomb_right#93 + _(pick_ball8_roomb_right_ge_2)#286
        + _(pick_ball8_roomb_right_ge_1)#287 <= 0
 c377:  pick_ball8_roomb_right#93
        - 10000000000 _(pick_ball8_roomb_right_ge_2)#286 <= 1
 c378:  pick_ball8_roomb_right#93
        - 10000000000 _(pick_ball8_roomb_right_ge_1)#287 <= 0
 c379:  _(pick_ball9_rooma_left_ge_2)#288 - _(pick_ball9_rooma_left_ge_1)#289
        <= 0
 c380:  - pick_ball9_rooma_left#94 + _(pick_ball9_rooma_left_ge_2)#288
        + _(pick_ball9_rooma_left_ge_1)#289 <= 0
 c381:  pick_ball9_rooma_left#94
        - 10000000000 _(pick_ball9_rooma_left_ge_2)#288 <= 1
 c382:  pick_ball9_rooma_left#94
        - 10000000000 _(pick_ball9_rooma_left_ge_1)#289 <= 0
 c383:  _(pick_ball9_rooma_right_ge_2)#290 - _(pick_ball9_rooma_right_ge_1)#291
        <= 0
 c384:  - pick_ball9_rooma_right#95 + _(pick_ball9_rooma_right_ge_2)#290
        + _(pick_ball9_rooma_right_ge_1)#291 <= 0
 c385:  pick_ball9_rooma_right#95
        - 10000000000 _(pick_ball9_rooma_right_ge_2)#290 <= 1
 c386:  pick_ball9_rooma_right#95
        - 10000000000 _(pick_ball9_rooma_right_ge_1)#291 <= 0
 c387:  _(pick_ball9_roomb_left_ge_2)#292 - _(pick_ball9_roomb_left_ge_1)#293
        <= 0
 c388:  - pick_ball9_roomb_left#96 + _(pick_ball9_roomb_left_ge_2)#292
        + _(pick_ball9_roomb_left_ge_1)#293 <= 0
 c389:  pick_ball9_roomb_left#96
        - 10000000000 _(pick_ball9_roomb_left_ge_2)#292 <= 1
 c390:  pick_ball9_roomb_left#96
        - 10000000000 _(pick_ball9_roomb_left_ge_1)#293 <= 0
 c391:  _(pick_ball9_roomb_right_ge_2)#294 - _(pick_ball9_roomb_right_ge_1)#295
        <= 0
 c392:  - pick_ball9_roomb_right#97 + _(pick_ball9_roomb_right_ge_2)#294
        + _(pick_ball9_roomb_right_ge_1)#295 <= 0
 c393:  pick_ball9_roomb_right#97
        - 10000000000 _(pick_ball9_roomb_right_ge_2)#294 <= 1
 c394:  pick_ball9_roomb_right#97
        - 10000000000 _(pick_ball9_roomb_right_ge_1)#295 <= 0
 c395:  _(YT_ge_2)#296 - _(YT_ge_1)#297 <= 0
 c396:  - YT#98 + _(YT_ge_2)#296 + _(YT_ge_1)#297 <= 0
 c397:  YT#98 - 10000000000 _(YT_ge_2)#296 <= 1
 c398:  YT#98 - 10000000000 _(YT_ge_1)#297 <= 0
 c399:  _(YF_ge_2)#298 - _(YF_ge_1)#299 <= 0
 c400:  - YF#99 + _(YF_ge_2)#298 + _(YF_ge_1)#299 <= 0
 c401:  YF#99 - 10000000000 _(YF_ge_2)#298 <= 1
 c402:  YF#99 - 10000000000 _(YF_ge_1)#299 <= 0
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
 c469:  _(drop_ball11_roomb_left_ge_1)#121
        + _(drop_ball11_roomb_right_ge_1)#123 >= 1
 c470:  _(drop_ball12_roomb_left_ge_1)#129
        + _(drop_ball12_roomb_right_ge_1)#131 >= 1
 c471:  _(drop_ball2_roomb_left_ge_1)#137 + _(drop_ball2_roomb_right_ge_1)#139
        >= 1
 c472:  _(drop_ball3_roomb_left_ge_1)#145 + _(drop_ball3_roomb_right_ge_1)#147
        >= 1
 c473:  _(drop_ball4_roomb_left_ge_1)#153 + _(drop_ball4_roomb_right_ge_1)#155
        >= 1
 c474:  _(drop_ball5_roomb_left_ge_1)#161 + _(drop_ball5_roomb_right_ge_1)#163
        >= 1
 c475:  _(drop_ball6_roomb_left_ge_1)#169 + _(drop_ball6_roomb_right_ge_1)#171
        >= 1
 c476:  _(drop_ball7_roomb_left_ge_1)#177 + _(drop_ball7_roomb_right_ge_1)#179
        >= 1
 c477:  _(drop_ball8_roomb_left_ge_1)#185 + _(drop_ball8_roomb_right_ge_1)#187
        >= 1
 c478:  _(drop_ball9_roomb_left_ge_1)#193 + _(drop_ball9_roomb_right_ge_1)#195
        >= 1
 c479:  _(move_rooma_roomb_ge_1)#197 >= 1
 c480:  _(pick_ball9_rooma_left_ge_1)#289 + _(pick_ball9_rooma_right_ge_1)#291
        >= 1
 c481:  _(pick_ball1_rooma_left_ge_1)#201 + _(pick_ball1_rooma_right_ge_1)#203
        >= 1
 c482:  _(pick_ball10_rooma_left_ge_1)#209
        + _(pick_ball10_rooma_right_ge_1)#211 >= 1
 c483:  _(pick_ball11_rooma_left_ge_1)#217
        + _(pick_ball11_rooma_right_ge_1)#219 >= 1
 c484:  _(pick_ball12_rooma_left_ge_1)#225
        + _(pick_ball12_rooma_right_ge_1)#227 >= 1
 c485:  _(pick_ball2_rooma_left_ge_1)#233 + _(pick_ball2_rooma_right_ge_1)#235
        >= 1
 c486:  _(pick_ball3_rooma_left_ge_1)#241 + _(pick_ball3_rooma_right_ge_1)#243
        >= 1
 c487:  _(pick_ball4_rooma_left_ge_1)#249 + _(pick_ball4_rooma_right_ge_1)#251
        >= 1
 c488:  _(pick_ball5_rooma_left_ge_1)#257 + _(pick_ball5_rooma_right_ge_1)#259
        >= 1
 c489:  _(pick_ball6_rooma_left_ge_1)#265 + _(pick_ball6_rooma_right_ge_1)#267
        >= 1
 c490:  _(pick_ball7_rooma_left_ge_1)#273 + _(pick_ball7_rooma_right_ge_1)#275
        >= 1
 c491:  _(pick_ball8_rooma_left_ge_1)#281 + _(pick_ball8_rooma_right_ge_1)#283
        >= 1
 c492:  - var_312#300 + var_461#301 >= -1
 c493:  - var_313#302 + var_460#303 >= 0
 c494:  - var_314#304 + var_463#305 + var_467#306 >= 0
 c495:  - var_315#307 + var_471#308 + var_475#309 >= 0
 c496:  - var_316#310 + var_479#311 + var_483#312 >= 0
 c497:  - var_317#313 + var_487#314 + var_491#315 >= 0
 c498:  - var_318#316 + var_495#317 + var_499#318 >= 0
 c499:  - var_319#319 + var_503#320 + var_507#321 >= 0
 c500:  - var_320#322 + var_511#323 + var_515#324 >= 0
 c501:  - var_321#325 + var_519#326 + var_523#327 >= 0
 c502:  - var_322#328 + var_527#329 + var_531#330 >= 0
 c503:  - var_323#331 + var_535#332 + var_539#333 >= 0
 c504:  - var_324#334 + var_543#335 + var_547#336 >= 0
 c505:  - var_325#337 + var_551#338 + var_555#339 >= 0
 c506:  - var_326#340 + var_365#341 + var_369#342 + var_373#343 + var_377#344
        + var_381#345 + var_385#346 + var_389#347 + var_393#348 + var_397#349
        + var_401#350 + var_405#351 + var_409#352 + var_413#353 + var_417#354
        + var_421#355 + var_425#356 + var_429#357 + var_433#358 + var_437#359
        + var_441#360 + var_445#361 + var_449#362 + var_453#363 + var_457#364
        >= -1
 c507:  - var_327#365 + var_465#366 + var_469#367 >= 0
 c508:  - var_328#368 + var_473#369 + var_477#370 >= 0
 c509:  - var_329#371 + var_481#372 + var_485#373 >= 0
 c510:  - var_330#374 + var_489#375 + var_493#376 >= 0
 c511:  - var_331#377 + var_497#378 + var_501#379 >= 0
 c512:  - var_332#380 + var_505#381 + var_509#382 >= 0
 c513:  - var_333#383 + var_513#384 + var_517#385 >= 0
 c514:  - var_334#386 + var_521#387 + var_525#388 >= 0
 c515:  - var_335#389 + var_529#390 + var_533#391 >= 0
 c516:  - var_336#392 + var_537#393 + var_541#394 >= 0
 c517:  - var_337#395 + var_545#396 + var_549#397 >= 0
 c518:  - var_338#398 + var_553#399 + var_557#400 >= 0
 c519:  - var_339#401 + var_367#402 + var_371#403 + var_375#404 + var_379#405
        + var_383#406 + var_387#407 + var_391#408 + var_395#409 + var_399#410
        + var_403#411 + var_407#412 + var_411#413 + var_415#414 + var_419#415
        + var_423#416 + var_427#417 + var_431#418 + var_435#419 + var_439#420
        + var_443#421 + var_447#422 + var_451#423 + var_455#424 + var_459#425
        >= -1
 c520:  - var_340#426 + var_364#427 + var_366#428 >= -1
 c521:  - var_300#429 + var_368#430 + var_370#431 >= 0
 c522:  - var_341#432 + var_462#433 + var_464#434 + var_466#435 + var_468#436
        >= 0
 c523:  - var_342#437 + var_372#438 + var_374#439 >= -1
 c524:  - var_301#440 + var_376#441 + var_378#442 >= 0
 c525:  - var_343#443 + var_470#444 + var_472#445 + var_474#446 + var_476#447
        >= 0
 c526:  - var_344#448 + var_380#449 + var_382#450 >= -1
 c527:  - var_302#451 + var_384#452 + var_386#453 >= 0
 c528:  - var_345#454 + var_478#455 + var_480#456 + var_482#457 + var_484#458
        >= 0
 c529:  - var_346#459 + var_388#460 + var_390#461 >= -1
 c530:  - var_303#462 + var_392#463 + var_394#464 >= 0
 c531:  - var_347#465 + var_486#466 + var_488#467 + var_490#468 + var_492#469
        >= 0
 c532:  - var_348#470 + var_396#471 + var_398#472 >= -1
 c533:  - var_304#473 + var_400#474 + var_402#475 >= 0
 c534:  - var_349#476 + var_494#477 + var_496#478 + var_498#479 + var_500#480
        >= 0
 c535:  - var_350#481 + var_404#482 + var_406#483 >= -1
 c536:  - var_305#484 + var_408#485 + var_410#486 >= 0
 c537:  - var_351#487 + var_502#488 + var_504#489 + var_506#490 + var_508#491
        >= 0
 c538:  - var_352#492 + var_412#493 + var_414#494 >= -1
 c539:  - var_306#495 + var_416#496 + var_418#497 >= 0
 c540:  - var_353#498 + var_510#499 + var_512#500 + var_514#501 + var_516#502
        >= 0
 c541:  - var_354#503 + var_420#504 + var_422#505 >= -1
 c542:  - var_307#506 + var_424#507 + var_426#508 >= 0
 c543:  - var_355#509 + var_518#510 + var_520#511 + var_522#512 + var_524#513
        >= 0
 c544:  - var_356#514 + var_428#515 + var_430#516 >= -1
 c545:  - var_308#517 + var_432#518 + var_434#519 >= 0
 c546:  - var_357#520 + var_526#521 + var_528#522 + var_530#523 + var_532#524
        >= 0
 c547:  - var_358#525 + var_436#526 + var_438#527 >= -1
 c548:  - var_309#528 + var_440#529 + var_442#530 >= 0
 c549:  - var_359#531 + var_534#532 + var_536#533 + var_538#534 + var_540#535
        >= 0
 c550:  - var_360#536 + var_444#537 + var_446#538 >= -1
 c551:  - var_310#539 + var_448#540 + var_450#541 >= 0
 c552:  - var_361#542 + var_542#543 + var_544#544 + var_546#545 + var_548#546
        >= 0
 c553:  - var_362#547 + var_452#548 + var_454#549 >= -1
 c554:  - var_311#550 + var_456#551 + var_458#552 >= 0
 c555:  - var_363#553 + var_550#554 + var_552#555 + var_554#556 + var_556#557
        >= 0
 c556:  - var_364#427 + var_558#558 >= 0
 c557:  - var_365#341 + var_558#558 >= 0
 c558:  - var_366#428 + var_559#559 >= 0
 c559:  - var_367#402 + var_559#559 >= 0
 c560:  - var_368#430 + var_560#560 >= 0
 c561:  - var_369#342 + var_560#560 >= 0
 c562:  - var_370#431 + var_561#561 >= 0
 c563:  - var_371#403 + var_561#561 >= 0
 c564:  - var_372#438 + var_562#562 >= 0
 c565:  - var_373#343 + var_562#562 >= 0
 c566:  - var_374#439 + var_563#563 >= 0
 c567:  - var_375#404 + var_563#563 >= 0
 c568:  - var_376#441 + var_564#564 >= 0
 c569:  - var_377#344 + var_564#564 >= 0
 c570:  - var_378#442 + var_565#565 >= 0
 c571:  - var_379#405 + var_565#565 >= 0
 c572:  - var_380#449 + var_566#566 >= 0
 c573:  - var_381#345 + var_566#566 >= 0
 c574:  - var_382#450 + var_567#567 >= 0
 c575:  - var_383#406 + var_567#567 >= 0
 c576:  - var_384#452 + var_568#568 >= 0
 c577:  - var_385#346 + var_568#568 >= 0
 c578:  - var_386#453 + var_569#569 >= 0
 c579:  - var_387#407 + var_569#569 >= 0
 c580:  - var_388#460 + var_570#570 >= 0
 c581:  - var_389#347 + var_570#570 >= 0
 c582:  - var_390#461 + var_571#571 >= 0
 c583:  - var_391#408 + var_571#571 >= 0
 c584:  - var_392#463 + var_572#572 >= 0
 c585:  - var_393#348 + var_572#572 >= 0
 c586:  - var_394#464 + var_573#573 >= 0
 c587:  - var_395#409 + var_573#573 >= 0
 c588:  - var_396#471 + var_574#574 >= 0
 c589:  - var_397#349 + var_574#574 >= 0
 c590:  - var_398#472 + var_575#575 >= 0
 c591:  - var_399#410 + var_575#575 >= 0
 c592:  - var_400#474 + var_576#576 >= 0
 c593:  - var_401#350 + var_576#576 >= 0
 c594:  - var_402#475 + var_577#577 >= 0
 c595:  - var_403#411 + var_577#577 >= 0
 c596:  - var_404#482 + var_578#578 >= 0
 c597:  - var_405#351 + var_578#578 >= 0
 c598:  - var_406#483 + var_579#579 >= 0
 c599:  - var_407#412 + var_579#579 >= 0
 c600:  - var_408#485 + var_580#580 >= 0
 c601:  - var_409#352 + var_580#580 >= 0
 c602:  - var_410#486 + var_581#581 >= 0
 c603:  - var_411#413 + var_581#581 >= 0
 c604:  - var_412#493 + var_582#582 >= 0
 c605:  - var_413#353 + var_582#582 >= 0
 c606:  - var_414#494 + var_583#583 >= 0
 c607:  - var_415#414 + var_583#583 >= 0
 c608:  - var_416#496 + var_584#584 >= 0
 c609:  - var_417#354 + var_584#584 >= 0
 c610:  - var_418#497 + var_585#585 >= 0
 c611:  - var_419#415 + var_585#585 >= 0
 c612:  - var_420#504 + var_586#586 >= 0
 c613:  - var_421#355 + var_586#586 >= 0
 c614:  - var_422#505 + var_587#587 >= 0
 c615:  - var_423#416 + var_587#587 >= 0
 c616:  - var_424#507 + var_588#588 >= 0
 c617:  - var_425#356 + var_588#588 >= 0
 c618:  - var_426#508 + var_589#589 >= 0
 c619:  - var_427#417 + var_589#589 >= 0
 c620:  - var_428#515 + var_590#590 >= 0
 c621:  - var_429#357 + var_590#590 >= 0
 c622:  - var_430#516 + var_591#591 >= 0
 c623:  - var_431#418 + var_591#591 >= 0
 c624:  - var_432#518 + var_592#592 >= 0
 c625:  - var_433#358 + var_592#592 >= 0
 c626:  - var_434#519 + var_593#593 >= 0
 c627:  - var_435#419 + var_593#593 >= 0
 c628:  - var_436#526 + var_594#594 >= 0
 c629:  - var_437#359 + var_594#594 >= 0
 c630:  - var_438#527 + var_595#595 >= 0
 c631:  - var_439#420 + var_595#595 >= 0
 c632:  - var_440#529 + var_596#596 >= 0
 c633:  - var_441#360 + var_596#596 >= 0
 c634:  - var_442#530 + var_597#597 >= 0
 c635:  - var_443#421 + var_597#597 >= 0
 c636:  - var_444#537 + var_598#598 >= 0
 c637:  - var_445#361 + var_598#598 >= 0
 c638:  - var_446#538 + var_599#599 >= 0
 c639:  - var_447#422 + var_599#599 >= 0
 c640:  - var_448#540 + var_600#600 >= 0
 c641:  - var_449#362 + var_600#600 >= 0
 c642:  - var_450#541 + var_601#601 >= 0
 c643:  - var_451#423 + var_601#601 >= 0
 c644:  - var_452#548 + var_602#602 >= 0
 c645:  - var_453#363 + var_602#602 >= 0
 c646:  - var_454#549 + var_603#603 >= 0
 c647:  - var_455#424 + var_603#603 >= 0
 c648:  - var_456#551 + var_604#604 >= 0
 c649:  - var_457#364 + var_604#604 >= 0
 c650:  - var_458#552 + var_605#605 >= 0
 c651:  - var_459#425 + var_605#605 >= 0
 c652:  - var_460#303 + var_606#606 >= 0
 c653:  - var_461#301 + var_607#607 >= 0
 c654:  - var_462#433 + var_608#608 >= 0
 c655:  - var_463#305 + var_608#608 >= 0
 c656:  - var_464#434 + var_609#609 >= 0
 c657:  - var_465#366 + var_609#609 >= 0
 c658:  - var_466#435 + var_610#610 >= 0
 c659:  - var_467#306 + var_610#610 >= 0
 c660:  - var_468#436 + var_611#611 >= 0
 c661:  - var_469#367 + var_611#611 >= 0
 c662:  - var_470#444 + var_612#612 >= 0
 c663:  - var_471#308 + var_612#612 >= 0
 c664:  - var_472#445 + var_613#613 >= 0
 c665:  - var_473#369 + var_613#613 >= 0
 c666:  - var_474#446 + var_614#614 >= 0
 c667:  - var_475#309 + var_614#614 >= 0
 c668:  - var_476#447 + var_615#615 >= 0
 c669:  - var_477#370 + var_615#615 >= 0
 c670:  - var_478#455 + var_616#616 >= 0
 c671:  - var_479#311 + var_616#616 >= 0
 c672:  - var_480#456 + var_617#617 >= 0
 c673:  - var_481#372 + var_617#617 >= 0
 c674:  - var_482#457 + var_618#618 >= 0
 c675:  - var_483#312 + var_618#618 >= 0
 c676:  - var_484#458 + var_619#619 >= 0
 c677:  - var_485#373 + var_619#619 >= 0
 c678:  - var_486#466 + var_620#620 >= 0
 c679:  - var_487#314 + var_620#620 >= 0
 c680:  - var_488#467 + var_621#621 >= 0
 c681:  - var_489#375 + var_621#621 >= 0
 c682:  - var_490#468 + var_622#622 >= 0
 c683:  - var_491#315 + var_622#622 >= 0
 c684:  - var_492#469 + var_623#623 >= 0
 c685:  - var_493#376 + var_623#623 >= 0
 c686:  - var_494#477 + var_624#624 >= 0
 c687:  - var_495#317 + var_624#624 >= 0
 c688:  - var_496#478 + var_625#625 >= 0
 c689:  - var_497#378 + var_625#625 >= 0
 c690:  - var_498#479 + var_626#626 >= 0
 c691:  - var_499#318 + var_626#626 >= 0
 c692:  - var_500#480 + var_627#627 >= 0
 c693:  - var_501#379 + var_627#627 >= 0
 c694:  - var_502#488 + var_628#628 >= 0
 c695:  - var_503#320 + var_628#628 >= 0
 c696:  - var_504#489 + var_629#629 >= 0
 c697:  - var_505#381 + var_629#629 >= 0
 c698:  - var_506#490 + var_630#630 >= 0
 c699:  - var_507#321 + var_630#630 >= 0
 c700:  - var_508#491 + var_631#631 >= 0
 c701:  - var_509#382 + var_631#631 >= 0
 c702:  - var_510#499 + var_632#632 >= 0
 c703:  - var_511#323 + var_632#632 >= 0
 c704:  - var_512#500 + var_633#633 >= 0
 c705:  - var_513#384 + var_633#633 >= 0
 c706:  - var_514#501 + var_634#634 >= 0
 c707:  - var_515#324 + var_634#634 >= 0
 c708:  - var_516#502 + var_635#635 >= 0
 c709:  - var_517#385 + var_635#635 >= 0
 c710:  - var_518#510 + var_636#636 >= 0
 c711:  - var_519#326 + var_636#636 >= 0
 c712:  - var_520#511 + var_637#637 >= 0
 c713:  - var_521#387 + var_637#637 >= 0
 c714:  - var_522#512 + var_638#638 >= 0
 c715:  - var_523#327 + var_638#638 >= 0
 c716:  - var_524#513 + var_639#639 >= 0
 c717:  - var_525#388 + var_639#639 >= 0
 c718:  - var_526#521 + var_640#640 >= 0
 c719:  - var_527#329 + var_640#640 >= 0
 c720:  - var_528#522 + var_641#641 >= 0
 c721:  - var_529#390 + var_641#641 >= 0
 c722:  - var_530#523 + var_642#642 >= 0
 c723:  - var_531#330 + var_642#642 >= 0
 c724:  - var_532#524 + var_643#643 >= 0
 c725:  - var_533#391 + var_643#643 >= 0
 c726:  - var_534#532 + var_644#644 >= 0
 c727:  - var_535#332 + var_644#644 >= 0
 c728:  - var_536#533 + var_645#645 >= 0
 c729:  - var_537#393 + var_645#645 >= 0
 c730:  - var_538#534 + var_646#646 >= 0
 c731:  - var_539#333 + var_646#646 >= 0
 c732:  - var_540#535 + var_647#647 >= 0
 c733:  - var_541#394 + var_647#647 >= 0
 c734:  - var_542#543 + var_648#648 >= 0
 c735:  - var_543#335 + var_648#648 >= 0
 c736:  - var_544#544 + var_649#649 >= 0
 c737:  - var_545#396 + var_649#649 >= 0
 c738:  - var_546#545 + var_650#650 >= 0
 c739:  - var_547#336 + var_650#650 >= 0
 c740:  - var_548#546 + var_651#651 >= 0
 c741:  - var_549#397 + var_651#651 >= 0
 c742:  - var_550#554 + var_652#652 >= 0
 c743:  - var_551#338 + var_652#652 >= 0
 c744:  - var_552#555 + var_653#653 >= 0
 c745:  - var_553#399 + var_653#653 >= 0
 c746:  - var_554#556 + var_654#654 >= 0
 c747:  - var_555#339 + var_654#654 >= 0
 c748:  - var_556#557 + var_655#655 >= 0
 c749:  - var_557#400 + var_655#655 >= 0
 c750:  var_312#300 - var_558#558 >= 0
 c751:  var_314#304 - var_558#558 >= 0
 c752:  var_312#300 - var_559#559 >= 0
 c753:  var_327#365 - var_559#559 >= 0
 c754:  var_313#302 - var_560#560 >= 0
 c755:  var_314#304 - var_560#560 >= 0
 c756:  var_313#302 - var_561#561 >= 0
 c757:  var_327#365 - var_561#561 >= 0
 c758:  var_312#300 - var_562#562 >= 0
 c759:  var_315#307 - var_562#562 >= 0
 c760:  var_312#300 - var_563#563 >= 0
 c761:  var_328#368 - var_563#563 >= 0
 c762:  var_313#302 - var_564#564 >= 0
 c763:  var_315#307 - var_564#564 >= 0
 c764:  var_313#302 - var_565#565 >= 0
 c765:  var_328#368 - var_565#565 >= 0
 c766:  var_312#300 - var_566#566 >= 0
 c767:  var_316#310 - var_566#566 >= 0
 c768:  var_312#300 - var_567#567 >= 0
 c769:  var_329#371 - var_567#567 >= 0
 c770:  var_313#302 - var_568#568 >= 0
 c771:  var_316#310 - var_568#568 >= 0
 c772:  var_313#302 - var_569#569 >= 0
 c773:  var_329#371 - var_569#569 >= 0
 c774:  var_312#300 - var_570#570 >= 0
 c775:  var_317#313 - var_570#570 >= 0
 c776:  var_312#300 - var_571#571 >= 0
 c777:  var_330#374 - var_571#571 >= 0
 c778:  var_313#302 - var_572#572 >= 0
 c779:  var_317#313 - var_572#572 >= 0
 c780:  var_313#302 - var_573#573 >= 0
 c781:  var_330#374 - var_573#573 >= 0
 c782:  var_312#300 - var_574#574 >= 0
 c783:  var_318#316 - var_574#574 >= 0
 c784:  var_312#300 - var_575#575 >= 0
 c785:  var_331#377 - var_575#575 >= 0
 c786:  var_313#302 - var_576#576 >= 0
 c787:  var_318#316 - var_576#576 >= 0
 c788:  var_313#302 - var_577#577 >= 0
 c789:  var_331#377 - var_577#577 >= 0
 c790:  var_312#300 - var_578#578 >= 0
 c791:  var_319#319 - var_578#578 >= 0
 c792:  var_312#300 - var_579#579 >= 0
 c793:  var_332#380 - var_579#579 >= 0
 c794:  var_313#302 - var_580#580 >= 0
 c795:  var_319#319 - var_580#580 >= 0
 c796:  var_313#302 - var_581#581 >= 0
 c797:  var_332#380 - var_581#581 >= 0
 c798:  var_312#300 - var_582#582 >= 0
 c799:  var_320#322 - var_582#582 >= 0
 c800:  var_312#300 - var_583#583 >= 0
 c801:  var_333#383 - var_583#583 >= 0
 c802:  var_313#302 - var_584#584 >= 0
 c803:  var_320#322 - var_584#584 >= 0
 c804:  var_313#302 - var_585#585 >= 0
 c805:  var_333#383 - var_585#585 >= 0
 c806:  var_312#300 - var_586#586 >= 0
 c807:  var_321#325 - var_586#586 >= 0
 c808:  var_312#300 - var_587#587 >= 0
 c809:  var_334#386 - var_587#587 >= 0
 c810:  var_313#302 - var_588#588 >= 0
 c811:  var_321#325 - var_588#588 >= 0
 c812:  var_313#302 - var_589#589 >= 0
 c813:  var_334#386 - var_589#589 >= 0
 c814:  var_312#300 - var_590#590 >= 0
 c815:  var_322#328 - var_590#590 >= 0
 c816:  var_312#300 - var_591#591 >= 0
 c817:  var_335#389 - var_591#591 >= 0
 c818:  var_313#302 - var_592#592 >= 0
 c819:  var_322#328 - var_592#592 >= 0
 c820:  var_313#302 - var_593#593 >= 0
 c821:  var_335#389 - var_593#593 >= 0
 c822:  var_312#300 - var_594#594 >= 0
 c823:  var_323#331 - var_594#594 >= 0
 c824:  var_312#300 - var_595#595 >= 0
 c825:  var_336#392 - var_595#595 >= 0
 c826:  var_313#302 - var_596#596 >= 0
 c827:  var_323#331 - var_596#596 >= 0
 c828:  var_313#302 - var_597#597 >= 0
 c829:  var_336#392 - var_597#597 >= 0
 c830:  var_312#300 - var_598#598 >= 0
 c831:  var_324#334 - var_598#598 >= 0
 c832:  var_312#300 - var_599#599 >= 0
 c833:  var_337#395 - var_599#599 >= 0
 c834:  var_313#302 - var_600#600 >= 0
 c835:  var_324#334 - var_600#600 >= 0
 c836:  var_313#302 - var_601#601 >= 0
 c837:  var_337#395 - var_601#601 >= 0
 c838:  var_312#300 - var_602#602 >= 0
 c839:  var_325#337 - var_602#602 >= 0
 c840:  var_312#300 - var_603#603 >= 0
 c841:  var_338#398 - var_603#603 >= 0
 c842:  var_313#302 - var_604#604 >= 0
 c843:  var_325#337 - var_604#604 >= 0
 c844:  var_313#302 - var_605#605 >= 0
 c845:  var_338#398 - var_605#605 >= 0
 c846:  var_312#300 - var_606#606 >= 0
 c847:  var_313#302 - var_607#607 >= 0
 c848:  var_312#300 - var_608#608 >= 0
 c849:  var_340#426 - var_608#608 >= 0
 c850:  var_326#340 - var_608#608 >= 0
 c851:  var_312#300 - var_609#609 >= 0
 c852:  var_340#426 - var_609#609 >= 0
 c853:  var_339#401 - var_609#609 >= 0
 c854:  var_313#302 - var_610#610 >= 0
 c855:  var_300#429 - var_610#610 >= 0
 c856:  var_326#340 - var_610#610 >= 0
 c857:  var_313#302 - var_611#611 >= 0
 c858:  var_300#429 - var_611#611 >= 0
 c859:  var_339#401 - var_611#611 >= 0
 c860:  var_312#300 - var_612#612 >= 0
 c861:  var_342#437 - var_612#612 >= 0
 c862:  var_326#340 - var_612#612 >= 0
 c863:  var_312#300 - var_613#613 >= 0
 c864:  var_342#437 - var_613#613 >= 0
 c865:  var_339#401 - var_613#613 >= 0
 c866:  var_313#302 - var_614#614 >= 0
 c867:  var_301#440 - var_614#614 >= 0
 c868:  var_326#340 - var_614#614 >= 0
 c869:  var_313#302 - var_615#615 >= 0
 c870:  var_301#440 - var_615#615 >= 0
 c871:  var_339#401 - var_615#615 >= 0
 c872:  var_312#300 - var_616#616 >= 0
 c873:  var_344#448 - var_616#616 >= 0
 c874:  var_326#340 - var_616#616 >= 0
 c875:  var_312#300 - var_617#617 >= 0
 c876:  var_344#448 - var_617#617 >= 0
 c877:  var_339#401 - var_617#617 >= 0
 c878:  var_313#302 - var_618#618 >= 0
 c879:  var_302#451 - var_618#618 >= 0
 c880:  var_326#340 - var_618#618 >= 0
 c881:  var_313#302 - var_619#619 >= 0
 c882:  var_302#451 - var_619#619 >= 0
 c883:  var_339#401 - var_619#619 >= 0
 c884:  var_312#300 - var_620#620 >= 0
 c885:  var_346#459 - var_620#620 >= 0
 c886:  var_326#340 - var_620#620 >= 0
 c887:  var_312#300 - var_621#621 >= 0
 c888:  var_346#459 - var_621#621 >= 0
 c889:  var_339#401 - var_621#621 >= 0
 c890:  var_313#302 - var_622#622 >= 0
 c891:  var_303#462 - var_622#622 >= 0
 c892:  var_326#340 - var_622#622 >= 0
 c893:  var_313#302 - var_623#623 >= 0
 c894:  var_303#462 - var_623#623 >= 0
 c895:  var_339#401 - var_623#623 >= 0
 c896:  var_312#300 - var_624#624 >= 0
 c897:  var_348#470 - var_624#624 >= 0
 c898:  var_326#340 - var_624#624 >= 0
 c899:  var_312#300 - var_625#625 >= 0
 c900:  var_348#470 - var_625#625 >= 0
 c901:  var_339#401 - var_625#625 >= 0
 c902:  var_313#302 - var_626#626 >= 0
 c903:  var_304#473 - var_626#626 >= 0
 c904:  var_326#340 - var_626#626 >= 0
 c905:  var_313#302 - var_627#627 >= 0
 c906:  var_304#473 - var_627#627 >= 0
 c907:  var_339#401 - var_627#627 >= 0
 c908:  var_312#300 - var_628#628 >= 0
 c909:  var_350#481 - var_628#628 >= 0
 c910:  var_326#340 - var_628#628 >= 0
 c911:  var_312#300 - var_629#629 >= 0
 c912:  var_350#481 - var_629#629 >= 0
 c913:  var_339#401 - var_629#629 >= 0
 c914:  var_313#302 - var_630#630 >= 0
 c915:  var_305#484 - var_630#630 >= 0
 c916:  var_326#340 - var_630#630 >= 0
 c917:  var_313#302 - var_631#631 >= 0
 c918:  var_305#484 - var_631#631 >= 0
 c919:  var_339#401 - var_631#631 >= 0
 c920:  var_312#300 - var_632#632 >= 0
 c921:  var_352#492 - var_632#632 >= 0
 c922:  var_326#340 - var_632#632 >= 0
 c923:  var_312#300 - var_633#633 >= 0
 c924:  var_352#492 - var_633#633 >= 0
 c925:  var_339#401 - var_633#633 >= 0
 c926:  var_313#302 - var_634#634 >= 0
 c927:  var_306#495 - var_634#634 >= 0
 c928:  var_326#340 - var_634#634 >= 0
 c929:  var_313#302 - var_635#635 >= 0
 c930:  var_306#495 - var_635#635 >= 0
 c931:  var_339#401 - var_635#635 >= 0
 c932:  var_312#300 - var_636#636 >= 0
 c933:  var_354#503 - var_636#636 >= 0
 c934:  var_326#340 - var_636#636 >= 0
 c935:  var_312#300 - var_637#637 >= 0
 c936:  var_354#503 - var_637#637 >= 0
 c937:  var_339#401 - var_637#637 >= 0
 c938:  var_313#302 - var_638#638 >= 0
 c939:  var_307#506 - var_638#638 >= 0
 c940:  var_326#340 - var_638#638 >= 0
 c941:  var_313#302 - var_639#639 >= 0
 c942:  var_307#506 - var_639#639 >= 0
 c943:  var_339#401 - var_639#639 >= 0
 c944:  var_312#300 - var_640#640 >= 0
 c945:  var_356#514 - var_640#640 >= 0
 c946:  var_326#340 - var_640#640 >= 0
 c947:  var_312#300 - var_641#641 >= 0
 c948:  var_356#514 - var_641#641 >= 0
 c949:  var_339#401 - var_641#641 >= 0
 c950:  var_313#302 - var_642#642 >= 0
 c951:  var_308#517 - var_642#642 >= 0
 c952:  var_326#340 - var_642#642 >= 0
 c953:  var_313#302 - var_643#643 >= 0
 c954:  var_308#517 - var_643#643 >= 0
 c955:  var_339#401 - var_643#643 >= 0
 c956:  var_312#300 - var_644#644 >= 0
 c957:  var_358#525 - var_644#644 >= 0
 c958:  var_326#340 - var_644#644 >= 0
 c959:  var_312#300 - var_645#645 >= 0
 c960:  var_358#525 - var_645#645 >= 0
 c961:  var_339#401 - var_645#645 >= 0
 c962:  var_313#302 - var_646#646 >= 0
 c963:  var_309#528 - var_646#646 >= 0
 c964:  var_326#340 - var_646#646 >= 0
 c965:  var_313#302 - var_647#647 >= 0
 c966:  var_309#528 - var_647#647 >= 0
 c967:  var_339#401 - var_647#647 >= 0
 c968:  var_312#300 - var_648#648 >= 0
 c969:  var_360#536 - var_648#648 >= 0
 c970:  var_326#340 - var_648#648 >= 0
 c971:  var_312#300 - var_649#649 >= 0
 c972:  var_360#536 - var_649#649 >= 0
 c973:  var_339#401 - var_649#649 >= 0
 c974:  var_313#302 - var_650#650 >= 0
 c975:  var_310#539 - var_650#650 >= 0
 c976:  var_326#340 - var_650#650 >= 0
 c977:  var_313#302 - var_651#651 >= 0
 c978:  var_310#539 - var_651#651 >= 0
 c979:  var_339#401 - var_651#651 >= 0
 c980:  var_312#300 - var_652#652 >= 0
 c981:  var_362#547 - var_652#652 >= 0
 c982:  var_326#340 - var_652#652 >= 0
 c983:  var_312#300 - var_653#653 >= 0
 c984:  var_362#547 - var_653#653 >= 0
 c985:  var_339#401 - var_653#653 >= 0
 c986:  var_313#302 - var_654#654 >= 0
 c987:  var_311#550 - var_654#654 >= 0
 c988:  var_326#340 - var_654#654 >= 0
 c989:  var_313#302 - var_655#655 >= 0
 c990:  var_311#550 - var_655#655 >= 0
 c991:  var_339#401 - var_655#655 >= 0
 c992:  var_656#656 - var_657#657 >= 0
 c993:  var_656#656 - var_658#658 >= 0
 c994:  - var_657#657 + var_659#659 >= 0
 c995:  var_659#659 - var_660#660 >= 0
 c996:  var_661#661 - var_662#662 >= 0
 c997:  - var_658#658 + var_661#661 >= 0
 c998:  - var_662#662 + var_663#663 >= 0
 c999:  - var_660#660 + var_663#663 >= 0
 c1000: - var_657#657 + var_664#664 >= 0
 c1001: var_664#664 - var_665#665 >= 0
 c1002: - var_657#657 + var_666#666 >= 0
 c1003: var_666#666 - var_667#667 >= 0
 c1004: - var_662#662 + var_668#668 >= 0
 c1005: - var_665#665 + var_668#668 >= 0
 c1006: - var_662#662 + var_669#669 >= 0
 c1007: - var_667#667 + var_669#669 >= 0
 c1008: - var_657#657 + var_670#670 >= 0
 c1009: var_670#670 - var_671#671 >= 0
 c1010: - var_657#657 + var_672#672 >= 0
 c1011: var_672#672 - var_673#673 >= 0
 c1012: - var_662#662 + var_674#674 >= 0
 c1013: - var_671#671 + var_674#674 >= 0
 c1014: - var_662#662 + var_675#675 >= 0
 c1015: - var_673#673 + var_675#675 >= 0
 c1016: - var_657#657 + var_676#676 >= 0
 c1017: var_676#676 - var_677#677 >= 0
 c1018: - var_657#657 + var_678#678 >= 0
 c1019: var_678#678 - var_679#679 >= 0
 c1020: - var_662#662 + var_680#680 >= 0
 c1021: - var_677#677 + var_680#680 >= 0
 c1022: - var_662#662 + var_681#681 >= 0
 c1023: - var_679#679 + var_681#681 >= 0
 c1024: - var_657#657 + var_682#682 >= 0
 c1025: var_682#682 - var_683#683 >= 0
 c1026: - var_657#657 + var_684#684 >= 0
 c1027: var_684#684 - var_685#685 >= 0
 c1028: - var_662#662 + var_686#686 >= 0
 c1029: - var_683#683 + var_686#686 >= 0
 c1030: - var_662#662 + var_687#687 >= 0
 c1031: - var_685#685 + var_687#687 >= 0
 c1032: - var_657#657 + var_688#688 >= 0
 c1033: var_688#688 - var_689#689 >= 0
 c1034: - var_657#657 + var_690#690 >= 0
 c1035: var_690#690 - var_691#691 >= 0
 c1036: - var_662#662 + var_692#692 >= 0
 c1037: - var_689#689 + var_692#692 >= 0
 c1038: - var_662#662 + var_693#693 >= 0
 c1039: - var_691#691 + var_693#693 >= 0
 c1040: - var_657#657 + var_694#694 >= 0
 c1041: var_694#694 - var_695#695 >= 0
 c1042: - var_657#657 + var_696#696 >= 0
 c1043: var_696#696 - var_697#697 >= 0
 c1044: - var_662#662 + var_698#698 >= 0
 c1045: - var_695#695 + var_698#698 >= 0
 c1046: - var_662#662 + var_699#699 >= 0
 c1047: - var_697#697 + var_699#699 >= 0
 c1048: - var_657#657 + var_700#700 >= 0
 c1049: var_700#700 - var_701#701 >= 0
 c1050: - var_657#657 + var_702#702 >= 0
 c1051: var_702#702 - var_703#703 >= 0
 c1052: - var_662#662 + var_704#704 >= 0
 c1053: - var_701#701 + var_704#704 >= 0
 c1054: - var_662#662 + var_705#705 >= 0
 c1055: - var_703#703 + var_705#705 >= 0
 c1056: - var_657#657 + var_706#706 >= 0
 c1057: var_706#706 - var_707#707 >= 0
 c1058: - var_657#657 + var_708#708 >= 0
 c1059: var_708#708 - var_709#709 >= 0
 c1060: - var_662#662 + var_710#710 >= 0
 c1061: - var_707#707 + var_710#710 >= 0
 c1062: - var_662#662 + var_711#711 >= 0
 c1063: - var_709#709 + var_711#711 >= 0
 c1064: - var_657#657 + var_712#712 >= 0
 c1065: var_712#712 - var_713#713 >= 0
 c1066: - var_657#657 + var_714#714 >= 0
 c1067: var_714#714 - var_715#715 >= 0
 c1068: - var_662#662 + var_716#716 >= 0
 c1069: - var_713#713 + var_716#716 >= 0
 c1070: - var_662#662 + var_717#717 >= 0
 c1071: - var_715#715 + var_717#717 >= 0
 c1072: - var_657#657 + var_718#718 >= 0
 c1073: var_718#718 - var_719#719 >= 0
 c1074: - var_657#657 + var_720#720 >= 0
 c1075: var_720#720 - var_721#721 >= 0
 c1076: - var_662#662 + var_722#722 >= 0
 c1077: - var_719#719 + var_722#722 >= 0
 c1078: - var_662#662 + var_723#723 >= 0
 c1079: - var_721#721 + var_723#723 >= 0
 c1080: - var_657#657 + var_724#724 >= 0
 c1081: var_724#724 - var_725#725 >= 0
 c1082: - var_657#657 + var_726#726 >= 0
 c1083: var_726#726 - var_727#727 >= 0
 c1084: - var_662#662 + var_728#728 >= 0
 c1085: - var_725#725 + var_728#728 >= 0
 c1086: - var_662#662 + var_729#729 >= 0
 c1087: - var_727#727 + var_729#729 >= 0
 c1088: - var_657#657 + var_730#730 >= 0
 c1089: - var_662#662 + var_731#731 >= 0
 c1090: - var_657#657 + var_732#732 >= 0
 c1091: var_732#732 - var_733#733 >= 0
 c1092: var_732#732 - var_734#734 >= 0
 c1093: - var_657#657 + var_735#735 >= 0
 c1094: - var_733#733 + var_735#735 >= 0
 c1095: var_735#735 - var_736#736 >= 0
 c1096: - var_662#662 + var_737#737 >= 0
 c1097: var_737#737 - var_738#738 >= 0
 c1098: - var_734#734 + var_737#737 >= 0
 c1099: - var_662#662 + var_739#739 >= 0
 c1100: - var_738#738 + var_739#739 >= 0
 c1101: - var_736#736 + var_739#739 >= 0
 c1102: - var_657#657 + var_740#740 >= 0
 c1103: var_740#740 - var_741#741 >= 0
 c1104: - var_734#734 + var_740#740 >= 0
 c1105: - var_657#657 + var_742#742 >= 0
 c1106: - var_741#741 + var_742#742 >= 0
 c1107: - var_736#736 + var_742#742 >= 0
 c1108: - var_662#662 + var_743#743 >= 0
 c1109: var_743#743 - var_744#744 >= 0
 c1110: - var_734#734 + var_743#743 >= 0
 c1111: - var_662#662 + var_745#745 >= 0
 c1112: - var_744#744 + var_745#745 >= 0
 c1113: - var_736#736 + var_745#745 >= 0
 c1114: - var_657#657 + var_746#746 >= 0
 c1115: var_746#746 - var_747#747 >= 0
 c1116: - var_734#734 + var_746#746 >= 0
 c1117: - var_657#657 + var_748#748 >= 0
 c1118: - var_747#747 + var_748#748 >= 0
 c1119: - var_736#736 + var_748#748 >= 0
 c1120: - var_662#662 + var_749#749 >= 0
 c1121: var_749#749 - var_750#750 >= 0
 c1122: - var_734#734 + var_749#749 >= 0
 c1123: - var_662#662 + var_751#751 >= 0
 c1124: - var_750#750 + var_751#751 >= 0
 c1125: - var_736#736 + var_751#751 >= 0
 c1126: - var_657#657 + var_752#752 >= 0
 c1127: var_752#752 - var_753#753 >= 0
 c1128: - var_734#734 + var_752#752 >= 0
 c1129: - var_657#657 + var_754#754 >= 0
 c1130: - var_753#753 + var_754#754 >= 0
 c1131: - var_736#736 + var_754#754 >= 0
 c1132: - var_662#662 + var_755#755 >= 0
 c1133: var_755#755 - var_756#756 >= 0
 c1134: - var_734#734 + var_755#755 >= 0
 c1135: - var_662#662 + var_757#757 >= 0
 c1136: - var_756#756 + var_757#757 >= 0
 c1137: - var_736#736 + var_757#757 >= 0
 c1138: - var_657#657 + var_758#758 >= 0
 c1139: var_758#758 - var_759#759 >= 0
 c1140: - var_734#734 + var_758#758 >= 0
 c1141: - var_657#657 + var_760#760 >= 0
 c1142: - var_759#759 + var_760#760 >= 0
 c1143: - var_736#736 + var_760#760 >= 0
 c1144: - var_662#662 + var_761#761 >= 0
 c1145: var_761#761 - var_762#762 >= 0
 c1146: - var_734#734 + var_761#761 >= 0
 c1147: - var_662#662 + var_763#763 >= 0
 c1148: - var_762#762 + var_763#763 >= 0
 c1149: - var_736#736 + var_763#763 >= 0
 c1150: - var_657#657 + var_764#764 >= 0
 c1151: var_764#764 - var_765#765 >= 0
 c1152: - var_734#734 + var_764#764 >= 0
 c1153: - var_657#657 + var_766#766 >= 0
 c1154: - var_765#765 + var_766#766 >= 0
 c1155: - var_736#736 + var_766#766 >= 0
 c1156: - var_662#662 + var_767#767 >= 0
 c1157: var_767#767 - var_768#768 >= 0
 c1158: - var_734#734 + var_767#767 >= 0
 c1159: - var_662#662 + var_769#769 >= 0
 c1160: - var_768#768 + var_769#769 >= 0
 c1161: - var_736#736 + var_769#769 >= 0
 c1162: - var_657#657 + var_770#770 >= 0
 c1163: var_770#770 - var_771#771 >= 0
 c1164: - var_734#734 + var_770#770 >= 0
 c1165: - var_657#657 + var_772#772 >= 0
 c1166: - var_771#771 + var_772#772 >= 0
 c1167: - var_736#736 + var_772#772 >= 0
 c1168: - var_662#662 + var_773#773 >= 0
 c1169: var_773#773 - var_774#774 >= 0
 c1170: - var_734#734 + var_773#773 >= 0
 c1171: - var_662#662 + var_775#775 >= 0
 c1172: - var_774#774 + var_775#775 >= 0
 c1173: - var_736#736 + var_775#775 >= 0
 c1174: - var_657#657 + var_776#776 >= 0
 c1175: var_776#776 - var_777#777 >= 0
 c1176: - var_734#734 + var_776#776 >= 0
 c1177: - var_657#657 + var_778#778 >= 0
 c1178: - var_777#777 + var_778#778 >= 0
 c1179: - var_736#736 + var_778#778 >= 0
 c1180: - var_662#662 + var_779#779 >= 0
 c1181: var_779#779 - var_780#780 >= 0
 c1182: - var_734#734 + var_779#779 >= 0
 c1183: - var_662#662 + var_781#781 >= 0
 c1184: - var_780#780 + var_781#781 >= 0
 c1185: - var_736#736 + var_781#781 >= 0
 c1186: - var_657#657 + var_782#782 >= 0
 c1187: var_782#782 - var_783#783 >= 0
 c1188: - var_734#734 + var_782#782 >= 0
 c1189: - var_657#657 + var_784#784 >= 0
 c1190: - var_783#783 + var_784#784 >= 0
 c1191: - var_736#736 + var_784#784 >= 0
 c1192: - var_662#662 + var_785#785 >= 0
 c1193: var_785#785 - var_786#786 >= 0
 c1194: - var_734#734 + var_785#785 >= 0
 c1195: - var_662#662 + var_787#787 >= 0
 c1196: - var_786#786 + var_787#787 >= 0
 c1197: - var_736#736 + var_787#787 >= 0
 c1198: - var_657#657 + var_788#788 >= 0
 c1199: var_788#788 - var_789#789 >= 0
 c1200: - var_734#734 + var_788#788 >= 0
 c1201: - var_657#657 + var_790#790 >= 0
 c1202: - var_789#789 + var_790#790 >= 0
 c1203: - var_736#736 + var_790#790 >= 0
 c1204: - var_662#662 + var_791#791 >= 0
 c1205: var_791#791 - var_792#792 >= 0
 c1206: - var_734#734 + var_791#791 >= 0
 c1207: - var_662#662 + var_793#793 >= 0
 c1208: - var_792#792 + var_793#793 >= 0
 c1209: - var_736#736 + var_793#793 >= 0
 c1210: - var_657#657 + var_794#794 >= 0
 c1211: var_794#794 - var_795#795 >= 0
 c1212: - var_734#734 + var_794#794 >= 0
 c1213: - var_657#657 + var_796#796 >= 0
 c1214: - var_795#795 + var_796#796 >= 0
 c1215: - var_736#736 + var_796#796 >= 0
 c1216: - var_662#662 + var_797#797 >= 0
 c1217: var_797#797 - var_798#798 >= 0
 c1218: - var_734#734 + var_797#797 >= 0
 c1219: - var_662#662 + var_799#799 >= 0
 c1220: - var_798#798 + var_799#799 >= 0
 c1221: - var_736#736 + var_799#799 >= 0
 c1222: - var_657#657 + var_800#800 >= 0
 c1223: var_800#800 - var_801#801 >= 0
 c1224: - var_734#734 + var_800#800 >= 0
 c1225: - var_657#657 + var_802#802 >= 0
 c1226: - var_801#801 + var_802#802 >= 0
 c1227: - var_736#736 + var_802#802 >= 0
 c1228: - var_662#662 + var_803#803 >= 0
 c1229: var_803#803 - var_804#804 >= 0
 c1230: - var_734#734 + var_803#803 >= 0
 c1231: - var_662#662 + var_805#805 >= 0
 c1232: - var_804#804 + var_805#805 >= 0
 c1233: - var_736#736 + var_805#805 >= 0
 c1234: - 99 var_364#427 - var_656#656 + var_733#733 >= -98
 c1235: - 99 var_365#341 - var_656#656 + var_734#734 >= -98
 c1236: - 99 var_366#428 - var_659#659 + var_733#733 >= -98
 c1237: - 99 var_367#402 - var_659#659 + var_736#736 >= -98
 c1238: - 99 var_368#430 - var_661#661 + var_738#738 >= -98
 c1239: - 99 var_369#342 - var_661#661 + var_734#734 >= -98
 c1240: - 99 var_370#431 - var_663#663 + var_738#738 >= -98
 c1241: - 99 var_371#403 - var_663#663 + var_736#736 >= -98
 c1242: - 99 var_372#438 - var_664#664 + var_741#741 >= -98
 c1243: - 99 var_373#343 - var_664#664 + var_734#734 >= -98
 c1244: - 99 var_374#439 - var_666#666 + var_741#741 >= -98
 c1245: - 99 var_375#404 - var_666#666 + var_736#736 >= -98
 c1246: - 99 var_376#441 - var_668#668 + var_744#744 >= -98
 c1247: - 99 var_377#344 - var_668#668 + var_734#734 >= -98
 c1248: - 99 var_378#442 - var_669#669 + var_744#744 >= -98
 c1249: - 99 var_379#405 - var_669#669 + var_736#736 >= -98
 c1250: - 99 var_380#449 - var_670#670 + var_747#747 >= -98
 c1251: - 99 var_381#345 - var_670#670 + var_734#734 >= -98
 c1252: - 99 var_382#450 - var_672#672 + var_747#747 >= -98
 c1253: - 99 var_383#406 - var_672#672 + var_736#736 >= -98
 c1254: - 99 var_384#452 - var_674#674 + var_750#750 >= -98
 c1255: - 99 var_385#346 - var_674#674 + var_734#734 >= -98
 c1256: - 99 var_386#453 - var_675#675 + var_750#750 >= -98
 c1257: - 99 var_387#407 - var_675#675 + var_736#736 >= -98
 c1258: - 99 var_388#460 - var_676#676 + var_753#753 >= -98
 c1259: - 99 var_389#347 - var_676#676 + var_734#734 >= -98
 c1260: - 99 var_390#461 - var_678#678 + var_753#753 >= -98
 c1261: - 99 var_391#408 - var_678#678 + var_736#736 >= -98
 c1262: - 99 var_392#463 - var_680#680 + var_756#756 >= -98
 c1263: - 99 var_393#348 - var_680#680 + var_734#734 >= -98
 c1264: - 99 var_394#464 - var_681#681 + var_756#756 >= -98
 c1265: - 99 var_395#409 - var_681#681 + var_736#736 >= -98
 c1266: - 99 var_396#471 - var_682#682 + var_759#759 >= -98
 c1267: - 99 var_397#349 - var_682#682 + var_734#734 >= -98
 c1268: - 99 var_398#472 - var_684#684 + var_759#759 >= -98
 c1269: - 99 var_399#410 - var_684#684 + var_736#736 >= -98
 c1270: - 99 var_400#474 - var_686#686 + var_762#762 >= -98
 c1271: - 99 var_401#350 - var_686#686 + var_734#734 >= -98
 c1272: - 99 var_402#475 - var_687#687 + var_762#762 >= -98
 c1273: - 99 var_403#411 - var_687#687 + var_736#736 >= -98
 c1274: - 99 var_404#482 - var_688#688 + var_765#765 >= -98
 c1275: - 99 var_405#351 - var_688#688 + var_734#734 >= -98
 c1276: - 99 var_406#483 - var_690#690 + var_765#765 >= -98
 c1277: - 99 var_407#412 - var_690#690 + var_736#736 >= -98
 c1278: - 99 var_408#485 - var_692#692 + var_768#768 >= -98
 c1279: - 99 var_409#352 - var_692#692 + var_734#734 >= -98
 c1280: - 99 var_410#486 - var_693#693 + var_768#768 >= -98
 c1281: - 99 var_411#413 - var_693#693 + var_736#736 >= -98
 c1282: - 99 var_412#493 - var_694#694 + var_771#771 >= -98
 c1283: - 99 var_413#353 - var_694#694 + var_734#734 >= -98
 c1284: - 99 var_414#494 - var_696#696 + var_771#771 >= -98
 c1285: - 99 var_415#414 - var_696#696 + var_736#736 >= -98
 c1286: - 99 var_416#496 - var_698#698 + var_774#774 >= -98
 c1287: - 99 var_417#354 - var_698#698 + var_734#734 >= -98
 c1288: - 99 var_418#497 - var_699#699 + var_774#774 >= -98
 c1289: - 99 var_419#415 - var_699#699 + var_736#736 >= -98
 c1290: - 99 var_420#504 - var_700#700 + var_777#777 >= -98
 c1291: - 99 var_421#355 - var_700#700 + var_734#734 >= -98
 c1292: - 99 var_422#505 - var_702#702 + var_777#777 >= -98
 c1293: - 99 var_423#416 - var_702#702 + var_736#736 >= -98
 c1294: - 99 var_424#507 - var_704#704 + var_780#780 >= -98
 c1295: - 99 var_425#356 - var_704#704 + var_734#734 >= -98
 c1296: - 99 var_426#508 - var_705#705 + var_780#780 >= -98
 c1297: - 99 var_427#417 - var_705#705 + var_736#736 >= -98
 c1298: - 99 var_428#515 - var_706#706 + var_783#783 >= -98
 c1299: - 99 var_429#357 - var_706#706 + var_734#734 >= -98
 c1300: - 99 var_430#516 - var_708#708 + var_783#783 >= -98
 c1301: - 99 var_431#418 - var_708#708 + var_736#736 >= -98
 c1302: - 99 var_432#518 - var_710#710 + var_786#786 >= -98
 c1303: - 99 var_433#358 - var_710#710 + var_734#734 >= -98
 c1304: - 99 var_434#519 - var_711#711 + var_786#786 >= -98
 c1305: - 99 var_435#419 - var_711#711 + var_736#736 >= -98
 c1306: - 99 var_436#526 - var_712#712 + var_789#789 >= -98
 c1307: - 99 var_437#359 - var_712#712 + var_734#734 >= -98
 c1308: - 99 var_438#527 - var_714#714 + var_789#789 >= -98
 c1309: - 99 var_439#420 - var_714#714 + var_736#736 >= -98
 c1310: - 99 var_440#529 - var_716#716 + var_792#792 >= -98
 c1311: - 99 var_441#360 - var_716#716 + var_734#734 >= -98
 c1312: - 99 var_442#530 - var_717#717 + var_792#792 >= -98
 c1313: - 99 var_443#421 - var_717#717 + var_736#736 >= -98
 c1314: - 99 var_444#537 - var_718#718 + var_795#795 >= -98
 c1315: - 99 var_445#361 - var_718#718 + var_734#734 >= -98
 c1316: - 99 var_446#538 - var_720#720 + var_795#795 >= -98
 c1317: - 99 var_447#422 - var_720#720 + var_736#736 >= -98
 c1318: - 99 var_448#540 - var_722#722 + var_798#798 >= -98
 c1319: - 99 var_449#362 - var_722#722 + var_734#734 >= -98
 c1320: - 99 var_450#541 - var_723#723 + var_798#798 >= -98
 c1321: - 99 var_451#423 - var_723#723 + var_736#736 >= -98
 c1322: - 99 var_452#548 - var_724#724 + var_801#801 >= -98
 c1323: - 99 var_453#363 - var_724#724 + var_734#734 >= -98
 c1324: - 99 var_454#549 - var_726#726 + var_801#801 >= -98
 c1325: - 99 var_455#424 - var_726#726 + var_736#736 >= -98
 c1326: - 99 var_456#551 - var_728#728 + var_804#804 >= -98
 c1327: - 99 var_457#364 - var_728#728 + var_734#734 >= -98
 c1328: - 99 var_458#552 - var_729#729 + var_804#804 >= -98
 c1329: - 99 var_459#425 - var_729#729 + var_736#736 >= -98
 c1330: - 99 var_460#303 + var_662#662 - var_730#730 >= -98
 c1331: - 99 var_461#301 + var_657#657 - var_731#731 >= -98
 c1332: - 99 var_462#433 - var_732#732 + var_806#806 >= -98
 c1333: - 99 var_463#305 + var_658#658 - var_732#732 >= -98
 c1334: - 99 var_464#434 - var_735#735 + var_806#806 >= -98
 c1335: - 99 var_465#366 + var_660#660 - var_735#735 >= -98
 c1336: - 99 var_466#435 - var_737#737 + var_806#806 >= -98
 c1337: - 99 var_467#306 + var_658#658 - var_737#737 >= -98
 c1338: - 99 var_468#436 - var_739#739 + var_806#806 >= -98
 c1339: - 99 var_469#367 + var_660#660 - var_739#739 >= -98
 c1340: - 99 var_470#444 - var_740#740 + var_807#807 >= -98
 c1341: - 99 var_471#308 + var_665#665 - var_740#740 >= -98
 c1342: - 99 var_472#445 - var_742#742 + var_807#807 >= -98
 c1343: - 99 var_473#369 + var_667#667 - var_742#742 >= -98
 c1344: - 99 var_474#446 - var_743#743 + var_807#807 >= -98
 c1345: - 99 var_475#309 + var_665#665 - var_743#743 >= -98
 c1346: - 99 var_476#447 - var_745#745 + var_807#807 >= -98
 c1347: - 99 var_477#370 + var_667#667 - var_745#745 >= -98
 c1348: - 99 var_478#455 - var_746#746 + var_808#808 >= -98
 c1349: - 99 var_479#311 + var_671#671 - var_746#746 >= -98
 c1350: - 99 var_480#456 - var_748#748 + var_808#808 >= -98
 c1351: - 99 var_481#372 + var_673#673 - var_748#748 >= -98
 c1352: - 99 var_482#457 - var_749#749 + var_808#808 >= -98
 c1353: - 99 var_483#312 + var_671#671 - var_749#749 >= -98
 c1354: - 99 var_484#458 - var_751#751 + var_808#808 >= -98
 c1355: - 99 var_485#373 + var_673#673 - var_751#751 >= -98
 c1356: - 99 var_486#466 - var_752#752 + var_809#809 >= -98
 c1357: - 99 var_487#314 + var_677#677 - var_752#752 >= -98
 c1358: - 99 var_488#467 - var_754#754 + var_809#809 >= -98
 c1359: - 99 var_489#375 + var_679#679 - var_754#754 >= -98
 c1360: - 99 var_490#468 - var_755#755 + var_809#809 >= -98
 c1361: - 99 var_491#315 + var_677#677 - var_755#755 >= -98
 c1362: - 99 var_492#469 - var_757#757 + var_809#809 >= -98
 c1363: - 99 var_493#376 + var_679#679 - var_757#757 >= -98
 c1364: - 99 var_494#477 - var_758#758 + var_810#810 >= -98
 c1365: - 99 var_495#317 + var_683#683 - var_758#758 >= -98
 c1366: - 99 var_496#478 - var_760#760 + var_810#810 >= -98
 c1367: - 99 var_497#378 + var_685#685 - var_760#760 >= -98
 c1368: - 99 var_498#479 - var_761#761 + var_810#810 >= -98
 c1369: - 99 var_499#318 + var_683#683 - var_761#761 >= -98
 c1370: - 99 var_500#480 - var_763#763 + var_810#810 >= -98
 c1371: - 99 var_501#379 + var_685#685 - var_763#763 >= -98
 c1372: - 99 var_502#488 - var_764#764 + var_811#811 >= -98
 c1373: - 99 var_503#320 + var_689#689 - var_764#764 >= -98
 c1374: - 99 var_504#489 - var_766#766 + var_811#811 >= -98
 c1375: - 99 var_505#381 + var_691#691 - var_766#766 >= -98
 c1376: - 99 var_506#490 - var_767#767 + var_811#811 >= -98
 c1377: - 99 var_507#321 + var_689#689 - var_767#767 >= -98
 c1378: - 99 var_508#491 - var_769#769 + var_811#811 >= -98
 c1379: - 99 var_509#382 + var_691#691 - var_769#769 >= -98
 c1380: - 99 var_510#499 - var_770#770 + var_812#812 >= -98
 c1381: - 99 var_511#323 + var_695#695 - var_770#770 >= -98
 c1382: - 99 var_512#500 - var_772#772 + var_812#812 >= -98
 c1383: - 99 var_513#384 + var_697#697 - var_772#772 >= -98
 c1384: - 99 var_514#501 - var_773#773 + var_812#812 >= -98
 c1385: - 99 var_515#324 + var_695#695 - var_773#773 >= -98
 c1386: - 99 var_516#502 - var_775#775 + var_812#812 >= -98
 c1387: - 99 var_517#385 + var_697#697 - var_775#775 >= -98
 c1388: - 99 var_518#510 - var_776#776 + var_813#813 >= -98
 c1389: - 99 var_519#326 + var_701#701 - var_776#776 >= -98
 c1390: - 99 var_520#511 - var_778#778 + var_813#813 >= -98
 c1391: - 99 var_521#387 + var_703#703 - var_778#778 >= -98
 c1392: - 99 var_522#512 - var_779#779 + var_813#813 >= -98
 c1393: - 99 var_523#327 + var_701#701 - var_779#779 >= -98
 c1394: - 99 var_524#513 - var_781#781 + var_813#813 >= -98
 c1395: - 99 var_525#388 + var_703#703 - var_781#781 >= -98
 c1396: - 99 var_526#521 - var_782#782 + var_814#814 >= -98
 c1397: - 99 var_527#329 + var_707#707 - var_782#782 >= -98
 c1398: - 99 var_528#522 - var_784#784 + var_814#814 >= -98
 c1399: - 99 var_529#390 + var_709#709 - var_784#784 >= -98
 c1400: - 99 var_530#523 - var_785#785 + var_814#814 >= -98
 c1401: - 99 var_531#330 + var_707#707 - var_785#785 >= -98
 c1402: - 99 var_532#524 - var_787#787 + var_814#814 >= -98
 c1403: - 99 var_533#391 + var_709#709 - var_787#787 >= -98
 c1404: - 99 var_534#532 - var_788#788 + var_815#815 >= -98
 c1405: - 99 var_535#332 + var_713#713 - var_788#788 >= -98
 c1406: - 99 var_536#533 - var_790#790 + var_815#815 >= -98
 c1407: - 99 var_537#393 + var_715#715 - var_790#790 >= -98
 c1408: - 99 var_538#534 - var_791#791 + var_815#815 >= -98
 c1409: - 99 var_539#333 + var_713#713 - var_791#791 >= -98
 c1410: - 99 var_540#535 - var_793#793 + var_815#815 >= -98
 c1411: - 99 var_541#394 + var_715#715 - var_793#793 >= -98
 c1412: - 99 var_542#543 - var_794#794 + var_816#816 >= -98
 c1413: - 99 var_543#335 + var_719#719 - var_794#794 >= -98
 c1414: - 99 var_544#544 - var_796#796 + var_816#816 >= -98
 c1415: - 99 var_545#396 + var_721#721 - var_796#796 >= -98
 c1416: - 99 var_546#545 - var_797#797 + var_816#816 >= -98
 c1417: - 99 var_547#336 + var_719#719 - var_797#797 >= -98
 c1418: - 99 var_548#546 - var_799#799 + var_816#816 >= -98
 c1419: - 99 var_549#397 + var_721#721 - var_799#799 >= -98
 c1420: - 99 var_550#554 - var_800#800 + var_817#817 >= -98
 c1421: - 99 var_551#338 + var_725#725 - var_800#800 >= -98
 c1422: - 99 var_552#555 - var_802#802 + var_817#817 >= -98
 c1423: - 99 var_553#399 + var_727#727 - var_802#802 >= -98
 c1424: - 99 var_554#556 - var_803#803 + var_817#817 >= -98
 c1425: - 99 var_555#339 + var_725#725 - var_803#803 >= -98
 c1426: - 99 var_556#557 - var_805#805 + var_817#817 >= -98
 c1427: - 99 var_557#400 + var_727#727 - var_805#805 >= -98
 c1428: drop_ball1_rooma_left#0 - var_558#558 >= 0
 c1429: drop_ball1_rooma_right#1 - var_559#559 >= 0
 c1430: drop_ball1_roomb_left#2 - var_560#560 >= 0
 c1431: drop_ball1_roomb_right#3 - var_561#561 >= 0
 c1432: drop_ball10_rooma_left#4 - var_562#562 >= 0
 c1433: drop_ball10_rooma_right#5 - var_563#563 >= 0
 c1434: drop_ball10_roomb_left#6 - var_564#564 >= 0
 c1435: drop_ball10_roomb_right#7 - var_565#565 >= 0
 c1436: drop_ball11_rooma_left#8 - var_566#566 >= 0
 c1437: drop_ball11_rooma_right#9 - var_567#567 >= 0
 c1438: drop_ball11_roomb_left#10 - var_568#568 >= 0
 c1439: drop_ball11_roomb_right#11 - var_569#569 >= 0
 c1440: drop_ball12_rooma_left#12 - var_570#570 >= 0
 c1441: drop_ball12_rooma_right#13 - var_571#571 >= 0
 c1442: drop_ball12_roomb_left#14 - var_572#572 >= 0
 c1443: drop_ball12_roomb_right#15 - var_573#573 >= 0
 c1444: drop_ball2_rooma_left#16 - var_574#574 >= 0
 c1445: drop_ball2_rooma_right#17 - var_575#575 >= 0
 c1446: drop_ball2_roomb_left#18 - var_576#576 >= 0
 c1447: drop_ball2_roomb_right#19 - var_577#577 >= 0
 c1448: drop_ball3_rooma_left#20 - var_578#578 >= 0
 c1449: drop_ball3_rooma_right#21 - var_579#579 >= 0
 c1450: drop_ball3_roomb_left#22 - var_580#580 >= 0
 c1451: drop_ball3_roomb_right#23 - var_581#581 >= 0
 c1452: drop_ball4_rooma_left#24 - var_582#582 >= 0
 c1453: drop_ball4_rooma_right#25 - var_583#583 >= 0
 c1454: drop_ball4_roomb_left#26 - var_584#584 >= 0
 c1455: drop_ball4_roomb_right#27 - var_585#585 >= 0
 c1456: drop_ball5_rooma_left#28 - var_586#586 >= 0
 c1457: drop_ball5_rooma_right#29 - var_587#587 >= 0
 c1458: drop_ball5_roomb_left#30 - var_588#588 >= 0
 c1459: drop_ball5_roomb_right#31 - var_589#589 >= 0
 c1460: drop_ball6_rooma_left#32 - var_590#590 >= 0
 c1461: drop_ball6_rooma_right#33 - var_591#591 >= 0
 c1462: drop_ball6_roomb_left#34 - var_592#592 >= 0
 c1463: drop_ball6_roomb_right#35 - var_593#593 >= 0
 c1464: drop_ball7_rooma_left#36 - var_594#594 >= 0
 c1465: drop_ball7_rooma_right#37 - var_595#595 >= 0
 c1466: drop_ball7_roomb_left#38 - var_596#596 >= 0
 c1467: drop_ball7_roomb_right#39 - var_597#597 >= 0
 c1468: drop_ball8_rooma_left#40 - var_598#598 >= 0
 c1469: drop_ball8_rooma_right#41 - var_599#599 >= 0
 c1470: drop_ball8_roomb_left#42 - var_600#600 >= 0
 c1471: drop_ball8_roomb_right#43 - var_601#601 >= 0
 c1472: drop_ball9_rooma_left#44 - var_602#602 >= 0
 c1473: drop_ball9_rooma_right#45 - var_603#603 >= 0
 c1474: drop_ball9_roomb_left#46 - var_604#604 >= 0
 c1475: drop_ball9_roomb_right#47 - var_605#605 >= 0
 c1476: move_rooma_roomb#48 - var_606#606 >= 0
 c1477: move_roomb_rooma#49 - var_607#607 >= 0
 c1478: pick_ball1_rooma_left#50 - var_608#608 >= 0
 c1479: pick_ball1_rooma_right#51 - var_609#609 >= 0
 c1480: pick_ball1_roomb_left#52 - var_610#610 >= 0
 c1481: pick_ball1_roomb_right#53 - var_611#611 >= 0
 c1482: pick_ball10_rooma_left#54 - var_612#612 >= 0
 c1483: pick_ball10_rooma_right#55 - var_613#613 >= 0
 c1484: pick_ball10_roomb_left#56 - var_614#614 >= 0
 c1485: pick_ball10_roomb_right#57 - var_615#615 >= 0
 c1486: pick_ball11_rooma_left#58 - var_616#616 >= 0
 c1487: pick_ball11_rooma_right#59 - var_617#617 >= 0
 c1488: pick_ball11_roomb_left#60 - var_618#618 >= 0
 c1489: pick_ball11_roomb_right#61 - var_619#619 >= 0
 c1490: pick_ball12_rooma_left#62 - var_620#620 >= 0
 c1491: pick_ball12_rooma_right#63 - var_621#621 >= 0
 c1492: pick_ball12_roomb_left#64 - var_622#622 >= 0
 c1493: pick_ball12_roomb_right#65 - var_623#623 >= 0
 c1494: pick_ball2_rooma_left#66 - var_624#624 >= 0
 c1495: pick_ball2_rooma_right#67 - var_625#625 >= 0
 c1496: pick_ball2_roomb_left#68 - var_626#626 >= 0
 c1497: pick_ball2_roomb_right#69 - var_627#627 >= 0
 c1498: pick_ball3_rooma_left#70 - var_628#628 >= 0
 c1499: pick_ball3_rooma_right#71 - var_629#629 >= 0
 c1500: pick_ball3_roomb_left#72 - var_630#630 >= 0
 c1501: pick_ball3_roomb_right#73 - var_631#631 >= 0
 c1502: pick_ball4_rooma_left#74 - var_632#632 >= 0
 c1503: pick_ball4_rooma_right#75 - var_633#633 >= 0
 c1504: pick_ball4_roomb_left#76 - var_634#634 >= 0
 c1505: pick_ball4_roomb_right#77 - var_635#635 >= 0
 c1506: pick_ball5_rooma_left#78 - var_636#636 >= 0
 c1507: pick_ball5_rooma_right#79 - var_637#637 >= 0
 c1508: pick_ball5_roomb_left#80 - var_638#638 >= 0
 c1509: pick_ball5_roomb_right#81 - var_639#639 >= 0
 c1510: pick_ball6_rooma_left#82 - var_640#640 >= 0
 c1511: pick_ball6_rooma_right#83 - var_641#641 >= 0
 c1512: pick_ball6_roomb_left#84 - var_642#642 >= 0
 c1513: pick_ball6_roomb_right#85 - var_643#643 >= 0
 c1514: pick_ball7_rooma_left#86 - var_644#644 >= 0
 c1515: pick_ball7_rooma_right#87 - var_645#645 >= 0
 c1516: pick_ball7_roomb_left#88 - var_646#646 >= 0
 c1517: pick_ball7_roomb_right#89 - var_647#647 >= 0
 c1518: pick_ball8_rooma_left#90 - var_648#648 >= 0
 c1519: pick_ball8_rooma_right#91 - var_649#649 >= 0
 c1520: pick_ball8_roomb_left#92 - var_650#650 >= 0
 c1521: pick_ball8_roomb_right#93 - var_651#651 >= 0
 c1522: pick_ball9_rooma_left#94 - var_652#652 >= 0
 c1523: pick_ball9_rooma_right#95 - var_653#653 >= 0
 c1524: pick_ball9_roomb_left#96 - var_654#654 >= 0
 c1525: pick_ball9_roomb_right#97 - var_655#655 >= 0
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
 0 <= _(drop_ball11_rooma_right_ge_2)#118 <= 1
 0 <= _(drop_ball11_rooma_right_ge_1)#119 <= 1
 0 <= _(drop_ball11_roomb_left_ge_2)#120 <= 1
 0 <= _(drop_ball11_roomb_left_ge_1)#121 <= 1
 0 <= _(drop_ball11_roomb_right_ge_2)#122 <= 1
 0 <= _(drop_ball11_roomb_right_ge_1)#123 <= 1
 0 <= _(drop_ball12_rooma_left_ge_2)#124 <= 1
 0 <= _(drop_ball12_rooma_left_ge_1)#125 <= 1
 0 <= _(drop_ball12_rooma_right_ge_2)#126 <= 1
 0 <= _(drop_ball12_rooma_right_ge_1)#127 <= 1
 0 <= _(drop_ball12_roomb_left_ge_2)#128 <= 1
 0 <= _(drop_ball12_roomb_left_ge_1)#129 <= 1
 0 <= _(drop_ball12_roomb_right_ge_2)#130 <= 1
 0 <= _(drop_ball12_roomb_right_ge_1)#131 <= 1
 0 <= _(drop_ball2_rooma_left_ge_2)#132 <= 1
 0 <= _(drop_ball2_rooma_left_ge_1)#133 <= 1
 0 <= _(drop_ball2_rooma_right_ge_2)#134 <= 1
 0 <= _(drop_ball2_rooma_right_ge_1)#135 <= 1
 0 <= _(drop_ball2_roomb_left_ge_2)#136 <= 1
 0 <= _(drop_ball2_roomb_left_ge_1)#137 <= 1
 0 <= _(drop_ball2_roomb_right_ge_2)#138 <= 1
 0 <= _(drop_ball2_roomb_right_ge_1)#139 <= 1
 0 <= _(drop_ball3_rooma_left_ge_2)#140 <= 1
 0 <= _(drop_ball3_rooma_left_ge_1)#141 <= 1
 0 <= _(drop_ball3_rooma_right_ge_2)#142 <= 1
 0 <= _(drop_ball3_rooma_right_ge_1)#143 <= 1
 0 <= _(drop_ball3_roomb_left_ge_2)#144 <= 1
 0 <= _(drop_ball3_roomb_left_ge_1)#145 <= 1
 0 <= _(drop_ball3_roomb_right_ge_2)#146 <= 1
 0 <= _(drop_ball3_roomb_right_ge_1)#147 <= 1
 0 <= _(drop_ball4_rooma_left_ge_2)#148 <= 1
 0 <= _(drop_ball4_rooma_left_ge_1)#149 <= 1
 0 <= _(drop_ball4_rooma_right_ge_2)#150 <= 1
 0 <= _(drop_ball4_rooma_right_ge_1)#151 <= 1
 0 <= _(drop_ball4_roomb_left_ge_2)#152 <= 1
 0 <= _(drop_ball4_roomb_left_ge_1)#153 <= 1
 0 <= _(drop_ball4_roomb_right_ge_2)#154 <= 1
 0 <= _(drop_ball4_roomb_right_ge_1)#155 <= 1
 0 <= _(drop_ball5_rooma_left_ge_2)#156 <= 1
 0 <= _(drop_ball5_rooma_left_ge_1)#157 <= 1
 0 <= _(drop_ball5_rooma_right_ge_2)#158 <= 1
 0 <= _(drop_ball5_rooma_right_ge_1)#159 <= 1
 0 <= _(drop_ball5_roomb_left_ge_2)#160 <= 1
 0 <= _(drop_ball5_roomb_left_ge_1)#161 <= 1
 0 <= _(drop_ball5_roomb_right_ge_2)#162 <= 1
 0 <= _(drop_ball5_roomb_right_ge_1)#163 <= 1
 0 <= _(drop_ball6_rooma_left_ge_2)#164 <= 1
 0 <= _(drop_ball6_rooma_left_ge_1)#165 <= 1
 0 <= _(drop_ball6_rooma_right_ge_2)#166 <= 1
 0 <= _(drop_ball6_rooma_right_ge_1)#167 <= 1
 0 <= _(drop_ball6_roomb_left_ge_2)#168 <= 1
 0 <= _(drop_ball6_roomb_left_ge_1)#169 <= 1
 0 <= _(drop_ball6_roomb_right_ge_2)#170 <= 1
 0 <= _(drop_ball6_roomb_right_ge_1)#171 <= 1
 0 <= _(drop_ball7_rooma_left_ge_2)#172 <= 1
 0 <= _(drop_ball7_rooma_left_ge_1)#173 <= 1
 0 <= _(drop_ball7_rooma_right_ge_2)#174 <= 1
 0 <= _(drop_ball7_rooma_right_ge_1)#175 <= 1
 0 <= _(drop_ball7_roomb_left_ge_2)#176 <= 1
 0 <= _(drop_ball7_roomb_left_ge_1)#177 <= 1
 0 <= _(drop_ball7_roomb_right_ge_2)#178 <= 1
 0 <= _(drop_ball7_roomb_right_ge_1)#179 <= 1
 0 <= _(drop_ball8_rooma_left_ge_2)#180 <= 1
 0 <= _(drop_ball8_rooma_left_ge_1)#181 <= 1
 0 <= _(drop_ball8_rooma_right_ge_2)#182 <= 1
 0 <= _(drop_ball8_rooma_right_ge_1)#183 <= 1
 0 <= _(drop_ball8_roomb_left_ge_2)#184 <= 1
 0 <= _(drop_ball8_roomb_left_ge_1)#185 <= 1
 0 <= _(drop_ball8_roomb_right_ge_2)#186 <= 1
 0 <= _(drop_ball8_roomb_right_ge_1)#187 <= 1
 0 <= _(drop_ball9_rooma_left_ge_2)#188 <= 1
 0 <= _(drop_ball9_rooma_left_ge_1)#189 <= 1
 0 <= _(drop_ball9_rooma_right_ge_2)#190 <= 1
 0 <= _(drop_ball9_rooma_right_ge_1)#191 <= 1
 0 <= _(drop_ball9_roomb_left_ge_2)#192 <= 1
 0 <= _(drop_ball9_roomb_left_ge_1)#193 <= 1
 0 <= _(drop_ball9_roomb_right_ge_2)#194 <= 1
 0 <= _(drop_ball9_roomb_right_ge_1)#195 <= 1
 0 <= _(move_rooma_roomb_ge_2)#196 <= 1
 0 <= _(move_rooma_roomb_ge_1)#197 <= 1
 0 <= _(move_roomb_rooma_ge_2)#198 <= 1
 0 <= _(move_roomb_rooma_ge_1)#199 <= 1
 0 <= _(pick_ball1_rooma_left_ge_2)#200 <= 1
 0 <= _(pick_ball1_rooma_left_ge_1)#201 <= 1
 0 <= _(pick_ball1_rooma_right_ge_2)#202 <= 1
 0 <= _(pick_ball1_rooma_right_ge_1)#203 <= 1
 0 <= _(pick_ball1_roomb_left_ge_2)#204 <= 1
 0 <= _(pick_ball1_roomb_left_ge_1)#205 <= 1
 0 <= _(pick_ball1_roomb_right_ge_2)#206 <= 1
 0 <= _(pick_ball1_roomb_right_ge_1)#207 <= 1
 0 <= _(pick_ball10_rooma_left_ge_2)#208 <= 1
 0 <= _(pick_ball10_rooma_left_ge_1)#209 <= 1
 0 <= _(pick_ball10_rooma_right_ge_2)#210 <= 1
 0 <= _(pick_ball10_rooma_right_ge_1)#211 <= 1
 0 <= _(pick_ball10_roomb_left_ge_2)#212 <= 1
 0 <= _(pick_ball10_roomb_left_ge_1)#213 <= 1
 0 <= _(pick_ball10_roomb_right_ge_2)#214 <= 1
 0 <= _(pick_ball10_roomb_right_ge_1)#215 <= 1
 0 <= _(pick_ball11_rooma_left_ge_2)#216 <= 1
 0 <= _(pick_ball11_rooma_left_ge_1)#217 <= 1
 0 <= _(pick_ball11_rooma_right_ge_2)#218 <= 1
 0 <= _(pick_ball11_rooma_right_ge_1)#219 <= 1
 0 <= _(pick_ball11_roomb_left_ge_2)#220 <= 1
 0 <= _(pick_ball11_roomb_left_ge_1)#221 <= 1
 0 <= _(pick_ball11_roomb_right_ge_2)#222 <= 1
 0 <= _(pick_ball11_roomb_right_ge_1)#223 <= 1
 0 <= _(pick_ball12_rooma_left_ge_2)#224 <= 1
 0 <= _(pick_ball12_rooma_left_ge_1)#225 <= 1
 0 <= _(pick_ball12_rooma_right_ge_2)#226 <= 1
 0 <= _(pick_ball12_rooma_right_ge_1)#227 <= 1
 0 <= _(pick_ball12_roomb_left_ge_2)#228 <= 1
 0 <= _(pick_ball12_roomb_left_ge_1)#229 <= 1
 0 <= _(pick_ball12_roomb_right_ge_2)#230 <= 1
 0 <= _(pick_ball12_roomb_right_ge_1)#231 <= 1
 0 <= _(pick_ball2_rooma_left_ge_2)#232 <= 1
 0 <= _(pick_ball2_rooma_left_ge_1)#233 <= 1
 0 <= _(pick_ball2_rooma_right_ge_2)#234 <= 1
 0 <= _(pick_ball2_rooma_right_ge_1)#235 <= 1
 0 <= _(pick_ball2_roomb_left_ge_2)#236 <= 1
 0 <= _(pick_ball2_roomb_left_ge_1)#237 <= 1
 0 <= _(pick_ball2_roomb_right_ge_2)#238 <= 1
 0 <= _(pick_ball2_roomb_right_ge_1)#239 <= 1
 0 <= _(pick_ball3_rooma_left_ge_2)#240 <= 1
 0 <= _(pick_ball3_rooma_left_ge_1)#241 <= 1
 0 <= _(pick_ball3_rooma_right_ge_2)#242 <= 1
 0 <= _(pick_ball3_rooma_right_ge_1)#243 <= 1
 0 <= _(pick_ball3_roomb_left_ge_2)#244 <= 1
 0 <= _(pick_ball3_roomb_left_ge_1)#245 <= 1
 0 <= _(pick_ball3_roomb_right_ge_2)#246 <= 1
 0 <= _(pick_ball3_roomb_right_ge_1)#247 <= 1
 0 <= _(pick_ball4_rooma_left_ge_2)#248 <= 1
 0 <= _(pick_ball4_rooma_left_ge_1)#249 <= 1
 0 <= _(pick_ball4_rooma_right_ge_2)#250 <= 1
 0 <= _(pick_ball4_rooma_right_ge_1)#251 <= 1
 0 <= _(pick_ball4_roomb_left_ge_2)#252 <= 1
 0 <= _(pick_ball4_roomb_left_ge_1)#253 <= 1
 0 <= _(pick_ball4_roomb_right_ge_2)#254 <= 1
 0 <= _(pick_ball4_roomb_right_ge_1)#255 <= 1
 0 <= _(pick_ball5_rooma_left_ge_2)#256 <= 1
 0 <= _(pick_ball5_rooma_left_ge_1)#257 <= 1
 0 <= _(pick_ball5_rooma_right_ge_2)#258 <= 1
 0 <= _(pick_ball5_rooma_right_ge_1)#259 <= 1
 0 <= _(pick_ball5_roomb_left_ge_2)#260 <= 1
 0 <= _(pick_ball5_roomb_left_ge_1)#261 <= 1
 0 <= _(pick_ball5_roomb_right_ge_2)#262 <= 1
 0 <= _(pick_ball5_roomb_right_ge_1)#263 <= 1
 0 <= _(pick_ball6_rooma_left_ge_2)#264 <= 1
 0 <= _(pick_ball6_rooma_left_ge_1)#265 <= 1
 0 <= _(pick_ball6_rooma_right_ge_2)#266 <= 1
 0 <= _(pick_ball6_rooma_right_ge_1)#267 <= 1
 0 <= _(pick_ball6_roomb_left_ge_2)#268 <= 1
 0 <= _(pick_ball6_roomb_left_ge_1)#269 <= 1
 0 <= _(pick_ball6_roomb_right_ge_2)#270 <= 1
 0 <= _(pick_ball6_roomb_right_ge_1)#271 <= 1
 0 <= _(pick_ball7_rooma_left_ge_2)#272 <= 1
 0 <= _(pick_ball7_rooma_left_ge_1)#273 <= 1
 0 <= _(pick_ball7_rooma_right_ge_2)#274 <= 1
 0 <= _(pick_ball7_rooma_right_ge_1)#275 <= 1
 0 <= _(pick_ball7_roomb_left_ge_2)#276 <= 1
 0 <= _(pick_ball7_roomb_left_ge_1)#277 <= 1
 0 <= _(pick_ball7_roomb_right_ge_2)#278 <= 1
 0 <= _(pick_ball7_roomb_right_ge_1)#279 <= 1
 0 <= _(pick_ball8_rooma_left_ge_2)#280 <= 1
 0 <= _(pick_ball8_rooma_left_ge_1)#281 <= 1
 0 <= _(pick_ball8_rooma_right_ge_2)#282 <= 1
 0 <= _(pick_ball8_rooma_right_ge_1)#283 <= 1
 0 <= _(pick_ball8_roomb_left_ge_2)#284 <= 1
 0 <= _(pick_ball8_roomb_left_ge_1)#285 <= 1
 0 <= _(pick_ball8_roomb_right_ge_2)#286 <= 1
 0 <= _(pick_ball8_roomb_right_ge_1)#287 <= 1
 0 <= _(pick_ball9_rooma_left_ge_2)#288 <= 1
 0 <= _(pick_ball9_rooma_left_ge_1)#289 <= 1
 0 <= _(pick_ball9_rooma_right_ge_2)#290 <= 1
 0 <= _(pick_ball9_rooma_right_ge_1)#291 <= 1
 0 <= _(pick_ball9_roomb_left_ge_2)#292 <= 1
 0 <= _(pick_ball9_roomb_left_ge_1)#293 <= 1
 0 <= _(pick_ball9_roomb_right_ge_2)#294 <= 1
 0 <= _(pick_ball9_roomb_right_ge_1)#295 <= 1
 0 <= _(YT_ge_2)#296 <= 1
 0 <= _(YT_ge_1)#297 <= 1
 0 <= _(YF_ge_2)#298 <= 1
 0 <= _(YF_ge_1)#299 <= 1
 0 <= var_312#300 <= 1
 0 <= var_461#301 <= 1
 0 <= var_313#302 <= 1
 0 <= var_460#303 <= 1
 0 <= var_314#304 <= 1
 0 <= var_463#305 <= 1
 0 <= var_467#306 <= 1
 0 <= var_315#307 <= 1
 0 <= var_471#308 <= 1
 0 <= var_475#309 <= 1
 0 <= var_316#310 <= 1
 0 <= var_479#311 <= 1
 0 <= var_483#312 <= 1
 0 <= var_317#313 <= 1
 0 <= var_487#314 <= 1
 0 <= var_491#315 <= 1
 0 <= var_318#316 <= 1
 0 <= var_495#317 <= 1
 0 <= var_499#318 <= 1
 0 <= var_319#319 <= 1
 0 <= var_503#320 <= 1
 0 <= var_507#321 <= 1
 0 <= var_320#322 <= 1
 0 <= var_511#323 <= 1
 0 <= var_515#324 <= 1
 0 <= var_321#325 <= 1
 0 <= var_519#326 <= 1
 0 <= var_523#327 <= 1
 0 <= var_322#328 <= 1
 0 <= var_527#329 <= 1
 0 <= var_531#330 <= 1
 0 <= var_323#331 <= 1
 0 <= var_535#332 <= 1
 0 <= var_539#333 <= 1
 0 <= var_324#334 <= 1
 0 <= var_543#335 <= 1
 0 <= var_547#336 <= 1
 0 <= var_325#337 <= 1
 0 <= var_551#338 <= 1
 0 <= var_555#339 <= 1
 0 <= var_326#340 <= 1
 0 <= var_365#341 <= 1
 0 <= var_369#342 <= 1
 0 <= var_373#343 <= 1
 0 <= var_377#344 <= 1
 0 <= var_381#345 <= 1
 0 <= var_385#346 <= 1
 0 <= var_389#347 <= 1
 0 <= var_393#348 <= 1
 0 <= var_397#349 <= 1
 0 <= var_401#350 <= 1
 0 <= var_405#351 <= 1
 0 <= var_409#352 <= 1
 0 <= var_413#353 <= 1
 0 <= var_417#354 <= 1
 0 <= var_421#355 <= 1
 0 <= var_425#356 <= 1
 0 <= var_429#357 <= 1
 0 <= var_433#358 <= 1
 0 <= var_437#359 <= 1
 0 <= var_441#360 <= 1
 0 <= var_445#361 <= 1
 0 <= var_449#362 <= 1
 0 <= var_453#363 <= 1
 0 <= var_457#364 <= 1
 0 <= var_327#365 <= 1
 0 <= var_465#366 <= 1
 0 <= var_469#367 <= 1
 0 <= var_328#368 <= 1
 0 <= var_473#369 <= 1
 0 <= var_477#370 <= 1
 0 <= var_329#371 <= 1
 0 <= var_481#372 <= 1
 0 <= var_485#373 <= 1
 0 <= var_330#374 <= 1
 0 <= var_489#375 <= 1
 0 <= var_493#376 <= 1
 0 <= var_331#377 <= 1
 0 <= var_497#378 <= 1
 0 <= var_501#379 <= 1
 0 <= var_332#380 <= 1
 0 <= var_505#381 <= 1
 0 <= var_509#382 <= 1
 0 <= var_333#383 <= 1
 0 <= var_513#384 <= 1
 0 <= var_517#385 <= 1
 0 <= var_334#386 <= 1
 0 <= var_521#387 <= 1
 0 <= var_525#388 <= 1
 0 <= var_335#389 <= 1
 0 <= var_529#390 <= 1
 0 <= var_533#391 <= 1
 0 <= var_336#392 <= 1
 0 <= var_537#393 <= 1
 0 <= var_541#394 <= 1
 0 <= var_337#395 <= 1
 0 <= var_545#396 <= 1
 0 <= var_549#397 <= 1
 0 <= var_338#398 <= 1
 0 <= var_553#399 <= 1
 0 <= var_557#400 <= 1
 0 <= var_339#401 <= 1
 0 <= var_367#402 <= 1
 0 <= var_371#403 <= 1
 0 <= var_375#404 <= 1
 0 <= var_379#405 <= 1
 0 <= var_383#406 <= 1
 0 <= var_387#407 <= 1
 0 <= var_391#408 <= 1
 0 <= var_395#409 <= 1
 0 <= var_399#410 <= 1
 0 <= var_403#411 <= 1
 0 <= var_407#412 <= 1
 0 <= var_411#413 <= 1
 0 <= var_415#414 <= 1
 0 <= var_419#415 <= 1
 0 <= var_423#416 <= 1
 0 <= var_427#417 <= 1
 0 <= var_431#418 <= 1
 0 <= var_435#419 <= 1
 0 <= var_439#420 <= 1
 0 <= var_443#421 <= 1
 0 <= var_447#422 <= 1
 0 <= var_451#423 <= 1
 0 <= var_455#424 <= 1
 0 <= var_459#425 <= 1
 0 <= var_340#426 <= 1
 0 <= var_364#427 <= 1
 0 <= var_366#428 <= 1
      var_300#429 = 1
 0 <= var_368#430 <= 1
 0 <= var_370#431 <= 1
 0 <= var_341#432 <= 1
 0 <= var_462#433 <= 1
 0 <= var_464#434 <= 1
 0 <= var_466#435 <= 1
 0 <= var_468#436 <= 1
 0 <= var_342#437 <= 1
 0 <= var_372#438 <= 1
 0 <= var_374#439 <= 1
      var_301#440 = 1
 0 <= var_376#441 <= 1
 0 <= var_378#442 <= 1
 0 <= var_343#443 <= 1
 0 <= var_470#444 <= 1
 0 <= var_472#445 <= 1
 0 <= var_474#446 <= 1
 0 <= var_476#447 <= 1
 0 <= var_344#448 <= 1
 0 <= var_380#449 <= 1
 0 <= var_382#450 <= 1
      var_302#451 = 1
 0 <= var_384#452 <= 1
 0 <= var_386#453 <= 1
 0 <= var_345#454 <= 1
 0 <= var_478#455 <= 1
 0 <= var_480#456 <= 1
 0 <= var_482#457 <= 1
 0 <= var_484#458 <= 1
 0 <= var_346#459 <= 1
 0 <= var_388#460 <= 1
 0 <= var_390#461 <= 1
      var_303#462 = 1
 0 <= var_392#463 <= 1
 0 <= var_394#464 <= 1
 0 <= var_347#465 <= 1
 0 <= var_486#466 <= 1
 0 <= var_488#467 <= 1
 0 <= var_490#468 <= 1
 0 <= var_492#469 <= 1
 0 <= var_348#470 <= 1
 0 <= var_396#471 <= 1
 0 <= var_398#472 <= 1
      var_304#473 = 1
 0 <= var_400#474 <= 1
 0 <= var_402#475 <= 1
 0 <= var_349#476 <= 1
 0 <= var_494#477 <= 1
 0 <= var_496#478 <= 1
 0 <= var_498#479 <= 1
 0 <= var_500#480 <= 1
 0 <= var_350#481 <= 1
 0 <= var_404#482 <= 1
 0 <= var_406#483 <= 1
      var_305#484 = 1
 0 <= var_408#485 <= 1
 0 <= var_410#486 <= 1
 0 <= var_351#487 <= 1
 0 <= var_502#488 <= 1
 0 <= var_504#489 <= 1
 0 <= var_506#490 <= 1
 0 <= var_508#491 <= 1
 0 <= var_352#492 <= 1
 0 <= var_412#493 <= 1
 0 <= var_414#494 <= 1
      var_306#495 = 1
 0 <= var_416#496 <= 1
 0 <= var_418#497 <= 1
 0 <= var_353#498 <= 1
 0 <= var_510#499 <= 1
 0 <= var_512#500 <= 1
 0 <= var_514#501 <= 1
 0 <= var_516#502 <= 1
 0 <= var_354#503 <= 1
 0 <= var_420#504 <= 1
 0 <= var_422#505 <= 1
      var_307#506 = 1
 0 <= var_424#507 <= 1
 0 <= var_426#508 <= 1
 0 <= var_355#509 <= 1
 0 <= var_518#510 <= 1
 0 <= var_520#511 <= 1
 0 <= var_522#512 <= 1
 0 <= var_524#513 <= 1
 0 <= var_356#514 <= 1
 0 <= var_428#515 <= 1
 0 <= var_430#516 <= 1
      var_308#517 = 1
 0 <= var_432#518 <= 1
 0 <= var_434#519 <= 1
 0 <= var_357#520 <= 1
 0 <= var_526#521 <= 1
 0 <= var_528#522 <= 1
 0 <= var_530#523 <= 1
 0 <= var_532#524 <= 1
 0 <= var_358#525 <= 1
 0 <= var_436#526 <= 1
 0 <= var_438#527 <= 1
      var_309#528 = 1
 0 <= var_440#529 <= 1
 0 <= var_442#530 <= 1
 0 <= var_359#531 <= 1
 0 <= var_534#532 <= 1
 0 <= var_536#533 <= 1
 0 <= var_538#534 <= 1
 0 <= var_540#535 <= 1
 0 <= var_360#536 <= 1
 0 <= var_444#537 <= 1
 0 <= var_446#538 <= 1
      var_310#539 = 1
 0 <= var_448#540 <= 1
 0 <= var_450#541 <= 1
 0 <= var_361#542 <= 1
 0 <= var_542#543 <= 1
 0 <= var_544#544 <= 1
 0 <= var_546#545 <= 1
 0 <= var_548#546 <= 1
 0 <= var_362#547 <= 1
 0 <= var_452#548 <= 1
 0 <= var_454#549 <= 1
      var_311#550 = 1
 0 <= var_456#551 <= 1
 0 <= var_458#552 <= 1
 0 <= var_363#553 <= 1
 0 <= var_550#554 <= 1
 0 <= var_552#555 <= 1
 0 <= var_554#556 <= 1
 0 <= var_556#557 <= 1
 0 <= var_558#558 <= 1
 0 <= var_559#559 <= 1
 0 <= var_560#560 <= 1
 0 <= var_561#561 <= 1
 0 <= var_562#562 <= 1
 0 <= var_563#563 <= 1
 0 <= var_564#564 <= 1
 0 <= var_565#565 <= 1
 0 <= var_566#566 <= 1
 0 <= var_567#567 <= 1
 0 <= var_568#568 <= 1
 0 <= var_569#569 <= 1
 0 <= var_570#570 <= 1
 0 <= var_571#571 <= 1
 0 <= var_572#572 <= 1
 0 <= var_573#573 <= 1
 0 <= var_574#574 <= 1
 0 <= var_575#575 <= 1
 0 <= var_576#576 <= 1
 0 <= var_577#577 <= 1
 0 <= var_578#578 <= 1
 0 <= var_579#579 <= 1
 0 <= var_580#580 <= 1
 0 <= var_581#581 <= 1
 0 <= var_582#582 <= 1
 0 <= var_583#583 <= 1
 0 <= var_584#584 <= 1
 0 <= var_585#585 <= 1
 0 <= var_586#586 <= 1
 0 <= var_587#587 <= 1
 0 <= var_588#588 <= 1
 0 <= var_589#589 <= 1
 0 <= var_590#590 <= 1
 0 <= var_591#591 <= 1
 0 <= var_592#592 <= 1
 0 <= var_593#593 <= 1
 0 <= var_594#594 <= 1
 0 <= var_595#595 <= 1
 0 <= var_596#596 <= 1
 0 <= var_597#597 <= 1
 0 <= var_598#598 <= 1
 0 <= var_599#599 <= 1
 0 <= var_600#600 <= 1
 0 <= var_601#601 <= 1
 0 <= var_602#602 <= 1
 0 <= var_603#603 <= 1
 0 <= var_604#604 <= 1
 0 <= var_605#605 <= 1
 0 <= var_606#606 <= 1
 0 <= var_607#607 <= 1
 0 <= var_608#608 <= 1
 0 <= var_609#609 <= 1
 0 <= var_610#610 <= 1
 0 <= var_611#611 <= 1
 0 <= var_612#612 <= 1
 0 <= var_613#613 <= 1
 0 <= var_614#614 <= 1
 0 <= var_615#615 <= 1
 0 <= var_616#616 <= 1
 0 <= var_617#617 <= 1
 0 <= var_618#618 <= 1
 0 <= var_619#619 <= 1
 0 <= var_620#620 <= 1
 0 <= var_621#621 <= 1
 0 <= var_622#622 <= 1
 0 <= var_623#623 <= 1
 0 <= var_624#624 <= 1
 0 <= var_625#625 <= 1
 0 <= var_626#626 <= 1
 0 <= var_627#627 <= 1
 0 <= var_628#628 <= 1
 0 <= var_629#629 <= 1
 0 <= var_630#630 <= 1
 0 <= var_631#631 <= 1
 0 <= var_632#632 <= 1
 0 <= var_633#633 <= 1
 0 <= var_634#634 <= 1
 0 <= var_635#635 <= 1
 0 <= var_636#636 <= 1
 0 <= var_637#637 <= 1
 0 <= var_638#638 <= 1
 0 <= var_639#639 <= 1
 0 <= var_640#640 <= 1
 0 <= var_641#641 <= 1
 0 <= var_642#642 <= 1
 0 <= var_643#643 <= 1
 0 <= var_644#644 <= 1
 0 <= var_645#645 <= 1
 0 <= var_646#646 <= 1
 0 <= var_647#647 <= 1
 0 <= var_648#648 <= 1
 0 <= var_649#649 <= 1
 0 <= var_650#650 <= 1
 0 <= var_651#651 <= 1
 0 <= var_652#652 <= 1
 0 <= var_653#653 <= 1
 0 <= var_654#654 <= 1
 0 <= var_655#655 <= 1
 0 <= var_656#656 <= 98
 0 <= var_657#657 <= 98
 0 <= var_658#658 <= 98
 0 <= var_659#659 <= 98
 0 <= var_660#660 <= 98
 0 <= var_661#661 <= 98
 0 <= var_662#662 <= 98
 0 <= var_663#663 <= 98
 0 <= var_664#664 <= 98
 0 <= var_665#665 <= 98
 0 <= var_666#666 <= 98
 0 <= var_667#667 <= 98
 0 <= var_668#668 <= 98
 0 <= var_669#669 <= 98
 0 <= var_670#670 <= 98
 0 <= var_671#671 <= 98
 0 <= var_672#672 <= 98
 0 <= var_673#673 <= 98
 0 <= var_674#674 <= 98
 0 <= var_675#675 <= 98
 0 <= var_676#676 <= 98
 0 <= var_677#677 <= 98
 0 <= var_678#678 <= 98
 0 <= var_679#679 <= 98
 0 <= var_680#680 <= 98
 0 <= var_681#681 <= 98
 0 <= var_682#682 <= 98
 0 <= var_683#683 <= 98
 0 <= var_684#684 <= 98
 0 <= var_685#685 <= 98
 0 <= var_686#686 <= 98
 0 <= var_687#687 <= 98
 0 <= var_688#688 <= 98
 0 <= var_689#689 <= 98
 0 <= var_690#690 <= 98
 0 <= var_691#691 <= 98
 0 <= var_692#692 <= 98
 0 <= var_693#693 <= 98
 0 <= var_694#694 <= 98
 0 <= var_695#695 <= 98
 0 <= var_696#696 <= 98
 0 <= var_697#697 <= 98
 0 <= var_698#698 <= 98
 0 <= var_699#699 <= 98
 0 <= var_700#700 <= 98
 0 <= var_701#701 <= 98
 0 <= var_702#702 <= 98
 0 <= var_703#703 <= 98
 0 <= var_704#704 <= 98
 0 <= var_705#705 <= 98
 0 <= var_706#706 <= 98
 0 <= var_707#707 <= 98
 0 <= var_708#708 <= 98
 0 <= var_709#709 <= 98
 0 <= var_710#710 <= 98
 0 <= var_711#711 <= 98
 0 <= var_712#712 <= 98
 0 <= var_713#713 <= 98
 0 <= var_714#714 <= 98
 0 <= var_715#715 <= 98
 0 <= var_716#716 <= 98
 0 <= var_717#717 <= 98
 0 <= var_718#718 <= 98
 0 <= var_719#719 <= 98
 0 <= var_720#720 <= 98
 0 <= var_721#721 <= 98
 0 <= var_722#722 <= 98
 0 <= var_723#723 <= 98
 0 <= var_724#724 <= 98
 0 <= var_725#725 <= 98
 0 <= var_726#726 <= 98
 0 <= var_727#727 <= 98
 0 <= var_728#728 <= 98
 0 <= var_729#729 <= 98
 0 <= var_730#730 <= 98
 0 <= var_731#731 <= 98
 0 <= var_732#732 <= 98
 0 <= var_733#733 <= 98
 0 <= var_734#734 <= 98
 0 <= var_735#735 <= 98
 0 <= var_736#736 <= 98
 0 <= var_737#737 <= 98
 0 <= var_738#738 <= 98
 0 <= var_739#739 <= 98
 0 <= var_740#740 <= 98
 0 <= var_741#741 <= 98
 0 <= var_742#742 <= 98
 0 <= var_743#743 <= 98
 0 <= var_744#744 <= 98
 0 <= var_745#745 <= 98
 0 <= var_746#746 <= 98
 0 <= var_747#747 <= 98
 0 <= var_748#748 <= 98
 0 <= var_749#749 <= 98
 0 <= var_750#750 <= 98
 0 <= var_751#751 <= 98
 0 <= var_752#752 <= 98
 0 <= var_753#753 <= 98
 0 <= var_754#754 <= 98
 0 <= var_755#755 <= 98
 0 <= var_756#756 <= 98
 0 <= var_757#757 <= 98
 0 <= var_758#758 <= 98
 0 <= var_759#759 <= 98
 0 <= var_760#760 <= 98
 0 <= var_761#761 <= 98
 0 <= var_762#762 <= 98
 0 <= var_763#763 <= 98
 0 <= var_764#764 <= 98
 0 <= var_765#765 <= 98
 0 <= var_766#766 <= 98
 0 <= var_767#767 <= 98
 0 <= var_768#768 <= 98
 0 <= var_769#769 <= 98
 0 <= var_770#770 <= 98
 0 <= var_771#771 <= 98
 0 <= var_772#772 <= 98
 0 <= var_773#773 <= 98
 0 <= var_774#774 <= 98
 0 <= var_775#775 <= 98
 0 <= var_776#776 <= 98
 0 <= var_777#777 <= 98
 0 <= var_778#778 <= 98
 0 <= var_779#779 <= 98
 0 <= var_780#780 <= 98
 0 <= var_781#781 <= 98
 0 <= var_782#782 <= 98
 0 <= var_783#783 <= 98
 0 <= var_784#784 <= 98
 0 <= var_785#785 <= 98
 0 <= var_786#786 <= 98
 0 <= var_787#787 <= 98
 0 <= var_788#788 <= 98
 0 <= var_789#789 <= 98
 0 <= var_790#790 <= 98
 0 <= var_791#791 <= 98
 0 <= var_792#792 <= 98
 0 <= var_793#793 <= 98
 0 <= var_794#794 <= 98
 0 <= var_795#795 <= 98
 0 <= var_796#796 <= 98
 0 <= var_797#797 <= 98
 0 <= var_798#798 <= 98
 0 <= var_799#799 <= 98
 0 <= var_800#800 <= 98
 0 <= var_801#801 <= 98
 0 <= var_802#802 <= 98
 0 <= var_803#803 <= 98
 0 <= var_804#804 <= 98
 0 <= var_805#805 <= 98
 0 <= var_806#806 <= 98
 0 <= var_807#807 <= 98
 0 <= var_808#808 <= 98
 0 <= var_809#809 <= 98
 0 <= var_810#810 <= 98
 0 <= var_811#811 <= 98
 0 <= var_812#812 <= 98
 0 <= var_813#813 <= 98
 0 <= var_814#814 <= 98
 0 <= var_815#815 <= 98
 0 <= var_816#816 <= 98
 0 <= var_817#817 <= 98
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
 _(drop_ball11_rooma_right_ge_2)#118  _(drop_ball11_rooma_right_ge_1)#119 
 _(drop_ball11_roomb_left_ge_2)#120  _(drop_ball11_roomb_left_ge_1)#121 
 _(drop_ball11_roomb_right_ge_2)#122  _(drop_ball11_roomb_right_ge_1)#123 
 _(drop_ball12_rooma_left_ge_2)#124  _(drop_ball12_rooma_left_ge_1)#125 
 _(drop_ball12_rooma_right_ge_2)#126  _(drop_ball12_rooma_right_ge_1)#127 
 _(drop_ball12_roomb_left_ge_2)#128  _(drop_ball12_roomb_left_ge_1)#129 
 _(drop_ball12_roomb_right_ge_2)#130  _(drop_ball12_roomb_right_ge_1)#131 
 _(drop_ball2_rooma_left_ge_2)#132  _(drop_ball2_rooma_left_ge_1)#133 
 _(drop_ball2_rooma_right_ge_2)#134  _(drop_ball2_rooma_right_ge_1)#135 
 _(drop_ball2_roomb_left_ge_2)#136  _(drop_ball2_roomb_left_ge_1)#137 
 _(drop_ball2_roomb_right_ge_2)#138  _(drop_ball2_roomb_right_ge_1)#139 
 _(drop_ball3_rooma_left_ge_2)#140  _(drop_ball3_rooma_left_ge_1)#141 
 _(drop_ball3_rooma_right_ge_2)#142  _(drop_ball3_rooma_right_ge_1)#143 
 _(drop_ball3_roomb_left_ge_2)#144  _(drop_ball3_roomb_left_ge_1)#145 
 _(drop_ball3_roomb_right_ge_2)#146  _(drop_ball3_roomb_right_ge_1)#147 
 _(drop_ball4_rooma_left_ge_2)#148  _(drop_ball4_rooma_left_ge_1)#149 
 _(drop_ball4_rooma_right_ge_2)#150  _(drop_ball4_rooma_right_ge_1)#151 
 _(drop_ball4_roomb_left_ge_2)#152  _(drop_ball4_roomb_left_ge_1)#153 
 _(drop_ball4_roomb_right_ge_2)#154  _(drop_ball4_roomb_right_ge_1)#155 
 _(drop_ball5_rooma_left_ge_2)#156  _(drop_ball5_rooma_left_ge_1)#157 
 _(drop_ball5_rooma_right_ge_2)#158  _(drop_ball5_rooma_right_ge_1)#159 
 _(drop_ball5_roomb_left_ge_2)#160  _(drop_ball5_roomb_left_ge_1)#161 
 _(drop_ball5_roomb_right_ge_2)#162  _(drop_ball5_roomb_right_ge_1)#163 
 _(drop_ball6_rooma_left_ge_2)#164  _(drop_ball6_rooma_left_ge_1)#165 
 _(drop_ball6_rooma_right_ge_2)#166  _(drop_ball6_rooma_right_ge_1)#167 
 _(drop_ball6_roomb_left_ge_2)#168  _(drop_ball6_roomb_left_ge_1)#169 
 _(drop_ball6_roomb_right_ge_2)#170  _(drop_ball6_roomb_right_ge_1)#171 
 _(drop_ball7_rooma_left_ge_2)#172  _(drop_ball7_rooma_left_ge_1)#173 
 _(drop_ball7_rooma_right_ge_2)#174  _(drop_ball7_rooma_right_ge_1)#175 
 _(drop_ball7_roomb_left_ge_2)#176  _(drop_ball7_roomb_left_ge_1)#177 
 _(drop_ball7_roomb_right_ge_2)#178  _(drop_ball7_roomb_right_ge_1)#179 
 _(drop_ball8_rooma_left_ge_2)#180  _(drop_ball8_rooma_left_ge_1)#181 
 _(drop_ball8_rooma_right_ge_2)#182  _(drop_ball8_rooma_right_ge_1)#183 
 _(drop_ball8_roomb_left_ge_2)#184  _(drop_ball8_roomb_left_ge_1)#185 
 _(drop_ball8_roomb_right_ge_2)#186  _(drop_ball8_roomb_right_ge_1)#187 
 _(drop_ball9_rooma_left_ge_2)#188  _(drop_ball9_rooma_left_ge_1)#189 
 _(drop_ball9_rooma_right_ge_2)#190  _(drop_ball9_rooma_right_ge_1)#191 
 _(drop_ball9_roomb_left_ge_2)#192  _(drop_ball9_roomb_left_ge_1)#193 
 _(drop_ball9_roomb_right_ge_2)#194  _(drop_ball9_roomb_right_ge_1)#195 
 _(move_rooma_roomb_ge_2)#196  _(move_rooma_roomb_ge_1)#197 
 _(move_roomb_rooma_ge_2)#198  _(move_roomb_rooma_ge_1)#199 
 _(pick_ball1_rooma_left_ge_2)#200  _(pick_ball1_rooma_left_ge_1)#201 
 _(pick_ball1_rooma_right_ge_2)#202  _(pick_ball1_rooma_right_ge_1)#203 
 _(pick_ball1_roomb_left_ge_2)#204  _(pick_ball1_roomb_left_ge_1)#205 
 _(pick_ball1_roomb_right_ge_2)#206  _(pick_ball1_roomb_right_ge_1)#207 
 _(pick_ball10_rooma_left_ge_2)#208  _(pick_ball10_rooma_left_ge_1)#209 
 _(pick_ball10_rooma_right_ge_2)#210  _(pick_ball10_rooma_right_ge_1)#211 
 _(pick_ball10_roomb_left_ge_2)#212  _(pick_ball10_roomb_left_ge_1)#213 
 _(pick_ball10_roomb_right_ge_2)#214  _(pick_ball10_roomb_right_ge_1)#215 
 _(pick_ball11_rooma_left_ge_2)#216  _(pick_ball11_rooma_left_ge_1)#217 
 _(pick_ball11_rooma_right_ge_2)#218  _(pick_ball11_rooma_right_ge_1)#219 
 _(pick_ball11_roomb_left_ge_2)#220  _(pick_ball11_roomb_left_ge_1)#221 
 _(pick_ball11_roomb_right_ge_2)#222  _(pick_ball11_roomb_right_ge_1)#223 
 _(pick_ball12_rooma_left_ge_2)#224  _(pick_ball12_rooma_left_ge_1)#225 
 _(pick_ball12_rooma_right_ge_2)#226  _(pick_ball12_rooma_right_ge_1)#227 
 _(pick_ball12_roomb_left_ge_2)#228  _(pick_ball12_roomb_left_ge_1)#229 
 _(pick_ball12_roomb_right_ge_2)#230  _(pick_ball12_roomb_right_ge_1)#231 
 _(pick_ball2_rooma_left_ge_2)#232  _(pick_ball2_rooma_left_ge_1)#233 
 _(pick_ball2_rooma_right_ge_2)#234  _(pick_ball2_rooma_right_ge_1)#235 
 _(pick_ball2_roomb_left_ge_2)#236  _(pick_ball2_roomb_left_ge_1)#237 
 _(pick_ball2_roomb_right_ge_2)#238  _(pick_ball2_roomb_right_ge_1)#239 
 _(pick_ball3_rooma_left_ge_2)#240  _(pick_ball3_rooma_left_ge_1)#241 
 _(pick_ball3_rooma_right_ge_2)#242  _(pick_ball3_rooma_right_ge_1)#243 
 _(pick_ball3_roomb_left_ge_2)#244  _(pick_ball3_roomb_left_ge_1)#245 
 _(pick_ball3_roomb_right_ge_2)#246  _(pick_ball3_roomb_right_ge_1)#247 
 _(pick_ball4_rooma_left_ge_2)#248  _(pick_ball4_rooma_left_ge_1)#249 
 _(pick_ball4_rooma_right_ge_2)#250  _(pick_ball4_rooma_right_ge_1)#251 
 _(pick_ball4_roomb_left_ge_2)#252  _(pick_ball4_roomb_left_ge_1)#253 
 _(pick_ball4_roomb_right_ge_2)#254  _(pick_ball4_roomb_right_ge_1)#255 
 _(pick_ball5_rooma_left_ge_2)#256  _(pick_ball5_rooma_left_ge_1)#257 
 _(pick_ball5_rooma_right_ge_2)#258  _(pick_ball5_rooma_right_ge_1)#259 
 _(pick_ball5_roomb_left_ge_2)#260  _(pick_ball5_roomb_left_ge_1)#261 
 _(pick_ball5_roomb_right_ge_2)#262  _(pick_ball5_roomb_right_ge_1)#263 
 _(pick_ball6_rooma_left_ge_2)#264  _(pick_ball6_rooma_left_ge_1)#265 
 _(pick_ball6_rooma_right_ge_2)#266  _(pick_ball6_rooma_right_ge_1)#267 
 _(pick_ball6_roomb_left_ge_2)#268  _(pick_ball6_roomb_left_ge_1)#269 
 _(pick_ball6_roomb_right_ge_2)#270  _(pick_ball6_roomb_right_ge_1)#271 
 _(pick_ball7_rooma_left_ge_2)#272  _(pick_ball7_rooma_left_ge_1)#273 
 _(pick_ball7_rooma_right_ge_2)#274  _(pick_ball7_rooma_right_ge_1)#275 
 _(pick_ball7_roomb_left_ge_2)#276  _(pick_ball7_roomb_left_ge_1)#277 
 _(pick_ball7_roomb_right_ge_2)#278  _(pick_ball7_roomb_right_ge_1)#279 
 _(pick_ball8_rooma_left_ge_2)#280  _(pick_ball8_rooma_left_ge_1)#281 
 _(pick_ball8_rooma_right_ge_2)#282  _(pick_ball8_rooma_right_ge_1)#283 
 _(pick_ball8_roomb_left_ge_2)#284  _(pick_ball8_roomb_left_ge_1)#285 
 _(pick_ball8_roomb_right_ge_2)#286  _(pick_ball8_roomb_right_ge_1)#287 
 _(pick_ball9_rooma_left_ge_2)#288  _(pick_ball9_rooma_left_ge_1)#289 
 _(pick_ball9_rooma_right_ge_2)#290  _(pick_ball9_rooma_right_ge_1)#291 
 _(pick_ball9_roomb_left_ge_2)#292  _(pick_ball9_roomb_left_ge_1)#293 
 _(pick_ball9_roomb_right_ge_2)#294  _(pick_ball9_roomb_right_ge_1)#295 
 _(YT_ge_2)#296  _(YT_ge_1)#297  _(YF_ge_2)#298  _(YF_ge_1)#299  var_312#300 
 var_461#301  var_313#302  var_460#303  var_314#304  var_463#305  var_467#306 
 var_315#307  var_471#308  var_475#309  var_316#310  var_479#311  var_483#312 
 var_317#313  var_487#314  var_491#315  var_318#316  var_495#317  var_499#318 
 var_319#319  var_503#320  var_507#321  var_320#322  var_511#323  var_515#324 
 var_321#325  var_519#326  var_523#327  var_322#328  var_527#329  var_531#330 
 var_323#331  var_535#332  var_539#333  var_324#334  var_543#335  var_547#336 
 var_325#337  var_551#338  var_555#339  var_326#340  var_365#341  var_369#342 
 var_373#343  var_377#344  var_381#345  var_385#346  var_389#347  var_393#348 
 var_397#349  var_401#350  var_405#351  var_409#352  var_413#353  var_417#354 
 var_421#355  var_425#356  var_429#357  var_433#358  var_437#359  var_441#360 
 var_445#361  var_449#362  var_453#363  var_457#364  var_327#365  var_465#366 
 var_469#367  var_328#368  var_473#369  var_477#370  var_329#371  var_481#372 
 var_485#373  var_330#374  var_489#375  var_493#376  var_331#377  var_497#378 
 var_501#379  var_332#380  var_505#381  var_509#382  var_333#383  var_513#384 
 var_517#385  var_334#386  var_521#387  var_525#388  var_335#389  var_529#390 
 var_533#391  var_336#392  var_537#393  var_541#394  var_337#395  var_545#396 
 var_549#397  var_338#398  var_553#399  var_557#400  var_339#401  var_367#402 
 var_371#403  var_375#404  var_379#405  var_383#406  var_387#407  var_391#408 
 var_395#409  var_399#410  var_403#411  var_407#412  var_411#413  var_415#414 
 var_419#415  var_423#416  var_427#417  var_431#418  var_435#419  var_439#420 
 var_443#421  var_447#422  var_451#423  var_455#424  var_459#425  var_340#426 
 var_364#427  var_366#428  var_368#430  var_370#431  var_341#432  var_462#433 
 var_464#434  var_466#435  var_468#436  var_342#437  var_372#438  var_374#439 
 var_376#441  var_378#442  var_343#443  var_470#444  var_472#445  var_474#446 
 var_476#447  var_344#448  var_380#449  var_382#450  var_384#452  var_386#453 
 var_345#454  var_478#455  var_480#456  var_482#457  var_484#458  var_346#459 
 var_388#460  var_390#461  var_392#463  var_394#464  var_347#465  var_486#466 
 var_488#467  var_490#468  var_492#469  var_348#470  var_396#471  var_398#472 
 var_400#474  var_402#475  var_349#476  var_494#477  var_496#478  var_498#479 
 var_500#480  var_350#481  var_404#482  var_406#483  var_408#485  var_410#486 
 var_351#487  var_502#488  var_504#489  var_506#490  var_508#491  var_352#492 
 var_412#493  var_414#494  var_416#496  var_418#497  var_353#498  var_510#499 
 var_512#500  var_514#501  var_516#502  var_354#503  var_420#504  var_422#505 
 var_424#507  var_426#508  var_355#509  var_518#510  var_520#511  var_522#512 
 var_524#513  var_356#514  var_428#515  var_430#516  var_432#518  var_434#519 
 var_357#520  var_526#521  var_528#522  var_530#523  var_532#524  var_358#525 
 var_436#526  var_438#527  var_440#529  var_442#530  var_359#531  var_534#532 
 var_536#533  var_538#534  var_540#535  var_360#536  var_444#537  var_446#538 
 var_448#540  var_450#541  var_361#542  var_542#543  var_544#544  var_546#545 
 var_548#546  var_362#547  var_452#548  var_454#549  var_456#551  var_458#552 
 var_363#553  var_550#554  var_552#555  var_554#556  var_556#557  var_558#558 
 var_559#559  var_560#560  var_561#561  var_562#562  var_563#563  var_564#564 
 var_565#565  var_566#566  var_567#567  var_568#568  var_569#569  var_570#570 
 var_571#571  var_572#572  var_573#573  var_574#574  var_575#575  var_576#576 
 var_577#577  var_578#578  var_579#579  var_580#580  var_581#581  var_582#582 
 var_583#583  var_584#584  var_585#585  var_586#586  var_587#587  var_588#588 
 var_589#589  var_590#590  var_591#591  var_592#592  var_593#593  var_594#594 
 var_595#595  var_596#596  var_597#597  var_598#598  var_599#599  var_600#600 
 var_601#601  var_602#602  var_603#603  var_604#604  var_605#605  var_606#606 
 var_607#607  var_608#608  var_609#609  var_610#610  var_611#611  var_612#612 
 var_613#613  var_614#614  var_615#615  var_616#616  var_617#617  var_618#618 
 var_619#619  var_620#620  var_621#621  var_622#622  var_623#623  var_624#624 
 var_625#625  var_626#626  var_627#627  var_628#628  var_629#629  var_630#630 
 var_631#631  var_632#632  var_633#633  var_634#634  var_635#635  var_636#636 
 var_637#637  var_638#638  var_639#639  var_640#640  var_641#641  var_642#642 
 var_643#643  var_644#644  var_645#645  var_646#646  var_647#647  var_648#648 
 var_649#649  var_650#650  var_651#651  var_652#652  var_653#653  var_654#654 
 var_655#655 
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
 pick_ball9_roomb_right#97  YT#98  YF#99  var_300#429  var_301#440 
 var_302#451  var_303#462  var_304#473  var_305#484  var_306#495  var_307#506 
 var_308#517  var_309#528  var_310#539  var_311#550  var_656#656  var_657#657 
 var_658#658  var_659#659  var_660#660  var_661#661  var_662#662  var_663#663 
 var_664#664  var_665#665  var_666#666  var_667#667  var_668#668  var_669#669 
 var_670#670  var_671#671  var_672#672  var_673#673  var_674#674  var_675#675 
 var_676#676  var_677#677  var_678#678  var_679#679  var_680#680  var_681#681 
 var_682#682  var_683#683  var_684#684  var_685#685  var_686#686  var_687#687 
 var_688#688  var_689#689  var_690#690  var_691#691  var_692#692  var_693#693 
 var_694#694  var_695#695  var_696#696  var_697#697  var_698#698  var_699#699 
 var_700#700  var_701#701  var_702#702  var_703#703  var_704#704  var_705#705 
 var_706#706  var_707#707  var_708#708  var_709#709  var_710#710  var_711#711 
 var_712#712  var_713#713  var_714#714  var_715#715  var_716#716  var_717#717 
 var_718#718  var_719#719  var_720#720  var_721#721  var_722#722  var_723#723 
 var_724#724  var_725#725  var_726#726  var_727#727  var_728#728  var_729#729 
 var_730#730  var_731#731  var_732#732  var_733#733  var_734#734  var_735#735 
 var_736#736  var_737#737  var_738#738  var_739#739  var_740#740  var_741#741 
 var_742#742  var_743#743  var_744#744  var_745#745  var_746#746  var_747#747 
 var_748#748  var_749#749  var_750#750  var_751#751  var_752#752  var_753#753 
 var_754#754  var_755#755  var_756#756  var_757#757  var_758#758  var_759#759 
 var_760#760  var_761#761  var_762#762  var_763#763  var_764#764  var_765#765 
 var_766#766  var_767#767  var_768#768  var_769#769  var_770#770  var_771#771 
 var_772#772  var_773#773  var_774#774  var_775#775  var_776#776  var_777#777 
 var_778#778  var_779#779  var_780#780  var_781#781  var_782#782  var_783#783 
 var_784#784  var_785#785  var_786#786  var_787#787  var_788#788  var_789#789 
 var_790#790  var_791#791  var_792#792  var_793#793  var_794#794  var_795#795 
 var_796#796  var_797#797  var_798#798  var_799#799  var_800#800  var_801#801 
 var_802#802  var_803#803  var_804#804  var_805#805  var_806#806  var_807#807 
 var_808#808  var_809#809  var_810#810  var_811#811  var_812#812  var_813#813 
 var_814#814  var_815#815  var_816#816  var_817#817 
End

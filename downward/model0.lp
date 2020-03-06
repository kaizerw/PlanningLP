\ENCODING=ISO-8859-1
\Problem name: IloCplex

Minimize
 obj1: pickmup_a#0 + pickmup_b#1 + pickmup_c#2 + pickmup_d#3 + pickmup_e#4
       + pickmup_f#5 + putmdown_a#6 + putmdown_b#7 + putmdown_c#8
       + putmdown_d#9 + putmdown_e#10 + putmdown_f#11 + stack_a_b#12
       + stack_a_c#13 + stack_a_d#14 + stack_a_e#15 + stack_a_f#16
       + stack_b_a#17 + stack_b_c#18 + stack_b_d#19 + stack_b_e#20
       + stack_b_f#21 + stack_c_a#22 + stack_c_b#23 + stack_c_d#24
       + stack_c_e#25 + stack_c_f#26 + stack_d_a#27 + stack_d_b#28
       + stack_d_c#29 + stack_d_e#30 + stack_d_f#31 + stack_e_a#32
       + stack_e_b#33 + stack_e_c#34 + stack_e_d#35 + stack_e_f#36
       + stack_f_a#37 + stack_f_b#38 + stack_f_c#39 + stack_f_d#40
       + stack_f_e#41 + unstack_a_b#42 + unstack_a_c#43 + unstack_a_d#44
       + unstack_a_e#45 + unstack_a_f#46 + unstack_b_a#47 + unstack_b_c#48
       + unstack_b_d#49 + unstack_b_e#50 + unstack_b_f#51 + unstack_c_a#52
       + unstack_c_b#53 + unstack_c_d#54 + unstack_c_e#55 + unstack_c_f#56
       + unstack_d_a#57 + unstack_d_b#58 + unstack_d_c#59 + unstack_d_e#60
       + unstack_d_f#61 + unstack_e_a#62 + unstack_e_b#63 + unstack_e_c#64
       + unstack_e_d#65 + unstack_e_f#66 + unstack_f_a#67 + unstack_f_b#68
       + unstack_f_c#69 + unstack_f_d#70 + unstack_f_e#71
Subject To
 c1:    pickmup_a#0 + pickmup_b#1 + pickmup_c#2 + pickmup_d#3 + pickmup_e#4
        + pickmup_f#5 + putmdown_a#6 + putmdown_b#7 + putmdown_c#8
        + putmdown_d#9 + putmdown_e#10 + putmdown_f#11 + stack_a_b#12
        + stack_a_c#13 + stack_a_d#14 + stack_a_e#15 + stack_a_f#16
        + stack_b_a#17 + stack_b_c#18 + stack_b_d#19 + stack_b_e#20
        + stack_b_f#21 + stack_c_a#22 + stack_c_b#23 + stack_c_d#24
        + stack_c_e#25 + stack_c_f#26 + stack_d_a#27 + stack_d_b#28
        + stack_d_c#29 + stack_d_e#30 + stack_d_f#31 + stack_e_a#32
        + stack_e_b#33 + stack_e_c#34 + stack_e_d#35 + stack_e_f#36
        + stack_f_a#37 + stack_f_b#38 + stack_f_c#39 + stack_f_d#40
        + stack_f_e#41 + unstack_a_b#42 + unstack_a_c#43 + unstack_a_d#44
        + unstack_a_e#45 + unstack_a_f#46 + unstack_b_a#47 + unstack_b_c#48
        + unstack_b_d#49 + unstack_b_e#50 + unstack_b_f#51 + unstack_c_a#52
        + unstack_c_b#53 + unstack_c_d#54 + unstack_c_e#55 + unstack_c_f#56
        + unstack_d_a#57 + unstack_d_b#58 + unstack_d_c#59 + unstack_d_e#60
        + unstack_d_f#61 + unstack_e_a#62 + unstack_e_b#63 + unstack_e_c#64
        + unstack_e_d#65 + unstack_e_f#66 + unstack_f_a#67 + unstack_f_b#68
        + unstack_f_c#69 + unstack_f_d#70 + unstack_f_e#71 - YT#72  = 0
 c2:    pickmup_a#0 + pickmup_b#1 + pickmup_c#2 + pickmup_d#3 + pickmup_e#4
        + pickmup_f#5 + putmdown_a#6 + putmdown_b#7 + putmdown_c#8
        + putmdown_d#9 + putmdown_e#10 + putmdown_f#11 + stack_a_b#12
        + stack_a_c#13 + stack_a_d#14 + stack_a_e#15 + stack_a_f#16
        + stack_b_a#17 + stack_b_c#18 + stack_b_d#19 + stack_b_e#20
        + stack_b_f#21 + stack_c_a#22 + stack_c_b#23 + stack_c_d#24
        + stack_c_e#25 + stack_c_f#26 + stack_d_a#27 + stack_d_b#28
        + stack_d_c#29 + stack_d_e#30 + stack_d_f#31 + stack_e_a#32
        + stack_e_b#33 + stack_e_c#34 + stack_e_d#35 + stack_e_f#36
        + stack_f_a#37 + stack_f_b#38 + stack_f_c#39 + stack_f_d#40
        + stack_f_e#41 + unstack_a_b#42 + unstack_a_c#43 + unstack_a_d#44
        + unstack_a_e#45 + unstack_a_f#46 + unstack_b_a#47 + unstack_b_c#48
        + unstack_b_d#49 + unstack_b_e#50 + unstack_b_f#51 + unstack_c_a#52
        + unstack_c_b#53 + unstack_c_d#54 + unstack_c_e#55 + unstack_c_f#56
        + unstack_d_a#57 + unstack_d_b#58 + unstack_d_c#59 + unstack_d_e#60
        + unstack_d_f#61 + unstack_e_a#62 + unstack_e_b#63 + unstack_e_c#64
        + unstack_e_d#65 + unstack_e_f#66 + unstack_f_a#67 + unstack_f_b#68
        + unstack_f_c#69 + unstack_f_d#70 + unstack_f_e#71 - YF#73  = 0
 c3:    _(pickmup_a_ge_2)#74 - _(pickmup_a_ge_1)#75 <= 0
 c4:    - pickmup_a#0 + _(pickmup_a_ge_2)#74 + _(pickmup_a_ge_1)#75 <= 0
 c5:    pickmup_a#0 - 10000000000 _(pickmup_a_ge_2)#74 <= 1
 c6:    pickmup_a#0 - 10000000000 _(pickmup_a_ge_1)#75 <= 0
 c7:    _(pickmup_b_ge_2)#76 - _(pickmup_b_ge_1)#77 <= 0
 c8:    - pickmup_b#1 + _(pickmup_b_ge_2)#76 + _(pickmup_b_ge_1)#77 <= 0
 c9:    pickmup_b#1 - 10000000000 _(pickmup_b_ge_2)#76 <= 1
 c10:   pickmup_b#1 - 10000000000 _(pickmup_b_ge_1)#77 <= 0
 c11:   _(pickmup_c_ge_2)#78 - _(pickmup_c_ge_1)#79 <= 0
 c12:   - pickmup_c#2 + _(pickmup_c_ge_2)#78 + _(pickmup_c_ge_1)#79 <= 0
 c13:   pickmup_c#2 - 10000000000 _(pickmup_c_ge_2)#78 <= 1
 c14:   pickmup_c#2 - 10000000000 _(pickmup_c_ge_1)#79 <= 0
 c15:   _(pickmup_d_ge_2)#80 - _(pickmup_d_ge_1)#81 <= 0
 c16:   - pickmup_d#3 + _(pickmup_d_ge_2)#80 + _(pickmup_d_ge_1)#81 <= 0
 c17:   pickmup_d#3 - 10000000000 _(pickmup_d_ge_2)#80 <= 1
 c18:   pickmup_d#3 - 10000000000 _(pickmup_d_ge_1)#81 <= 0
 c19:   _(pickmup_e_ge_2)#82 - _(pickmup_e_ge_1)#83 <= 0
 c20:   - pickmup_e#4 + _(pickmup_e_ge_2)#82 + _(pickmup_e_ge_1)#83 <= 0
 c21:   pickmup_e#4 - 10000000000 _(pickmup_e_ge_2)#82 <= 1
 c22:   pickmup_e#4 - 10000000000 _(pickmup_e_ge_1)#83 <= 0
 c23:   _(pickmup_f_ge_2)#84 - _(pickmup_f_ge_1)#85 <= 0
 c24:   - pickmup_f#5 + _(pickmup_f_ge_2)#84 + _(pickmup_f_ge_1)#85 <= 0
 c25:   pickmup_f#5 - 10000000000 _(pickmup_f_ge_2)#84 <= 1
 c26:   pickmup_f#5 - 10000000000 _(pickmup_f_ge_1)#85 <= 0
 c27:   _(putmdown_a_ge_2)#86 - _(putmdown_a_ge_1)#87 <= 0
 c28:   - putmdown_a#6 + _(putmdown_a_ge_2)#86 + _(putmdown_a_ge_1)#87 <= 0
 c29:   putmdown_a#6 - 10000000000 _(putmdown_a_ge_2)#86 <= 1
 c30:   putmdown_a#6 - 10000000000 _(putmdown_a_ge_1)#87 <= 0
 c31:   _(putmdown_b_ge_2)#88 - _(putmdown_b_ge_1)#89 <= 0
 c32:   - putmdown_b#7 + _(putmdown_b_ge_2)#88 + _(putmdown_b_ge_1)#89 <= 0
 c33:   putmdown_b#7 - 10000000000 _(putmdown_b_ge_2)#88 <= 1
 c34:   putmdown_b#7 - 10000000000 _(putmdown_b_ge_1)#89 <= 0
 c35:   _(putmdown_c_ge_2)#90 - _(putmdown_c_ge_1)#91 <= 0
 c36:   - putmdown_c#8 + _(putmdown_c_ge_2)#90 + _(putmdown_c_ge_1)#91 <= 0
 c37:   putmdown_c#8 - 10000000000 _(putmdown_c_ge_2)#90 <= 1
 c38:   putmdown_c#8 - 10000000000 _(putmdown_c_ge_1)#91 <= 0
 c39:   _(putmdown_d_ge_2)#92 - _(putmdown_d_ge_1)#93 <= 0
 c40:   - putmdown_d#9 + _(putmdown_d_ge_2)#92 + _(putmdown_d_ge_1)#93 <= 0
 c41:   putmdown_d#9 - 10000000000 _(putmdown_d_ge_2)#92 <= 1
 c42:   putmdown_d#9 - 10000000000 _(putmdown_d_ge_1)#93 <= 0
 c43:   _(putmdown_e_ge_2)#94 - _(putmdown_e_ge_1)#95 <= 0
 c44:   - putmdown_e#10 + _(putmdown_e_ge_2)#94 + _(putmdown_e_ge_1)#95 <= 0
 c45:   putmdown_e#10 - 10000000000 _(putmdown_e_ge_2)#94 <= 1
 c46:   putmdown_e#10 - 10000000000 _(putmdown_e_ge_1)#95 <= 0
 c47:   _(putmdown_f_ge_2)#96 - _(putmdown_f_ge_1)#97 <= 0
 c48:   - putmdown_f#11 + _(putmdown_f_ge_2)#96 + _(putmdown_f_ge_1)#97 <= 0
 c49:   putmdown_f#11 - 10000000000 _(putmdown_f_ge_2)#96 <= 1
 c50:   putmdown_f#11 - 10000000000 _(putmdown_f_ge_1)#97 <= 0
 c51:   _(stack_a_b_ge_2)#98 - _(stack_a_b_ge_1)#99 <= 0
 c52:   - stack_a_b#12 + _(stack_a_b_ge_2)#98 + _(stack_a_b_ge_1)#99 <= 0
 c53:   stack_a_b#12 - 10000000000 _(stack_a_b_ge_2)#98 <= 1
 c54:   stack_a_b#12 - 10000000000 _(stack_a_b_ge_1)#99 <= 0
 c55:   _(stack_a_c_ge_2)#100 - _(stack_a_c_ge_1)#101 <= 0
 c56:   - stack_a_c#13 + _(stack_a_c_ge_2)#100 + _(stack_a_c_ge_1)#101 <= 0
 c57:   stack_a_c#13 - 10000000000 _(stack_a_c_ge_2)#100 <= 1
 c58:   stack_a_c#13 - 10000000000 _(stack_a_c_ge_1)#101 <= 0
 c59:   _(stack_a_d_ge_2)#102 - _(stack_a_d_ge_1)#103 <= 0
 c60:   - stack_a_d#14 + _(stack_a_d_ge_2)#102 + _(stack_a_d_ge_1)#103 <= 0
 c61:   stack_a_d#14 - 10000000000 _(stack_a_d_ge_2)#102 <= 1
 c62:   stack_a_d#14 - 10000000000 _(stack_a_d_ge_1)#103 <= 0
 c63:   _(stack_a_e_ge_2)#104 - _(stack_a_e_ge_1)#105 <= 0
 c64:   - stack_a_e#15 + _(stack_a_e_ge_2)#104 + _(stack_a_e_ge_1)#105 <= 0
 c65:   stack_a_e#15 - 10000000000 _(stack_a_e_ge_2)#104 <= 1
 c66:   stack_a_e#15 - 10000000000 _(stack_a_e_ge_1)#105 <= 0
 c67:   _(stack_a_f_ge_2)#106 - _(stack_a_f_ge_1)#107 <= 0
 c68:   - stack_a_f#16 + _(stack_a_f_ge_2)#106 + _(stack_a_f_ge_1)#107 <= 0
 c69:   stack_a_f#16 - 10000000000 _(stack_a_f_ge_2)#106 <= 1
 c70:   stack_a_f#16 - 10000000000 _(stack_a_f_ge_1)#107 <= 0
 c71:   _(stack_b_a_ge_2)#108 - _(stack_b_a_ge_1)#109 <= 0
 c72:   - stack_b_a#17 + _(stack_b_a_ge_2)#108 + _(stack_b_a_ge_1)#109 <= 0
 c73:   stack_b_a#17 - 10000000000 _(stack_b_a_ge_2)#108 <= 1
 c74:   stack_b_a#17 - 10000000000 _(stack_b_a_ge_1)#109 <= 0
 c75:   _(stack_b_c_ge_2)#110 - _(stack_b_c_ge_1)#111 <= 0
 c76:   - stack_b_c#18 + _(stack_b_c_ge_2)#110 + _(stack_b_c_ge_1)#111 <= 0
 c77:   stack_b_c#18 - 10000000000 _(stack_b_c_ge_2)#110 <= 1
 c78:   stack_b_c#18 - 10000000000 _(stack_b_c_ge_1)#111 <= 0
 c79:   _(stack_b_d_ge_2)#112 - _(stack_b_d_ge_1)#113 <= 0
 c80:   - stack_b_d#19 + _(stack_b_d_ge_2)#112 + _(stack_b_d_ge_1)#113 <= 0
 c81:   stack_b_d#19 - 10000000000 _(stack_b_d_ge_2)#112 <= 1
 c82:   stack_b_d#19 - 10000000000 _(stack_b_d_ge_1)#113 <= 0
 c83:   _(stack_b_e_ge_2)#114 - _(stack_b_e_ge_1)#115 <= 0
 c84:   - stack_b_e#20 + _(stack_b_e_ge_2)#114 + _(stack_b_e_ge_1)#115 <= 0
 c85:   stack_b_e#20 - 10000000000 _(stack_b_e_ge_2)#114 <= 1
 c86:   stack_b_e#20 - 10000000000 _(stack_b_e_ge_1)#115 <= 0
 c87:   _(stack_b_f_ge_2)#116 - _(stack_b_f_ge_1)#117 <= 0
 c88:   - stack_b_f#21 + _(stack_b_f_ge_2)#116 + _(stack_b_f_ge_1)#117 <= 0
 c89:   stack_b_f#21 - 10000000000 _(stack_b_f_ge_2)#116 <= 1
 c90:   stack_b_f#21 - 10000000000 _(stack_b_f_ge_1)#117 <= 0
 c91:   _(stack_c_a_ge_2)#118 - _(stack_c_a_ge_1)#119 <= 0
 c92:   - stack_c_a#22 + _(stack_c_a_ge_2)#118 + _(stack_c_a_ge_1)#119 <= 0
 c93:   stack_c_a#22 - 10000000000 _(stack_c_a_ge_2)#118 <= 1
 c94:   stack_c_a#22 - 10000000000 _(stack_c_a_ge_1)#119 <= 0
 c95:   _(stack_c_b_ge_2)#120 - _(stack_c_b_ge_1)#121 <= 0
 c96:   - stack_c_b#23 + _(stack_c_b_ge_2)#120 + _(stack_c_b_ge_1)#121 <= 0
 c97:   stack_c_b#23 - 10000000000 _(stack_c_b_ge_2)#120 <= 1
 c98:   stack_c_b#23 - 10000000000 _(stack_c_b_ge_1)#121 <= 0
 c99:   _(stack_c_d_ge_2)#122 - _(stack_c_d_ge_1)#123 <= 0
 c100:  - stack_c_d#24 + _(stack_c_d_ge_2)#122 + _(stack_c_d_ge_1)#123 <= 0
 c101:  stack_c_d#24 - 10000000000 _(stack_c_d_ge_2)#122 <= 1
 c102:  stack_c_d#24 - 10000000000 _(stack_c_d_ge_1)#123 <= 0
 c103:  _(stack_c_e_ge_2)#124 - _(stack_c_e_ge_1)#125 <= 0
 c104:  - stack_c_e#25 + _(stack_c_e_ge_2)#124 + _(stack_c_e_ge_1)#125 <= 0
 c105:  stack_c_e#25 - 10000000000 _(stack_c_e_ge_2)#124 <= 1
 c106:  stack_c_e#25 - 10000000000 _(stack_c_e_ge_1)#125 <= 0
 c107:  _(stack_c_f_ge_2)#126 - _(stack_c_f_ge_1)#127 <= 0
 c108:  - stack_c_f#26 + _(stack_c_f_ge_2)#126 + _(stack_c_f_ge_1)#127 <= 0
 c109:  stack_c_f#26 - 10000000000 _(stack_c_f_ge_2)#126 <= 1
 c110:  stack_c_f#26 - 10000000000 _(stack_c_f_ge_1)#127 <= 0
 c111:  _(stack_d_a_ge_2)#128 - _(stack_d_a_ge_1)#129 <= 0
 c112:  - stack_d_a#27 + _(stack_d_a_ge_2)#128 + _(stack_d_a_ge_1)#129 <= 0
 c113:  stack_d_a#27 - 10000000000 _(stack_d_a_ge_2)#128 <= 1
 c114:  stack_d_a#27 - 10000000000 _(stack_d_a_ge_1)#129 <= 0
 c115:  _(stack_d_b_ge_2)#130 - _(stack_d_b_ge_1)#131 <= 0
 c116:  - stack_d_b#28 + _(stack_d_b_ge_2)#130 + _(stack_d_b_ge_1)#131 <= 0
 c117:  stack_d_b#28 - 10000000000 _(stack_d_b_ge_2)#130 <= 1
 c118:  stack_d_b#28 - 10000000000 _(stack_d_b_ge_1)#131 <= 0
 c119:  _(stack_d_c_ge_2)#132 - _(stack_d_c_ge_1)#133 <= 0
 c120:  - stack_d_c#29 + _(stack_d_c_ge_2)#132 + _(stack_d_c_ge_1)#133 <= 0
 c121:  stack_d_c#29 - 10000000000 _(stack_d_c_ge_2)#132 <= 1
 c122:  stack_d_c#29 - 10000000000 _(stack_d_c_ge_1)#133 <= 0
 c123:  _(stack_d_e_ge_2)#134 - _(stack_d_e_ge_1)#135 <= 0
 c124:  - stack_d_e#30 + _(stack_d_e_ge_2)#134 + _(stack_d_e_ge_1)#135 <= 0
 c125:  stack_d_e#30 - 10000000000 _(stack_d_e_ge_2)#134 <= 1
 c126:  stack_d_e#30 - 10000000000 _(stack_d_e_ge_1)#135 <= 0
 c127:  _(stack_d_f_ge_2)#136 - _(stack_d_f_ge_1)#137 <= 0
 c128:  - stack_d_f#31 + _(stack_d_f_ge_2)#136 + _(stack_d_f_ge_1)#137 <= 0
 c129:  stack_d_f#31 - 10000000000 _(stack_d_f_ge_2)#136 <= 1
 c130:  stack_d_f#31 - 10000000000 _(stack_d_f_ge_1)#137 <= 0
 c131:  _(stack_e_a_ge_2)#138 - _(stack_e_a_ge_1)#139 <= 0
 c132:  - stack_e_a#32 + _(stack_e_a_ge_2)#138 + _(stack_e_a_ge_1)#139 <= 0
 c133:  stack_e_a#32 - 10000000000 _(stack_e_a_ge_2)#138 <= 1
 c134:  stack_e_a#32 - 10000000000 _(stack_e_a_ge_1)#139 <= 0
 c135:  _(stack_e_b_ge_2)#140 - _(stack_e_b_ge_1)#141 <= 0
 c136:  - stack_e_b#33 + _(stack_e_b_ge_2)#140 + _(stack_e_b_ge_1)#141 <= 0
 c137:  stack_e_b#33 - 10000000000 _(stack_e_b_ge_2)#140 <= 1
 c138:  stack_e_b#33 - 10000000000 _(stack_e_b_ge_1)#141 <= 0
 c139:  _(stack_e_c_ge_2)#142 - _(stack_e_c_ge_1)#143 <= 0
 c140:  - stack_e_c#34 + _(stack_e_c_ge_2)#142 + _(stack_e_c_ge_1)#143 <= 0
 c141:  stack_e_c#34 - 10000000000 _(stack_e_c_ge_2)#142 <= 1
 c142:  stack_e_c#34 - 10000000000 _(stack_e_c_ge_1)#143 <= 0
 c143:  _(stack_e_d_ge_2)#144 - _(stack_e_d_ge_1)#145 <= 0
 c144:  - stack_e_d#35 + _(stack_e_d_ge_2)#144 + _(stack_e_d_ge_1)#145 <= 0
 c145:  stack_e_d#35 - 10000000000 _(stack_e_d_ge_2)#144 <= 1
 c146:  stack_e_d#35 - 10000000000 _(stack_e_d_ge_1)#145 <= 0
 c147:  _(stack_e_f_ge_2)#146 - _(stack_e_f_ge_1)#147 <= 0
 c148:  - stack_e_f#36 + _(stack_e_f_ge_2)#146 + _(stack_e_f_ge_1)#147 <= 0
 c149:  stack_e_f#36 - 10000000000 _(stack_e_f_ge_2)#146 <= 1
 c150:  stack_e_f#36 - 10000000000 _(stack_e_f_ge_1)#147 <= 0
 c151:  _(stack_f_a_ge_2)#148 - _(stack_f_a_ge_1)#149 <= 0
 c152:  - stack_f_a#37 + _(stack_f_a_ge_2)#148 + _(stack_f_a_ge_1)#149 <= 0
 c153:  stack_f_a#37 - 10000000000 _(stack_f_a_ge_2)#148 <= 1
 c154:  stack_f_a#37 - 10000000000 _(stack_f_a_ge_1)#149 <= 0
 c155:  _(stack_f_b_ge_2)#150 - _(stack_f_b_ge_1)#151 <= 0
 c156:  - stack_f_b#38 + _(stack_f_b_ge_2)#150 + _(stack_f_b_ge_1)#151 <= 0
 c157:  stack_f_b#38 - 10000000000 _(stack_f_b_ge_2)#150 <= 1
 c158:  stack_f_b#38 - 10000000000 _(stack_f_b_ge_1)#151 <= 0
 c159:  _(stack_f_c_ge_2)#152 - _(stack_f_c_ge_1)#153 <= 0
 c160:  - stack_f_c#39 + _(stack_f_c_ge_2)#152 + _(stack_f_c_ge_1)#153 <= 0
 c161:  stack_f_c#39 - 10000000000 _(stack_f_c_ge_2)#152 <= 1
 c162:  stack_f_c#39 - 10000000000 _(stack_f_c_ge_1)#153 <= 0
 c163:  _(stack_f_d_ge_2)#154 - _(stack_f_d_ge_1)#155 <= 0
 c164:  - stack_f_d#40 + _(stack_f_d_ge_2)#154 + _(stack_f_d_ge_1)#155 <= 0
 c165:  stack_f_d#40 - 10000000000 _(stack_f_d_ge_2)#154 <= 1
 c166:  stack_f_d#40 - 10000000000 _(stack_f_d_ge_1)#155 <= 0
 c167:  _(stack_f_e_ge_2)#156 - _(stack_f_e_ge_1)#157 <= 0
 c168:  - stack_f_e#41 + _(stack_f_e_ge_2)#156 + _(stack_f_e_ge_1)#157 <= 0
 c169:  stack_f_e#41 - 10000000000 _(stack_f_e_ge_2)#156 <= 1
 c170:  stack_f_e#41 - 10000000000 _(stack_f_e_ge_1)#157 <= 0
 c171:  _(unstack_a_b_ge_2)#158 - _(unstack_a_b_ge_1)#159 <= 0
 c172:  - unstack_a_b#42 + _(unstack_a_b_ge_2)#158 + _(unstack_a_b_ge_1)#159
        <= 0
 c173:  unstack_a_b#42 - 10000000000 _(unstack_a_b_ge_2)#158 <= 1
 c174:  unstack_a_b#42 - 10000000000 _(unstack_a_b_ge_1)#159 <= 0
 c175:  _(unstack_a_c_ge_2)#160 - _(unstack_a_c_ge_1)#161 <= 0
 c176:  - unstack_a_c#43 + _(unstack_a_c_ge_2)#160 + _(unstack_a_c_ge_1)#161
        <= 0
 c177:  unstack_a_c#43 - 10000000000 _(unstack_a_c_ge_2)#160 <= 1
 c178:  unstack_a_c#43 - 10000000000 _(unstack_a_c_ge_1)#161 <= 0
 c179:  _(unstack_a_d_ge_2)#162 - _(unstack_a_d_ge_1)#163 <= 0
 c180:  - unstack_a_d#44 + _(unstack_a_d_ge_2)#162 + _(unstack_a_d_ge_1)#163
        <= 0
 c181:  unstack_a_d#44 - 10000000000 _(unstack_a_d_ge_2)#162 <= 1
 c182:  unstack_a_d#44 - 10000000000 _(unstack_a_d_ge_1)#163 <= 0
 c183:  _(unstack_a_e_ge_2)#164 - _(unstack_a_e_ge_1)#165 <= 0
 c184:  - unstack_a_e#45 + _(unstack_a_e_ge_2)#164 + _(unstack_a_e_ge_1)#165
        <= 0
 c185:  unstack_a_e#45 - 10000000000 _(unstack_a_e_ge_2)#164 <= 1
 c186:  unstack_a_e#45 - 10000000000 _(unstack_a_e_ge_1)#165 <= 0
 c187:  _(unstack_a_f_ge_2)#166 - _(unstack_a_f_ge_1)#167 <= 0
 c188:  - unstack_a_f#46 + _(unstack_a_f_ge_2)#166 + _(unstack_a_f_ge_1)#167
        <= 0
 c189:  unstack_a_f#46 - 10000000000 _(unstack_a_f_ge_2)#166 <= 1
 c190:  unstack_a_f#46 - 10000000000 _(unstack_a_f_ge_1)#167 <= 0
 c191:  _(unstack_b_a_ge_2)#168 - _(unstack_b_a_ge_1)#169 <= 0
 c192:  - unstack_b_a#47 + _(unstack_b_a_ge_2)#168 + _(unstack_b_a_ge_1)#169
        <= 0
 c193:  unstack_b_a#47 - 10000000000 _(unstack_b_a_ge_2)#168 <= 1
 c194:  unstack_b_a#47 - 10000000000 _(unstack_b_a_ge_1)#169 <= 0
 c195:  _(unstack_b_c_ge_2)#170 - _(unstack_b_c_ge_1)#171 <= 0
 c196:  - unstack_b_c#48 + _(unstack_b_c_ge_2)#170 + _(unstack_b_c_ge_1)#171
        <= 0
 c197:  unstack_b_c#48 - 10000000000 _(unstack_b_c_ge_2)#170 <= 1
 c198:  unstack_b_c#48 - 10000000000 _(unstack_b_c_ge_1)#171 <= 0
 c199:  _(unstack_b_d_ge_2)#172 - _(unstack_b_d_ge_1)#173 <= 0
 c200:  - unstack_b_d#49 + _(unstack_b_d_ge_2)#172 + _(unstack_b_d_ge_1)#173
        <= 0
 c201:  unstack_b_d#49 - 10000000000 _(unstack_b_d_ge_2)#172 <= 1
 c202:  unstack_b_d#49 - 10000000000 _(unstack_b_d_ge_1)#173 <= 0
 c203:  _(unstack_b_e_ge_2)#174 - _(unstack_b_e_ge_1)#175 <= 0
 c204:  - unstack_b_e#50 + _(unstack_b_e_ge_2)#174 + _(unstack_b_e_ge_1)#175
        <= 0
 c205:  unstack_b_e#50 - 10000000000 _(unstack_b_e_ge_2)#174 <= 1
 c206:  unstack_b_e#50 - 10000000000 _(unstack_b_e_ge_1)#175 <= 0
 c207:  _(unstack_b_f_ge_2)#176 - _(unstack_b_f_ge_1)#177 <= 0
 c208:  - unstack_b_f#51 + _(unstack_b_f_ge_2)#176 + _(unstack_b_f_ge_1)#177
        <= 0
 c209:  unstack_b_f#51 - 10000000000 _(unstack_b_f_ge_2)#176 <= 1
 c210:  unstack_b_f#51 - 10000000000 _(unstack_b_f_ge_1)#177 <= 0
 c211:  _(unstack_c_a_ge_2)#178 - _(unstack_c_a_ge_1)#179 <= 0
 c212:  - unstack_c_a#52 + _(unstack_c_a_ge_2)#178 + _(unstack_c_a_ge_1)#179
        <= 0
 c213:  unstack_c_a#52 - 10000000000 _(unstack_c_a_ge_2)#178 <= 1
 c214:  unstack_c_a#52 - 10000000000 _(unstack_c_a_ge_1)#179 <= 0
 c215:  _(unstack_c_b_ge_2)#180 - _(unstack_c_b_ge_1)#181 <= 0
 c216:  - unstack_c_b#53 + _(unstack_c_b_ge_2)#180 + _(unstack_c_b_ge_1)#181
        <= 0
 c217:  unstack_c_b#53 - 10000000000 _(unstack_c_b_ge_2)#180 <= 1
 c218:  unstack_c_b#53 - 10000000000 _(unstack_c_b_ge_1)#181 <= 0
 c219:  _(unstack_c_d_ge_2)#182 - _(unstack_c_d_ge_1)#183 <= 0
 c220:  - unstack_c_d#54 + _(unstack_c_d_ge_2)#182 + _(unstack_c_d_ge_1)#183
        <= 0
 c221:  unstack_c_d#54 - 10000000000 _(unstack_c_d_ge_2)#182 <= 1
 c222:  unstack_c_d#54 - 10000000000 _(unstack_c_d_ge_1)#183 <= 0
 c223:  _(unstack_c_e_ge_2)#184 - _(unstack_c_e_ge_1)#185 <= 0
 c224:  - unstack_c_e#55 + _(unstack_c_e_ge_2)#184 + _(unstack_c_e_ge_1)#185
        <= 0
 c225:  unstack_c_e#55 - 10000000000 _(unstack_c_e_ge_2)#184 <= 1
 c226:  unstack_c_e#55 - 10000000000 _(unstack_c_e_ge_1)#185 <= 0
 c227:  _(unstack_c_f_ge_2)#186 - _(unstack_c_f_ge_1)#187 <= 0
 c228:  - unstack_c_f#56 + _(unstack_c_f_ge_2)#186 + _(unstack_c_f_ge_1)#187
        <= 0
 c229:  unstack_c_f#56 - 10000000000 _(unstack_c_f_ge_2)#186 <= 1
 c230:  unstack_c_f#56 - 10000000000 _(unstack_c_f_ge_1)#187 <= 0
 c231:  _(unstack_d_a_ge_2)#188 - _(unstack_d_a_ge_1)#189 <= 0
 c232:  - unstack_d_a#57 + _(unstack_d_a_ge_2)#188 + _(unstack_d_a_ge_1)#189
        <= 0
 c233:  unstack_d_a#57 - 10000000000 _(unstack_d_a_ge_2)#188 <= 1
 c234:  unstack_d_a#57 - 10000000000 _(unstack_d_a_ge_1)#189 <= 0
 c235:  _(unstack_d_b_ge_2)#190 - _(unstack_d_b_ge_1)#191 <= 0
 c236:  - unstack_d_b#58 + _(unstack_d_b_ge_2)#190 + _(unstack_d_b_ge_1)#191
        <= 0
 c237:  unstack_d_b#58 - 10000000000 _(unstack_d_b_ge_2)#190 <= 1
 c238:  unstack_d_b#58 - 10000000000 _(unstack_d_b_ge_1)#191 <= 0
 c239:  _(unstack_d_c_ge_2)#192 - _(unstack_d_c_ge_1)#193 <= 0
 c240:  - unstack_d_c#59 + _(unstack_d_c_ge_2)#192 + _(unstack_d_c_ge_1)#193
        <= 0
 c241:  unstack_d_c#59 - 10000000000 _(unstack_d_c_ge_2)#192 <= 1
 c242:  unstack_d_c#59 - 10000000000 _(unstack_d_c_ge_1)#193 <= 0
 c243:  _(unstack_d_e_ge_2)#194 - _(unstack_d_e_ge_1)#195 <= 0
 c244:  - unstack_d_e#60 + _(unstack_d_e_ge_2)#194 + _(unstack_d_e_ge_1)#195
        <= 0
 c245:  unstack_d_e#60 - 10000000000 _(unstack_d_e_ge_2)#194 <= 1
 c246:  unstack_d_e#60 - 10000000000 _(unstack_d_e_ge_1)#195 <= 0
 c247:  _(unstack_d_f_ge_2)#196 - _(unstack_d_f_ge_1)#197 <= 0
 c248:  - unstack_d_f#61 + _(unstack_d_f_ge_2)#196 + _(unstack_d_f_ge_1)#197
        <= 0
 c249:  unstack_d_f#61 - 10000000000 _(unstack_d_f_ge_2)#196 <= 1
 c250:  unstack_d_f#61 - 10000000000 _(unstack_d_f_ge_1)#197 <= 0
 c251:  _(unstack_e_a_ge_2)#198 - _(unstack_e_a_ge_1)#199 <= 0
 c252:  - unstack_e_a#62 + _(unstack_e_a_ge_2)#198 + _(unstack_e_a_ge_1)#199
        <= 0
 c253:  unstack_e_a#62 - 10000000000 _(unstack_e_a_ge_2)#198 <= 1
 c254:  unstack_e_a#62 - 10000000000 _(unstack_e_a_ge_1)#199 <= 0
 c255:  _(unstack_e_b_ge_2)#200 - _(unstack_e_b_ge_1)#201 <= 0
 c256:  - unstack_e_b#63 + _(unstack_e_b_ge_2)#200 + _(unstack_e_b_ge_1)#201
        <= 0
 c257:  unstack_e_b#63 - 10000000000 _(unstack_e_b_ge_2)#200 <= 1
 c258:  unstack_e_b#63 - 10000000000 _(unstack_e_b_ge_1)#201 <= 0
 c259:  _(unstack_e_c_ge_2)#202 - _(unstack_e_c_ge_1)#203 <= 0
 c260:  - unstack_e_c#64 + _(unstack_e_c_ge_2)#202 + _(unstack_e_c_ge_1)#203
        <= 0
 c261:  unstack_e_c#64 - 10000000000 _(unstack_e_c_ge_2)#202 <= 1
 c262:  unstack_e_c#64 - 10000000000 _(unstack_e_c_ge_1)#203 <= 0
 c263:  _(unstack_e_d_ge_2)#204 - _(unstack_e_d_ge_1)#205 <= 0
 c264:  - unstack_e_d#65 + _(unstack_e_d_ge_2)#204 + _(unstack_e_d_ge_1)#205
        <= 0
 c265:  unstack_e_d#65 - 10000000000 _(unstack_e_d_ge_2)#204 <= 1
 c266:  unstack_e_d#65 - 10000000000 _(unstack_e_d_ge_1)#205 <= 0
 c267:  _(unstack_e_f_ge_2)#206 - _(unstack_e_f_ge_1)#207 <= 0
 c268:  - unstack_e_f#66 + _(unstack_e_f_ge_2)#206 + _(unstack_e_f_ge_1)#207
        <= 0
 c269:  unstack_e_f#66 - 10000000000 _(unstack_e_f_ge_2)#206 <= 1
 c270:  unstack_e_f#66 - 10000000000 _(unstack_e_f_ge_1)#207 <= 0
 c271:  _(unstack_f_a_ge_2)#208 - _(unstack_f_a_ge_1)#209 <= 0
 c272:  - unstack_f_a#67 + _(unstack_f_a_ge_2)#208 + _(unstack_f_a_ge_1)#209
        <= 0
 c273:  unstack_f_a#67 - 10000000000 _(unstack_f_a_ge_2)#208 <= 1
 c274:  unstack_f_a#67 - 10000000000 _(unstack_f_a_ge_1)#209 <= 0
 c275:  _(unstack_f_b_ge_2)#210 - _(unstack_f_b_ge_1)#211 <= 0
 c276:  - unstack_f_b#68 + _(unstack_f_b_ge_2)#210 + _(unstack_f_b_ge_1)#211
        <= 0
 c277:  unstack_f_b#68 - 10000000000 _(unstack_f_b_ge_2)#210 <= 1
 c278:  unstack_f_b#68 - 10000000000 _(unstack_f_b_ge_1)#211 <= 0
 c279:  _(unstack_f_c_ge_2)#212 - _(unstack_f_c_ge_1)#213 <= 0
 c280:  - unstack_f_c#69 + _(unstack_f_c_ge_2)#212 + _(unstack_f_c_ge_1)#213
        <= 0
 c281:  unstack_f_c#69 - 10000000000 _(unstack_f_c_ge_2)#212 <= 1
 c282:  unstack_f_c#69 - 10000000000 _(unstack_f_c_ge_1)#213 <= 0
 c283:  _(unstack_f_d_ge_2)#214 - _(unstack_f_d_ge_1)#215 <= 0
 c284:  - unstack_f_d#70 + _(unstack_f_d_ge_2)#214 + _(unstack_f_d_ge_1)#215
        <= 0
 c285:  unstack_f_d#70 - 10000000000 _(unstack_f_d_ge_2)#214 <= 1
 c286:  unstack_f_d#70 - 10000000000 _(unstack_f_d_ge_1)#215 <= 0
 c287:  _(unstack_f_e_ge_2)#216 - _(unstack_f_e_ge_1)#217 <= 0
 c288:  - unstack_f_e#71 + _(unstack_f_e_ge_2)#216 + _(unstack_f_e_ge_1)#217
        <= 0
 c289:  unstack_f_e#71 - 10000000000 _(unstack_f_e_ge_2)#216 <= 1
 c290:  unstack_f_e#71 - 10000000000 _(unstack_f_e_ge_1)#217 <= 0
 c291:  _(YT_ge_2)#218 - _(YT_ge_1)#219 <= 0
 c292:  - YT#72 + _(YT_ge_2)#218 + _(YT_ge_1)#219 <= 0
 c293:  YT#72 - 10000000000 _(YT_ge_2)#218 <= 1
 c294:  YT#72 - 10000000000 _(YT_ge_1)#219 <= 0
 c295:  _(YF_ge_2)#220 - _(YF_ge_1)#221 <= 0
 c296:  - YF#73 + _(YF_ge_2)#220 + _(YF_ge_1)#221 <= 0
 c297:  YF#73 - 10000000000 _(YF_ge_2)#220 <= 1
 c298:  YF#73 - 10000000000 _(YF_ge_1)#221 <= 0
 c299:  pickmup_d#3 - putmdown_d#9 - stack_d_a#27 - stack_d_b#28 - stack_d_c#29
        - stack_d_e#30 - stack_d_f#31 + unstack_d_a#57 + unstack_d_b#58
        + unstack_d_c#59 + unstack_d_e#60 + unstack_d_f#61 >= 0
 c300:  stack_d_a#27 - unstack_d_a#57 >= 0
 c301:  stack_d_b#28 - unstack_d_b#58 >= -1
 c302:  stack_d_c#29 - unstack_d_c#59 >= 0
 c303:  stack_d_e#30 - unstack_d_e#60 >= 0
 c304:  stack_d_f#31 - unstack_d_f#61 >= 0
 c305:  - pickmup_d#3 + putmdown_d#9 >= 0
 c306:  - pickmup_d#3 + putmdown_d#9 - stack_a_d#14 - stack_b_d#19
        - stack_c_d#24 + stack_d_a#27 + stack_d_b#28 + stack_d_c#29
        + stack_d_e#30 + stack_d_f#31 - stack_e_d#35 - stack_f_d#40
        + unstack_a_d#44 + unstack_b_d#49 + unstack_c_d#54 - unstack_d_a#57
        - unstack_d_b#58 - unstack_d_c#59 - unstack_d_e#60 - unstack_d_f#61
        + unstack_e_d#65 + unstack_f_d#70 >= 0
 c307:  pickmup_d#3 + stack_a_d#14 + stack_b_d#19 + stack_c_d#24 + stack_e_d#35
        + stack_f_d#40 + unstack_d_a#57 + unstack_d_b#58 + unstack_d_c#59
        + unstack_d_e#60 + unstack_d_f#61 >= -1
 c308:  - pickmup_a#0 + putmdown_a#6 + stack_a_b#12 + stack_a_c#13
        + stack_a_d#14 + stack_a_e#15 + stack_a_f#16 - stack_b_a#17
        - stack_c_a#22 - stack_d_a#27 - stack_e_a#32 - stack_f_a#37
        - unstack_a_b#42 - unstack_a_c#43 - unstack_a_d#44 - unstack_a_e#45
        - unstack_a_f#46 + unstack_b_a#47 + unstack_c_a#52 + unstack_d_a#57
        + unstack_e_a#62 + unstack_f_a#67 >= -1
 c309:  pickmup_a#0 + stack_b_a#17 + stack_c_a#22 + stack_d_a#27 + stack_e_a#32
        + stack_f_a#37 + unstack_a_b#42 + unstack_a_c#43 + unstack_a_d#44
        + unstack_a_e#45 + unstack_a_f#46 >= 0
 c310:  - pickmup_b#1 + putmdown_b#7 - stack_a_b#12 + stack_b_a#17
        + stack_b_c#18 + stack_b_d#19 + stack_b_e#20 + stack_b_f#21
        - stack_c_b#23 - stack_d_b#28 - stack_e_b#33 - stack_f_b#38
        + unstack_a_b#42 - unstack_b_a#47 - unstack_b_c#48 - unstack_b_d#49
        - unstack_b_e#50 - unstack_b_f#51 + unstack_c_b#53 + unstack_d_b#58
        + unstack_e_b#63 + unstack_f_b#68 >= 0
 c311:  pickmup_b#1 + stack_a_b#12 + stack_c_b#23 + stack_d_b#28 + stack_e_b#33
        + stack_f_b#38 + unstack_b_a#47 + unstack_b_c#48 + unstack_b_d#49
        + unstack_b_e#50 + unstack_b_f#51 >= -1
 c312:  - pickmup_c#2 + putmdown_c#8 - stack_a_c#13 - stack_b_c#18
        + stack_c_a#22 + stack_c_b#23 + stack_c_d#24 + stack_c_e#25
        + stack_c_f#26 - stack_d_c#29 - stack_e_c#34 - stack_f_c#39
        + unstack_a_c#43 + unstack_b_c#48 - unstack_c_a#52 - unstack_c_b#53
        - unstack_c_d#54 - unstack_c_e#55 - unstack_c_f#56 + unstack_d_c#59
        + unstack_e_c#64 + unstack_f_c#69 >= 0
 c313:  pickmup_c#2 + stack_a_c#13 + stack_b_c#18 + stack_d_c#29 + stack_e_c#34
        + stack_f_c#39 + unstack_c_a#52 + unstack_c_b#53 + unstack_c_d#54
        + unstack_c_e#55 + unstack_c_f#56 >= -1
 c314:  - pickmup_e#4 + putmdown_e#10 - stack_a_e#15 - stack_b_e#20
        - stack_c_e#25 - stack_d_e#30 + stack_e_a#32 + stack_e_b#33
        + stack_e_c#34 + stack_e_d#35 + stack_e_f#36 - stack_f_e#41
        + unstack_a_e#45 + unstack_b_e#50 + unstack_c_e#55 + unstack_d_e#60
        - unstack_e_a#62 - unstack_e_b#63 - unstack_e_c#64 - unstack_e_d#65
        - unstack_e_f#66 + unstack_f_e#71 >= 0
 c315:  pickmup_e#4 + stack_a_e#15 + stack_b_e#20 + stack_c_e#25 + stack_d_e#30
        + stack_f_e#41 + unstack_e_a#62 + unstack_e_b#63 + unstack_e_c#64
        + unstack_e_d#65 + unstack_e_f#66 >= -1
 c316:  - pickmup_f#5 + putmdown_f#11 - stack_a_f#16 - stack_b_f#21
        - stack_c_f#26 - stack_d_f#31 - stack_e_f#36 + stack_f_a#37
        + stack_f_b#38 + stack_f_c#39 + stack_f_d#40 + stack_f_e#41
        + unstack_a_f#46 + unstack_b_f#51 + unstack_c_f#56 + unstack_d_f#61
        + unstack_e_f#66 - unstack_f_a#67 - unstack_f_b#68 - unstack_f_c#69
        - unstack_f_d#70 - unstack_f_e#71 >= 0
 c317:  pickmup_f#5 + stack_a_f#16 + stack_b_f#21 + stack_c_f#26 + stack_d_f#31
        + stack_e_f#36 + unstack_f_a#67 + unstack_f_b#68 + unstack_f_c#69
        + unstack_f_d#70 + unstack_f_e#71 >= -1
 c318:  - pickmup_a#0 - pickmup_b#1 - pickmup_c#2 - pickmup_d#3 - pickmup_e#4
        - pickmup_f#5 + putmdown_a#6 + putmdown_b#7 + putmdown_c#8
        + putmdown_d#9 + putmdown_e#10 + putmdown_f#11 + stack_a_b#12
        + stack_a_c#13 + stack_a_d#14 + stack_a_e#15 + stack_a_f#16
        + stack_b_a#17 + stack_b_c#18 + stack_b_d#19 + stack_b_e#20
        + stack_b_f#21 + stack_c_a#22 + stack_c_b#23 + stack_c_d#24
        + stack_c_e#25 + stack_c_f#26 + stack_d_a#27 + stack_d_b#28
        + stack_d_c#29 + stack_d_e#30 + stack_d_f#31 + stack_e_a#32
        + stack_e_b#33 + stack_e_c#34 + stack_e_d#35 + stack_e_f#36
        + stack_f_a#37 + stack_f_b#38 + stack_f_c#39 + stack_f_d#40
        + stack_f_e#41 - unstack_a_b#42 - unstack_a_c#43 - unstack_a_d#44
        - unstack_a_e#45 - unstack_a_f#46 - unstack_b_a#47 - unstack_b_c#48
        - unstack_b_d#49 - unstack_b_e#50 - unstack_b_f#51 - unstack_c_a#52
        - unstack_c_b#53 - unstack_c_d#54 - unstack_c_e#55 - unstack_c_f#56
        - unstack_d_a#57 - unstack_d_b#58 - unstack_d_c#59 - unstack_d_e#60
        - unstack_d_f#61 - unstack_e_a#62 - unstack_e_b#63 - unstack_e_c#64
        - unstack_e_d#65 - unstack_e_f#66 - unstack_f_a#67 - unstack_f_b#68
        - unstack_f_c#69 - unstack_f_d#70 - unstack_f_e#71 >= -1
 c319:  pickmup_a#0 + pickmup_b#1 + pickmup_c#2 + pickmup_d#3 + pickmup_e#4
        + pickmup_f#5 + unstack_a_b#42 + unstack_a_c#43 + unstack_a_d#44
        + unstack_a_e#45 + unstack_a_f#46 + unstack_b_a#47 + unstack_b_c#48
        + unstack_b_d#49 + unstack_b_e#50 + unstack_b_f#51 + unstack_c_a#52
        + unstack_c_b#53 + unstack_c_d#54 + unstack_c_e#55 + unstack_c_f#56
        + unstack_d_a#57 + unstack_d_b#58 + unstack_d_c#59 + unstack_d_e#60
        + unstack_d_f#61 + unstack_e_a#62 + unstack_e_b#63 + unstack_e_c#64
        + unstack_e_d#65 + unstack_e_f#66 + unstack_f_a#67 + unstack_f_b#68
        + unstack_f_c#69 + unstack_f_d#70 + unstack_f_e#71 >= 0
 c320:  pickmup_a#0 - putmdown_a#6 - stack_a_b#12 - stack_a_c#13 - stack_a_d#14
        - stack_a_e#15 - stack_a_f#16 + unstack_a_b#42 + unstack_a_c#43
        + unstack_a_d#44 + unstack_a_e#45 + unstack_a_f#46  = 0
 c321:  stack_a_b#12 - unstack_a_b#42  = 1
 c322:  stack_a_c#13 - unstack_a_c#43  = 0
 c323:  stack_a_d#14 - unstack_a_d#44  = -1
 c324:  stack_a_e#15 - unstack_a_e#45  = 0
 c325:  stack_a_f#16 - unstack_a_f#46  = 0
 c326:  - pickmup_a#0 + putmdown_a#6  = 0
 c327:  pickmup_b#1 - putmdown_b#7 - stack_b_a#17 - stack_b_c#18 - stack_b_d#19
        - stack_b_e#20 - stack_b_f#21 + unstack_b_a#47 + unstack_b_c#48
        + unstack_b_d#49 + unstack_b_e#50 + unstack_b_f#51  = 0
 c328:  stack_b_a#17 - unstack_b_a#47  = 0
 c329:  stack_b_c#18 - unstack_b_c#48  = 1
 c330:  stack_b_d#19 - unstack_b_d#49  = 0
 c331:  stack_b_e#20 - unstack_b_e#50  = 0
 c332:  stack_b_f#21 - unstack_b_f#51  = -1
 c333:  - pickmup_b#1 + putmdown_b#7  = 0
 c334:  pickmup_c#2 - putmdown_c#8 - stack_c_a#22 - stack_c_b#23 - stack_c_d#24
        - stack_c_e#25 - stack_c_f#26 + unstack_c_a#52 + unstack_c_b#53
        + unstack_c_d#54 + unstack_c_e#55 + unstack_c_f#56  = 0
 c335:  stack_c_a#22 - unstack_c_a#52  = 0
 c336:  stack_c_b#23 - unstack_c_b#53  = 0
 c337:  stack_c_d#24 - unstack_c_d#54  = 1
 c338:  stack_c_e#25 - unstack_c_e#55  = 0
 c339:  stack_c_f#26 - unstack_c_f#56  = 0
 c340:  - pickmup_c#2 + putmdown_c#8  = -1
 c341:  pickmup_e#4 - putmdown_e#10 - stack_e_a#32 - stack_e_b#33
        - stack_e_c#34 - stack_e_d#35 - stack_e_f#36 + unstack_e_a#62
        + unstack_e_b#63 + unstack_e_c#64 + unstack_e_d#65 + unstack_e_f#66
         = 0
 c342:  stack_e_a#32 - unstack_e_a#62  = 0
 c343:  stack_e_b#33 - unstack_e_b#63  = 0
 c344:  stack_e_c#34 - unstack_e_c#64  = -1
 c345:  stack_e_d#35 - unstack_e_d#65  = 0
 c346:  stack_e_f#36 - unstack_e_f#66  = 1
 c347:  - pickmup_e#4 + putmdown_e#10  = 0
 c348:  pickmup_f#5 - putmdown_f#11 - stack_f_a#37 - stack_f_b#38
        - stack_f_c#39 - stack_f_d#40 - stack_f_e#41 + unstack_f_a#67
        + unstack_f_b#68 + unstack_f_c#69 + unstack_f_d#70 + unstack_f_e#71
         = 0
 c349:  stack_f_a#37 - unstack_f_a#67  = 1
 c350:  stack_f_b#38 - unstack_f_b#68  = 0
 c351:  stack_f_c#39 - unstack_f_c#69  = 0
 c352:  stack_f_d#40 - unstack_f_d#70  = 0
 c353:  stack_f_e#41 - unstack_f_e#71  = -1
 c354:  - pickmup_f#5 + putmdown_f#11  = 0
 c355:  _(stack_c_d_ge_1)#123 >= 1
 c356:  _(pickmup_c_ge_1)#79 >= 1
 c357:  _(stack_b_c_ge_1)#111 >= 1
 c358:  _(stack_e_f_ge_1)#147 >= 1
 c359:  _(unstack_e_c_ge_1)#203 >= 1
 c360:  _(stack_f_a_ge_1)#149 >= 1
 c361:  _(unstack_f_e_ge_1)#217 >= 1
 c362:  _(unstack_b_f_ge_1)#177 >= 1
 c363:  _(stack_a_b_ge_1)#99 >= 1
 c364:  _(unstack_d_b_ge_1)#191 >= 1
 c365:  _(unstack_a_d_ge_1)#163 >= 1
 c366:  - var_227#222 + var_289#223 + var_497#224 + var_501#225 + var_505#226
        + var_509#227 + var_513#228 >= 0
 c367:  - var_228#229 + var_377#230 >= 0
 c368:  - var_229#231 + var_381#232 >= -1
 c369:  - var_230#233 + var_385#234 >= 0
 c370:  - var_231#235 + var_389#236 >= 0
 c371:  - var_232#237 + var_393#238 >= 0
 c372:  - var_233#239 + var_307#240 >= 0
 c373:  - var_234#241 + var_305#242 + var_375#243 + var_379#244 + var_383#245
        + var_386#246 + var_390#247 + var_443#248 + var_463#249 + var_483#250
        + var_526#251 + var_546#252 >= 0
 c374:  - var_235#253 + var_287#254 + var_323#255 + var_343#256 + var_363#257
        + var_406#258 + var_426#259 + var_495#260 + var_499#261 + var_503#262
        + var_506#263 + var_510#264 >= -1
 c375:  - var_236#265 + var_296#266 + var_314#267 + var_318#268 + var_322#269
        + var_326#270 + var_330#271 + var_454#272 + var_474#273 + var_494#274
        + var_514#275 + var_534#276 >= -1
 c376:  - var_237#277 + var_278#278 + var_334#279 + var_354#280 + var_374#281
        + var_394#282 + var_414#283 + var_434#284 + var_438#285 + var_442#286
        + var_446#287 + var_450#288 >= 0
 c377:  - var_238#289 + var_299#290 + var_335#291 + var_338#292 + var_342#293
        + var_346#294 + var_350#295 + var_435#296 + var_478#297 + var_498#298
        + var_518#299 + var_538#300 >= 0
 c378:  - var_239#301 + var_281#302 + var_315#303 + var_358#304 + var_378#305
        + var_398#306 + var_418#307 + var_455#308 + var_458#309 + var_462#310
        + var_466#311 + var_470#312 >= -1
 c379:  - var_240#313 + var_302#314 + var_355#315 + var_359#316 + var_362#317
        + var_366#318 + var_370#319 + var_439#320 + var_459#321 + var_502#322
        + var_522#323 + var_542#324 >= 0
 c380:  - var_241#325 + var_284#326 + var_319#327 + var_339#328 + var_382#329
        + var_402#330 + var_422#331 + var_475#332 + var_479#333 + var_482#334
        + var_486#335 + var_490#336 >= -1
 c381:  - var_242#337 + var_308#338 + var_395#339 + var_399#340 + var_403#341
        + var_407#342 + var_410#343 + var_447#344 + var_467#345 + var_487#346
        + var_507#347 + var_550#348 >= 0
 c382:  - var_243#349 + var_290#350 + var_327#351 + var_347#352 + var_367#353
        + var_387#354 + var_430#355 + var_515#356 + var_519#357 + var_523#358
        + var_527#359 + var_530#360 >= -1
 c383:  - var_244#361 + var_311#362 + var_415#363 + var_419#364 + var_423#365
        + var_427#366 + var_431#367 + var_451#368 + var_471#369 + var_491#370
        + var_511#371 + var_531#372 >= 0
 c384:  - var_245#373 + var_293#374 + var_331#375 + var_351#376 + var_371#377
        + var_391#378 + var_411#379 + var_535#380 + var_539#381 + var_543#382
        + var_547#383 + var_551#384 >= -1
 c385:  - var_246#385 + var_297#386 + var_300#387 + var_303#388 + var_306#389
        + var_309#390 + var_312#391 + var_316#392 + var_320#393 + var_324#394
        + var_328#395 + var_332#396 + var_336#397 + var_340#398 + var_344#399
        + var_348#400 + var_352#401 + var_356#402 + var_360#403 + var_364#404
        + var_368#405 + var_372#406 + var_376#407 + var_380#408 + var_384#409
        + var_388#410 + var_392#411 + var_396#412 + var_400#413 + var_404#414
        + var_408#415 + var_412#416 + var_416#417 + var_420#418 + var_424#419
        + var_428#420 + var_432#421 >= -1
 c386:  - var_247#422 + var_279#423 + var_282#424 + var_285#425 + var_288#426
        + var_291#427 + var_294#428 + var_436#429 + var_440#430 + var_444#431
        + var_448#432 + var_452#433 + var_456#434 + var_460#435 + var_464#436
        + var_468#437 + var_472#438 + var_476#439 + var_480#440 + var_484#441
        + var_488#442 + var_492#443 + var_496#444 + var_500#445 + var_504#446
        + var_508#447 + var_512#448 + var_516#449 + var_520#450 + var_524#451
        + var_528#452 + var_532#453 + var_536#454 + var_540#455 + var_544#456
        + var_548#457 + var_552#458 >= 0
 c387:  - var_248#459 + var_280#460 + var_437#461 + var_441#462 + var_445#463
        + var_449#464 + var_453#465 >= 0
 c388:  - var_222#466 + var_317#467 >= 0
 c389:  - var_249#468 + var_321#469 >= 0
 c390:  - var_250#470 + var_325#471 >= -1
 c391:  - var_251#472 + var_329#473 >= 0
 c392:  - var_252#474 + var_333#475 >= 0
 c393:  - var_253#476 + var_298#477 >= 0
 c394:  - var_254#478 + var_283#479 + var_457#480 + var_461#481 + var_465#482
        + var_469#483 + var_473#484 >= 0
 c395:  - var_255#485 + var_337#486 >= 0
 c396:  - var_223#487 + var_341#488 >= 0
 c397:  - var_256#489 + var_345#490 >= 0
 c398:  - var_257#491 + var_349#492 >= 0
 c399:  - var_258#493 + var_353#494 >= -1
 c400:  - var_259#495 + var_301#496 >= 0
 c401:  - var_260#497 + var_286#498 + var_477#499 + var_481#500 + var_485#501
        + var_489#502 + var_493#503 >= 0
 c402:  - var_261#504 + var_357#505 >= 0
 c403:  - var_262#506 + var_361#507 >= 0
 c404:  - var_224#508 + var_365#509 >= 0
 c405:  - var_263#510 + var_369#511 >= 0
 c406:  - var_264#512 + var_373#513 >= 0
 c407:  - var_265#514 + var_304#515 >= -1
 c408:  - var_266#516 + var_292#517 + var_517#518 + var_521#519 + var_525#520
        + var_529#521 + var_533#522 >= 0
 c409:  - var_267#523 + var_397#524 >= 0
 c410:  - var_268#525 + var_401#526 >= 0
 c411:  - var_269#527 + var_405#528 >= -1
 c412:  - var_270#529 + var_409#530 >= 0
 c413:  - var_225#531 + var_413#532 >= 0
 c414:  - var_271#533 + var_310#534 >= 0
 c415:  - var_272#535 + var_295#536 + var_537#537 + var_541#538 + var_545#539
        + var_549#540 + var_553#541 >= 0
 c416:  - var_226#542 + var_417#543 >= 0
 c417:  - var_273#544 + var_421#545 >= 0
 c418:  - var_274#546 + var_425#547 >= 0
 c419:  - var_275#548 + var_429#549 >= 0
 c420:  - var_276#550 + var_433#551 >= -1
 c421:  - var_277#552 + var_313#553 >= 0
 c422:  - var_278#278 + var_554#554 >= 0
 c423:  - var_279#423 + var_554#554 >= 0
 c424:  - var_280#460 + var_554#554 >= 0
 c425:  - var_281#302 + var_555#555 >= 0
 c426:  - var_282#424 + var_555#555 >= 0
 c427:  - var_283#479 + var_555#555 >= 0
 c428:  - var_284#326 + var_556#556 >= 0
 c429:  - var_285#425 + var_556#556 >= 0
 c430:  - var_286#498 + var_556#556 >= 0
 c431:  - var_287#254 + var_557#557 >= 0
 c432:  - var_288#426 + var_557#557 >= 0
 c433:  - var_289#223 + var_557#557 >= 0
 c434:  - var_290#350 + var_558#558 >= 0
 c435:  - var_291#427 + var_558#558 >= 0
 c436:  - var_292#517 + var_558#558 >= 0
 c437:  - var_293#374 + var_559#559 >= 0
 c438:  - var_294#428 + var_559#559 >= 0
 c439:  - var_295#536 + var_559#559 >= 0
 c440:  - var_296#266 + var_560#560 >= 0
 c441:  - var_297#386 + var_560#560 >= 0
 c442:  - var_298#477 + var_560#560 >= 0
 c443:  - var_299#290 + var_561#561 >= 0
 c444:  - var_300#387 + var_561#561 >= 0
 c445:  - var_301#496 + var_561#561 >= 0
 c446:  - var_302#314 + var_562#562 >= 0
 c447:  - var_303#388 + var_562#562 >= 0
 c448:  - var_304#515 + var_562#562 >= 0
 c449:  - var_305#242 + var_563#563 >= 0
 c450:  - var_306#389 + var_563#563 >= 0
 c451:  - var_307#240 + var_563#563 >= 0
 c452:  - var_308#338 + var_564#564 >= 0
 c453:  - var_309#390 + var_564#564 >= 0
 c454:  - var_310#534 + var_564#564 >= 0
 c455:  - var_311#362 + var_565#565 >= 0
 c456:  - var_312#391 + var_565#565 >= 0
 c457:  - var_313#553 + var_565#565 >= 0
 c458:  - var_314#267 + var_566#566 >= 0
 c459:  - var_315#303 + var_566#566 >= 0
 c460:  - var_316#392 + var_566#566 >= 0
 c461:  - var_317#467 + var_566#566 >= 0
 c462:  - var_318#268 + var_567#567 >= 0
 c463:  - var_319#327 + var_567#567 >= 0
 c464:  - var_320#393 + var_567#567 >= 0
 c465:  - var_321#469 + var_567#567 >= 0
 c466:  - var_322#269 + var_568#568 >= 0
 c467:  - var_323#255 + var_568#568 >= 0
 c468:  - var_324#394 + var_568#568 >= 0
 c469:  - var_325#471 + var_568#568 >= 0
 c470:  - var_326#270 + var_569#569 >= 0
 c471:  - var_327#351 + var_569#569 >= 0
 c472:  - var_328#395 + var_569#569 >= 0
 c473:  - var_329#473 + var_569#569 >= 0
 c474:  - var_330#271 + var_570#570 >= 0
 c475:  - var_331#375 + var_570#570 >= 0
 c476:  - var_332#396 + var_570#570 >= 0
 c477:  - var_333#475 + var_570#570 >= 0
 c478:  - var_334#279 + var_571#571 >= 0
 c479:  - var_335#291 + var_571#571 >= 0
 c480:  - var_336#397 + var_571#571 >= 0
 c481:  - var_337#486 + var_571#571 >= 0
 c482:  - var_338#292 + var_572#572 >= 0
 c483:  - var_339#328 + var_572#572 >= 0
 c484:  - var_340#398 + var_572#572 >= 0
 c485:  - var_341#488 + var_572#572 >= 0
 c486:  - var_342#293 + var_573#573 >= 0
 c487:  - var_343#256 + var_573#573 >= 0
 c488:  - var_344#399 + var_573#573 >= 0
 c489:  - var_345#490 + var_573#573 >= 0
 c490:  - var_346#294 + var_574#574 >= 0
 c491:  - var_347#352 + var_574#574 >= 0
 c492:  - var_348#400 + var_574#574 >= 0
 c493:  - var_349#492 + var_574#574 >= 0
 c494:  - var_350#295 + var_575#575 >= 0
 c495:  - var_351#376 + var_575#575 >= 0
 c496:  - var_352#401 + var_575#575 >= 0
 c497:  - var_353#494 + var_575#575 >= 0
 c498:  - var_354#280 + var_576#576 >= 0
 c499:  - var_355#315 + var_576#576 >= 0
 c500:  - var_356#402 + var_576#576 >= 0
 c501:  - var_357#505 + var_576#576 >= 0
 c502:  - var_358#304 + var_577#577 >= 0
 c503:  - var_359#316 + var_577#577 >= 0
 c504:  - var_360#403 + var_577#577 >= 0
 c505:  - var_361#507 + var_577#577 >= 0
 c506:  - var_362#317 + var_578#578 >= 0
 c507:  - var_363#257 + var_578#578 >= 0
 c508:  - var_364#404 + var_578#578 >= 0
 c509:  - var_365#509 + var_578#578 >= 0
 c510:  - var_366#318 + var_579#579 >= 0
 c511:  - var_367#353 + var_579#579 >= 0
 c512:  - var_368#405 + var_579#579 >= 0
 c513:  - var_369#511 + var_579#579 >= 0
 c514:  - var_370#319 + var_580#580 >= 0
 c515:  - var_371#377 + var_580#580 >= 0
 c516:  - var_372#406 + var_580#580 >= 0
 c517:  - var_373#513 + var_580#580 >= 0
 c518:  - var_374#281 + var_581#581 >= 0
 c519:  - var_375#243 + var_581#581 >= 0
 c520:  - var_376#407 + var_581#581 >= 0
 c521:  - var_377#230 + var_581#581 >= 0
 c522:  - var_378#305 + var_582#582 >= 0
 c523:  - var_379#244 + var_582#582 >= 0
 c524:  - var_380#408 + var_582#582 >= 0
 c525:  - var_381#232 + var_582#582 >= 0
 c526:  - var_382#329 + var_583#583 >= 0
 c527:  - var_383#245 + var_583#583 >= 0
 c528:  - var_384#409 + var_583#583 >= 0
 c529:  - var_385#234 + var_583#583 >= 0
 c530:  - var_386#246 + var_584#584 >= 0
 c531:  - var_387#354 + var_584#584 >= 0
 c532:  - var_388#410 + var_584#584 >= 0
 c533:  - var_389#236 + var_584#584 >= 0
 c534:  - var_390#247 + var_585#585 >= 0
 c535:  - var_391#378 + var_585#585 >= 0
 c536:  - var_392#411 + var_585#585 >= 0
 c537:  - var_393#238 + var_585#585 >= 0
 c538:  - var_394#282 + var_586#586 >= 0
 c539:  - var_395#339 + var_586#586 >= 0
 c540:  - var_396#412 + var_586#586 >= 0
 c541:  - var_397#524 + var_586#586 >= 0
 c542:  - var_398#306 + var_587#587 >= 0
 c543:  - var_399#340 + var_587#587 >= 0
 c544:  - var_400#413 + var_587#587 >= 0
 c545:  - var_401#526 + var_587#587 >= 0
 c546:  - var_402#330 + var_588#588 >= 0
 c547:  - var_403#341 + var_588#588 >= 0
 c548:  - var_404#414 + var_588#588 >= 0
 c549:  - var_405#528 + var_588#588 >= 0
 c550:  - var_406#258 + var_589#589 >= 0
 c551:  - var_407#342 + var_589#589 >= 0
 c552:  - var_408#415 + var_589#589 >= 0
 c553:  - var_409#530 + var_589#589 >= 0
 c554:  - var_410#343 + var_590#590 >= 0
 c555:  - var_411#379 + var_590#590 >= 0
 c556:  - var_412#416 + var_590#590 >= 0
 c557:  - var_413#532 + var_590#590 >= 0
 c558:  - var_414#283 + var_591#591 >= 0
 c559:  - var_415#363 + var_591#591 >= 0
 c560:  - var_416#417 + var_591#591 >= 0
 c561:  - var_417#543 + var_591#591 >= 0
 c562:  - var_418#307 + var_592#592 >= 0
 c563:  - var_419#364 + var_592#592 >= 0
 c564:  - var_420#418 + var_592#592 >= 0
 c565:  - var_421#545 + var_592#592 >= 0
 c566:  - var_422#331 + var_593#593 >= 0
 c567:  - var_423#365 + var_593#593 >= 0
 c568:  - var_424#419 + var_593#593 >= 0
 c569:  - var_425#547 + var_593#593 >= 0
 c570:  - var_426#259 + var_594#594 >= 0
 c571:  - var_427#366 + var_594#594 >= 0
 c572:  - var_428#420 + var_594#594 >= 0
 c573:  - var_429#549 + var_594#594 >= 0
 c574:  - var_430#355 + var_595#595 >= 0
 c575:  - var_431#367 + var_595#595 >= 0
 c576:  - var_432#421 + var_595#595 >= 0
 c577:  - var_433#551 + var_595#595 >= 0
 c578:  - var_434#284 + var_596#596 >= 0
 c579:  - var_435#296 + var_596#596 >= 0
 c580:  - var_436#429 + var_596#596 >= 0
 c581:  - var_437#461 + var_596#596 >= 0
 c582:  - var_438#285 + var_597#597 >= 0
 c583:  - var_439#320 + var_597#597 >= 0
 c584:  - var_440#430 + var_597#597 >= 0
 c585:  - var_441#462 + var_597#597 >= 0
 c586:  - var_442#286 + var_598#598 >= 0
 c587:  - var_443#248 + var_598#598 >= 0
 c588:  - var_444#431 + var_598#598 >= 0
 c589:  - var_445#463 + var_598#598 >= 0
 c590:  - var_446#287 + var_599#599 >= 0
 c591:  - var_447#344 + var_599#599 >= 0
 c592:  - var_448#432 + var_599#599 >= 0
 c593:  - var_449#464 + var_599#599 >= 0
 c594:  - var_450#288 + var_600#600 >= 0
 c595:  - var_451#368 + var_600#600 >= 0
 c596:  - var_452#433 + var_600#600 >= 0
 c597:  - var_453#465 + var_600#600 >= 0
 c598:  - var_454#272 + var_601#601 >= 0
 c599:  - var_455#308 + var_601#601 >= 0
 c600:  - var_456#434 + var_601#601 >= 0
 c601:  - var_457#480 + var_601#601 >= 0
 c602:  - var_458#309 + var_602#602 >= 0
 c603:  - var_459#321 + var_602#602 >= 0
 c604:  - var_460#435 + var_602#602 >= 0
 c605:  - var_461#481 + var_602#602 >= 0
 c606:  - var_462#310 + var_603#603 >= 0
 c607:  - var_463#249 + var_603#603 >= 0
 c608:  - var_464#436 + var_603#603 >= 0
 c609:  - var_465#482 + var_603#603 >= 0
 c610:  - var_466#311 + var_604#604 >= 0
 c611:  - var_467#345 + var_604#604 >= 0
 c612:  - var_468#437 + var_604#604 >= 0
 c613:  - var_469#483 + var_604#604 >= 0
 c614:  - var_470#312 + var_605#605 >= 0
 c615:  - var_471#369 + var_605#605 >= 0
 c616:  - var_472#438 + var_605#605 >= 0
 c617:  - var_473#484 + var_605#605 >= 0
 c618:  - var_474#273 + var_606#606 >= 0
 c619:  - var_475#332 + var_606#606 >= 0
 c620:  - var_476#439 + var_606#606 >= 0
 c621:  - var_477#499 + var_606#606 >= 0
 c622:  - var_478#297 + var_607#607 >= 0
 c623:  - var_479#333 + var_607#607 >= 0
 c624:  - var_480#440 + var_607#607 >= 0
 c625:  - var_481#500 + var_607#607 >= 0
 c626:  - var_482#334 + var_608#608 >= 0
 c627:  - var_483#250 + var_608#608 >= 0
 c628:  - var_484#441 + var_608#608 >= 0
 c629:  - var_485#501 + var_608#608 >= 0
 c630:  - var_486#335 + var_609#609 >= 0
 c631:  - var_487#346 + var_609#609 >= 0
 c632:  - var_488#442 + var_609#609 >= 0
 c633:  - var_489#502 + var_609#609 >= 0
 c634:  - var_490#336 + var_610#610 >= 0
 c635:  - var_491#370 + var_610#610 >= 0
 c636:  - var_492#443 + var_610#610 >= 0
 c637:  - var_493#503 + var_610#610 >= 0
 c638:  - var_494#274 + var_611#611 >= 0
 c639:  - var_495#260 + var_611#611 >= 0
 c640:  - var_496#444 + var_611#611 >= 0
 c641:  - var_497#224 + var_611#611 >= 0
 c642:  - var_498#298 + var_612#612 >= 0
 c643:  - var_499#261 + var_612#612 >= 0
 c644:  - var_500#445 + var_612#612 >= 0
 c645:  - var_501#225 + var_612#612 >= 0
 c646:  - var_502#322 + var_613#613 >= 0
 c647:  - var_503#262 + var_613#613 >= 0
 c648:  - var_504#446 + var_613#613 >= 0
 c649:  - var_505#226 + var_613#613 >= 0
 c650:  - var_506#263 + var_614#614 >= 0
 c651:  - var_507#347 + var_614#614 >= 0
 c652:  - var_508#447 + var_614#614 >= 0
 c653:  - var_509#227 + var_614#614 >= 0
 c654:  - var_510#264 + var_615#615 >= 0
 c655:  - var_511#371 + var_615#615 >= 0
 c656:  - var_512#448 + var_615#615 >= 0
 c657:  - var_513#228 + var_615#615 >= 0
 c658:  - var_514#275 + var_616#616 >= 0
 c659:  - var_515#356 + var_616#616 >= 0
 c660:  - var_516#449 + var_616#616 >= 0
 c661:  - var_517#518 + var_616#616 >= 0
 c662:  - var_518#299 + var_617#617 >= 0
 c663:  - var_519#357 + var_617#617 >= 0
 c664:  - var_520#450 + var_617#617 >= 0
 c665:  - var_521#519 + var_617#617 >= 0
 c666:  - var_522#323 + var_618#618 >= 0
 c667:  - var_523#358 + var_618#618 >= 0
 c668:  - var_524#451 + var_618#618 >= 0
 c669:  - var_525#520 + var_618#618 >= 0
 c670:  - var_526#251 + var_619#619 >= 0
 c671:  - var_527#359 + var_619#619 >= 0
 c672:  - var_528#452 + var_619#619 >= 0
 c673:  - var_529#521 + var_619#619 >= 0
 c674:  - var_530#360 + var_620#620 >= 0
 c675:  - var_531#372 + var_620#620 >= 0
 c676:  - var_532#453 + var_620#620 >= 0
 c677:  - var_533#522 + var_620#620 >= 0
 c678:  - var_534#276 + var_621#621 >= 0
 c679:  - var_535#380 + var_621#621 >= 0
 c680:  - var_536#454 + var_621#621 >= 0
 c681:  - var_537#537 + var_621#621 >= 0
 c682:  - var_538#300 + var_622#622 >= 0
 c683:  - var_539#381 + var_622#622 >= 0
 c684:  - var_540#455 + var_622#622 >= 0
 c685:  - var_541#538 + var_622#622 >= 0
 c686:  - var_542#324 + var_623#623 >= 0
 c687:  - var_543#382 + var_623#623 >= 0
 c688:  - var_544#456 + var_623#623 >= 0
 c689:  - var_545#539 + var_623#623 >= 0
 c690:  - var_546#252 + var_624#624 >= 0
 c691:  - var_547#383 + var_624#624 >= 0
 c692:  - var_548#457 + var_624#624 >= 0
 c693:  - var_549#540 + var_624#624 >= 0
 c694:  - var_550#348 + var_625#625 >= 0
 c695:  - var_551#384 + var_625#625 >= 0
 c696:  - var_552#458 + var_625#625 >= 0
 c697:  - var_553#541 + var_625#625 >= 0
 c698:  var_236#265 - var_554#554 >= 0
 c699:  var_246#385 - var_554#554 >= 0
 c700:  var_253#476 - var_554#554 >= 0
 c701:  var_238#289 - var_555#555 >= 0
 c702:  var_246#385 - var_555#555 >= 0
 c703:  var_259#495 - var_555#555 >= 0
 c704:  var_240#313 - var_556#556 >= 0
 c705:  var_246#385 - var_556#556 >= 0
 c706:  var_265#514 - var_556#556 >= 0
 c707:  var_234#241 - var_557#557 >= 0
 c708:  var_246#385 - var_557#557 >= 0
 c709:  var_233#239 - var_557#557 >= 0
 c710:  var_242#337 - var_558#558 >= 0
 c711:  var_246#385 - var_558#558 >= 0
 c712:  var_271#533 - var_558#558 >= 0
 c713:  var_244#361 - var_559#559 >= 0
 c714:  var_246#385 - var_559#559 >= 0
 c715:  var_277#552 - var_559#559 >= 0
 c716:  var_248#459 - var_560#560 >= 0
 c717:  var_254#478 - var_561#561 >= 0
 c718:  var_260#497 - var_562#562 >= 0
 c719:  var_227#222 - var_563#563 >= 0
 c720:  var_266#516 - var_564#564 >= 0
 c721:  var_272#535 - var_565#565 >= 0
 c722:  var_238#289 - var_566#566 >= 0
 c723:  var_248#459 - var_566#566 >= 0
 c724:  var_240#313 - var_567#567 >= 0
 c725:  var_248#459 - var_567#567 >= 0
 c726:  var_234#241 - var_568#568 >= 0
 c727:  var_248#459 - var_568#568 >= 0
 c728:  var_242#337 - var_569#569 >= 0
 c729:  var_248#459 - var_569#569 >= 0
 c730:  var_244#361 - var_570#570 >= 0
 c731:  var_248#459 - var_570#570 >= 0
 c732:  var_236#265 - var_571#571 >= 0
 c733:  var_254#478 - var_571#571 >= 0
 c734:  var_240#313 - var_572#572 >= 0
 c735:  var_254#478 - var_572#572 >= 0
 c736:  var_234#241 - var_573#573 >= 0
 c737:  var_254#478 - var_573#573 >= 0
 c738:  var_242#337 - var_574#574 >= 0
 c739:  var_254#478 - var_574#574 >= 0
 c740:  var_244#361 - var_575#575 >= 0
 c741:  var_254#478 - var_575#575 >= 0
 c742:  var_236#265 - var_576#576 >= 0
 c743:  var_260#497 - var_576#576 >= 0
 c744:  var_238#289 - var_577#577 >= 0
 c745:  var_260#497 - var_577#577 >= 0
 c746:  var_234#241 - var_578#578 >= 0
 c747:  var_260#497 - var_578#578 >= 0
 c748:  var_242#337 - var_579#579 >= 0
 c749:  var_260#497 - var_579#579 >= 0
 c750:  var_244#361 - var_580#580 >= 0
 c751:  var_260#497 - var_580#580 >= 0
 c752:  var_236#265 - var_581#581 >= 0
 c753:  var_227#222 - var_581#581 >= 0
 c754:  var_238#289 - var_582#582 >= 0
 c755:  var_227#222 - var_582#582 >= 0
 c756:  var_240#313 - var_583#583 >= 0
 c757:  var_227#222 - var_583#583 >= 0
 c758:  var_242#337 - var_584#584 >= 0
 c759:  var_227#222 - var_584#584 >= 0
 c760:  var_244#361 - var_585#585 >= 0
 c761:  var_227#222 - var_585#585 >= 0
 c762:  var_236#265 - var_586#586 >= 0
 c763:  var_266#516 - var_586#586 >= 0
 c764:  var_238#289 - var_587#587 >= 0
 c765:  var_266#516 - var_587#587 >= 0
 c766:  var_240#313 - var_588#588 >= 0
 c767:  var_266#516 - var_588#588 >= 0
 c768:  var_234#241 - var_589#589 >= 0
 c769:  var_266#516 - var_589#589 >= 0
 c770:  var_244#361 - var_590#590 >= 0
 c771:  var_266#516 - var_590#590 >= 0
 c772:  var_236#265 - var_591#591 >= 0
 c773:  var_272#535 - var_591#591 >= 0
 c774:  var_238#289 - var_592#592 >= 0
 c775:  var_272#535 - var_592#592 >= 0
 c776:  var_240#313 - var_593#593 >= 0
 c777:  var_272#535 - var_593#593 >= 0
 c778:  var_234#241 - var_594#594 >= 0
 c779:  var_272#535 - var_594#594 >= 0
 c780:  var_242#337 - var_595#595 >= 0
 c781:  var_272#535 - var_595#595 >= 0
 c782:  var_236#265 - var_596#596 >= 0
 c783:  var_246#385 - var_596#596 >= 0
 c784:  var_222#466 - var_596#596 >= 0
 c785:  var_236#265 - var_597#597 >= 0
 c786:  var_246#385 - var_597#597 >= 0
 c787:  var_249#468 - var_597#597 >= 0
 c788:  var_236#265 - var_598#598 >= 0
 c789:  var_246#385 - var_598#598 >= 0
 c790:  var_250#470 - var_598#598 >= 0
 c791:  var_236#265 - var_599#599 >= 0
 c792:  var_246#385 - var_599#599 >= 0
 c793:  var_251#472 - var_599#599 >= 0
 c794:  var_236#265 - var_600#600 >= 0
 c795:  var_246#385 - var_600#600 >= 0
 c796:  var_252#474 - var_600#600 >= 0
 c797:  var_238#289 - var_601#601 >= 0
 c798:  var_246#385 - var_601#601 >= 0
 c799:  var_255#485 - var_601#601 >= 0
 c800:  var_238#289 - var_602#602 >= 0
 c801:  var_246#385 - var_602#602 >= 0
 c802:  var_223#487 - var_602#602 >= 0
 c803:  var_238#289 - var_603#603 >= 0
 c804:  var_246#385 - var_603#603 >= 0
 c805:  var_256#489 - var_603#603 >= 0
 c806:  var_238#289 - var_604#604 >= 0
 c807:  var_246#385 - var_604#604 >= 0
 c808:  var_257#491 - var_604#604 >= 0
 c809:  var_238#289 - var_605#605 >= 0
 c810:  var_246#385 - var_605#605 >= 0
 c811:  var_258#493 - var_605#605 >= 0
 c812:  var_240#313 - var_606#606 >= 0
 c813:  var_246#385 - var_606#606 >= 0
 c814:  var_261#504 - var_606#606 >= 0
 c815:  var_240#313 - var_607#607 >= 0
 c816:  var_246#385 - var_607#607 >= 0
 c817:  var_262#506 - var_607#607 >= 0
 c818:  var_240#313 - var_608#608 >= 0
 c819:  var_246#385 - var_608#608 >= 0
 c820:  var_224#508 - var_608#608 >= 0
 c821:  var_240#313 - var_609#609 >= 0
 c822:  var_246#385 - var_609#609 >= 0
 c823:  var_263#510 - var_609#609 >= 0
 c824:  var_240#313 - var_610#610 >= 0
 c825:  var_246#385 - var_610#610 >= 0
 c826:  var_264#512 - var_610#610 >= 0
 c827:  var_234#241 - var_611#611 >= 0
 c828:  var_246#385 - var_611#611 >= 0
 c829:  var_228#229 - var_611#611 >= 0
 c830:  var_234#241 - var_612#612 >= 0
 c831:  var_246#385 - var_612#612 >= 0
 c832:  var_229#231 - var_612#612 >= 0
 c833:  var_234#241 - var_613#613 >= 0
 c834:  var_246#385 - var_613#613 >= 0
 c835:  var_230#233 - var_613#613 >= 0
 c836:  var_234#241 - var_614#614 >= 0
 c837:  var_246#385 - var_614#614 >= 0
 c838:  var_231#235 - var_614#614 >= 0
 c839:  var_234#241 - var_615#615 >= 0
 c840:  var_246#385 - var_615#615 >= 0
 c841:  var_232#237 - var_615#615 >= 0
 c842:  var_242#337 - var_616#616 >= 0
 c843:  var_246#385 - var_616#616 >= 0
 c844:  var_267#523 - var_616#616 >= 0
 c845:  var_242#337 - var_617#617 >= 0
 c846:  var_246#385 - var_617#617 >= 0
 c847:  var_268#525 - var_617#617 >= 0
 c848:  var_242#337 - var_618#618 >= 0
 c849:  var_246#385 - var_618#618 >= 0
 c850:  var_269#527 - var_618#618 >= 0
 c851:  var_242#337 - var_619#619 >= 0
 c852:  var_246#385 - var_619#619 >= 0
 c853:  var_270#529 - var_619#619 >= 0
 c854:  var_242#337 - var_620#620 >= 0
 c855:  var_246#385 - var_620#620 >= 0
 c856:  var_225#531 - var_620#620 >= 0
 c857:  var_244#361 - var_621#621 >= 0
 c858:  var_246#385 - var_621#621 >= 0
 c859:  var_226#542 - var_621#621 >= 0
 c860:  var_244#361 - var_622#622 >= 0
 c861:  var_246#385 - var_622#622 >= 0
 c862:  var_273#544 - var_622#622 >= 0
 c863:  var_244#361 - var_623#623 >= 0
 c864:  var_246#385 - var_623#623 >= 0
 c865:  var_274#546 - var_623#623 >= 0
 c866:  var_244#361 - var_624#624 >= 0
 c867:  var_246#385 - var_624#624 >= 0
 c868:  var_275#548 - var_624#624 >= 0
 c869:  var_244#361 - var_625#625 >= 0
 c870:  var_246#385 - var_625#625 >= 0
 c871:  var_276#550 - var_625#625 >= 0
 c872:  var_626#626 - var_627#627 >= 0
 c873:  var_626#626 - var_628#628 >= 0
 c874:  var_626#626 - var_629#629 >= 0
 c875:  var_630#630 - var_631#631 >= 0
 c876:  - var_628#628 + var_630#630 >= 0
 c877:  var_630#630 - var_632#632 >= 0
 c878:  var_633#633 - var_634#634 >= 0
 c879:  - var_628#628 + var_633#633 >= 0
 c880:  var_633#633 - var_635#635 >= 0
 c881:  var_636#636 - var_637#637 >= 0
 c882:  - var_628#628 + var_636#636 >= 0
 c883:  var_636#636 - var_638#638 >= 0
 c884:  var_639#639 - var_640#640 >= 0
 c885:  - var_628#628 + var_639#639 >= 0
 c886:  var_639#639 - var_641#641 >= 0
 c887:  var_642#642 - var_643#643 >= 0
 c888:  - var_628#628 + var_642#642 >= 0
 c889:  var_642#642 - var_644#644 >= 0
 c890:  var_645#645 - var_646#646 >= 0
 c891:  var_647#647 - var_648#648 >= 0
 c892:  var_649#649 - var_650#650 >= 0
 c893:  var_651#651 - var_652#652 >= 0
 c894:  var_653#653 - var_654#654 >= 0
 c895:  var_655#655 - var_656#656 >= 0
 c896:  - var_631#631 + var_657#657 >= 0
 c897:  - var_646#646 + var_657#657 >= 0
 c898:  - var_634#634 + var_658#658 >= 0
 c899:  - var_646#646 + var_658#658 >= 0
 c900:  - var_637#637 + var_659#659 >= 0
 c901:  - var_646#646 + var_659#659 >= 0
 c902:  - var_640#640 + var_660#660 >= 0
 c903:  - var_646#646 + var_660#660 >= 0
 c904:  - var_643#643 + var_661#661 >= 0
 c905:  - var_646#646 + var_661#661 >= 0
 c906:  - var_627#627 + var_662#662 >= 0
 c907:  - var_648#648 + var_662#662 >= 0
 c908:  - var_634#634 + var_663#663 >= 0
 c909:  - var_648#648 + var_663#663 >= 0
 c910:  - var_637#637 + var_664#664 >= 0
 c911:  - var_648#648 + var_664#664 >= 0
 c912:  - var_640#640 + var_665#665 >= 0
 c913:  - var_648#648 + var_665#665 >= 0
 c914:  - var_643#643 + var_666#666 >= 0
 c915:  - var_648#648 + var_666#666 >= 0
 c916:  - var_627#627 + var_667#667 >= 0
 c917:  - var_650#650 + var_667#667 >= 0
 c918:  - var_631#631 + var_668#668 >= 0
 c919:  - var_650#650 + var_668#668 >= 0
 c920:  - var_637#637 + var_669#669 >= 0
 c921:  - var_650#650 + var_669#669 >= 0
 c922:  - var_640#640 + var_670#670 >= 0
 c923:  - var_650#650 + var_670#670 >= 0
 c924:  - var_643#643 + var_671#671 >= 0
 c925:  - var_650#650 + var_671#671 >= 0
 c926:  - var_627#627 + var_672#672 >= 0
 c927:  - var_652#652 + var_672#672 >= 0
 c928:  - var_631#631 + var_673#673 >= 0
 c929:  - var_652#652 + var_673#673 >= 0
 c930:  - var_634#634 + var_674#674 >= 0
 c931:  - var_652#652 + var_674#674 >= 0
 c932:  - var_640#640 + var_675#675 >= 0
 c933:  - var_652#652 + var_675#675 >= 0
 c934:  - var_643#643 + var_676#676 >= 0
 c935:  - var_652#652 + var_676#676 >= 0
 c936:  - var_627#627 + var_677#677 >= 0
 c937:  - var_654#654 + var_677#677 >= 0
 c938:  - var_631#631 + var_678#678 >= 0
 c939:  - var_654#654 + var_678#678 >= 0
 c940:  - var_634#634 + var_679#679 >= 0
 c941:  - var_654#654 + var_679#679 >= 0
 c942:  - var_637#637 + var_680#680 >= 0
 c943:  - var_654#654 + var_680#680 >= 0
 c944:  - var_643#643 + var_681#681 >= 0
 c945:  - var_654#654 + var_681#681 >= 0
 c946:  - var_627#627 + var_682#682 >= 0
 c947:  - var_656#656 + var_682#682 >= 0
 c948:  - var_631#631 + var_683#683 >= 0
 c949:  - var_656#656 + var_683#683 >= 0
 c950:  - var_634#634 + var_684#684 >= 0
 c951:  - var_656#656 + var_684#684 >= 0
 c952:  - var_637#637 + var_685#685 >= 0
 c953:  - var_656#656 + var_685#685 >= 0
 c954:  - var_640#640 + var_686#686 >= 0
 c955:  - var_656#656 + var_686#686 >= 0
 c956:  - var_627#627 + var_687#687 >= 0
 c957:  - var_628#628 + var_687#687 >= 0
 c958:  var_687#687 - var_688#688 >= 0
 c959:  - var_627#627 + var_689#689 >= 0
 c960:  - var_628#628 + var_689#689 >= 0
 c961:  var_689#689 - var_690#690 >= 0
 c962:  - var_627#627 + var_691#691 >= 0
 c963:  - var_628#628 + var_691#691 >= 0
 c964:  var_691#691 - var_692#692 >= 0
 c965:  - var_627#627 + var_693#693 >= 0
 c966:  - var_628#628 + var_693#693 >= 0
 c967:  var_693#693 - var_694#694 >= 0
 c968:  - var_627#627 + var_695#695 >= 0
 c969:  - var_628#628 + var_695#695 >= 0
 c970:  var_695#695 - var_696#696 >= 0
 c971:  - var_631#631 + var_697#697 >= 0
 c972:  - var_628#628 + var_697#697 >= 0
 c973:  var_697#697 - var_698#698 >= 0
 c974:  - var_631#631 + var_699#699 >= 0
 c975:  - var_628#628 + var_699#699 >= 0
 c976:  var_699#699 - var_700#700 >= 0
 c977:  - var_631#631 + var_701#701 >= 0
 c978:  - var_628#628 + var_701#701 >= 0
 c979:  var_701#701 - var_702#702 >= 0
 c980:  - var_631#631 + var_703#703 >= 0
 c981:  - var_628#628 + var_703#703 >= 0
 c982:  var_703#703 - var_704#704 >= 0
 c983:  - var_631#631 + var_705#705 >= 0
 c984:  - var_628#628 + var_705#705 >= 0
 c985:  var_705#705 - var_706#706 >= 0
 c986:  - var_634#634 + var_707#707 >= 0
 c987:  - var_628#628 + var_707#707 >= 0
 c988:  var_707#707 - var_708#708 >= 0
 c989:  - var_634#634 + var_709#709 >= 0
 c990:  - var_628#628 + var_709#709 >= 0
 c991:  var_709#709 - var_710#710 >= 0
 c992:  - var_634#634 + var_711#711 >= 0
 c993:  - var_628#628 + var_711#711 >= 0
 c994:  var_711#711 - var_712#712 >= 0
 c995:  - var_634#634 + var_713#713 >= 0
 c996:  - var_628#628 + var_713#713 >= 0
 c997:  var_713#713 - var_714#714 >= 0
 c998:  - var_634#634 + var_715#715 >= 0
 c999:  - var_628#628 + var_715#715 >= 0
 c1000: var_715#715 - var_716#716 >= 0
 c1001: - var_637#637 + var_717#717 >= 0
 c1002: - var_628#628 + var_717#717 >= 0
 c1003: var_717#717 - var_718#718 >= 0
 c1004: - var_637#637 + var_719#719 >= 0
 c1005: - var_628#628 + var_719#719 >= 0
 c1006: var_719#719 - var_720#720 >= 0
 c1007: - var_637#637 + var_721#721 >= 0
 c1008: - var_628#628 + var_721#721 >= 0
 c1009: var_721#721 - var_722#722 >= 0
 c1010: - var_637#637 + var_723#723 >= 0
 c1011: - var_628#628 + var_723#723 >= 0
 c1012: var_723#723 - var_724#724 >= 0
 c1013: - var_637#637 + var_725#725 >= 0
 c1014: - var_628#628 + var_725#725 >= 0
 c1015: var_725#725 - var_726#726 >= 0
 c1016: - var_640#640 + var_727#727 >= 0
 c1017: - var_628#628 + var_727#727 >= 0
 c1018: var_727#727 - var_728#728 >= 0
 c1019: - var_640#640 + var_729#729 >= 0
 c1020: - var_628#628 + var_729#729 >= 0
 c1021: var_729#729 - var_730#730 >= 0
 c1022: - var_640#640 + var_731#731 >= 0
 c1023: - var_628#628 + var_731#731 >= 0
 c1024: var_731#731 - var_732#732 >= 0
 c1025: - var_640#640 + var_733#733 >= 0
 c1026: - var_628#628 + var_733#733 >= 0
 c1027: var_733#733 - var_734#734 >= 0
 c1028: - var_640#640 + var_735#735 >= 0
 c1029: - var_628#628 + var_735#735 >= 0
 c1030: var_735#735 - var_736#736 >= 0
 c1031: - var_643#643 + var_737#737 >= 0
 c1032: - var_628#628 + var_737#737 >= 0
 c1033: var_737#737 - var_738#738 >= 0
 c1034: - var_643#643 + var_739#739 >= 0
 c1035: - var_628#628 + var_739#739 >= 0
 c1036: var_739#739 - var_740#740 >= 0
 c1037: - var_643#643 + var_741#741 >= 0
 c1038: - var_628#628 + var_741#741 >= 0
 c1039: var_741#741 - var_742#742 >= 0
 c1040: - var_643#643 + var_743#743 >= 0
 c1041: - var_628#628 + var_743#743 >= 0
 c1042: var_743#743 - var_744#744 >= 0
 c1043: - var_643#643 + var_745#745 >= 0
 c1044: - var_628#628 + var_745#745 >= 0
 c1045: var_745#745 - var_746#746 >= 0
 c1046: - 73 var_278#278 - var_626#626 + var_747#747 >= -72
 c1047: - 73 var_279#423 - var_626#626 + var_748#748 >= -72
 c1048: - 73 var_280#460 - var_626#626 + var_646#646 >= -72
 c1049: - 73 var_281#302 - var_630#630 + var_749#749 >= -72
 c1050: - 73 var_282#424 - var_630#630 + var_748#748 >= -72
 c1051: - 73 var_283#479 - var_630#630 + var_648#648 >= -72
 c1052: - 73 var_284#326 - var_633#633 + var_750#750 >= -72
 c1053: - 73 var_285#425 - var_633#633 + var_748#748 >= -72
 c1054: - 73 var_286#498 - var_633#633 + var_650#650 >= -72
 c1055: - 73 var_287#254 - var_636#636 + var_751#751 >= -72
 c1056: - 73 var_288#426 - var_636#636 + var_748#748 >= -72
 c1057: - 73 var_289#223 - var_636#636 + var_652#652 >= -72
 c1058: - 73 var_290#350 - var_639#639 + var_752#752 >= -72
 c1059: - 73 var_291#427 - var_639#639 + var_748#748 >= -72
 c1060: - 73 var_292#517 - var_639#639 + var_654#654 >= -72
 c1061: - 73 var_293#374 - var_642#642 + var_753#753 >= -72
 c1062: - 73 var_294#428 - var_642#642 + var_748#748 >= -72
 c1063: - 73 var_295#536 - var_642#642 + var_656#656 >= -72
 c1064: - 73 var_296#266 + var_627#627 - var_645#645 >= -72
 c1065: - 73 var_297#386 + var_628#628 - var_645#645 >= -72
 c1066: - 73 var_298#477 + var_629#629 - var_645#645 >= -72
 c1067: - 73 var_299#290 + var_631#631 - var_647#647 >= -72
 c1068: - 73 var_300#387 + var_628#628 - var_647#647 >= -72
 c1069: - 73 var_301#496 + var_632#632 - var_647#647 >= -72
 c1070: - 73 var_302#314 + var_634#634 - var_649#649 >= -72
 c1071: - 73 var_303#388 + var_628#628 - var_649#649 >= -72
 c1072: - 73 var_304#515 + var_635#635 - var_649#649 >= -72
 c1073: - 73 var_305#242 + var_637#637 - var_651#651 >= -72
 c1074: - 73 var_306#389 + var_628#628 - var_651#651 >= -72
 c1075: - 73 var_307#240 + var_638#638 - var_651#651 >= -72
 c1076: - 73 var_308#338 + var_640#640 - var_653#653 >= -72
 c1077: - 73 var_309#390 + var_628#628 - var_653#653 >= -72
 c1078: - 73 var_310#534 + var_641#641 - var_653#653 >= -72
 c1079: - 73 var_311#362 + var_643#643 - var_655#655 >= -72
 c1080: - 73 var_312#391 + var_628#628 - var_655#655 >= -72
 c1081: - 73 var_313#553 + var_644#644 - var_655#655 >= -72
 c1082: - 73 var_314#267 + var_627#627 - var_657#657 >= -72
 c1083: - 73 var_315#303 - var_657#657 + var_749#749 >= -72
 c1084: - 73 var_316#392 + var_628#628 - var_657#657 >= -72
 c1085: - 73 var_317#467 - var_657#657 + var_688#688 >= -72
 c1086: - 73 var_318#268 + var_627#627 - var_658#658 >= -72
 c1087: - 73 var_319#327 - var_658#658 + var_750#750 >= -72
 c1088: - 73 var_320#393 + var_628#628 - var_658#658 >= -72
 c1089: - 73 var_321#469 - var_658#658 + var_690#690 >= -72
 c1090: - 73 var_322#269 + var_627#627 - var_659#659 >= -72
 c1091: - 73 var_323#255 - var_659#659 + var_751#751 >= -72
 c1092: - 73 var_324#394 + var_628#628 - var_659#659 >= -72
 c1093: - 73 var_325#471 - var_659#659 + var_692#692 >= -72
 c1094: - 73 var_326#270 + var_627#627 - var_660#660 >= -72
 c1095: - 73 var_327#351 - var_660#660 + var_752#752 >= -72
 c1096: - 73 var_328#395 + var_628#628 - var_660#660 >= -72
 c1097: - 73 var_329#473 - var_660#660 + var_694#694 >= -72
 c1098: - 73 var_330#271 + var_627#627 - var_661#661 >= -72
 c1099: - 73 var_331#375 - var_661#661 + var_753#753 >= -72
 c1100: - 73 var_332#396 + var_628#628 - var_661#661 >= -72
 c1101: - 73 var_333#475 - var_661#661 + var_696#696 >= -72
 c1102: - 73 var_334#279 - var_662#662 + var_747#747 >= -72
 c1103: - 73 var_335#291 + var_631#631 - var_662#662 >= -72
 c1104: - 73 var_336#397 + var_628#628 - var_662#662 >= -72
 c1105: - 73 var_337#486 - var_662#662 + var_698#698 >= -72
 c1106: - 73 var_338#292 + var_631#631 - var_663#663 >= -72
 c1107: - 73 var_339#328 - var_663#663 + var_750#750 >= -72
 c1108: - 73 var_340#398 + var_628#628 - var_663#663 >= -72
 c1109: - 73 var_341#488 - var_663#663 + var_700#700 >= -72
 c1110: - 73 var_342#293 + var_631#631 - var_664#664 >= -72
 c1111: - 73 var_343#256 - var_664#664 + var_751#751 >= -72
 c1112: - 73 var_344#399 + var_628#628 - var_664#664 >= -72
 c1113: - 73 var_345#490 - var_664#664 + var_702#702 >= -72
 c1114: - 73 var_346#294 + var_631#631 - var_665#665 >= -72
 c1115: - 73 var_347#352 - var_665#665 + var_752#752 >= -72
 c1116: - 73 var_348#400 + var_628#628 - var_665#665 >= -72
 c1117: - 73 var_349#492 - var_665#665 + var_704#704 >= -72
 c1118: - 73 var_350#295 + var_631#631 - var_666#666 >= -72
 c1119: - 73 var_351#376 - var_666#666 + var_753#753 >= -72
 c1120: - 73 var_352#401 + var_628#628 - var_666#666 >= -72
 c1121: - 73 var_353#494 - var_666#666 + var_706#706 >= -72
 c1122: - 73 var_354#280 - var_667#667 + var_747#747 >= -72
 c1123: - 73 var_355#315 + var_634#634 - var_667#667 >= -72
 c1124: - 73 var_356#402 + var_628#628 - var_667#667 >= -72
 c1125: - 73 var_357#505 - var_667#667 + var_708#708 >= -72
 c1126: - 73 var_358#304 - var_668#668 + var_749#749 >= -72
 c1127: - 73 var_359#316 + var_634#634 - var_668#668 >= -72
 c1128: - 73 var_360#403 + var_628#628 - var_668#668 >= -72
 c1129: - 73 var_361#507 - var_668#668 + var_710#710 >= -72
 c1130: - 73 var_362#317 + var_634#634 - var_669#669 >= -72
 c1131: - 73 var_363#257 - var_669#669 + var_751#751 >= -72
 c1132: - 73 var_364#404 + var_628#628 - var_669#669 >= -72
 c1133: - 73 var_365#509 - var_669#669 + var_712#712 >= -72
 c1134: - 73 var_366#318 + var_634#634 - var_670#670 >= -72
 c1135: - 73 var_367#353 - var_670#670 + var_752#752 >= -72
 c1136: - 73 var_368#405 + var_628#628 - var_670#670 >= -72
 c1137: - 73 var_369#511 - var_670#670 + var_714#714 >= -72
 c1138: - 73 var_370#319 + var_634#634 - var_671#671 >= -72
 c1139: - 73 var_371#377 - var_671#671 + var_753#753 >= -72
 c1140: - 73 var_372#406 + var_628#628 - var_671#671 >= -72
 c1141: - 73 var_373#513 - var_671#671 + var_716#716 >= -72
 c1142: - 73 var_374#281 - var_672#672 + var_747#747 >= -72
 c1143: - 73 var_375#243 + var_637#637 - var_672#672 >= -72
 c1144: - 73 var_376#407 + var_628#628 - var_672#672 >= -72
 c1145: - 73 var_377#230 - var_672#672 + var_718#718 >= -72
 c1146: - 73 var_378#305 - var_673#673 + var_749#749 >= -72
 c1147: - 73 var_379#244 + var_637#637 - var_673#673 >= -72
 c1148: - 73 var_380#408 + var_628#628 - var_673#673 >= -72
 c1149: - 73 var_381#232 - var_673#673 + var_720#720 >= -72
 c1150: - 73 var_382#329 - var_674#674 + var_750#750 >= -72
 c1151: - 73 var_383#245 + var_637#637 - var_674#674 >= -72
 c1152: - 73 var_384#409 + var_628#628 - var_674#674 >= -72
 c1153: - 73 var_385#234 - var_674#674 + var_722#722 >= -72
 c1154: - 73 var_386#246 + var_637#637 - var_675#675 >= -72
 c1155: - 73 var_387#354 - var_675#675 + var_752#752 >= -72
 c1156: - 73 var_388#410 + var_628#628 - var_675#675 >= -72
 c1157: - 73 var_389#236 - var_675#675 + var_724#724 >= -72
 c1158: - 73 var_390#247 + var_637#637 - var_676#676 >= -72
 c1159: - 73 var_391#378 - var_676#676 + var_753#753 >= -72
 c1160: - 73 var_392#411 + var_628#628 - var_676#676 >= -72
 c1161: - 73 var_393#238 - var_676#676 + var_726#726 >= -72
 c1162: - 73 var_394#282 - var_677#677 + var_747#747 >= -72
 c1163: - 73 var_395#339 + var_640#640 - var_677#677 >= -72
 c1164: - 73 var_396#412 + var_628#628 - var_677#677 >= -72
 c1165: - 73 var_397#524 - var_677#677 + var_728#728 >= -72
 c1166: - 73 var_398#306 - var_678#678 + var_749#749 >= -72
 c1167: - 73 var_399#340 + var_640#640 - var_678#678 >= -72
 c1168: - 73 var_400#413 + var_628#628 - var_678#678 >= -72
 c1169: - 73 var_401#526 - var_678#678 + var_730#730 >= -72
 c1170: - 73 var_402#330 - var_679#679 + var_750#750 >= -72
 c1171: - 73 var_403#341 + var_640#640 - var_679#679 >= -72
 c1172: - 73 var_404#414 + var_628#628 - var_679#679 >= -72
 c1173: - 73 var_405#528 - var_679#679 + var_732#732 >= -72
 c1174: - 73 var_406#258 - var_680#680 + var_751#751 >= -72
 c1175: - 73 var_407#342 + var_640#640 - var_680#680 >= -72
 c1176: - 73 var_408#415 + var_628#628 - var_680#680 >= -72
 c1177: - 73 var_409#530 - var_680#680 + var_734#734 >= -72
 c1178: - 73 var_410#343 + var_640#640 - var_681#681 >= -72
 c1179: - 73 var_411#379 - var_681#681 + var_753#753 >= -72
 c1180: - 73 var_412#416 + var_628#628 - var_681#681 >= -72
 c1181: - 73 var_413#532 - var_681#681 + var_736#736 >= -72
 c1182: - 73 var_414#283 - var_682#682 + var_747#747 >= -72
 c1183: - 73 var_415#363 + var_643#643 - var_682#682 >= -72
 c1184: - 73 var_416#417 + var_628#628 - var_682#682 >= -72
 c1185: - 73 var_417#543 - var_682#682 + var_738#738 >= -72
 c1186: - 73 var_418#307 - var_683#683 + var_749#749 >= -72
 c1187: - 73 var_419#364 + var_643#643 - var_683#683 >= -72
 c1188: - 73 var_420#418 + var_628#628 - var_683#683 >= -72
 c1189: - 73 var_421#545 - var_683#683 + var_740#740 >= -72
 c1190: - 73 var_422#331 - var_684#684 + var_750#750 >= -72
 c1191: - 73 var_423#365 + var_643#643 - var_684#684 >= -72
 c1192: - 73 var_424#419 + var_628#628 - var_684#684 >= -72
 c1193: - 73 var_425#547 - var_684#684 + var_742#742 >= -72
 c1194: - 73 var_426#259 - var_685#685 + var_751#751 >= -72
 c1195: - 73 var_427#366 + var_643#643 - var_685#685 >= -72
 c1196: - 73 var_428#420 + var_628#628 - var_685#685 >= -72
 c1197: - 73 var_429#549 - var_685#685 + var_744#744 >= -72
 c1198: - 73 var_430#355 - var_686#686 + var_752#752 >= -72
 c1199: - 73 var_431#367 + var_643#643 - var_686#686 >= -72
 c1200: - 73 var_432#421 + var_628#628 - var_686#686 >= -72
 c1201: - 73 var_433#551 - var_686#686 + var_746#746 >= -72
 c1202: - 73 var_434#284 - var_687#687 + var_747#747 >= -72
 c1203: - 73 var_435#296 + var_631#631 - var_687#687 >= -72
 c1204: - 73 var_436#429 - var_687#687 + var_748#748 >= -72
 c1205: - 73 var_437#461 + var_646#646 - var_687#687 >= -72
 c1206: - 73 var_438#285 - var_689#689 + var_747#747 >= -72
 c1207: - 73 var_439#320 + var_634#634 - var_689#689 >= -72
 c1208: - 73 var_440#430 - var_689#689 + var_748#748 >= -72
 c1209: - 73 var_441#462 + var_646#646 - var_689#689 >= -72
 c1210: - 73 var_442#286 - var_691#691 + var_747#747 >= -72
 c1211: - 73 var_443#248 + var_637#637 - var_691#691 >= -72
 c1212: - 73 var_444#431 - var_691#691 + var_748#748 >= -72
 c1213: - 73 var_445#463 + var_646#646 - var_691#691 >= -72
 c1214: - 73 var_446#287 - var_693#693 + var_747#747 >= -72
 c1215: - 73 var_447#344 + var_640#640 - var_693#693 >= -72
 c1216: - 73 var_448#432 - var_693#693 + var_748#748 >= -72
 c1217: - 73 var_449#464 + var_646#646 - var_693#693 >= -72
 c1218: - 73 var_450#288 - var_695#695 + var_747#747 >= -72
 c1219: - 73 var_451#368 + var_643#643 - var_695#695 >= -72
 c1220: - 73 var_452#433 - var_695#695 + var_748#748 >= -72
 c1221: - 73 var_453#465 + var_646#646 - var_695#695 >= -72
 c1222: - 73 var_454#272 + var_627#627 - var_697#697 >= -72
 c1223: - 73 var_455#308 - var_697#697 + var_749#749 >= -72
 c1224: - 73 var_456#434 - var_697#697 + var_748#748 >= -72
 c1225: - 73 var_457#480 + var_648#648 - var_697#697 >= -72
 c1226: - 73 var_458#309 - var_699#699 + var_749#749 >= -72
 c1227: - 73 var_459#321 + var_634#634 - var_699#699 >= -72
 c1228: - 73 var_460#435 - var_699#699 + var_748#748 >= -72
 c1229: - 73 var_461#481 + var_648#648 - var_699#699 >= -72
 c1230: - 73 var_462#310 - var_701#701 + var_749#749 >= -72
 c1231: - 73 var_463#249 + var_637#637 - var_701#701 >= -72
 c1232: - 73 var_464#436 - var_701#701 + var_748#748 >= -72
 c1233: - 73 var_465#482 + var_648#648 - var_701#701 >= -72
 c1234: - 73 var_466#311 - var_703#703 + var_749#749 >= -72
 c1235: - 73 var_467#345 + var_640#640 - var_703#703 >= -72
 c1236: - 73 var_468#437 - var_703#703 + var_748#748 >= -72
 c1237: - 73 var_469#483 + var_648#648 - var_703#703 >= -72
 c1238: - 73 var_470#312 - var_705#705 + var_749#749 >= -72
 c1239: - 73 var_471#369 + var_643#643 - var_705#705 >= -72
 c1240: - 73 var_472#438 - var_705#705 + var_748#748 >= -72
 c1241: - 73 var_473#484 + var_648#648 - var_705#705 >= -72
 c1242: - 73 var_474#273 + var_627#627 - var_707#707 >= -72
 c1243: - 73 var_475#332 - var_707#707 + var_750#750 >= -72
 c1244: - 73 var_476#439 - var_707#707 + var_748#748 >= -72
 c1245: - 73 var_477#499 + var_650#650 - var_707#707 >= -72
 c1246: - 73 var_478#297 + var_631#631 - var_709#709 >= -72
 c1247: - 73 var_479#333 - var_709#709 + var_750#750 >= -72
 c1248: - 73 var_480#440 - var_709#709 + var_748#748 >= -72
 c1249: - 73 var_481#500 + var_650#650 - var_709#709 >= -72
 c1250: - 73 var_482#334 - var_711#711 + var_750#750 >= -72
 c1251: - 73 var_483#250 + var_637#637 - var_711#711 >= -72
 c1252: - 73 var_484#441 - var_711#711 + var_748#748 >= -72
 c1253: - 73 var_485#501 + var_650#650 - var_711#711 >= -72
 c1254: - 73 var_486#335 - var_713#713 + var_750#750 >= -72
 c1255: - 73 var_487#346 + var_640#640 - var_713#713 >= -72
 c1256: - 73 var_488#442 - var_713#713 + var_748#748 >= -72
 c1257: - 73 var_489#502 + var_650#650 - var_713#713 >= -72
 c1258: - 73 var_490#336 - var_715#715 + var_750#750 >= -72
 c1259: - 73 var_491#370 + var_643#643 - var_715#715 >= -72
 c1260: - 73 var_492#443 - var_715#715 + var_748#748 >= -72
 c1261: - 73 var_493#503 + var_650#650 - var_715#715 >= -72
 c1262: - 73 var_494#274 + var_627#627 - var_717#717 >= -72
 c1263: - 73 var_495#260 - var_717#717 + var_751#751 >= -72
 c1264: - 73 var_496#444 - var_717#717 + var_748#748 >= -72
 c1265: - 73 var_497#224 + var_652#652 - var_717#717 >= -72
 c1266: - 73 var_498#298 + var_631#631 - var_719#719 >= -72
 c1267: - 73 var_499#261 - var_719#719 + var_751#751 >= -72
 c1268: - 73 var_500#445 - var_719#719 + var_748#748 >= -72
 c1269: - 73 var_501#225 + var_652#652 - var_719#719 >= -72
 c1270: - 73 var_502#322 + var_634#634 - var_721#721 >= -72
 c1271: - 73 var_503#262 - var_721#721 + var_751#751 >= -72
 c1272: - 73 var_504#446 - var_721#721 + var_748#748 >= -72
 c1273: - 73 var_505#226 + var_652#652 - var_721#721 >= -72
 c1274: - 73 var_506#263 - var_723#723 + var_751#751 >= -72
 c1275: - 73 var_507#347 + var_640#640 - var_723#723 >= -72
 c1276: - 73 var_508#447 - var_723#723 + var_748#748 >= -72
 c1277: - 73 var_509#227 + var_652#652 - var_723#723 >= -72
 c1278: - 73 var_510#264 - var_725#725 + var_751#751 >= -72
 c1279: - 73 var_511#371 + var_643#643 - var_725#725 >= -72
 c1280: - 73 var_512#448 - var_725#725 + var_748#748 >= -72
 c1281: - 73 var_513#228 + var_652#652 - var_725#725 >= -72
 c1282: - 73 var_514#275 + var_627#627 - var_727#727 >= -72
 c1283: - 73 var_515#356 - var_727#727 + var_752#752 >= -72
 c1284: - 73 var_516#449 - var_727#727 + var_748#748 >= -72
 c1285: - 73 var_517#518 + var_654#654 - var_727#727 >= -72
 c1286: - 73 var_518#299 + var_631#631 - var_729#729 >= -72
 c1287: - 73 var_519#357 - var_729#729 + var_752#752 >= -72
 c1288: - 73 var_520#450 - var_729#729 + var_748#748 >= -72
 c1289: - 73 var_521#519 + var_654#654 - var_729#729 >= -72
 c1290: - 73 var_522#323 + var_634#634 - var_731#731 >= -72
 c1291: - 73 var_523#358 - var_731#731 + var_752#752 >= -72
 c1292: - 73 var_524#451 - var_731#731 + var_748#748 >= -72
 c1293: - 73 var_525#520 + var_654#654 - var_731#731 >= -72
 c1294: - 73 var_526#251 + var_637#637 - var_733#733 >= -72
 c1295: - 73 var_527#359 - var_733#733 + var_752#752 >= -72
 c1296: - 73 var_528#452 - var_733#733 + var_748#748 >= -72
 c1297: - 73 var_529#521 + var_654#654 - var_733#733 >= -72
 c1298: - 73 var_530#360 - var_735#735 + var_752#752 >= -72
 c1299: - 73 var_531#372 + var_643#643 - var_735#735 >= -72
 c1300: - 73 var_532#453 - var_735#735 + var_748#748 >= -72
 c1301: - 73 var_533#522 + var_654#654 - var_735#735 >= -72
 c1302: - 73 var_534#276 + var_627#627 - var_737#737 >= -72
 c1303: - 73 var_535#380 - var_737#737 + var_753#753 >= -72
 c1304: - 73 var_536#454 - var_737#737 + var_748#748 >= -72
 c1305: - 73 var_537#537 + var_656#656 - var_737#737 >= -72
 c1306: - 73 var_538#300 + var_631#631 - var_739#739 >= -72
 c1307: - 73 var_539#381 - var_739#739 + var_753#753 >= -72
 c1308: - 73 var_540#455 - var_739#739 + var_748#748 >= -72
 c1309: - 73 var_541#538 + var_656#656 - var_739#739 >= -72
 c1310: - 73 var_542#324 + var_634#634 - var_741#741 >= -72
 c1311: - 73 var_543#382 - var_741#741 + var_753#753 >= -72
 c1312: - 73 var_544#456 - var_741#741 + var_748#748 >= -72
 c1313: - 73 var_545#539 + var_656#656 - var_741#741 >= -72
 c1314: - 73 var_546#252 + var_637#637 - var_743#743 >= -72
 c1315: - 73 var_547#383 - var_743#743 + var_753#753 >= -72
 c1316: - 73 var_548#457 - var_743#743 + var_748#748 >= -72
 c1317: - 73 var_549#540 + var_656#656 - var_743#743 >= -72
 c1318: - 73 var_550#348 + var_640#640 - var_745#745 >= -72
 c1319: - 73 var_551#384 - var_745#745 + var_753#753 >= -72
 c1320: - 73 var_552#458 - var_745#745 + var_748#748 >= -72
 c1321: - 73 var_553#541 + var_656#656 - var_745#745 >= -72
 c1322: pickmup_a#0 - var_554#554 >= 0
 c1323: pickmup_b#1 - var_555#555 >= 0
 c1324: pickmup_c#2 - var_556#556 >= 0
 c1325: pickmup_d#3 - var_557#557 >= 0
 c1326: pickmup_e#4 - var_558#558 >= 0
 c1327: pickmup_f#5 - var_559#559 >= 0
 c1328: putmdown_a#6 - var_560#560 >= 0
 c1329: putmdown_b#7 - var_561#561 >= 0
 c1330: putmdown_c#8 - var_562#562 >= 0
 c1331: putmdown_d#9 - var_563#563 >= 0
 c1332: putmdown_e#10 - var_564#564 >= 0
 c1333: putmdown_f#11 - var_565#565 >= 0
 c1334: stack_a_b#12 - var_566#566 >= 0
 c1335: stack_a_c#13 - var_567#567 >= 0
 c1336: stack_a_d#14 - var_568#568 >= 0
 c1337: stack_a_e#15 - var_569#569 >= 0
 c1338: stack_a_f#16 - var_570#570 >= 0
 c1339: stack_b_a#17 - var_571#571 >= 0
 c1340: stack_b_c#18 - var_572#572 >= 0
 c1341: stack_b_d#19 - var_573#573 >= 0
 c1342: stack_b_e#20 - var_574#574 >= 0
 c1343: stack_b_f#21 - var_575#575 >= 0
 c1344: stack_c_a#22 - var_576#576 >= 0
 c1345: stack_c_b#23 - var_577#577 >= 0
 c1346: stack_c_d#24 - var_578#578 >= 0
 c1347: stack_c_e#25 - var_579#579 >= 0
 c1348: stack_c_f#26 - var_580#580 >= 0
 c1349: stack_d_a#27 - var_581#581 >= 0
 c1350: stack_d_b#28 - var_582#582 >= 0
 c1351: stack_d_c#29 - var_583#583 >= 0
 c1352: stack_d_e#30 - var_584#584 >= 0
 c1353: stack_d_f#31 - var_585#585 >= 0
 c1354: stack_e_a#32 - var_586#586 >= 0
 c1355: stack_e_b#33 - var_587#587 >= 0
 c1356: stack_e_c#34 - var_588#588 >= 0
 c1357: stack_e_d#35 - var_589#589 >= 0
 c1358: stack_e_f#36 - var_590#590 >= 0
 c1359: stack_f_a#37 - var_591#591 >= 0
 c1360: stack_f_b#38 - var_592#592 >= 0
 c1361: stack_f_c#39 - var_593#593 >= 0
 c1362: stack_f_d#40 - var_594#594 >= 0
 c1363: stack_f_e#41 - var_595#595 >= 0
 c1364: unstack_a_b#42 - var_596#596 >= 0
 c1365: unstack_a_c#43 - var_597#597 >= 0
 c1366: unstack_a_d#44 - var_598#598 >= 0
 c1367: unstack_a_e#45 - var_599#599 >= 0
 c1368: unstack_a_f#46 - var_600#600 >= 0
 c1369: unstack_b_a#47 - var_601#601 >= 0
 c1370: unstack_b_c#48 - var_602#602 >= 0
 c1371: unstack_b_d#49 - var_603#603 >= 0
 c1372: unstack_b_e#50 - var_604#604 >= 0
 c1373: unstack_b_f#51 - var_605#605 >= 0
 c1374: unstack_c_a#52 - var_606#606 >= 0
 c1375: unstack_c_b#53 - var_607#607 >= 0
 c1376: unstack_c_d#54 - var_608#608 >= 0
 c1377: unstack_c_e#55 - var_609#609 >= 0
 c1378: unstack_c_f#56 - var_610#610 >= 0
 c1379: unstack_d_a#57 - var_611#611 >= 0
 c1380: unstack_d_b#58 - var_612#612 >= 0
 c1381: unstack_d_c#59 - var_613#613 >= 0
 c1382: unstack_d_e#60 - var_614#614 >= 0
 c1383: unstack_d_f#61 - var_615#615 >= 0
 c1384: unstack_e_a#62 - var_616#616 >= 0
 c1385: unstack_e_b#63 - var_617#617 >= 0
 c1386: unstack_e_c#64 - var_618#618 >= 0
 c1387: unstack_e_d#65 - var_619#619 >= 0
 c1388: unstack_e_f#66 - var_620#620 >= 0
 c1389: unstack_f_a#67 - var_621#621 >= 0
 c1390: unstack_f_b#68 - var_622#622 >= 0
 c1391: unstack_f_c#69 - var_623#623 >= 0
 c1392: unstack_f_d#70 - var_624#624 >= 0
 c1393: unstack_f_e#71 - var_625#625 >= 0
Bounds
      pickmup_a#0 >= 0
      pickmup_b#1 >= 0
      pickmup_c#2 >= 0
      pickmup_d#3 >= 0
      pickmup_e#4 >= 0
      pickmup_f#5 >= 0
      putmdown_a#6 >= 0
      putmdown_b#7 >= 0
      putmdown_c#8 >= 0
      putmdown_d#9 >= 0
      putmdown_e#10 >= 0
      putmdown_f#11 >= 0
      stack_a_b#12 >= 0
      stack_a_c#13 >= 0
      stack_a_d#14 >= 0
      stack_a_e#15 >= 0
      stack_a_f#16 >= 0
      stack_b_a#17 >= 0
      stack_b_c#18 >= 0
      stack_b_d#19 >= 0
      stack_b_e#20 >= 0
      stack_b_f#21 >= 0
      stack_c_a#22 >= 0
      stack_c_b#23 >= 0
      stack_c_d#24 >= 0
      stack_c_e#25 >= 0
      stack_c_f#26 >= 0
      stack_d_a#27 >= 0
      stack_d_b#28 >= 0
      stack_d_c#29 >= 0
      stack_d_e#30 >= 0
      stack_d_f#31 >= 0
      stack_e_a#32 >= 0
      stack_e_b#33 >= 0
      stack_e_c#34 >= 0
      stack_e_d#35 >= 0
      stack_e_f#36 >= 0
      stack_f_a#37 >= 0
      stack_f_b#38 >= 0
      stack_f_c#39 >= 0
      stack_f_d#40 >= 0
      stack_f_e#41 >= 0
      unstack_a_b#42 >= 0
      unstack_a_c#43 >= 0
      unstack_a_d#44 >= 0
      unstack_a_e#45 >= 0
      unstack_a_f#46 >= 0
      unstack_b_a#47 >= 0
      unstack_b_c#48 >= 0
      unstack_b_d#49 >= 0
      unstack_b_e#50 >= 0
      unstack_b_f#51 >= 0
      unstack_c_a#52 >= 0
      unstack_c_b#53 >= 0
      unstack_c_d#54 >= 0
      unstack_c_e#55 >= 0
      unstack_c_f#56 >= 0
      unstack_d_a#57 >= 0
      unstack_d_b#58 >= 0
      unstack_d_c#59 >= 0
      unstack_d_e#60 >= 0
      unstack_d_f#61 >= 0
      unstack_e_a#62 >= 0
      unstack_e_b#63 >= 0
      unstack_e_c#64 >= 0
      unstack_e_d#65 >= 0
      unstack_e_f#66 >= 0
      unstack_f_a#67 >= 0
      unstack_f_b#68 >= 0
      unstack_f_c#69 >= 0
      unstack_f_d#70 >= 0
      unstack_f_e#71 >= 0
      YT#72 >= 0
      YF#73 >= 0
 0 <= _(pickmup_a_ge_2)#74 <= 1
 0 <= _(pickmup_a_ge_1)#75 <= 1
 0 <= _(pickmup_b_ge_2)#76 <= 1
 0 <= _(pickmup_b_ge_1)#77 <= 1
 0 <= _(pickmup_c_ge_2)#78 <= 1
 0 <= _(pickmup_c_ge_1)#79 <= 1
 0 <= _(pickmup_d_ge_2)#80 <= 1
 0 <= _(pickmup_d_ge_1)#81 <= 1
 0 <= _(pickmup_e_ge_2)#82 <= 1
 0 <= _(pickmup_e_ge_1)#83 <= 1
 0 <= _(pickmup_f_ge_2)#84 <= 1
 0 <= _(pickmup_f_ge_1)#85 <= 1
 0 <= _(putmdown_a_ge_2)#86 <= 1
 0 <= _(putmdown_a_ge_1)#87 <= 1
 0 <= _(putmdown_b_ge_2)#88 <= 1
 0 <= _(putmdown_b_ge_1)#89 <= 1
 0 <= _(putmdown_c_ge_2)#90 <= 1
 0 <= _(putmdown_c_ge_1)#91 <= 1
 0 <= _(putmdown_d_ge_2)#92 <= 1
 0 <= _(putmdown_d_ge_1)#93 <= 1
 0 <= _(putmdown_e_ge_2)#94 <= 1
 0 <= _(putmdown_e_ge_1)#95 <= 1
 0 <= _(putmdown_f_ge_2)#96 <= 1
 0 <= _(putmdown_f_ge_1)#97 <= 1
 0 <= _(stack_a_b_ge_2)#98 <= 1
 0 <= _(stack_a_b_ge_1)#99 <= 1
 0 <= _(stack_a_c_ge_2)#100 <= 1
 0 <= _(stack_a_c_ge_1)#101 <= 1
 0 <= _(stack_a_d_ge_2)#102 <= 1
 0 <= _(stack_a_d_ge_1)#103 <= 1
 0 <= _(stack_a_e_ge_2)#104 <= 1
 0 <= _(stack_a_e_ge_1)#105 <= 1
 0 <= _(stack_a_f_ge_2)#106 <= 1
 0 <= _(stack_a_f_ge_1)#107 <= 1
 0 <= _(stack_b_a_ge_2)#108 <= 1
 0 <= _(stack_b_a_ge_1)#109 <= 1
 0 <= _(stack_b_c_ge_2)#110 <= 1
 0 <= _(stack_b_c_ge_1)#111 <= 1
 0 <= _(stack_b_d_ge_2)#112 <= 1
 0 <= _(stack_b_d_ge_1)#113 <= 1
 0 <= _(stack_b_e_ge_2)#114 <= 1
 0 <= _(stack_b_e_ge_1)#115 <= 1
 0 <= _(stack_b_f_ge_2)#116 <= 1
 0 <= _(stack_b_f_ge_1)#117 <= 1
 0 <= _(stack_c_a_ge_2)#118 <= 1
 0 <= _(stack_c_a_ge_1)#119 <= 1
 0 <= _(stack_c_b_ge_2)#120 <= 1
 0 <= _(stack_c_b_ge_1)#121 <= 1
 0 <= _(stack_c_d_ge_2)#122 <= 1
 0 <= _(stack_c_d_ge_1)#123 <= 1
 0 <= _(stack_c_e_ge_2)#124 <= 1
 0 <= _(stack_c_e_ge_1)#125 <= 1
 0 <= _(stack_c_f_ge_2)#126 <= 1
 0 <= _(stack_c_f_ge_1)#127 <= 1
 0 <= _(stack_d_a_ge_2)#128 <= 1
 0 <= _(stack_d_a_ge_1)#129 <= 1
 0 <= _(stack_d_b_ge_2)#130 <= 1
 0 <= _(stack_d_b_ge_1)#131 <= 1
 0 <= _(stack_d_c_ge_2)#132 <= 1
 0 <= _(stack_d_c_ge_1)#133 <= 1
 0 <= _(stack_d_e_ge_2)#134 <= 1
 0 <= _(stack_d_e_ge_1)#135 <= 1
 0 <= _(stack_d_f_ge_2)#136 <= 1
 0 <= _(stack_d_f_ge_1)#137 <= 1
 0 <= _(stack_e_a_ge_2)#138 <= 1
 0 <= _(stack_e_a_ge_1)#139 <= 1
 0 <= _(stack_e_b_ge_2)#140 <= 1
 0 <= _(stack_e_b_ge_1)#141 <= 1
 0 <= _(stack_e_c_ge_2)#142 <= 1
 0 <= _(stack_e_c_ge_1)#143 <= 1
 0 <= _(stack_e_d_ge_2)#144 <= 1
 0 <= _(stack_e_d_ge_1)#145 <= 1
 0 <= _(stack_e_f_ge_2)#146 <= 1
 0 <= _(stack_e_f_ge_1)#147 <= 1
 0 <= _(stack_f_a_ge_2)#148 <= 1
 0 <= _(stack_f_a_ge_1)#149 <= 1
 0 <= _(stack_f_b_ge_2)#150 <= 1
 0 <= _(stack_f_b_ge_1)#151 <= 1
 0 <= _(stack_f_c_ge_2)#152 <= 1
 0 <= _(stack_f_c_ge_1)#153 <= 1
 0 <= _(stack_f_d_ge_2)#154 <= 1
 0 <= _(stack_f_d_ge_1)#155 <= 1
 0 <= _(stack_f_e_ge_2)#156 <= 1
 0 <= _(stack_f_e_ge_1)#157 <= 1
 0 <= _(unstack_a_b_ge_2)#158 <= 1
 0 <= _(unstack_a_b_ge_1)#159 <= 1
 0 <= _(unstack_a_c_ge_2)#160 <= 1
 0 <= _(unstack_a_c_ge_1)#161 <= 1
 0 <= _(unstack_a_d_ge_2)#162 <= 1
 0 <= _(unstack_a_d_ge_1)#163 <= 1
 0 <= _(unstack_a_e_ge_2)#164 <= 1
 0 <= _(unstack_a_e_ge_1)#165 <= 1
 0 <= _(unstack_a_f_ge_2)#166 <= 1
 0 <= _(unstack_a_f_ge_1)#167 <= 1
 0 <= _(unstack_b_a_ge_2)#168 <= 1
 0 <= _(unstack_b_a_ge_1)#169 <= 1
 0 <= _(unstack_b_c_ge_2)#170 <= 1
 0 <= _(unstack_b_c_ge_1)#171 <= 1
 0 <= _(unstack_b_d_ge_2)#172 <= 1
 0 <= _(unstack_b_d_ge_1)#173 <= 1
 0 <= _(unstack_b_e_ge_2)#174 <= 1
 0 <= _(unstack_b_e_ge_1)#175 <= 1
 0 <= _(unstack_b_f_ge_2)#176 <= 1
 0 <= _(unstack_b_f_ge_1)#177 <= 1
 0 <= _(unstack_c_a_ge_2)#178 <= 1
 0 <= _(unstack_c_a_ge_1)#179 <= 1
 0 <= _(unstack_c_b_ge_2)#180 <= 1
 0 <= _(unstack_c_b_ge_1)#181 <= 1
 0 <= _(unstack_c_d_ge_2)#182 <= 1
 0 <= _(unstack_c_d_ge_1)#183 <= 1
 0 <= _(unstack_c_e_ge_2)#184 <= 1
 0 <= _(unstack_c_e_ge_1)#185 <= 1
 0 <= _(unstack_c_f_ge_2)#186 <= 1
 0 <= _(unstack_c_f_ge_1)#187 <= 1
 0 <= _(unstack_d_a_ge_2)#188 <= 1
 0 <= _(unstack_d_a_ge_1)#189 <= 1
 0 <= _(unstack_d_b_ge_2)#190 <= 1
 0 <= _(unstack_d_b_ge_1)#191 <= 1
 0 <= _(unstack_d_c_ge_2)#192 <= 1
 0 <= _(unstack_d_c_ge_1)#193 <= 1
 0 <= _(unstack_d_e_ge_2)#194 <= 1
 0 <= _(unstack_d_e_ge_1)#195 <= 1
 0 <= _(unstack_d_f_ge_2)#196 <= 1
 0 <= _(unstack_d_f_ge_1)#197 <= 1
 0 <= _(unstack_e_a_ge_2)#198 <= 1
 0 <= _(unstack_e_a_ge_1)#199 <= 1
 0 <= _(unstack_e_b_ge_2)#200 <= 1
 0 <= _(unstack_e_b_ge_1)#201 <= 1
 0 <= _(unstack_e_c_ge_2)#202 <= 1
 0 <= _(unstack_e_c_ge_1)#203 <= 1
 0 <= _(unstack_e_d_ge_2)#204 <= 1
 0 <= _(unstack_e_d_ge_1)#205 <= 1
 0 <= _(unstack_e_f_ge_2)#206 <= 1
 0 <= _(unstack_e_f_ge_1)#207 <= 1
 0 <= _(unstack_f_a_ge_2)#208 <= 1
 0 <= _(unstack_f_a_ge_1)#209 <= 1
 0 <= _(unstack_f_b_ge_2)#210 <= 1
 0 <= _(unstack_f_b_ge_1)#211 <= 1
 0 <= _(unstack_f_c_ge_2)#212 <= 1
 0 <= _(unstack_f_c_ge_1)#213 <= 1
 0 <= _(unstack_f_d_ge_2)#214 <= 1
 0 <= _(unstack_f_d_ge_1)#215 <= 1
 0 <= _(unstack_f_e_ge_2)#216 <= 1
 0 <= _(unstack_f_e_ge_1)#217 <= 1
 0 <= _(YT_ge_2)#218 <= 1
 0 <= _(YT_ge_1)#219 <= 1
 0 <= _(YF_ge_2)#220 <= 1
 0 <= _(YF_ge_1)#221 <= 1
 0 <= var_227#222 <= 1
 0 <= var_289#223 <= 1
 0 <= var_497#224 <= 1
 0 <= var_501#225 <= 1
 0 <= var_505#226 <= 1
 0 <= var_509#227 <= 1
 0 <= var_513#228 <= 1
 0 <= var_228#229 <= 1
 0 <= var_377#230 <= 1
 0 <= var_229#231 <= 1
 0 <= var_381#232 <= 1
 0 <= var_230#233 <= 1
 0 <= var_385#234 <= 1
 0 <= var_231#235 <= 1
 0 <= var_389#236 <= 1
 0 <= var_232#237 <= 1
 0 <= var_393#238 <= 1
 0 <= var_233#239 <= 1
 0 <= var_307#240 <= 1
 0 <= var_234#241 <= 1
 0 <= var_305#242 <= 1
 0 <= var_375#243 <= 1
 0 <= var_379#244 <= 1
 0 <= var_383#245 <= 1
 0 <= var_386#246 <= 1
 0 <= var_390#247 <= 1
 0 <= var_443#248 <= 1
 0 <= var_463#249 <= 1
 0 <= var_483#250 <= 1
 0 <= var_526#251 <= 1
 0 <= var_546#252 <= 1
 0 <= var_235#253 <= 1
 0 <= var_287#254 <= 1
 0 <= var_323#255 <= 1
 0 <= var_343#256 <= 1
 0 <= var_363#257 <= 1
 0 <= var_406#258 <= 1
 0 <= var_426#259 <= 1
 0 <= var_495#260 <= 1
 0 <= var_499#261 <= 1
 0 <= var_503#262 <= 1
 0 <= var_506#263 <= 1
 0 <= var_510#264 <= 1
 0 <= var_236#265 <= 1
 0 <= var_296#266 <= 1
 0 <= var_314#267 <= 1
 0 <= var_318#268 <= 1
 0 <= var_322#269 <= 1
 0 <= var_326#270 <= 1
 0 <= var_330#271 <= 1
 0 <= var_454#272 <= 1
 0 <= var_474#273 <= 1
 0 <= var_494#274 <= 1
 0 <= var_514#275 <= 1
 0 <= var_534#276 <= 1
 0 <= var_237#277 <= 1
 0 <= var_278#278 <= 1
 0 <= var_334#279 <= 1
 0 <= var_354#280 <= 1
 0 <= var_374#281 <= 1
 0 <= var_394#282 <= 1
 0 <= var_414#283 <= 1
 0 <= var_434#284 <= 1
 0 <= var_438#285 <= 1
 0 <= var_442#286 <= 1
 0 <= var_446#287 <= 1
 0 <= var_450#288 <= 1
 0 <= var_238#289 <= 1
 0 <= var_299#290 <= 1
 0 <= var_335#291 <= 1
 0 <= var_338#292 <= 1
 0 <= var_342#293 <= 1
 0 <= var_346#294 <= 1
 0 <= var_350#295 <= 1
 0 <= var_435#296 <= 1
 0 <= var_478#297 <= 1
 0 <= var_498#298 <= 1
 0 <= var_518#299 <= 1
 0 <= var_538#300 <= 1
 0 <= var_239#301 <= 1
 0 <= var_281#302 <= 1
 0 <= var_315#303 <= 1
 0 <= var_358#304 <= 1
 0 <= var_378#305 <= 1
 0 <= var_398#306 <= 1
 0 <= var_418#307 <= 1
 0 <= var_455#308 <= 1
 0 <= var_458#309 <= 1
 0 <= var_462#310 <= 1
 0 <= var_466#311 <= 1
 0 <= var_470#312 <= 1
 0 <= var_240#313 <= 1
 0 <= var_302#314 <= 1
 0 <= var_355#315 <= 1
 0 <= var_359#316 <= 1
 0 <= var_362#317 <= 1
 0 <= var_366#318 <= 1
 0 <= var_370#319 <= 1
 0 <= var_439#320 <= 1
 0 <= var_459#321 <= 1
 0 <= var_502#322 <= 1
 0 <= var_522#323 <= 1
 0 <= var_542#324 <= 1
 0 <= var_241#325 <= 1
 0 <= var_284#326 <= 1
 0 <= var_319#327 <= 1
 0 <= var_339#328 <= 1
 0 <= var_382#329 <= 1
 0 <= var_402#330 <= 1
 0 <= var_422#331 <= 1
 0 <= var_475#332 <= 1
 0 <= var_479#333 <= 1
 0 <= var_482#334 <= 1
 0 <= var_486#335 <= 1
 0 <= var_490#336 <= 1
 0 <= var_242#337 <= 1
 0 <= var_308#338 <= 1
 0 <= var_395#339 <= 1
 0 <= var_399#340 <= 1
 0 <= var_403#341 <= 1
 0 <= var_407#342 <= 1
 0 <= var_410#343 <= 1
 0 <= var_447#344 <= 1
 0 <= var_467#345 <= 1
 0 <= var_487#346 <= 1
 0 <= var_507#347 <= 1
 0 <= var_550#348 <= 1
 0 <= var_243#349 <= 1
 0 <= var_290#350 <= 1
 0 <= var_327#351 <= 1
 0 <= var_347#352 <= 1
 0 <= var_367#353 <= 1
 0 <= var_387#354 <= 1
 0 <= var_430#355 <= 1
 0 <= var_515#356 <= 1
 0 <= var_519#357 <= 1
 0 <= var_523#358 <= 1
 0 <= var_527#359 <= 1
 0 <= var_530#360 <= 1
 0 <= var_244#361 <= 1
 0 <= var_311#362 <= 1
 0 <= var_415#363 <= 1
 0 <= var_419#364 <= 1
 0 <= var_423#365 <= 1
 0 <= var_427#366 <= 1
 0 <= var_431#367 <= 1
 0 <= var_451#368 <= 1
 0 <= var_471#369 <= 1
 0 <= var_491#370 <= 1
 0 <= var_511#371 <= 1
 0 <= var_531#372 <= 1
 0 <= var_245#373 <= 1
 0 <= var_293#374 <= 1
 0 <= var_331#375 <= 1
 0 <= var_351#376 <= 1
 0 <= var_371#377 <= 1
 0 <= var_391#378 <= 1
 0 <= var_411#379 <= 1
 0 <= var_535#380 <= 1
 0 <= var_539#381 <= 1
 0 <= var_543#382 <= 1
 0 <= var_547#383 <= 1
 0 <= var_551#384 <= 1
 0 <= var_246#385 <= 1
 0 <= var_297#386 <= 1
 0 <= var_300#387 <= 1
 0 <= var_303#388 <= 1
 0 <= var_306#389 <= 1
 0 <= var_309#390 <= 1
 0 <= var_312#391 <= 1
 0 <= var_316#392 <= 1
 0 <= var_320#393 <= 1
 0 <= var_324#394 <= 1
 0 <= var_328#395 <= 1
 0 <= var_332#396 <= 1
 0 <= var_336#397 <= 1
 0 <= var_340#398 <= 1
 0 <= var_344#399 <= 1
 0 <= var_348#400 <= 1
 0 <= var_352#401 <= 1
 0 <= var_356#402 <= 1
 0 <= var_360#403 <= 1
 0 <= var_364#404 <= 1
 0 <= var_368#405 <= 1
 0 <= var_372#406 <= 1
 0 <= var_376#407 <= 1
 0 <= var_380#408 <= 1
 0 <= var_384#409 <= 1
 0 <= var_388#410 <= 1
 0 <= var_392#411 <= 1
 0 <= var_396#412 <= 1
 0 <= var_400#413 <= 1
 0 <= var_404#414 <= 1
 0 <= var_408#415 <= 1
 0 <= var_412#416 <= 1
 0 <= var_416#417 <= 1
 0 <= var_420#418 <= 1
 0 <= var_424#419 <= 1
 0 <= var_428#420 <= 1
 0 <= var_432#421 <= 1
 0 <= var_247#422 <= 1
 0 <= var_279#423 <= 1
 0 <= var_282#424 <= 1
 0 <= var_285#425 <= 1
 0 <= var_288#426 <= 1
 0 <= var_291#427 <= 1
 0 <= var_294#428 <= 1
 0 <= var_436#429 <= 1
 0 <= var_440#430 <= 1
 0 <= var_444#431 <= 1
 0 <= var_448#432 <= 1
 0 <= var_452#433 <= 1
 0 <= var_456#434 <= 1
 0 <= var_460#435 <= 1
 0 <= var_464#436 <= 1
 0 <= var_468#437 <= 1
 0 <= var_472#438 <= 1
 0 <= var_476#439 <= 1
 0 <= var_480#440 <= 1
 0 <= var_484#441 <= 1
 0 <= var_488#442 <= 1
 0 <= var_492#443 <= 1
 0 <= var_496#444 <= 1
 0 <= var_500#445 <= 1
 0 <= var_504#446 <= 1
 0 <= var_508#447 <= 1
 0 <= var_512#448 <= 1
 0 <= var_516#449 <= 1
 0 <= var_520#450 <= 1
 0 <= var_524#451 <= 1
 0 <= var_528#452 <= 1
 0 <= var_532#453 <= 1
 0 <= var_536#454 <= 1
 0 <= var_540#455 <= 1
 0 <= var_544#456 <= 1
 0 <= var_548#457 <= 1
 0 <= var_552#458 <= 1
 0 <= var_248#459 <= 1
 0 <= var_280#460 <= 1
 0 <= var_437#461 <= 1
 0 <= var_441#462 <= 1
 0 <= var_445#463 <= 1
 0 <= var_449#464 <= 1
 0 <= var_453#465 <= 1
      var_222#466 = 1
 0 <= var_317#467 <= 1
 0 <= var_249#468 <= 1
 0 <= var_321#469 <= 1
 0 <= var_250#470 <= 1
 0 <= var_325#471 <= 1
 0 <= var_251#472 <= 1
 0 <= var_329#473 <= 1
 0 <= var_252#474 <= 1
 0 <= var_333#475 <= 1
 0 <= var_253#476 <= 1
 0 <= var_298#477 <= 1
 0 <= var_254#478 <= 1
 0 <= var_283#479 <= 1
 0 <= var_457#480 <= 1
 0 <= var_461#481 <= 1
 0 <= var_465#482 <= 1
 0 <= var_469#483 <= 1
 0 <= var_473#484 <= 1
 0 <= var_255#485 <= 1
 0 <= var_337#486 <= 1
      var_223#487 = 1
 0 <= var_341#488 <= 1
 0 <= var_256#489 <= 1
 0 <= var_345#490 <= 1
 0 <= var_257#491 <= 1
 0 <= var_349#492 <= 1
 0 <= var_258#493 <= 1
 0 <= var_353#494 <= 1
 0 <= var_259#495 <= 1
 0 <= var_301#496 <= 1
 0 <= var_260#497 <= 1
 0 <= var_286#498 <= 1
 0 <= var_477#499 <= 1
 0 <= var_481#500 <= 1
 0 <= var_485#501 <= 1
 0 <= var_489#502 <= 1
 0 <= var_493#503 <= 1
 0 <= var_261#504 <= 1
 0 <= var_357#505 <= 1
 0 <= var_262#506 <= 1
 0 <= var_361#507 <= 1
      var_224#508 = 1
 0 <= var_365#509 <= 1
 0 <= var_263#510 <= 1
 0 <= var_369#511 <= 1
 0 <= var_264#512 <= 1
 0 <= var_373#513 <= 1
 0 <= var_265#514 <= 1
 0 <= var_304#515 <= 1
 0 <= var_266#516 <= 1
 0 <= var_292#517 <= 1
 0 <= var_517#518 <= 1
 0 <= var_521#519 <= 1
 0 <= var_525#520 <= 1
 0 <= var_529#521 <= 1
 0 <= var_533#522 <= 1
 0 <= var_267#523 <= 1
 0 <= var_397#524 <= 1
 0 <= var_268#525 <= 1
 0 <= var_401#526 <= 1
 0 <= var_269#527 <= 1
 0 <= var_405#528 <= 1
 0 <= var_270#529 <= 1
 0 <= var_409#530 <= 1
      var_225#531 = 1
 0 <= var_413#532 <= 1
 0 <= var_271#533 <= 1
 0 <= var_310#534 <= 1
 0 <= var_272#535 <= 1
 0 <= var_295#536 <= 1
 0 <= var_537#537 <= 1
 0 <= var_541#538 <= 1
 0 <= var_545#539 <= 1
 0 <= var_549#540 <= 1
 0 <= var_553#541 <= 1
      var_226#542 = 1
 0 <= var_417#543 <= 1
 0 <= var_273#544 <= 1
 0 <= var_421#545 <= 1
 0 <= var_274#546 <= 1
 0 <= var_425#547 <= 1
 0 <= var_275#548 <= 1
 0 <= var_429#549 <= 1
 0 <= var_276#550 <= 1
 0 <= var_433#551 <= 1
 0 <= var_277#552 <= 1
 0 <= var_313#553 <= 1
 0 <= var_554#554 <= 1
 0 <= var_555#555 <= 1
 0 <= var_556#556 <= 1
 0 <= var_557#557 <= 1
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
 0 <= var_626#626 <= 72
 0 <= var_627#627 <= 72
 0 <= var_628#628 <= 72
 0 <= var_629#629 <= 72
 0 <= var_630#630 <= 72
 0 <= var_631#631 <= 72
 0 <= var_632#632 <= 72
 0 <= var_633#633 <= 72
 0 <= var_634#634 <= 72
 0 <= var_635#635 <= 72
 0 <= var_636#636 <= 72
 0 <= var_637#637 <= 72
 0 <= var_638#638 <= 72
 0 <= var_639#639 <= 72
 0 <= var_640#640 <= 72
 0 <= var_641#641 <= 72
 0 <= var_642#642 <= 72
 0 <= var_643#643 <= 72
 0 <= var_644#644 <= 72
 0 <= var_645#645 <= 72
 0 <= var_646#646 <= 72
 0 <= var_647#647 <= 72
 0 <= var_648#648 <= 72
 0 <= var_649#649 <= 72
 0 <= var_650#650 <= 72
 0 <= var_651#651 <= 72
 0 <= var_652#652 <= 72
 0 <= var_653#653 <= 72
 0 <= var_654#654 <= 72
 0 <= var_655#655 <= 72
 0 <= var_656#656 <= 72
 0 <= var_657#657 <= 72
 0 <= var_658#658 <= 72
 0 <= var_659#659 <= 72
 0 <= var_660#660 <= 72
 0 <= var_661#661 <= 72
 0 <= var_662#662 <= 72
 0 <= var_663#663 <= 72
 0 <= var_664#664 <= 72
 0 <= var_665#665 <= 72
 0 <= var_666#666 <= 72
 0 <= var_667#667 <= 72
 0 <= var_668#668 <= 72
 0 <= var_669#669 <= 72
 0 <= var_670#670 <= 72
 0 <= var_671#671 <= 72
 0 <= var_672#672 <= 72
 0 <= var_673#673 <= 72
 0 <= var_674#674 <= 72
 0 <= var_675#675 <= 72
 0 <= var_676#676 <= 72
 0 <= var_677#677 <= 72
 0 <= var_678#678 <= 72
 0 <= var_679#679 <= 72
 0 <= var_680#680 <= 72
 0 <= var_681#681 <= 72
 0 <= var_682#682 <= 72
 0 <= var_683#683 <= 72
 0 <= var_684#684 <= 72
 0 <= var_685#685 <= 72
 0 <= var_686#686 <= 72
 0 <= var_687#687 <= 72
 0 <= var_688#688 <= 72
 0 <= var_689#689 <= 72
 0 <= var_690#690 <= 72
 0 <= var_691#691 <= 72
 0 <= var_692#692 <= 72
 0 <= var_693#693 <= 72
 0 <= var_694#694 <= 72
 0 <= var_695#695 <= 72
 0 <= var_696#696 <= 72
 0 <= var_697#697 <= 72
 0 <= var_698#698 <= 72
 0 <= var_699#699 <= 72
 0 <= var_700#700 <= 72
 0 <= var_701#701 <= 72
 0 <= var_702#702 <= 72
 0 <= var_703#703 <= 72
 0 <= var_704#704 <= 72
 0 <= var_705#705 <= 72
 0 <= var_706#706 <= 72
 0 <= var_707#707 <= 72
 0 <= var_708#708 <= 72
 0 <= var_709#709 <= 72
 0 <= var_710#710 <= 72
 0 <= var_711#711 <= 72
 0 <= var_712#712 <= 72
 0 <= var_713#713 <= 72
 0 <= var_714#714 <= 72
 0 <= var_715#715 <= 72
 0 <= var_716#716 <= 72
 0 <= var_717#717 <= 72
 0 <= var_718#718 <= 72
 0 <= var_719#719 <= 72
 0 <= var_720#720 <= 72
 0 <= var_721#721 <= 72
 0 <= var_722#722 <= 72
 0 <= var_723#723 <= 72
 0 <= var_724#724 <= 72
 0 <= var_725#725 <= 72
 0 <= var_726#726 <= 72
 0 <= var_727#727 <= 72
 0 <= var_728#728 <= 72
 0 <= var_729#729 <= 72
 0 <= var_730#730 <= 72
 0 <= var_731#731 <= 72
 0 <= var_732#732 <= 72
 0 <= var_733#733 <= 72
 0 <= var_734#734 <= 72
 0 <= var_735#735 <= 72
 0 <= var_736#736 <= 72
 0 <= var_737#737 <= 72
 0 <= var_738#738 <= 72
 0 <= var_739#739 <= 72
 0 <= var_740#740 <= 72
 0 <= var_741#741 <= 72
 0 <= var_742#742 <= 72
 0 <= var_743#743 <= 72
 0 <= var_744#744 <= 72
 0 <= var_745#745 <= 72
 0 <= var_746#746 <= 72
 0 <= var_747#747 <= 72
 0 <= var_748#748 <= 72
 0 <= var_749#749 <= 72
 0 <= var_750#750 <= 72
 0 <= var_751#751 <= 72
 0 <= var_752#752 <= 72
 0 <= var_753#753 <= 72
Binaries
 _(pickmup_a_ge_2)#74  _(pickmup_a_ge_1)#75  _(pickmup_b_ge_2)#76 
 _(pickmup_b_ge_1)#77  _(pickmup_c_ge_2)#78  _(pickmup_c_ge_1)#79 
 _(pickmup_d_ge_2)#80  _(pickmup_d_ge_1)#81  _(pickmup_e_ge_2)#82 
 _(pickmup_e_ge_1)#83  _(pickmup_f_ge_2)#84  _(pickmup_f_ge_1)#85 
 _(putmdown_a_ge_2)#86  _(putmdown_a_ge_1)#87  _(putmdown_b_ge_2)#88 
 _(putmdown_b_ge_1)#89  _(putmdown_c_ge_2)#90  _(putmdown_c_ge_1)#91 
 _(putmdown_d_ge_2)#92  _(putmdown_d_ge_1)#93  _(putmdown_e_ge_2)#94 
 _(putmdown_e_ge_1)#95  _(putmdown_f_ge_2)#96  _(putmdown_f_ge_1)#97 
 _(stack_a_b_ge_2)#98  _(stack_a_b_ge_1)#99  _(stack_a_c_ge_2)#100 
 _(stack_a_c_ge_1)#101  _(stack_a_d_ge_2)#102  _(stack_a_d_ge_1)#103 
 _(stack_a_e_ge_2)#104  _(stack_a_e_ge_1)#105  _(stack_a_f_ge_2)#106 
 _(stack_a_f_ge_1)#107  _(stack_b_a_ge_2)#108  _(stack_b_a_ge_1)#109 
 _(stack_b_c_ge_2)#110  _(stack_b_c_ge_1)#111  _(stack_b_d_ge_2)#112 
 _(stack_b_d_ge_1)#113  _(stack_b_e_ge_2)#114  _(stack_b_e_ge_1)#115 
 _(stack_b_f_ge_2)#116  _(stack_b_f_ge_1)#117  _(stack_c_a_ge_2)#118 
 _(stack_c_a_ge_1)#119  _(stack_c_b_ge_2)#120  _(stack_c_b_ge_1)#121 
 _(stack_c_d_ge_2)#122  _(stack_c_d_ge_1)#123  _(stack_c_e_ge_2)#124 
 _(stack_c_e_ge_1)#125  _(stack_c_f_ge_2)#126  _(stack_c_f_ge_1)#127 
 _(stack_d_a_ge_2)#128  _(stack_d_a_ge_1)#129  _(stack_d_b_ge_2)#130 
 _(stack_d_b_ge_1)#131  _(stack_d_c_ge_2)#132  _(stack_d_c_ge_1)#133 
 _(stack_d_e_ge_2)#134  _(stack_d_e_ge_1)#135  _(stack_d_f_ge_2)#136 
 _(stack_d_f_ge_1)#137  _(stack_e_a_ge_2)#138  _(stack_e_a_ge_1)#139 
 _(stack_e_b_ge_2)#140  _(stack_e_b_ge_1)#141  _(stack_e_c_ge_2)#142 
 _(stack_e_c_ge_1)#143  _(stack_e_d_ge_2)#144  _(stack_e_d_ge_1)#145 
 _(stack_e_f_ge_2)#146  _(stack_e_f_ge_1)#147  _(stack_f_a_ge_2)#148 
 _(stack_f_a_ge_1)#149  _(stack_f_b_ge_2)#150  _(stack_f_b_ge_1)#151 
 _(stack_f_c_ge_2)#152  _(stack_f_c_ge_1)#153  _(stack_f_d_ge_2)#154 
 _(stack_f_d_ge_1)#155  _(stack_f_e_ge_2)#156  _(stack_f_e_ge_1)#157 
 _(unstack_a_b_ge_2)#158  _(unstack_a_b_ge_1)#159  _(unstack_a_c_ge_2)#160 
 _(unstack_a_c_ge_1)#161  _(unstack_a_d_ge_2)#162  _(unstack_a_d_ge_1)#163 
 _(unstack_a_e_ge_2)#164  _(unstack_a_e_ge_1)#165  _(unstack_a_f_ge_2)#166 
 _(unstack_a_f_ge_1)#167  _(unstack_b_a_ge_2)#168  _(unstack_b_a_ge_1)#169 
 _(unstack_b_c_ge_2)#170  _(unstack_b_c_ge_1)#171  _(unstack_b_d_ge_2)#172 
 _(unstack_b_d_ge_1)#173  _(unstack_b_e_ge_2)#174  _(unstack_b_e_ge_1)#175 
 _(unstack_b_f_ge_2)#176  _(unstack_b_f_ge_1)#177  _(unstack_c_a_ge_2)#178 
 _(unstack_c_a_ge_1)#179  _(unstack_c_b_ge_2)#180  _(unstack_c_b_ge_1)#181 
 _(unstack_c_d_ge_2)#182  _(unstack_c_d_ge_1)#183  _(unstack_c_e_ge_2)#184 
 _(unstack_c_e_ge_1)#185  _(unstack_c_f_ge_2)#186  _(unstack_c_f_ge_1)#187 
 _(unstack_d_a_ge_2)#188  _(unstack_d_a_ge_1)#189  _(unstack_d_b_ge_2)#190 
 _(unstack_d_b_ge_1)#191  _(unstack_d_c_ge_2)#192  _(unstack_d_c_ge_1)#193 
 _(unstack_d_e_ge_2)#194  _(unstack_d_e_ge_1)#195  _(unstack_d_f_ge_2)#196 
 _(unstack_d_f_ge_1)#197  _(unstack_e_a_ge_2)#198  _(unstack_e_a_ge_1)#199 
 _(unstack_e_b_ge_2)#200  _(unstack_e_b_ge_1)#201  _(unstack_e_c_ge_2)#202 
 _(unstack_e_c_ge_1)#203  _(unstack_e_d_ge_2)#204  _(unstack_e_d_ge_1)#205 
 _(unstack_e_f_ge_2)#206  _(unstack_e_f_ge_1)#207  _(unstack_f_a_ge_2)#208 
 _(unstack_f_a_ge_1)#209  _(unstack_f_b_ge_2)#210  _(unstack_f_b_ge_1)#211 
 _(unstack_f_c_ge_2)#212  _(unstack_f_c_ge_1)#213  _(unstack_f_d_ge_2)#214 
 _(unstack_f_d_ge_1)#215  _(unstack_f_e_ge_2)#216  _(unstack_f_e_ge_1)#217 
 _(YT_ge_2)#218  _(YT_ge_1)#219  _(YF_ge_2)#220  _(YF_ge_1)#221  var_227#222 
 var_289#223  var_497#224  var_501#225  var_505#226  var_509#227  var_513#228 
 var_228#229  var_377#230  var_229#231  var_381#232  var_230#233  var_385#234 
 var_231#235  var_389#236  var_232#237  var_393#238  var_233#239  var_307#240 
 var_234#241  var_305#242  var_375#243  var_379#244  var_383#245  var_386#246 
 var_390#247  var_443#248  var_463#249  var_483#250  var_526#251  var_546#252 
 var_235#253  var_287#254  var_323#255  var_343#256  var_363#257  var_406#258 
 var_426#259  var_495#260  var_499#261  var_503#262  var_506#263  var_510#264 
 var_236#265  var_296#266  var_314#267  var_318#268  var_322#269  var_326#270 
 var_330#271  var_454#272  var_474#273  var_494#274  var_514#275  var_534#276 
 var_237#277  var_278#278  var_334#279  var_354#280  var_374#281  var_394#282 
 var_414#283  var_434#284  var_438#285  var_442#286  var_446#287  var_450#288 
 var_238#289  var_299#290  var_335#291  var_338#292  var_342#293  var_346#294 
 var_350#295  var_435#296  var_478#297  var_498#298  var_518#299  var_538#300 
 var_239#301  var_281#302  var_315#303  var_358#304  var_378#305  var_398#306 
 var_418#307  var_455#308  var_458#309  var_462#310  var_466#311  var_470#312 
 var_240#313  var_302#314  var_355#315  var_359#316  var_362#317  var_366#318 
 var_370#319  var_439#320  var_459#321  var_502#322  var_522#323  var_542#324 
 var_241#325  var_284#326  var_319#327  var_339#328  var_382#329  var_402#330 
 var_422#331  var_475#332  var_479#333  var_482#334  var_486#335  var_490#336 
 var_242#337  var_308#338  var_395#339  var_399#340  var_403#341  var_407#342 
 var_410#343  var_447#344  var_467#345  var_487#346  var_507#347  var_550#348 
 var_243#349  var_290#350  var_327#351  var_347#352  var_367#353  var_387#354 
 var_430#355  var_515#356  var_519#357  var_523#358  var_527#359  var_530#360 
 var_244#361  var_311#362  var_415#363  var_419#364  var_423#365  var_427#366 
 var_431#367  var_451#368  var_471#369  var_491#370  var_511#371  var_531#372 
 var_245#373  var_293#374  var_331#375  var_351#376  var_371#377  var_391#378 
 var_411#379  var_535#380  var_539#381  var_543#382  var_547#383  var_551#384 
 var_246#385  var_297#386  var_300#387  var_303#388  var_306#389  var_309#390 
 var_312#391  var_316#392  var_320#393  var_324#394  var_328#395  var_332#396 
 var_336#397  var_340#398  var_344#399  var_348#400  var_352#401  var_356#402 
 var_360#403  var_364#404  var_368#405  var_372#406  var_376#407  var_380#408 
 var_384#409  var_388#410  var_392#411  var_396#412  var_400#413  var_404#414 
 var_408#415  var_412#416  var_416#417  var_420#418  var_424#419  var_428#420 
 var_432#421  var_247#422  var_279#423  var_282#424  var_285#425  var_288#426 
 var_291#427  var_294#428  var_436#429  var_440#430  var_444#431  var_448#432 
 var_452#433  var_456#434  var_460#435  var_464#436  var_468#437  var_472#438 
 var_476#439  var_480#440  var_484#441  var_488#442  var_492#443  var_496#444 
 var_500#445  var_504#446  var_508#447  var_512#448  var_516#449  var_520#450 
 var_524#451  var_528#452  var_532#453  var_536#454  var_540#455  var_544#456 
 var_548#457  var_552#458  var_248#459  var_280#460  var_437#461  var_441#462 
 var_445#463  var_449#464  var_453#465  var_317#467  var_249#468  var_321#469 
 var_250#470  var_325#471  var_251#472  var_329#473  var_252#474  var_333#475 
 var_253#476  var_298#477  var_254#478  var_283#479  var_457#480  var_461#481 
 var_465#482  var_469#483  var_473#484  var_255#485  var_337#486  var_341#488 
 var_256#489  var_345#490  var_257#491  var_349#492  var_258#493  var_353#494 
 var_259#495  var_301#496  var_260#497  var_286#498  var_477#499  var_481#500 
 var_485#501  var_489#502  var_493#503  var_261#504  var_357#505  var_262#506 
 var_361#507  var_365#509  var_263#510  var_369#511  var_264#512  var_373#513 
 var_265#514  var_304#515  var_266#516  var_292#517  var_517#518  var_521#519 
 var_525#520  var_529#521  var_533#522  var_267#523  var_397#524  var_268#525 
 var_401#526  var_269#527  var_405#528  var_270#529  var_409#530  var_413#532 
 var_271#533  var_310#534  var_272#535  var_295#536  var_537#537  var_541#538 
 var_545#539  var_549#540  var_553#541  var_417#543  var_273#544  var_421#545 
 var_274#546  var_425#547  var_275#548  var_429#549  var_276#550  var_433#551 
 var_277#552  var_313#553  var_554#554  var_555#555  var_556#556  var_557#557 
 var_558#558  var_559#559  var_560#560  var_561#561  var_562#562  var_563#563 
 var_564#564  var_565#565  var_566#566  var_567#567  var_568#568  var_569#569 
 var_570#570  var_571#571  var_572#572  var_573#573  var_574#574  var_575#575 
 var_576#576  var_577#577  var_578#578  var_579#579  var_580#580  var_581#581 
 var_582#582  var_583#583  var_584#584  var_585#585  var_586#586  var_587#587 
 var_588#588  var_589#589  var_590#590  var_591#591  var_592#592  var_593#593 
 var_594#594  var_595#595  var_596#596  var_597#597  var_598#598  var_599#599 
 var_600#600  var_601#601  var_602#602  var_603#603  var_604#604  var_605#605 
 var_606#606  var_607#607  var_608#608  var_609#609  var_610#610  var_611#611 
 var_612#612  var_613#613  var_614#614  var_615#615  var_616#616  var_617#617 
 var_618#618  var_619#619  var_620#620  var_621#621  var_622#622  var_623#623 
 var_624#624  var_625#625 
Generals
 pickmup_a#0  pickmup_b#1  pickmup_c#2  pickmup_d#3  pickmup_e#4  pickmup_f#5 
 putmdown_a#6  putmdown_b#7  putmdown_c#8  putmdown_d#9  putmdown_e#10 
 putmdown_f#11  stack_a_b#12  stack_a_c#13  stack_a_d#14  stack_a_e#15 
 stack_a_f#16  stack_b_a#17  stack_b_c#18  stack_b_d#19  stack_b_e#20 
 stack_b_f#21  stack_c_a#22  stack_c_b#23  stack_c_d#24  stack_c_e#25 
 stack_c_f#26  stack_d_a#27  stack_d_b#28  stack_d_c#29  stack_d_e#30 
 stack_d_f#31  stack_e_a#32  stack_e_b#33  stack_e_c#34  stack_e_d#35 
 stack_e_f#36  stack_f_a#37  stack_f_b#38  stack_f_c#39  stack_f_d#40 
 stack_f_e#41  unstack_a_b#42  unstack_a_c#43  unstack_a_d#44  unstack_a_e#45 
 unstack_a_f#46  unstack_b_a#47  unstack_b_c#48  unstack_b_d#49 
 unstack_b_e#50  unstack_b_f#51  unstack_c_a#52  unstack_c_b#53 
 unstack_c_d#54  unstack_c_e#55  unstack_c_f#56  unstack_d_a#57 
 unstack_d_b#58  unstack_d_c#59  unstack_d_e#60  unstack_d_f#61 
 unstack_e_a#62  unstack_e_b#63  unstack_e_c#64  unstack_e_d#65 
 unstack_e_f#66  unstack_f_a#67  unstack_f_b#68  unstack_f_c#69 
 unstack_f_d#70  unstack_f_e#71  YT#72  YF#73  var_222#466  var_223#487 
 var_224#508  var_225#531  var_226#542  var_626#626  var_627#627  var_628#628 
 var_629#629  var_630#630  var_631#631  var_632#632  var_633#633  var_634#634 
 var_635#635  var_636#636  var_637#637  var_638#638  var_639#639  var_640#640 
 var_641#641  var_642#642  var_643#643  var_644#644  var_645#645  var_646#646 
 var_647#647  var_648#648  var_649#649  var_650#650  var_651#651  var_652#652 
 var_653#653  var_654#654  var_655#655  var_656#656  var_657#657  var_658#658 
 var_659#659  var_660#660  var_661#661  var_662#662  var_663#663  var_664#664 
 var_665#665  var_666#666  var_667#667  var_668#668  var_669#669  var_670#670 
 var_671#671  var_672#672  var_673#673  var_674#674  var_675#675  var_676#676 
 var_677#677  var_678#678  var_679#679  var_680#680  var_681#681  var_682#682 
 var_683#683  var_684#684  var_685#685  var_686#686  var_687#687  var_688#688 
 var_689#689  var_690#690  var_691#691  var_692#692  var_693#693  var_694#694 
 var_695#695  var_696#696  var_697#697  var_698#698  var_699#699  var_700#700 
 var_701#701  var_702#702  var_703#703  var_704#704  var_705#705  var_706#706 
 var_707#707  var_708#708  var_709#709  var_710#710  var_711#711  var_712#712 
 var_713#713  var_714#714  var_715#715  var_716#716  var_717#717  var_718#718 
 var_719#719  var_720#720  var_721#721  var_722#722  var_723#723  var_724#724 
 var_725#725  var_726#726  var_727#727  var_728#728  var_729#729  var_730#730 
 var_731#731  var_732#732  var_733#733  var_734#734  var_735#735  var_736#736 
 var_737#737  var_738#738  var_739#739  var_740#740  var_741#741  var_742#742 
 var_743#743  var_744#744  var_745#745  var_746#746  var_747#747  var_748#748 
 var_749#749  var_750#750  var_751#751  var_752#752  var_753#753 
End

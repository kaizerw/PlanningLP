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
 c28:   - putmdown_a#6 + _(putmdown_a_ge_2)#86 + _(putmdown_a_ge_1)#87
        + _(putmdown_a_ge_3)#88 + _(putmdown_a_ge_4)#89 <= 0
 c29:   putmdown_a#6 - 10000000000 _(putmdown_a_ge_2)#86 <= 1
 c30:   putmdown_a#6 - 10000000000 _(putmdown_a_ge_1)#87 <= 0
 c31:   _(putmdown_b_ge_2)#90 - _(putmdown_b_ge_1)#91 <= 0
 c32:   - putmdown_b#7 + _(putmdown_b_ge_2)#90 + _(putmdown_b_ge_1)#91
        + _(putmdown_b_ge_3)#92 <= 0
 c33:   putmdown_b#7 - 10000000000 _(putmdown_b_ge_2)#90 <= 1
 c34:   putmdown_b#7 - 10000000000 _(putmdown_b_ge_1)#91 <= 0
 c35:   _(putmdown_c_ge_2)#93 - _(putmdown_c_ge_1)#94 <= 0
 c36:   - putmdown_c#8 + _(putmdown_c_ge_2)#93 + _(putmdown_c_ge_1)#94 <= 0
 c37:   putmdown_c#8 - 10000000000 _(putmdown_c_ge_2)#93 <= 1
 c38:   putmdown_c#8 - 10000000000 _(putmdown_c_ge_1)#94 <= 0
 c39:   _(putmdown_d_ge_2)#95 - _(putmdown_d_ge_1)#96 <= 0
 c40:   - putmdown_d#9 + _(putmdown_d_ge_2)#95 + _(putmdown_d_ge_1)#96
        + _(putmdown_d_ge_3)#97 <= 0
 c41:   putmdown_d#9 - 10000000000 _(putmdown_d_ge_2)#95 <= 1
 c42:   putmdown_d#9 - 10000000000 _(putmdown_d_ge_1)#96 <= 0
 c43:   _(putmdown_e_ge_2)#98 - _(putmdown_e_ge_1)#99 <= 0
 c44:   - putmdown_e#10 + _(putmdown_e_ge_2)#98 + _(putmdown_e_ge_1)#99 <= 0
 c45:   putmdown_e#10 - 10000000000 _(putmdown_e_ge_2)#98 <= 1
 c46:   putmdown_e#10 - 10000000000 _(putmdown_e_ge_1)#99 <= 0
 c47:   _(putmdown_f_ge_2)#100 - _(putmdown_f_ge_1)#101 <= 0
 c48:   - putmdown_f#11 + _(putmdown_f_ge_2)#100 + _(putmdown_f_ge_1)#101 <= 0
 c49:   putmdown_f#11 - 10000000000 _(putmdown_f_ge_2)#100 <= 1
 c50:   putmdown_f#11 - 10000000000 _(putmdown_f_ge_1)#101 <= 0
 c51:   _(stack_a_b_ge_2)#102 - _(stack_a_b_ge_1)#103 <= 0
 c52:   - stack_a_b#12 + _(stack_a_b_ge_2)#102 + _(stack_a_b_ge_1)#103 <= 0
 c53:   stack_a_b#12 - 10000000000 _(stack_a_b_ge_2)#102 <= 1
 c54:   stack_a_b#12 - 10000000000 _(stack_a_b_ge_1)#103 <= 0
 c55:   _(stack_a_c_ge_2)#104 - _(stack_a_c_ge_1)#105 <= 0
 c56:   - stack_a_c#13 + _(stack_a_c_ge_2)#104 + _(stack_a_c_ge_1)#105 <= 0
 c57:   stack_a_c#13 - 10000000000 _(stack_a_c_ge_2)#104 <= 1
 c58:   stack_a_c#13 - 10000000000 _(stack_a_c_ge_1)#105 <= 0
 c59:   _(stack_a_d_ge_2)#106 - _(stack_a_d_ge_1)#107 <= 0
 c60:   - stack_a_d#14 + _(stack_a_d_ge_2)#106 + _(stack_a_d_ge_1)#107
        + _(stack_a_d_ge_3)#108 + _(stack_a_d_ge_4)#109 <= 0
 c61:   stack_a_d#14 - 10000000000 _(stack_a_d_ge_2)#106 <= 1
 c62:   stack_a_d#14 - 10000000000 _(stack_a_d_ge_1)#107 <= 0
 c63:   _(stack_a_e_ge_2)#110 - _(stack_a_e_ge_1)#111 <= 0
 c64:   - stack_a_e#15 + _(stack_a_e_ge_2)#110 + _(stack_a_e_ge_1)#111 <= 0
 c65:   stack_a_e#15 - 10000000000 _(stack_a_e_ge_2)#110 <= 1
 c66:   stack_a_e#15 - 10000000000 _(stack_a_e_ge_1)#111 <= 0
 c67:   _(stack_a_f_ge_2)#112 - _(stack_a_f_ge_1)#113 <= 0
 c68:   - stack_a_f#16 + _(stack_a_f_ge_2)#112 + _(stack_a_f_ge_1)#113 <= 0
 c69:   stack_a_f#16 - 10000000000 _(stack_a_f_ge_2)#112 <= 1
 c70:   stack_a_f#16 - 10000000000 _(stack_a_f_ge_1)#113 <= 0
 c71:   _(stack_b_a_ge_2)#114 - _(stack_b_a_ge_1)#115 <= 0
 c72:   - stack_b_a#17 + _(stack_b_a_ge_2)#114 + _(stack_b_a_ge_1)#115
        + _(stack_b_a_ge_3)#116 <= 0
 c73:   stack_b_a#17 - 10000000000 _(stack_b_a_ge_2)#114 <= 1
 c74:   stack_b_a#17 - 10000000000 _(stack_b_a_ge_1)#115 <= 0
 c75:   _(stack_b_c_ge_2)#117 - _(stack_b_c_ge_1)#118 <= 0
 c76:   - stack_b_c#18 + _(stack_b_c_ge_2)#117 + _(stack_b_c_ge_1)#118 <= 0
 c77:   stack_b_c#18 - 10000000000 _(stack_b_c_ge_2)#117 <= 1
 c78:   stack_b_c#18 - 10000000000 _(stack_b_c_ge_1)#118 <= 0
 c79:   _(stack_b_d_ge_2)#119 - _(stack_b_d_ge_1)#120 <= 0
 c80:   - stack_b_d#19 + _(stack_b_d_ge_2)#119 + _(stack_b_d_ge_1)#120
        + _(stack_b_d_ge_3)#121 <= 0
 c81:   stack_b_d#19 - 10000000000 _(stack_b_d_ge_2)#119 <= 1
 c82:   stack_b_d#19 - 10000000000 _(stack_b_d_ge_1)#120 <= 0
 c83:   _(stack_b_e_ge_2)#122 - _(stack_b_e_ge_1)#123 <= 0
 c84:   - stack_b_e#20 + _(stack_b_e_ge_2)#122 + _(stack_b_e_ge_1)#123 <= 0
 c85:   stack_b_e#20 - 10000000000 _(stack_b_e_ge_2)#122 <= 1
 c86:   stack_b_e#20 - 10000000000 _(stack_b_e_ge_1)#123 <= 0
 c87:   _(stack_b_f_ge_2)#124 - _(stack_b_f_ge_1)#125 <= 0
 c88:   - stack_b_f#21 + _(stack_b_f_ge_2)#124 + _(stack_b_f_ge_1)#125
        + _(stack_b_f_ge_3)#126 <= 0
 c89:   stack_b_f#21 - 10000000000 _(stack_b_f_ge_2)#124 <= 1
 c90:   stack_b_f#21 - 10000000000 _(stack_b_f_ge_1)#125 <= 0
 c91:   _(stack_c_a_ge_2)#127 - _(stack_c_a_ge_1)#128 <= 0
 c92:   - stack_c_a#22 + _(stack_c_a_ge_2)#127 + _(stack_c_a_ge_1)#128 <= 0
 c93:   stack_c_a#22 - 10000000000 _(stack_c_a_ge_2)#127 <= 1
 c94:   stack_c_a#22 - 10000000000 _(stack_c_a_ge_1)#128 <= 0
 c95:   _(stack_c_b_ge_2)#129 - _(stack_c_b_ge_1)#130 <= 0
 c96:   - stack_c_b#23 + _(stack_c_b_ge_2)#129 + _(stack_c_b_ge_1)#130 <= 0
 c97:   stack_c_b#23 - 10000000000 _(stack_c_b_ge_2)#129 <= 1
 c98:   stack_c_b#23 - 10000000000 _(stack_c_b_ge_1)#130 <= 0
 c99:   _(stack_c_d_ge_2)#131 - _(stack_c_d_ge_1)#132 <= 0
 c100:  - stack_c_d#24 + _(stack_c_d_ge_2)#131 + _(stack_c_d_ge_1)#132 <= 0
 c101:  stack_c_d#24 - 10000000000 _(stack_c_d_ge_2)#131 <= 1
 c102:  stack_c_d#24 - 10000000000 _(stack_c_d_ge_1)#132 <= 0
 c103:  _(stack_c_e_ge_2)#133 - _(stack_c_e_ge_1)#134 <= 0
 c104:  - stack_c_e#25 + _(stack_c_e_ge_2)#133 + _(stack_c_e_ge_1)#134 <= 0
 c105:  stack_c_e#25 - 10000000000 _(stack_c_e_ge_2)#133 <= 1
 c106:  stack_c_e#25 - 10000000000 _(stack_c_e_ge_1)#134 <= 0
 c107:  _(stack_c_f_ge_2)#135 - _(stack_c_f_ge_1)#136 <= 0
 c108:  - stack_c_f#26 + _(stack_c_f_ge_2)#135 + _(stack_c_f_ge_1)#136 <= 0
 c109:  stack_c_f#26 - 10000000000 _(stack_c_f_ge_2)#135 <= 1
 c110:  stack_c_f#26 - 10000000000 _(stack_c_f_ge_1)#136 <= 0
 c111:  _(stack_d_a_ge_2)#137 - _(stack_d_a_ge_1)#138 <= 0
 c112:  - stack_d_a#27 + _(stack_d_a_ge_2)#137 + _(stack_d_a_ge_1)#138 <= 0
 c113:  stack_d_a#27 - 10000000000 _(stack_d_a_ge_2)#137 <= 1
 c114:  stack_d_a#27 - 10000000000 _(stack_d_a_ge_1)#138 <= 0
 c115:  _(stack_d_b_ge_2)#139 - _(stack_d_b_ge_1)#140 <= 0
 c116:  - stack_d_b#28 + _(stack_d_b_ge_2)#139 + _(stack_d_b_ge_1)#140 <= 0
 c117:  stack_d_b#28 - 10000000000 _(stack_d_b_ge_2)#139 <= 1
 c118:  stack_d_b#28 - 10000000000 _(stack_d_b_ge_1)#140 <= 0
 c119:  _(stack_d_c_ge_2)#141 - _(stack_d_c_ge_1)#142 <= 0
 c120:  - stack_d_c#29 + _(stack_d_c_ge_2)#141 + _(stack_d_c_ge_1)#142 <= 0
 c121:  stack_d_c#29 - 10000000000 _(stack_d_c_ge_2)#141 <= 1
 c122:  stack_d_c#29 - 10000000000 _(stack_d_c_ge_1)#142 <= 0
 c123:  _(stack_d_e_ge_2)#143 - _(stack_d_e_ge_1)#144 <= 0
 c124:  - stack_d_e#30 + _(stack_d_e_ge_2)#143 + _(stack_d_e_ge_1)#144 <= 0
 c125:  stack_d_e#30 - 10000000000 _(stack_d_e_ge_2)#143 <= 1
 c126:  stack_d_e#30 - 10000000000 _(stack_d_e_ge_1)#144 <= 0
 c127:  _(stack_d_f_ge_2)#145 - _(stack_d_f_ge_1)#146 <= 0
 c128:  - stack_d_f#31 + _(stack_d_f_ge_2)#145 + _(stack_d_f_ge_1)#146 <= 0
 c129:  stack_d_f#31 - 10000000000 _(stack_d_f_ge_2)#145 <= 1
 c130:  stack_d_f#31 - 10000000000 _(stack_d_f_ge_1)#146 <= 0
 c131:  _(stack_e_a_ge_2)#147 - _(stack_e_a_ge_1)#148 <= 0
 c132:  - stack_e_a#32 + _(stack_e_a_ge_2)#147 + _(stack_e_a_ge_1)#148 <= 0
 c133:  stack_e_a#32 - 10000000000 _(stack_e_a_ge_2)#147 <= 1
 c134:  stack_e_a#32 - 10000000000 _(stack_e_a_ge_1)#148 <= 0
 c135:  _(stack_e_b_ge_2)#149 - _(stack_e_b_ge_1)#150 <= 0
 c136:  - stack_e_b#33 + _(stack_e_b_ge_2)#149 + _(stack_e_b_ge_1)#150 <= 0
 c137:  stack_e_b#33 - 10000000000 _(stack_e_b_ge_2)#149 <= 1
 c138:  stack_e_b#33 - 10000000000 _(stack_e_b_ge_1)#150 <= 0
 c139:  _(stack_e_c_ge_2)#151 - _(stack_e_c_ge_1)#152 <= 0
 c140:  - stack_e_c#34 + _(stack_e_c_ge_2)#151 + _(stack_e_c_ge_1)#152 <= 0
 c141:  stack_e_c#34 - 10000000000 _(stack_e_c_ge_2)#151 <= 1
 c142:  stack_e_c#34 - 10000000000 _(stack_e_c_ge_1)#152 <= 0
 c143:  _(stack_e_d_ge_2)#153 - _(stack_e_d_ge_1)#154 <= 0
 c144:  - stack_e_d#35 + _(stack_e_d_ge_2)#153 + _(stack_e_d_ge_1)#154 <= 0
 c145:  stack_e_d#35 - 10000000000 _(stack_e_d_ge_2)#153 <= 1
 c146:  stack_e_d#35 - 10000000000 _(stack_e_d_ge_1)#154 <= 0
 c147:  _(stack_e_f_ge_2)#155 - _(stack_e_f_ge_1)#156 <= 0
 c148:  - stack_e_f#36 + _(stack_e_f_ge_2)#155 + _(stack_e_f_ge_1)#156 <= 0
 c149:  stack_e_f#36 - 10000000000 _(stack_e_f_ge_2)#155 <= 1
 c150:  stack_e_f#36 - 10000000000 _(stack_e_f_ge_1)#156 <= 0
 c151:  _(stack_f_a_ge_2)#157 - _(stack_f_a_ge_1)#158 <= 0
 c152:  - stack_f_a#37 + _(stack_f_a_ge_2)#157 + _(stack_f_a_ge_1)#158 <= 0
 c153:  stack_f_a#37 - 10000000000 _(stack_f_a_ge_2)#157 <= 1
 c154:  stack_f_a#37 - 10000000000 _(stack_f_a_ge_1)#158 <= 0
 c155:  _(stack_f_b_ge_2)#159 - _(stack_f_b_ge_1)#160 <= 0
 c156:  - stack_f_b#38 + _(stack_f_b_ge_2)#159 + _(stack_f_b_ge_1)#160 <= 0
 c157:  stack_f_b#38 - 10000000000 _(stack_f_b_ge_2)#159 <= 1
 c158:  stack_f_b#38 - 10000000000 _(stack_f_b_ge_1)#160 <= 0
 c159:  _(stack_f_c_ge_2)#161 - _(stack_f_c_ge_1)#162 <= 0
 c160:  - stack_f_c#39 + _(stack_f_c_ge_2)#161 + _(stack_f_c_ge_1)#162 <= 0
 c161:  stack_f_c#39 - 10000000000 _(stack_f_c_ge_2)#161 <= 1
 c162:  stack_f_c#39 - 10000000000 _(stack_f_c_ge_1)#162 <= 0
 c163:  _(stack_f_d_ge_2)#163 - _(stack_f_d_ge_1)#164 <= 0
 c164:  - stack_f_d#40 + _(stack_f_d_ge_2)#163 + _(stack_f_d_ge_1)#164 <= 0
 c165:  stack_f_d#40 - 10000000000 _(stack_f_d_ge_2)#163 <= 1
 c166:  stack_f_d#40 - 10000000000 _(stack_f_d_ge_1)#164 <= 0
 c167:  _(stack_f_e_ge_2)#165 - _(stack_f_e_ge_1)#166 <= 0
 c168:  - stack_f_e#41 + _(stack_f_e_ge_2)#165 + _(stack_f_e_ge_1)#166 <= 0
 c169:  stack_f_e#41 - 10000000000 _(stack_f_e_ge_2)#165 <= 1
 c170:  stack_f_e#41 - 10000000000 _(stack_f_e_ge_1)#166 <= 0
 c171:  _(unstack_a_b_ge_2)#167 - _(unstack_a_b_ge_1)#168 <= 0
 c172:  - unstack_a_b#42 + _(unstack_a_b_ge_2)#167 + _(unstack_a_b_ge_1)#168
        + _(unstack_a_b_ge_3)#169 <= 0
 c173:  unstack_a_b#42 - 10000000000 _(unstack_a_b_ge_2)#167 <= 1
 c174:  unstack_a_b#42 - 10000000000 _(unstack_a_b_ge_1)#168 <= 0
 c175:  _(unstack_a_c_ge_2)#170 - _(unstack_a_c_ge_1)#171 <= 0
 c176:  - unstack_a_c#43 + _(unstack_a_c_ge_2)#170 + _(unstack_a_c_ge_1)#171
        <= 0
 c177:  unstack_a_c#43 - 10000000000 _(unstack_a_c_ge_2)#170 <= 1
 c178:  unstack_a_c#43 - 10000000000 _(unstack_a_c_ge_1)#171 <= 0
 c179:  _(unstack_a_d_ge_2)#172 - _(unstack_a_d_ge_1)#173 <= 0
 c180:  - unstack_a_d#44 + _(unstack_a_d_ge_2)#172 + _(unstack_a_d_ge_1)#173
        <= 0
 c181:  unstack_a_d#44 - 10000000000 _(unstack_a_d_ge_2)#172 <= 1
 c182:  unstack_a_d#44 - 10000000000 _(unstack_a_d_ge_1)#173 <= 0
 c183:  _(unstack_a_e_ge_2)#174 - _(unstack_a_e_ge_1)#175 <= 0
 c184:  - unstack_a_e#45 + _(unstack_a_e_ge_2)#174 + _(unstack_a_e_ge_1)#175
        <= 0
 c185:  unstack_a_e#45 - 10000000000 _(unstack_a_e_ge_2)#174 <= 1
 c186:  unstack_a_e#45 - 10000000000 _(unstack_a_e_ge_1)#175 <= 0
 c187:  _(unstack_a_f_ge_2)#176 - _(unstack_a_f_ge_1)#177 <= 0
 c188:  - unstack_a_f#46 + _(unstack_a_f_ge_2)#176 + _(unstack_a_f_ge_1)#177
        <= 0
 c189:  unstack_a_f#46 - 10000000000 _(unstack_a_f_ge_2)#176 <= 1
 c190:  unstack_a_f#46 - 10000000000 _(unstack_a_f_ge_1)#177 <= 0
 c191:  _(unstack_b_a_ge_2)#178 - _(unstack_b_a_ge_1)#179 <= 0
 c192:  - unstack_b_a#47 + _(unstack_b_a_ge_2)#178 + _(unstack_b_a_ge_1)#179
        <= 0
 c193:  unstack_b_a#47 - 10000000000 _(unstack_b_a_ge_2)#178 <= 1
 c194:  unstack_b_a#47 - 10000000000 _(unstack_b_a_ge_1)#179 <= 0
 c195:  _(unstack_b_c_ge_2)#180 - _(unstack_b_c_ge_1)#181 <= 0
 c196:  - unstack_b_c#48 + _(unstack_b_c_ge_2)#180 + _(unstack_b_c_ge_1)#181
        <= 0
 c197:  unstack_b_c#48 - 10000000000 _(unstack_b_c_ge_2)#180 <= 1
 c198:  unstack_b_c#48 - 10000000000 _(unstack_b_c_ge_1)#181 <= 0
 c199:  _(unstack_b_d_ge_2)#182 - _(unstack_b_d_ge_1)#183 <= 0
 c200:  - unstack_b_d#49 + _(unstack_b_d_ge_2)#182 + _(unstack_b_d_ge_1)#183
        <= 0
 c201:  unstack_b_d#49 - 10000000000 _(unstack_b_d_ge_2)#182 <= 1
 c202:  unstack_b_d#49 - 10000000000 _(unstack_b_d_ge_1)#183 <= 0
 c203:  _(unstack_b_e_ge_2)#184 - _(unstack_b_e_ge_1)#185 <= 0
 c204:  - unstack_b_e#50 + _(unstack_b_e_ge_2)#184 + _(unstack_b_e_ge_1)#185
        <= 0
 c205:  unstack_b_e#50 - 10000000000 _(unstack_b_e_ge_2)#184 <= 1
 c206:  unstack_b_e#50 - 10000000000 _(unstack_b_e_ge_1)#185 <= 0
 c207:  _(unstack_b_f_ge_2)#186 - _(unstack_b_f_ge_1)#187 <= 0
 c208:  - unstack_b_f#51 + _(unstack_b_f_ge_2)#186 + _(unstack_b_f_ge_1)#187
        <= 0
 c209:  unstack_b_f#51 - 10000000000 _(unstack_b_f_ge_2)#186 <= 1
 c210:  unstack_b_f#51 - 10000000000 _(unstack_b_f_ge_1)#187 <= 0
 c211:  _(unstack_c_a_ge_2)#188 - _(unstack_c_a_ge_1)#189 <= 0
 c212:  - unstack_c_a#52 + _(unstack_c_a_ge_2)#188 + _(unstack_c_a_ge_1)#189
        <= 0
 c213:  unstack_c_a#52 - 10000000000 _(unstack_c_a_ge_2)#188 <= 1
 c214:  unstack_c_a#52 - 10000000000 _(unstack_c_a_ge_1)#189 <= 0
 c215:  _(unstack_c_b_ge_2)#190 - _(unstack_c_b_ge_1)#191 <= 0
 c216:  - unstack_c_b#53 + _(unstack_c_b_ge_2)#190 + _(unstack_c_b_ge_1)#191
        <= 0
 c217:  unstack_c_b#53 - 10000000000 _(unstack_c_b_ge_2)#190 <= 1
 c218:  unstack_c_b#53 - 10000000000 _(unstack_c_b_ge_1)#191 <= 0
 c219:  _(unstack_c_d_ge_2)#192 - _(unstack_c_d_ge_1)#193 <= 0
 c220:  - unstack_c_d#54 + _(unstack_c_d_ge_2)#192 + _(unstack_c_d_ge_1)#193
        <= 0
 c221:  unstack_c_d#54 - 10000000000 _(unstack_c_d_ge_2)#192 <= 1
 c222:  unstack_c_d#54 - 10000000000 _(unstack_c_d_ge_1)#193 <= 0
 c223:  _(unstack_c_e_ge_2)#194 - _(unstack_c_e_ge_1)#195 <= 0
 c224:  - unstack_c_e#55 + _(unstack_c_e_ge_2)#194 + _(unstack_c_e_ge_1)#195
        <= 0
 c225:  unstack_c_e#55 - 10000000000 _(unstack_c_e_ge_2)#194 <= 1
 c226:  unstack_c_e#55 - 10000000000 _(unstack_c_e_ge_1)#195 <= 0
 c227:  _(unstack_c_f_ge_2)#196 - _(unstack_c_f_ge_1)#197 <= 0
 c228:  - unstack_c_f#56 + _(unstack_c_f_ge_2)#196 + _(unstack_c_f_ge_1)#197
        <= 0
 c229:  unstack_c_f#56 - 10000000000 _(unstack_c_f_ge_2)#196 <= 1
 c230:  unstack_c_f#56 - 10000000000 _(unstack_c_f_ge_1)#197 <= 0
 c231:  _(unstack_d_a_ge_2)#198 - _(unstack_d_a_ge_1)#199 <= 0
 c232:  - unstack_d_a#57 + _(unstack_d_a_ge_2)#198 + _(unstack_d_a_ge_1)#199
        <= 0
 c233:  unstack_d_a#57 - 10000000000 _(unstack_d_a_ge_2)#198 <= 1
 c234:  unstack_d_a#57 - 10000000000 _(unstack_d_a_ge_1)#199 <= 0
 c235:  _(unstack_d_b_ge_2)#200 - _(unstack_d_b_ge_1)#201 <= 0
 c236:  - unstack_d_b#58 + _(unstack_d_b_ge_2)#200 + _(unstack_d_b_ge_1)#201
        <= 0
 c237:  unstack_d_b#58 - 10000000000 _(unstack_d_b_ge_2)#200 <= 1
 c238:  unstack_d_b#58 - 10000000000 _(unstack_d_b_ge_1)#201 <= 0
 c239:  _(unstack_d_c_ge_2)#202 - _(unstack_d_c_ge_1)#203 <= 0
 c240:  - unstack_d_c#59 + _(unstack_d_c_ge_2)#202 + _(unstack_d_c_ge_1)#203
        <= 0
 c241:  unstack_d_c#59 - 10000000000 _(unstack_d_c_ge_2)#202 <= 1
 c242:  unstack_d_c#59 - 10000000000 _(unstack_d_c_ge_1)#203 <= 0
 c243:  _(unstack_d_e_ge_2)#204 - _(unstack_d_e_ge_1)#205 <= 0
 c244:  - unstack_d_e#60 + _(unstack_d_e_ge_2)#204 + _(unstack_d_e_ge_1)#205
        <= 0
 c245:  unstack_d_e#60 - 10000000000 _(unstack_d_e_ge_2)#204 <= 1
 c246:  unstack_d_e#60 - 10000000000 _(unstack_d_e_ge_1)#205 <= 0
 c247:  _(unstack_d_f_ge_2)#206 - _(unstack_d_f_ge_1)#207 <= 0
 c248:  - unstack_d_f#61 + _(unstack_d_f_ge_2)#206 + _(unstack_d_f_ge_1)#207
        <= 0
 c249:  unstack_d_f#61 - 10000000000 _(unstack_d_f_ge_2)#206 <= 1
 c250:  unstack_d_f#61 - 10000000000 _(unstack_d_f_ge_1)#207 <= 0
 c251:  _(unstack_e_a_ge_2)#208 - _(unstack_e_a_ge_1)#209 <= 0
 c252:  - unstack_e_a#62 + _(unstack_e_a_ge_2)#208 + _(unstack_e_a_ge_1)#209
        <= 0
 c253:  unstack_e_a#62 - 10000000000 _(unstack_e_a_ge_2)#208 <= 1
 c254:  unstack_e_a#62 - 10000000000 _(unstack_e_a_ge_1)#209 <= 0
 c255:  _(unstack_e_b_ge_2)#210 - _(unstack_e_b_ge_1)#211 <= 0
 c256:  - unstack_e_b#63 + _(unstack_e_b_ge_2)#210 + _(unstack_e_b_ge_1)#211
        <= 0
 c257:  unstack_e_b#63 - 10000000000 _(unstack_e_b_ge_2)#210 <= 1
 c258:  unstack_e_b#63 - 10000000000 _(unstack_e_b_ge_1)#211 <= 0
 c259:  _(unstack_e_c_ge_2)#212 - _(unstack_e_c_ge_1)#213 <= 0
 c260:  - unstack_e_c#64 + _(unstack_e_c_ge_2)#212 + _(unstack_e_c_ge_1)#213
        <= 0
 c261:  unstack_e_c#64 - 10000000000 _(unstack_e_c_ge_2)#212 <= 1
 c262:  unstack_e_c#64 - 10000000000 _(unstack_e_c_ge_1)#213 <= 0
 c263:  _(unstack_e_d_ge_2)#214 - _(unstack_e_d_ge_1)#215 <= 0
 c264:  - unstack_e_d#65 + _(unstack_e_d_ge_2)#214 + _(unstack_e_d_ge_1)#215
        <= 0
 c265:  unstack_e_d#65 - 10000000000 _(unstack_e_d_ge_2)#214 <= 1
 c266:  unstack_e_d#65 - 10000000000 _(unstack_e_d_ge_1)#215 <= 0
 c267:  _(unstack_e_f_ge_2)#216 - _(unstack_e_f_ge_1)#217 <= 0
 c268:  - unstack_e_f#66 + _(unstack_e_f_ge_2)#216 + _(unstack_e_f_ge_1)#217
        <= 0
 c269:  unstack_e_f#66 - 10000000000 _(unstack_e_f_ge_2)#216 <= 1
 c270:  unstack_e_f#66 - 10000000000 _(unstack_e_f_ge_1)#217 <= 0
 c271:  _(unstack_f_a_ge_2)#218 - _(unstack_f_a_ge_1)#219 <= 0
 c272:  - unstack_f_a#67 + _(unstack_f_a_ge_2)#218 + _(unstack_f_a_ge_1)#219
        <= 0
 c273:  unstack_f_a#67 - 10000000000 _(unstack_f_a_ge_2)#218 <= 1
 c274:  unstack_f_a#67 - 10000000000 _(unstack_f_a_ge_1)#219 <= 0
 c275:  _(unstack_f_b_ge_2)#220 - _(unstack_f_b_ge_1)#221 <= 0
 c276:  - unstack_f_b#68 + _(unstack_f_b_ge_2)#220 + _(unstack_f_b_ge_1)#221
        <= 0
 c277:  unstack_f_b#68 - 10000000000 _(unstack_f_b_ge_2)#220 <= 1
 c278:  unstack_f_b#68 - 10000000000 _(unstack_f_b_ge_1)#221 <= 0
 c279:  _(unstack_f_c_ge_2)#222 - _(unstack_f_c_ge_1)#223 <= 0
 c280:  - unstack_f_c#69 + _(unstack_f_c_ge_2)#222 + _(unstack_f_c_ge_1)#223
        <= 0
 c281:  unstack_f_c#69 - 10000000000 _(unstack_f_c_ge_2)#222 <= 1
 c282:  unstack_f_c#69 - 10000000000 _(unstack_f_c_ge_1)#223 <= 0
 c283:  _(unstack_f_d_ge_2)#224 - _(unstack_f_d_ge_1)#225 <= 0
 c284:  - unstack_f_d#70 + _(unstack_f_d_ge_2)#224 + _(unstack_f_d_ge_1)#225
        <= 0
 c285:  unstack_f_d#70 - 10000000000 _(unstack_f_d_ge_2)#224 <= 1
 c286:  unstack_f_d#70 - 10000000000 _(unstack_f_d_ge_1)#225 <= 0
 c287:  _(unstack_f_e_ge_2)#226 - _(unstack_f_e_ge_1)#227 <= 0
 c288:  - unstack_f_e#71 + _(unstack_f_e_ge_2)#226 + _(unstack_f_e_ge_1)#227
        <= 0
 c289:  unstack_f_e#71 - 10000000000 _(unstack_f_e_ge_2)#226 <= 1
 c290:  unstack_f_e#71 - 10000000000 _(unstack_f_e_ge_1)#227 <= 0
 c291:  _(YT_ge_2)#228 - _(YT_ge_1)#229 <= 0
 c292:  - YT#72 + _(YT_ge_2)#228 + _(YT_ge_1)#229 <= 0
 c293:  YT#72 - 10000000000 _(YT_ge_2)#228 <= 1
 c294:  YT#72 - 10000000000 _(YT_ge_1)#229 <= 0
 c295:  _(YF_ge_2)#230 - _(YF_ge_1)#231 <= 0
 c296:  - YF#73 + _(YF_ge_2)#230 + _(YF_ge_1)#231 + _(YF_ge_3)#232
        + _(YF_ge_4)#233 + _(YF_ge_5)#234 + _(YF_ge_6)#235 + _(YF_ge_7)#236
        + _(YF_ge_8)#237 + _(YF_ge_9)#238 + _(YF_ge_10)#239 + _(YF_ge_11)#240
        + _(YF_ge_12)#241 + _(YF_ge_13)#242 + _(YF_ge_14)#243 + _(YF_ge_15)#244
        + _(YF_ge_16)#245 + _(YF_ge_17)#246 + _(YF_ge_18)#247 + _(YF_ge_19)#248
        + _(YF_ge_20)#249 + _(YF_ge_21)#250 + _(YF_ge_22)#251 + _(YF_ge_23)#252
        + _(YF_ge_24)#253 <= 0
 c297:  YF#73 - 10000000000 _(YF_ge_2)#230 <= 1
 c298:  YF#73 - 10000000000 _(YF_ge_1)#231 <= 0
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
 c355:  _(stack_c_d_ge_1)#132 >= 1
 c356:  _(pickmup_c_ge_1)#79 >= 1
 c357:  _(stack_b_c_ge_1)#118 >= 1
 c358:  _(stack_e_f_ge_1)#156 >= 1
 c359:  _(unstack_e_c_ge_1)#213 >= 1
 c360:  _(stack_f_a_ge_1)#158 >= 1
 c361:  _(unstack_f_e_ge_1)#227 >= 1
 c362:  _(unstack_b_f_ge_1)#187 >= 1
 c363:  _(stack_a_b_ge_1)#103 >= 1
 c364:  _(unstack_d_b_ge_1)#201 >= 1
 c365:  _(unstack_a_d_ge_1)#173 >= 1
 c366:  - var_227#254 + var_289#255 + var_497#256 + var_501#257 + var_505#258
        + var_509#259 + var_513#260 >= 0
 c367:  - var_228#261 + var_377#262 >= 0
 c368:  - var_229#263 + var_381#264 >= -1
 c369:  - var_230#265 + var_385#266 >= 0
 c370:  - var_231#267 + var_389#268 >= 0
 c371:  - var_232#269 + var_393#270 >= 0
 c372:  - var_233#271 + var_307#272 >= 0
 c373:  - var_234#273 + var_305#274 + var_375#275 + var_379#276 + var_383#277
        + var_386#278 + var_390#279 + var_443#280 + var_463#281 + var_483#282
        + var_526#283 + var_546#284 >= 0
 c374:  - var_235#285 + var_287#286 + var_323#287 + var_343#288 + var_363#289
        + var_406#290 + var_426#291 + var_495#292 + var_499#293 + var_503#294
        + var_506#295 + var_510#296 >= -1
 c375:  - var_236#297 + var_296#298 + var_314#299 + var_318#300 + var_322#301
        + var_326#302 + var_330#303 + var_454#304 + var_474#305 + var_494#306
        + var_514#307 + var_534#308 >= -1
 c376:  - var_237#309 + var_278#310 + var_334#311 + var_354#312 + var_374#313
        + var_394#314 + var_414#315 + var_434#316 + var_438#317 + var_442#318
        + var_446#319 + var_450#320 >= 0
 c377:  - var_238#321 + var_299#322 + var_335#323 + var_338#324 + var_342#325
        + var_346#326 + var_350#327 + var_435#328 + var_478#329 + var_498#330
        + var_518#331 + var_538#332 >= 0
 c378:  - var_239#333 + var_281#334 + var_315#335 + var_358#336 + var_378#337
        + var_398#338 + var_418#339 + var_455#340 + var_458#341 + var_462#342
        + var_466#343 + var_470#344 >= -1
 c379:  - var_240#345 + var_302#346 + var_355#347 + var_359#348 + var_362#349
        + var_366#350 + var_370#351 + var_439#352 + var_459#353 + var_502#354
        + var_522#355 + var_542#356 >= 0
 c380:  - var_241#357 + var_284#358 + var_319#359 + var_339#360 + var_382#361
        + var_402#362 + var_422#363 + var_475#364 + var_479#365 + var_482#366
        + var_486#367 + var_490#368 >= -1
 c381:  - var_242#369 + var_308#370 + var_395#371 + var_399#372 + var_403#373
        + var_407#374 + var_410#375 + var_447#376 + var_467#377 + var_487#378
        + var_507#379 + var_550#380 >= 0
 c382:  - var_243#381 + var_290#382 + var_327#383 + var_347#384 + var_367#385
        + var_387#386 + var_430#387 + var_515#388 + var_519#389 + var_523#390
        + var_527#391 + var_530#392 >= -1
 c383:  - var_244#393 + var_311#394 + var_415#395 + var_419#396 + var_423#397
        + var_427#398 + var_431#399 + var_451#400 + var_471#401 + var_491#402
        + var_511#403 + var_531#404 >= 0
 c384:  - var_245#405 + var_293#406 + var_331#407 + var_351#408 + var_371#409
        + var_391#410 + var_411#411 + var_535#412 + var_539#413 + var_543#414
        + var_547#415 + var_551#416 >= -1
 c385:  - var_246#417 + var_297#418 + var_300#419 + var_303#420 + var_306#421
        + var_309#422 + var_312#423 + var_316#424 + var_320#425 + var_324#426
        + var_328#427 + var_332#428 + var_336#429 + var_340#430 + var_344#431
        + var_348#432 + var_352#433 + var_356#434 + var_360#435 + var_364#436
        + var_368#437 + var_372#438 + var_376#439 + var_380#440 + var_384#441
        + var_388#442 + var_392#443 + var_396#444 + var_400#445 + var_404#446
        + var_408#447 + var_412#448 + var_416#449 + var_420#450 + var_424#451
        + var_428#452 + var_432#453 >= -1
 c386:  - var_247#454 + var_279#455 + var_282#456 + var_285#457 + var_288#458
        + var_291#459 + var_294#460 + var_436#461 + var_440#462 + var_444#463
        + var_448#464 + var_452#465 + var_456#466 + var_460#467 + var_464#468
        + var_468#469 + var_472#470 + var_476#471 + var_480#472 + var_484#473
        + var_488#474 + var_492#475 + var_496#476 + var_500#477 + var_504#478
        + var_508#479 + var_512#480 + var_516#481 + var_520#482 + var_524#483
        + var_528#484 + var_532#485 + var_536#486 + var_540#487 + var_544#488
        + var_548#489 + var_552#490 >= 0
 c387:  - var_248#491 + var_280#492 + var_437#493 + var_441#494 + var_445#495
        + var_449#496 + var_453#497 >= 0
 c388:  - var_222#498 + var_317#499 >= 0
 c389:  - var_249#500 + var_321#501 >= 0
 c390:  - var_250#502 + var_325#503 >= -1
 c391:  - var_251#504 + var_329#505 >= 0
 c392:  - var_252#506 + var_333#507 >= 0
 c393:  - var_253#508 + var_298#509 >= 0
 c394:  - var_254#510 + var_283#511 + var_457#512 + var_461#513 + var_465#514
        + var_469#515 + var_473#516 >= 0
 c395:  - var_255#517 + var_337#518 >= 0
 c396:  - var_223#519 + var_341#520 >= 0
 c397:  - var_256#521 + var_345#522 >= 0
 c398:  - var_257#523 + var_349#524 >= 0
 c399:  - var_258#525 + var_353#526 >= -1
 c400:  - var_259#527 + var_301#528 >= 0
 c401:  - var_260#529 + var_286#530 + var_477#531 + var_481#532 + var_485#533
        + var_489#534 + var_493#535 >= 0
 c402:  - var_261#536 + var_357#537 >= 0
 c403:  - var_262#538 + var_361#539 >= 0
 c404:  - var_224#540 + var_365#541 >= 0
 c405:  - var_263#542 + var_369#543 >= 0
 c406:  - var_264#544 + var_373#545 >= 0
 c407:  - var_265#546 + var_304#547 >= -1
 c408:  - var_266#548 + var_292#549 + var_517#550 + var_521#551 + var_525#552
        + var_529#553 + var_533#554 >= 0
 c409:  - var_267#555 + var_397#556 >= 0
 c410:  - var_268#557 + var_401#558 >= 0
 c411:  - var_269#559 + var_405#560 >= -1
 c412:  - var_270#561 + var_409#562 >= 0
 c413:  - var_225#563 + var_413#564 >= 0
 c414:  - var_271#565 + var_310#566 >= 0
 c415:  - var_272#567 + var_295#568 + var_537#569 + var_541#570 + var_545#571
        + var_549#572 + var_553#573 >= 0
 c416:  - var_226#574 + var_417#575 >= 0
 c417:  - var_273#576 + var_421#577 >= 0
 c418:  - var_274#578 + var_425#579 >= 0
 c419:  - var_275#580 + var_429#581 >= 0
 c420:  - var_276#582 + var_433#583 >= -1
 c421:  - var_277#584 + var_313#585 >= 0
 c422:  - var_278#310 + var_554#586 >= 0
 c423:  - var_279#455 + var_554#586 >= 0
 c424:  - var_280#492 + var_554#586 >= 0
 c425:  - var_281#334 + var_555#587 >= 0
 c426:  - var_282#456 + var_555#587 >= 0
 c427:  - var_283#511 + var_555#587 >= 0
 c428:  - var_284#358 + var_556#588 >= 0
 c429:  - var_285#457 + var_556#588 >= 0
 c430:  - var_286#530 + var_556#588 >= 0
 c431:  - var_287#286 + var_557#589 >= 0
 c432:  - var_288#458 + var_557#589 >= 0
 c433:  - var_289#255 + var_557#589 >= 0
 c434:  - var_290#382 + var_558#590 >= 0
 c435:  - var_291#459 + var_558#590 >= 0
 c436:  - var_292#549 + var_558#590 >= 0
 c437:  - var_293#406 + var_559#591 >= 0
 c438:  - var_294#460 + var_559#591 >= 0
 c439:  - var_295#568 + var_559#591 >= 0
 c440:  - var_296#298 + var_560#592 >= 0
 c441:  - var_297#418 + var_560#592 >= 0
 c442:  - var_298#509 + var_560#592 >= 0
 c443:  - var_299#322 + var_561#593 >= 0
 c444:  - var_300#419 + var_561#593 >= 0
 c445:  - var_301#528 + var_561#593 >= 0
 c446:  - var_302#346 + var_562#594 >= 0
 c447:  - var_303#420 + var_562#594 >= 0
 c448:  - var_304#547 + var_562#594 >= 0
 c449:  - var_305#274 + var_563#595 >= 0
 c450:  - var_306#421 + var_563#595 >= 0
 c451:  - var_307#272 + var_563#595 >= 0
 c452:  - var_308#370 + var_564#596 >= 0
 c453:  - var_309#422 + var_564#596 >= 0
 c454:  - var_310#566 + var_564#596 >= 0
 c455:  - var_311#394 + var_565#597 >= 0
 c456:  - var_312#423 + var_565#597 >= 0
 c457:  - var_313#585 + var_565#597 >= 0
 c458:  - var_314#299 + var_566#598 >= 0
 c459:  - var_315#335 + var_566#598 >= 0
 c460:  - var_316#424 + var_566#598 >= 0
 c461:  - var_317#499 + var_566#598 >= 0
 c462:  - var_318#300 + var_567#599 >= 0
 c463:  - var_319#359 + var_567#599 >= 0
 c464:  - var_320#425 + var_567#599 >= 0
 c465:  - var_321#501 + var_567#599 >= 0
 c466:  - var_322#301 + var_568#600 >= 0
 c467:  - var_323#287 + var_568#600 >= 0
 c468:  - var_324#426 + var_568#600 >= 0
 c469:  - var_325#503 + var_568#600 >= 0
 c470:  - var_326#302 + var_569#601 >= 0
 c471:  - var_327#383 + var_569#601 >= 0
 c472:  - var_328#427 + var_569#601 >= 0
 c473:  - var_329#505 + var_569#601 >= 0
 c474:  - var_330#303 + var_570#602 >= 0
 c475:  - var_331#407 + var_570#602 >= 0
 c476:  - var_332#428 + var_570#602 >= 0
 c477:  - var_333#507 + var_570#602 >= 0
 c478:  - var_334#311 + var_571#603 >= 0
 c479:  - var_335#323 + var_571#603 >= 0
 c480:  - var_336#429 + var_571#603 >= 0
 c481:  - var_337#518 + var_571#603 >= 0
 c482:  - var_338#324 + var_572#604 >= 0
 c483:  - var_339#360 + var_572#604 >= 0
 c484:  - var_340#430 + var_572#604 >= 0
 c485:  - var_341#520 + var_572#604 >= 0
 c486:  - var_342#325 + var_573#605 >= 0
 c487:  - var_343#288 + var_573#605 >= 0
 c488:  - var_344#431 + var_573#605 >= 0
 c489:  - var_345#522 + var_573#605 >= 0
 c490:  - var_346#326 + var_574#606 >= 0
 c491:  - var_347#384 + var_574#606 >= 0
 c492:  - var_348#432 + var_574#606 >= 0
 c493:  - var_349#524 + var_574#606 >= 0
 c494:  - var_350#327 + var_575#607 >= 0
 c495:  - var_351#408 + var_575#607 >= 0
 c496:  - var_352#433 + var_575#607 >= 0
 c497:  - var_353#526 + var_575#607 >= 0
 c498:  - var_354#312 + var_576#608 >= 0
 c499:  - var_355#347 + var_576#608 >= 0
 c500:  - var_356#434 + var_576#608 >= 0
 c501:  - var_357#537 + var_576#608 >= 0
 c502:  - var_358#336 + var_577#609 >= 0
 c503:  - var_359#348 + var_577#609 >= 0
 c504:  - var_360#435 + var_577#609 >= 0
 c505:  - var_361#539 + var_577#609 >= 0
 c506:  - var_362#349 + var_578#610 >= 0
 c507:  - var_363#289 + var_578#610 >= 0
 c508:  - var_364#436 + var_578#610 >= 0
 c509:  - var_365#541 + var_578#610 >= 0
 c510:  - var_366#350 + var_579#611 >= 0
 c511:  - var_367#385 + var_579#611 >= 0
 c512:  - var_368#437 + var_579#611 >= 0
 c513:  - var_369#543 + var_579#611 >= 0
 c514:  - var_370#351 + var_580#612 >= 0
 c515:  - var_371#409 + var_580#612 >= 0
 c516:  - var_372#438 + var_580#612 >= 0
 c517:  - var_373#545 + var_580#612 >= 0
 c518:  - var_374#313 + var_581#613 >= 0
 c519:  - var_375#275 + var_581#613 >= 0
 c520:  - var_376#439 + var_581#613 >= 0
 c521:  - var_377#262 + var_581#613 >= 0
 c522:  - var_378#337 + var_582#614 >= 0
 c523:  - var_379#276 + var_582#614 >= 0
 c524:  - var_380#440 + var_582#614 >= 0
 c525:  - var_381#264 + var_582#614 >= 0
 c526:  - var_382#361 + var_583#615 >= 0
 c527:  - var_383#277 + var_583#615 >= 0
 c528:  - var_384#441 + var_583#615 >= 0
 c529:  - var_385#266 + var_583#615 >= 0
 c530:  - var_386#278 + var_584#616 >= 0
 c531:  - var_387#386 + var_584#616 >= 0
 c532:  - var_388#442 + var_584#616 >= 0
 c533:  - var_389#268 + var_584#616 >= 0
 c534:  - var_390#279 + var_585#617 >= 0
 c535:  - var_391#410 + var_585#617 >= 0
 c536:  - var_392#443 + var_585#617 >= 0
 c537:  - var_393#270 + var_585#617 >= 0
 c538:  - var_394#314 + var_586#618 >= 0
 c539:  - var_395#371 + var_586#618 >= 0
 c540:  - var_396#444 + var_586#618 >= 0
 c541:  - var_397#556 + var_586#618 >= 0
 c542:  - var_398#338 + var_587#619 >= 0
 c543:  - var_399#372 + var_587#619 >= 0
 c544:  - var_400#445 + var_587#619 >= 0
 c545:  - var_401#558 + var_587#619 >= 0
 c546:  - var_402#362 + var_588#620 >= 0
 c547:  - var_403#373 + var_588#620 >= 0
 c548:  - var_404#446 + var_588#620 >= 0
 c549:  - var_405#560 + var_588#620 >= 0
 c550:  - var_406#290 + var_589#621 >= 0
 c551:  - var_407#374 + var_589#621 >= 0
 c552:  - var_408#447 + var_589#621 >= 0
 c553:  - var_409#562 + var_589#621 >= 0
 c554:  - var_410#375 + var_590#622 >= 0
 c555:  - var_411#411 + var_590#622 >= 0
 c556:  - var_412#448 + var_590#622 >= 0
 c557:  - var_413#564 + var_590#622 >= 0
 c558:  - var_414#315 + var_591#623 >= 0
 c559:  - var_415#395 + var_591#623 >= 0
 c560:  - var_416#449 + var_591#623 >= 0
 c561:  - var_417#575 + var_591#623 >= 0
 c562:  - var_418#339 + var_592#624 >= 0
 c563:  - var_419#396 + var_592#624 >= 0
 c564:  - var_420#450 + var_592#624 >= 0
 c565:  - var_421#577 + var_592#624 >= 0
 c566:  - var_422#363 + var_593#625 >= 0
 c567:  - var_423#397 + var_593#625 >= 0
 c568:  - var_424#451 + var_593#625 >= 0
 c569:  - var_425#579 + var_593#625 >= 0
 c570:  - var_426#291 + var_594#626 >= 0
 c571:  - var_427#398 + var_594#626 >= 0
 c572:  - var_428#452 + var_594#626 >= 0
 c573:  - var_429#581 + var_594#626 >= 0
 c574:  - var_430#387 + var_595#627 >= 0
 c575:  - var_431#399 + var_595#627 >= 0
 c576:  - var_432#453 + var_595#627 >= 0
 c577:  - var_433#583 + var_595#627 >= 0
 c578:  - var_434#316 + var_596#628 >= 0
 c579:  - var_435#328 + var_596#628 >= 0
 c580:  - var_436#461 + var_596#628 >= 0
 c581:  - var_437#493 + var_596#628 >= 0
 c582:  - var_438#317 + var_597#629 >= 0
 c583:  - var_439#352 + var_597#629 >= 0
 c584:  - var_440#462 + var_597#629 >= 0
 c585:  - var_441#494 + var_597#629 >= 0
 c586:  - var_442#318 + var_598#630 >= 0
 c587:  - var_443#280 + var_598#630 >= 0
 c588:  - var_444#463 + var_598#630 >= 0
 c589:  - var_445#495 + var_598#630 >= 0
 c590:  - var_446#319 + var_599#631 >= 0
 c591:  - var_447#376 + var_599#631 >= 0
 c592:  - var_448#464 + var_599#631 >= 0
 c593:  - var_449#496 + var_599#631 >= 0
 c594:  - var_450#320 + var_600#632 >= 0
 c595:  - var_451#400 + var_600#632 >= 0
 c596:  - var_452#465 + var_600#632 >= 0
 c597:  - var_453#497 + var_600#632 >= 0
 c598:  - var_454#304 + var_601#633 >= 0
 c599:  - var_455#340 + var_601#633 >= 0
 c600:  - var_456#466 + var_601#633 >= 0
 c601:  - var_457#512 + var_601#633 >= 0
 c602:  - var_458#341 + var_602#634 >= 0
 c603:  - var_459#353 + var_602#634 >= 0
 c604:  - var_460#467 + var_602#634 >= 0
 c605:  - var_461#513 + var_602#634 >= 0
 c606:  - var_462#342 + var_603#635 >= 0
 c607:  - var_463#281 + var_603#635 >= 0
 c608:  - var_464#468 + var_603#635 >= 0
 c609:  - var_465#514 + var_603#635 >= 0
 c610:  - var_466#343 + var_604#636 >= 0
 c611:  - var_467#377 + var_604#636 >= 0
 c612:  - var_468#469 + var_604#636 >= 0
 c613:  - var_469#515 + var_604#636 >= 0
 c614:  - var_470#344 + var_605#637 >= 0
 c615:  - var_471#401 + var_605#637 >= 0
 c616:  - var_472#470 + var_605#637 >= 0
 c617:  - var_473#516 + var_605#637 >= 0
 c618:  - var_474#305 + var_606#638 >= 0
 c619:  - var_475#364 + var_606#638 >= 0
 c620:  - var_476#471 + var_606#638 >= 0
 c621:  - var_477#531 + var_606#638 >= 0
 c622:  - var_478#329 + var_607#639 >= 0
 c623:  - var_479#365 + var_607#639 >= 0
 c624:  - var_480#472 + var_607#639 >= 0
 c625:  - var_481#532 + var_607#639 >= 0
 c626:  - var_482#366 + var_608#640 >= 0
 c627:  - var_483#282 + var_608#640 >= 0
 c628:  - var_484#473 + var_608#640 >= 0
 c629:  - var_485#533 + var_608#640 >= 0
 c630:  - var_486#367 + var_609#641 >= 0
 c631:  - var_487#378 + var_609#641 >= 0
 c632:  - var_488#474 + var_609#641 >= 0
 c633:  - var_489#534 + var_609#641 >= 0
 c634:  - var_490#368 + var_610#642 >= 0
 c635:  - var_491#402 + var_610#642 >= 0
 c636:  - var_492#475 + var_610#642 >= 0
 c637:  - var_493#535 + var_610#642 >= 0
 c638:  - var_494#306 + var_611#643 >= 0
 c639:  - var_495#292 + var_611#643 >= 0
 c640:  - var_496#476 + var_611#643 >= 0
 c641:  - var_497#256 + var_611#643 >= 0
 c642:  - var_498#330 + var_612#644 >= 0
 c643:  - var_499#293 + var_612#644 >= 0
 c644:  - var_500#477 + var_612#644 >= 0
 c645:  - var_501#257 + var_612#644 >= 0
 c646:  - var_502#354 + var_613#645 >= 0
 c647:  - var_503#294 + var_613#645 >= 0
 c648:  - var_504#478 + var_613#645 >= 0
 c649:  - var_505#258 + var_613#645 >= 0
 c650:  - var_506#295 + var_614#646 >= 0
 c651:  - var_507#379 + var_614#646 >= 0
 c652:  - var_508#479 + var_614#646 >= 0
 c653:  - var_509#259 + var_614#646 >= 0
 c654:  - var_510#296 + var_615#647 >= 0
 c655:  - var_511#403 + var_615#647 >= 0
 c656:  - var_512#480 + var_615#647 >= 0
 c657:  - var_513#260 + var_615#647 >= 0
 c658:  - var_514#307 + var_616#648 >= 0
 c659:  - var_515#388 + var_616#648 >= 0
 c660:  - var_516#481 + var_616#648 >= 0
 c661:  - var_517#550 + var_616#648 >= 0
 c662:  - var_518#331 + var_617#649 >= 0
 c663:  - var_519#389 + var_617#649 >= 0
 c664:  - var_520#482 + var_617#649 >= 0
 c665:  - var_521#551 + var_617#649 >= 0
 c666:  - var_522#355 + var_618#650 >= 0
 c667:  - var_523#390 + var_618#650 >= 0
 c668:  - var_524#483 + var_618#650 >= 0
 c669:  - var_525#552 + var_618#650 >= 0
 c670:  - var_526#283 + var_619#651 >= 0
 c671:  - var_527#391 + var_619#651 >= 0
 c672:  - var_528#484 + var_619#651 >= 0
 c673:  - var_529#553 + var_619#651 >= 0
 c674:  - var_530#392 + var_620#652 >= 0
 c675:  - var_531#404 + var_620#652 >= 0
 c676:  - var_532#485 + var_620#652 >= 0
 c677:  - var_533#554 + var_620#652 >= 0
 c678:  - var_534#308 + var_621#653 >= 0
 c679:  - var_535#412 + var_621#653 >= 0
 c680:  - var_536#486 + var_621#653 >= 0
 c681:  - var_537#569 + var_621#653 >= 0
 c682:  - var_538#332 + var_622#654 >= 0
 c683:  - var_539#413 + var_622#654 >= 0
 c684:  - var_540#487 + var_622#654 >= 0
 c685:  - var_541#570 + var_622#654 >= 0
 c686:  - var_542#356 + var_623#655 >= 0
 c687:  - var_543#414 + var_623#655 >= 0
 c688:  - var_544#488 + var_623#655 >= 0
 c689:  - var_545#571 + var_623#655 >= 0
 c690:  - var_546#284 + var_624#656 >= 0
 c691:  - var_547#415 + var_624#656 >= 0
 c692:  - var_548#489 + var_624#656 >= 0
 c693:  - var_549#572 + var_624#656 >= 0
 c694:  - var_550#380 + var_625#657 >= 0
 c695:  - var_551#416 + var_625#657 >= 0
 c696:  - var_552#490 + var_625#657 >= 0
 c697:  - var_553#573 + var_625#657 >= 0
 c698:  var_236#297 - var_554#586 >= 0
 c699:  var_246#417 - var_554#586 >= 0
 c700:  var_253#508 - var_554#586 >= 0
 c701:  var_238#321 - var_555#587 >= 0
 c702:  var_246#417 - var_555#587 >= 0
 c703:  var_259#527 - var_555#587 >= 0
 c704:  var_240#345 - var_556#588 >= 0
 c705:  var_246#417 - var_556#588 >= 0
 c706:  var_265#546 - var_556#588 >= 0
 c707:  var_234#273 - var_557#589 >= 0
 c708:  var_246#417 - var_557#589 >= 0
 c709:  var_233#271 - var_557#589 >= 0
 c710:  var_242#369 - var_558#590 >= 0
 c711:  var_246#417 - var_558#590 >= 0
 c712:  var_271#565 - var_558#590 >= 0
 c713:  var_244#393 - var_559#591 >= 0
 c714:  var_246#417 - var_559#591 >= 0
 c715:  var_277#584 - var_559#591 >= 0
 c716:  var_248#491 - var_560#592 >= 0
 c717:  var_254#510 - var_561#593 >= 0
 c718:  var_260#529 - var_562#594 >= 0
 c719:  var_227#254 - var_563#595 >= 0
 c720:  var_266#548 - var_564#596 >= 0
 c721:  var_272#567 - var_565#597 >= 0
 c722:  var_238#321 - var_566#598 >= 0
 c723:  var_248#491 - var_566#598 >= 0
 c724:  var_240#345 - var_567#599 >= 0
 c725:  var_248#491 - var_567#599 >= 0
 c726:  var_234#273 - var_568#600 >= 0
 c727:  var_248#491 - var_568#600 >= 0
 c728:  var_242#369 - var_569#601 >= 0
 c729:  var_248#491 - var_569#601 >= 0
 c730:  var_244#393 - var_570#602 >= 0
 c731:  var_248#491 - var_570#602 >= 0
 c732:  var_236#297 - var_571#603 >= 0
 c733:  var_254#510 - var_571#603 >= 0
 c734:  var_240#345 - var_572#604 >= 0
 c735:  var_254#510 - var_572#604 >= 0
 c736:  var_234#273 - var_573#605 >= 0
 c737:  var_254#510 - var_573#605 >= 0
 c738:  var_242#369 - var_574#606 >= 0
 c739:  var_254#510 - var_574#606 >= 0
 c740:  var_244#393 - var_575#607 >= 0
 c741:  var_254#510 - var_575#607 >= 0
 c742:  var_236#297 - var_576#608 >= 0
 c743:  var_260#529 - var_576#608 >= 0
 c744:  var_238#321 - var_577#609 >= 0
 c745:  var_260#529 - var_577#609 >= 0
 c746:  var_234#273 - var_578#610 >= 0
 c747:  var_260#529 - var_578#610 >= 0
 c748:  var_242#369 - var_579#611 >= 0
 c749:  var_260#529 - var_579#611 >= 0
 c750:  var_244#393 - var_580#612 >= 0
 c751:  var_260#529 - var_580#612 >= 0
 c752:  var_236#297 - var_581#613 >= 0
 c753:  var_227#254 - var_581#613 >= 0
 c754:  var_238#321 - var_582#614 >= 0
 c755:  var_227#254 - var_582#614 >= 0
 c756:  var_240#345 - var_583#615 >= 0
 c757:  var_227#254 - var_583#615 >= 0
 c758:  var_242#369 - var_584#616 >= 0
 c759:  var_227#254 - var_584#616 >= 0
 c760:  var_244#393 - var_585#617 >= 0
 c761:  var_227#254 - var_585#617 >= 0
 c762:  var_236#297 - var_586#618 >= 0
 c763:  var_266#548 - var_586#618 >= 0
 c764:  var_238#321 - var_587#619 >= 0
 c765:  var_266#548 - var_587#619 >= 0
 c766:  var_240#345 - var_588#620 >= 0
 c767:  var_266#548 - var_588#620 >= 0
 c768:  var_234#273 - var_589#621 >= 0
 c769:  var_266#548 - var_589#621 >= 0
 c770:  var_244#393 - var_590#622 >= 0
 c771:  var_266#548 - var_590#622 >= 0
 c772:  var_236#297 - var_591#623 >= 0
 c773:  var_272#567 - var_591#623 >= 0
 c774:  var_238#321 - var_592#624 >= 0
 c775:  var_272#567 - var_592#624 >= 0
 c776:  var_240#345 - var_593#625 >= 0
 c777:  var_272#567 - var_593#625 >= 0
 c778:  var_234#273 - var_594#626 >= 0
 c779:  var_272#567 - var_594#626 >= 0
 c780:  var_242#369 - var_595#627 >= 0
 c781:  var_272#567 - var_595#627 >= 0
 c782:  var_236#297 - var_596#628 >= 0
 c783:  var_246#417 - var_596#628 >= 0
 c784:  var_222#498 - var_596#628 >= 0
 c785:  var_236#297 - var_597#629 >= 0
 c786:  var_246#417 - var_597#629 >= 0
 c787:  var_249#500 - var_597#629 >= 0
 c788:  var_236#297 - var_598#630 >= 0
 c789:  var_246#417 - var_598#630 >= 0
 c790:  var_250#502 - var_598#630 >= 0
 c791:  var_236#297 - var_599#631 >= 0
 c792:  var_246#417 - var_599#631 >= 0
 c793:  var_251#504 - var_599#631 >= 0
 c794:  var_236#297 - var_600#632 >= 0
 c795:  var_246#417 - var_600#632 >= 0
 c796:  var_252#506 - var_600#632 >= 0
 c797:  var_238#321 - var_601#633 >= 0
 c798:  var_246#417 - var_601#633 >= 0
 c799:  var_255#517 - var_601#633 >= 0
 c800:  var_238#321 - var_602#634 >= 0
 c801:  var_246#417 - var_602#634 >= 0
 c802:  var_223#519 - var_602#634 >= 0
 c803:  var_238#321 - var_603#635 >= 0
 c804:  var_246#417 - var_603#635 >= 0
 c805:  var_256#521 - var_603#635 >= 0
 c806:  var_238#321 - var_604#636 >= 0
 c807:  var_246#417 - var_604#636 >= 0
 c808:  var_257#523 - var_604#636 >= 0
 c809:  var_238#321 - var_605#637 >= 0
 c810:  var_246#417 - var_605#637 >= 0
 c811:  var_258#525 - var_605#637 >= 0
 c812:  var_240#345 - var_606#638 >= 0
 c813:  var_246#417 - var_606#638 >= 0
 c814:  var_261#536 - var_606#638 >= 0
 c815:  var_240#345 - var_607#639 >= 0
 c816:  var_246#417 - var_607#639 >= 0
 c817:  var_262#538 - var_607#639 >= 0
 c818:  var_240#345 - var_608#640 >= 0
 c819:  var_246#417 - var_608#640 >= 0
 c820:  var_224#540 - var_608#640 >= 0
 c821:  var_240#345 - var_609#641 >= 0
 c822:  var_246#417 - var_609#641 >= 0
 c823:  var_263#542 - var_609#641 >= 0
 c824:  var_240#345 - var_610#642 >= 0
 c825:  var_246#417 - var_610#642 >= 0
 c826:  var_264#544 - var_610#642 >= 0
 c827:  var_234#273 - var_611#643 >= 0
 c828:  var_246#417 - var_611#643 >= 0
 c829:  var_228#261 - var_611#643 >= 0
 c830:  var_234#273 - var_612#644 >= 0
 c831:  var_246#417 - var_612#644 >= 0
 c832:  var_229#263 - var_612#644 >= 0
 c833:  var_234#273 - var_613#645 >= 0
 c834:  var_246#417 - var_613#645 >= 0
 c835:  var_230#265 - var_613#645 >= 0
 c836:  var_234#273 - var_614#646 >= 0
 c837:  var_246#417 - var_614#646 >= 0
 c838:  var_231#267 - var_614#646 >= 0
 c839:  var_234#273 - var_615#647 >= 0
 c840:  var_246#417 - var_615#647 >= 0
 c841:  var_232#269 - var_615#647 >= 0
 c842:  var_242#369 - var_616#648 >= 0
 c843:  var_246#417 - var_616#648 >= 0
 c844:  var_267#555 - var_616#648 >= 0
 c845:  var_242#369 - var_617#649 >= 0
 c846:  var_246#417 - var_617#649 >= 0
 c847:  var_268#557 - var_617#649 >= 0
 c848:  var_242#369 - var_618#650 >= 0
 c849:  var_246#417 - var_618#650 >= 0
 c850:  var_269#559 - var_618#650 >= 0
 c851:  var_242#369 - var_619#651 >= 0
 c852:  var_246#417 - var_619#651 >= 0
 c853:  var_270#561 - var_619#651 >= 0
 c854:  var_242#369 - var_620#652 >= 0
 c855:  var_246#417 - var_620#652 >= 0
 c856:  var_225#563 - var_620#652 >= 0
 c857:  var_244#393 - var_621#653 >= 0
 c858:  var_246#417 - var_621#653 >= 0
 c859:  var_226#574 - var_621#653 >= 0
 c860:  var_244#393 - var_622#654 >= 0
 c861:  var_246#417 - var_622#654 >= 0
 c862:  var_273#576 - var_622#654 >= 0
 c863:  var_244#393 - var_623#655 >= 0
 c864:  var_246#417 - var_623#655 >= 0
 c865:  var_274#578 - var_623#655 >= 0
 c866:  var_244#393 - var_624#656 >= 0
 c867:  var_246#417 - var_624#656 >= 0
 c868:  var_275#580 - var_624#656 >= 0
 c869:  var_244#393 - var_625#657 >= 0
 c870:  var_246#417 - var_625#657 >= 0
 c871:  var_276#582 - var_625#657 >= 0
 c872:  var_626#658 - var_627#659 >= 0
 c873:  var_626#658 - var_628#660 >= 0
 c874:  var_626#658 - var_629#661 >= 0
 c875:  var_630#662 - var_631#663 >= 0
 c876:  - var_628#660 + var_630#662 >= 0
 c877:  var_630#662 - var_632#664 >= 0
 c878:  var_633#665 - var_634#666 >= 0
 c879:  - var_628#660 + var_633#665 >= 0
 c880:  var_633#665 - var_635#667 >= 0
 c881:  var_636#668 - var_637#669 >= 0
 c882:  - var_628#660 + var_636#668 >= 0
 c883:  var_636#668 - var_638#670 >= 0
 c884:  var_639#671 - var_640#672 >= 0
 c885:  - var_628#660 + var_639#671 >= 0
 c886:  var_639#671 - var_641#673 >= 0
 c887:  var_642#674 - var_643#675 >= 0
 c888:  - var_628#660 + var_642#674 >= 0
 c889:  var_642#674 - var_644#676 >= 0
 c890:  var_645#677 - var_646#678 >= 0
 c891:  var_647#679 - var_648#680 >= 0
 c892:  var_649#681 - var_650#682 >= 0
 c893:  var_651#683 - var_652#684 >= 0
 c894:  var_653#685 - var_654#686 >= 0
 c895:  var_655#687 - var_656#688 >= 0
 c896:  - var_631#663 + var_657#689 >= 0
 c897:  - var_646#678 + var_657#689 >= 0
 c898:  - var_634#666 + var_658#690 >= 0
 c899:  - var_646#678 + var_658#690 >= 0
 c900:  - var_637#669 + var_659#691 >= 0
 c901:  - var_646#678 + var_659#691 >= 0
 c902:  - var_640#672 + var_660#692 >= 0
 c903:  - var_646#678 + var_660#692 >= 0
 c904:  - var_643#675 + var_661#693 >= 0
 c905:  - var_646#678 + var_661#693 >= 0
 c906:  - var_627#659 + var_662#694 >= 0
 c907:  - var_648#680 + var_662#694 >= 0
 c908:  - var_634#666 + var_663#695 >= 0
 c909:  - var_648#680 + var_663#695 >= 0
 c910:  - var_637#669 + var_664#696 >= 0
 c911:  - var_648#680 + var_664#696 >= 0
 c912:  - var_640#672 + var_665#697 >= 0
 c913:  - var_648#680 + var_665#697 >= 0
 c914:  - var_643#675 + var_666#698 >= 0
 c915:  - var_648#680 + var_666#698 >= 0
 c916:  - var_627#659 + var_667#699 >= 0
 c917:  - var_650#682 + var_667#699 >= 0
 c918:  - var_631#663 + var_668#700 >= 0
 c919:  - var_650#682 + var_668#700 >= 0
 c920:  - var_637#669 + var_669#701 >= 0
 c921:  - var_650#682 + var_669#701 >= 0
 c922:  - var_640#672 + var_670#702 >= 0
 c923:  - var_650#682 + var_670#702 >= 0
 c924:  - var_643#675 + var_671#703 >= 0
 c925:  - var_650#682 + var_671#703 >= 0
 c926:  - var_627#659 + var_672#704 >= 0
 c927:  - var_652#684 + var_672#704 >= 0
 c928:  - var_631#663 + var_673#705 >= 0
 c929:  - var_652#684 + var_673#705 >= 0
 c930:  - var_634#666 + var_674#706 >= 0
 c931:  - var_652#684 + var_674#706 >= 0
 c932:  - var_640#672 + var_675#707 >= 0
 c933:  - var_652#684 + var_675#707 >= 0
 c934:  - var_643#675 + var_676#708 >= 0
 c935:  - var_652#684 + var_676#708 >= 0
 c936:  - var_627#659 + var_677#709 >= 0
 c937:  - var_654#686 + var_677#709 >= 0
 c938:  - var_631#663 + var_678#710 >= 0
 c939:  - var_654#686 + var_678#710 >= 0
 c940:  - var_634#666 + var_679#711 >= 0
 c941:  - var_654#686 + var_679#711 >= 0
 c942:  - var_637#669 + var_680#712 >= 0
 c943:  - var_654#686 + var_680#712 >= 0
 c944:  - var_643#675 + var_681#713 >= 0
 c945:  - var_654#686 + var_681#713 >= 0
 c946:  - var_627#659 + var_682#714 >= 0
 c947:  - var_656#688 + var_682#714 >= 0
 c948:  - var_631#663 + var_683#715 >= 0
 c949:  - var_656#688 + var_683#715 >= 0
 c950:  - var_634#666 + var_684#716 >= 0
 c951:  - var_656#688 + var_684#716 >= 0
 c952:  - var_637#669 + var_685#717 >= 0
 c953:  - var_656#688 + var_685#717 >= 0
 c954:  - var_640#672 + var_686#718 >= 0
 c955:  - var_656#688 + var_686#718 >= 0
 c956:  - var_627#659 + var_687#719 >= 0
 c957:  - var_628#660 + var_687#719 >= 0
 c958:  var_687#719 - var_688#720 >= 0
 c959:  - var_627#659 + var_689#721 >= 0
 c960:  - var_628#660 + var_689#721 >= 0
 c961:  var_689#721 - var_690#722 >= 0
 c962:  - var_627#659 + var_691#723 >= 0
 c963:  - var_628#660 + var_691#723 >= 0
 c964:  var_691#723 - var_692#724 >= 0
 c965:  - var_627#659 + var_693#725 >= 0
 c966:  - var_628#660 + var_693#725 >= 0
 c967:  var_693#725 - var_694#726 >= 0
 c968:  - var_627#659 + var_695#727 >= 0
 c969:  - var_628#660 + var_695#727 >= 0
 c970:  var_695#727 - var_696#728 >= 0
 c971:  - var_631#663 + var_697#729 >= 0
 c972:  - var_628#660 + var_697#729 >= 0
 c973:  var_697#729 - var_698#730 >= 0
 c974:  - var_631#663 + var_699#731 >= 0
 c975:  - var_628#660 + var_699#731 >= 0
 c976:  var_699#731 - var_700#732 >= 0
 c977:  - var_631#663 + var_701#733 >= 0
 c978:  - var_628#660 + var_701#733 >= 0
 c979:  var_701#733 - var_702#734 >= 0
 c980:  - var_631#663 + var_703#735 >= 0
 c981:  - var_628#660 + var_703#735 >= 0
 c982:  var_703#735 - var_704#736 >= 0
 c983:  - var_631#663 + var_705#737 >= 0
 c984:  - var_628#660 + var_705#737 >= 0
 c985:  var_705#737 - var_706#738 >= 0
 c986:  - var_634#666 + var_707#739 >= 0
 c987:  - var_628#660 + var_707#739 >= 0
 c988:  var_707#739 - var_708#740 >= 0
 c989:  - var_634#666 + var_709#741 >= 0
 c990:  - var_628#660 + var_709#741 >= 0
 c991:  var_709#741 - var_710#742 >= 0
 c992:  - var_634#666 + var_711#743 >= 0
 c993:  - var_628#660 + var_711#743 >= 0
 c994:  var_711#743 - var_712#744 >= 0
 c995:  - var_634#666 + var_713#745 >= 0
 c996:  - var_628#660 + var_713#745 >= 0
 c997:  var_713#745 - var_714#746 >= 0
 c998:  - var_634#666 + var_715#747 >= 0
 c999:  - var_628#660 + var_715#747 >= 0
 c1000: var_715#747 - var_716#748 >= 0
 c1001: - var_637#669 + var_717#749 >= 0
 c1002: - var_628#660 + var_717#749 >= 0
 c1003: var_717#749 - var_718#750 >= 0
 c1004: - var_637#669 + var_719#751 >= 0
 c1005: - var_628#660 + var_719#751 >= 0
 c1006: var_719#751 - var_720#752 >= 0
 c1007: - var_637#669 + var_721#753 >= 0
 c1008: - var_628#660 + var_721#753 >= 0
 c1009: var_721#753 - var_722#754 >= 0
 c1010: - var_637#669 + var_723#755 >= 0
 c1011: - var_628#660 + var_723#755 >= 0
 c1012: var_723#755 - var_724#756 >= 0
 c1013: - var_637#669 + var_725#757 >= 0
 c1014: - var_628#660 + var_725#757 >= 0
 c1015: var_725#757 - var_726#758 >= 0
 c1016: - var_640#672 + var_727#759 >= 0
 c1017: - var_628#660 + var_727#759 >= 0
 c1018: var_727#759 - var_728#760 >= 0
 c1019: - var_640#672 + var_729#761 >= 0
 c1020: - var_628#660 + var_729#761 >= 0
 c1021: var_729#761 - var_730#762 >= 0
 c1022: - var_640#672 + var_731#763 >= 0
 c1023: - var_628#660 + var_731#763 >= 0
 c1024: var_731#763 - var_732#764 >= 0
 c1025: - var_640#672 + var_733#765 >= 0
 c1026: - var_628#660 + var_733#765 >= 0
 c1027: var_733#765 - var_734#766 >= 0
 c1028: - var_640#672 + var_735#767 >= 0
 c1029: - var_628#660 + var_735#767 >= 0
 c1030: var_735#767 - var_736#768 >= 0
 c1031: - var_643#675 + var_737#769 >= 0
 c1032: - var_628#660 + var_737#769 >= 0
 c1033: var_737#769 - var_738#770 >= 0
 c1034: - var_643#675 + var_739#771 >= 0
 c1035: - var_628#660 + var_739#771 >= 0
 c1036: var_739#771 - var_740#772 >= 0
 c1037: - var_643#675 + var_741#773 >= 0
 c1038: - var_628#660 + var_741#773 >= 0
 c1039: var_741#773 - var_742#774 >= 0
 c1040: - var_643#675 + var_743#775 >= 0
 c1041: - var_628#660 + var_743#775 >= 0
 c1042: var_743#775 - var_744#776 >= 0
 c1043: - var_643#675 + var_745#777 >= 0
 c1044: - var_628#660 + var_745#777 >= 0
 c1045: var_745#777 - var_746#778 >= 0
 c1046: - 73 var_278#310 - var_626#658 + var_747#779 >= -72
 c1047: - 73 var_279#455 - var_626#658 + var_748#780 >= -72
 c1048: - 73 var_280#492 - var_626#658 + var_646#678 >= -72
 c1049: - 73 var_281#334 - var_630#662 + var_749#781 >= -72
 c1050: - 73 var_282#456 - var_630#662 + var_748#780 >= -72
 c1051: - 73 var_283#511 - var_630#662 + var_648#680 >= -72
 c1052: - 73 var_284#358 - var_633#665 + var_750#782 >= -72
 c1053: - 73 var_285#457 - var_633#665 + var_748#780 >= -72
 c1054: - 73 var_286#530 - var_633#665 + var_650#682 >= -72
 c1055: - 73 var_287#286 - var_636#668 + var_751#783 >= -72
 c1056: - 73 var_288#458 - var_636#668 + var_748#780 >= -72
 c1057: - 73 var_289#255 - var_636#668 + var_652#684 >= -72
 c1058: - 73 var_290#382 - var_639#671 + var_752#784 >= -72
 c1059: - 73 var_291#459 - var_639#671 + var_748#780 >= -72
 c1060: - 73 var_292#549 - var_639#671 + var_654#686 >= -72
 c1061: - 73 var_293#406 - var_642#674 + var_753#785 >= -72
 c1062: - 73 var_294#460 - var_642#674 + var_748#780 >= -72
 c1063: - 73 var_295#568 - var_642#674 + var_656#688 >= -72
 c1064: - 73 var_296#298 + var_627#659 - var_645#677 >= -72
 c1065: - 73 var_297#418 + var_628#660 - var_645#677 >= -72
 c1066: - 73 var_298#509 + var_629#661 - var_645#677 >= -72
 c1067: - 73 var_299#322 + var_631#663 - var_647#679 >= -72
 c1068: - 73 var_300#419 + var_628#660 - var_647#679 >= -72
 c1069: - 73 var_301#528 + var_632#664 - var_647#679 >= -72
 c1070: - 73 var_302#346 + var_634#666 - var_649#681 >= -72
 c1071: - 73 var_303#420 + var_628#660 - var_649#681 >= -72
 c1072: - 73 var_304#547 + var_635#667 - var_649#681 >= -72
 c1073: - 73 var_305#274 + var_637#669 - var_651#683 >= -72
 c1074: - 73 var_306#421 + var_628#660 - var_651#683 >= -72
 c1075: - 73 var_307#272 + var_638#670 - var_651#683 >= -72
 c1076: - 73 var_308#370 + var_640#672 - var_653#685 >= -72
 c1077: - 73 var_309#422 + var_628#660 - var_653#685 >= -72
 c1078: - 73 var_310#566 + var_641#673 - var_653#685 >= -72
 c1079: - 73 var_311#394 + var_643#675 - var_655#687 >= -72
 c1080: - 73 var_312#423 + var_628#660 - var_655#687 >= -72
 c1081: - 73 var_313#585 + var_644#676 - var_655#687 >= -72
 c1082: - 73 var_314#299 + var_627#659 - var_657#689 >= -72
 c1083: - 73 var_315#335 - var_657#689 + var_749#781 >= -72
 c1084: - 73 var_316#424 + var_628#660 - var_657#689 >= -72
 c1085: - 73 var_317#499 - var_657#689 + var_688#720 >= -72
 c1086: - 73 var_318#300 + var_627#659 - var_658#690 >= -72
 c1087: - 73 var_319#359 - var_658#690 + var_750#782 >= -72
 c1088: - 73 var_320#425 + var_628#660 - var_658#690 >= -72
 c1089: - 73 var_321#501 - var_658#690 + var_690#722 >= -72
 c1090: - 73 var_322#301 + var_627#659 - var_659#691 >= -72
 c1091: - 73 var_323#287 - var_659#691 + var_751#783 >= -72
 c1092: - 73 var_324#426 + var_628#660 - var_659#691 >= -72
 c1093: - 73 var_325#503 - var_659#691 + var_692#724 >= -72
 c1094: - 73 var_326#302 + var_627#659 - var_660#692 >= -72
 c1095: - 73 var_327#383 - var_660#692 + var_752#784 >= -72
 c1096: - 73 var_328#427 + var_628#660 - var_660#692 >= -72
 c1097: - 73 var_329#505 - var_660#692 + var_694#726 >= -72
 c1098: - 73 var_330#303 + var_627#659 - var_661#693 >= -72
 c1099: - 73 var_331#407 - var_661#693 + var_753#785 >= -72
 c1100: - 73 var_332#428 + var_628#660 - var_661#693 >= -72
 c1101: - 73 var_333#507 - var_661#693 + var_696#728 >= -72
 c1102: - 73 var_334#311 - var_662#694 + var_747#779 >= -72
 c1103: - 73 var_335#323 + var_631#663 - var_662#694 >= -72
 c1104: - 73 var_336#429 + var_628#660 - var_662#694 >= -72
 c1105: - 73 var_337#518 - var_662#694 + var_698#730 >= -72
 c1106: - 73 var_338#324 + var_631#663 - var_663#695 >= -72
 c1107: - 73 var_339#360 - var_663#695 + var_750#782 >= -72
 c1108: - 73 var_340#430 + var_628#660 - var_663#695 >= -72
 c1109: - 73 var_341#520 - var_663#695 + var_700#732 >= -72
 c1110: - 73 var_342#325 + var_631#663 - var_664#696 >= -72
 c1111: - 73 var_343#288 - var_664#696 + var_751#783 >= -72
 c1112: - 73 var_344#431 + var_628#660 - var_664#696 >= -72
 c1113: - 73 var_345#522 - var_664#696 + var_702#734 >= -72
 c1114: - 73 var_346#326 + var_631#663 - var_665#697 >= -72
 c1115: - 73 var_347#384 - var_665#697 + var_752#784 >= -72
 c1116: - 73 var_348#432 + var_628#660 - var_665#697 >= -72
 c1117: - 73 var_349#524 - var_665#697 + var_704#736 >= -72
 c1118: - 73 var_350#327 + var_631#663 - var_666#698 >= -72
 c1119: - 73 var_351#408 - var_666#698 + var_753#785 >= -72
 c1120: - 73 var_352#433 + var_628#660 - var_666#698 >= -72
 c1121: - 73 var_353#526 - var_666#698 + var_706#738 >= -72
 c1122: - 73 var_354#312 - var_667#699 + var_747#779 >= -72
 c1123: - 73 var_355#347 + var_634#666 - var_667#699 >= -72
 c1124: - 73 var_356#434 + var_628#660 - var_667#699 >= -72
 c1125: - 73 var_357#537 - var_667#699 + var_708#740 >= -72
 c1126: - 73 var_358#336 - var_668#700 + var_749#781 >= -72
 c1127: - 73 var_359#348 + var_634#666 - var_668#700 >= -72
 c1128: - 73 var_360#435 + var_628#660 - var_668#700 >= -72
 c1129: - 73 var_361#539 - var_668#700 + var_710#742 >= -72
 c1130: - 73 var_362#349 + var_634#666 - var_669#701 >= -72
 c1131: - 73 var_363#289 - var_669#701 + var_751#783 >= -72
 c1132: - 73 var_364#436 + var_628#660 - var_669#701 >= -72
 c1133: - 73 var_365#541 - var_669#701 + var_712#744 >= -72
 c1134: - 73 var_366#350 + var_634#666 - var_670#702 >= -72
 c1135: - 73 var_367#385 - var_670#702 + var_752#784 >= -72
 c1136: - 73 var_368#437 + var_628#660 - var_670#702 >= -72
 c1137: - 73 var_369#543 - var_670#702 + var_714#746 >= -72
 c1138: - 73 var_370#351 + var_634#666 - var_671#703 >= -72
 c1139: - 73 var_371#409 - var_671#703 + var_753#785 >= -72
 c1140: - 73 var_372#438 + var_628#660 - var_671#703 >= -72
 c1141: - 73 var_373#545 - var_671#703 + var_716#748 >= -72
 c1142: - 73 var_374#313 - var_672#704 + var_747#779 >= -72
 c1143: - 73 var_375#275 + var_637#669 - var_672#704 >= -72
 c1144: - 73 var_376#439 + var_628#660 - var_672#704 >= -72
 c1145: - 73 var_377#262 - var_672#704 + var_718#750 >= -72
 c1146: - 73 var_378#337 - var_673#705 + var_749#781 >= -72
 c1147: - 73 var_379#276 + var_637#669 - var_673#705 >= -72
 c1148: - 73 var_380#440 + var_628#660 - var_673#705 >= -72
 c1149: - 73 var_381#264 - var_673#705 + var_720#752 >= -72
 c1150: - 73 var_382#361 - var_674#706 + var_750#782 >= -72
 c1151: - 73 var_383#277 + var_637#669 - var_674#706 >= -72
 c1152: - 73 var_384#441 + var_628#660 - var_674#706 >= -72
 c1153: - 73 var_385#266 - var_674#706 + var_722#754 >= -72
 c1154: - 73 var_386#278 + var_637#669 - var_675#707 >= -72
 c1155: - 73 var_387#386 - var_675#707 + var_752#784 >= -72
 c1156: - 73 var_388#442 + var_628#660 - var_675#707 >= -72
 c1157: - 73 var_389#268 - var_675#707 + var_724#756 >= -72
 c1158: - 73 var_390#279 + var_637#669 - var_676#708 >= -72
 c1159: - 73 var_391#410 - var_676#708 + var_753#785 >= -72
 c1160: - 73 var_392#443 + var_628#660 - var_676#708 >= -72
 c1161: - 73 var_393#270 - var_676#708 + var_726#758 >= -72
 c1162: - 73 var_394#314 - var_677#709 + var_747#779 >= -72
 c1163: - 73 var_395#371 + var_640#672 - var_677#709 >= -72
 c1164: - 73 var_396#444 + var_628#660 - var_677#709 >= -72
 c1165: - 73 var_397#556 - var_677#709 + var_728#760 >= -72
 c1166: - 73 var_398#338 - var_678#710 + var_749#781 >= -72
 c1167: - 73 var_399#372 + var_640#672 - var_678#710 >= -72
 c1168: - 73 var_400#445 + var_628#660 - var_678#710 >= -72
 c1169: - 73 var_401#558 - var_678#710 + var_730#762 >= -72
 c1170: - 73 var_402#362 - var_679#711 + var_750#782 >= -72
 c1171: - 73 var_403#373 + var_640#672 - var_679#711 >= -72
 c1172: - 73 var_404#446 + var_628#660 - var_679#711 >= -72
 c1173: - 73 var_405#560 - var_679#711 + var_732#764 >= -72
 c1174: - 73 var_406#290 - var_680#712 + var_751#783 >= -72
 c1175: - 73 var_407#374 + var_640#672 - var_680#712 >= -72
 c1176: - 73 var_408#447 + var_628#660 - var_680#712 >= -72
 c1177: - 73 var_409#562 - var_680#712 + var_734#766 >= -72
 c1178: - 73 var_410#375 + var_640#672 - var_681#713 >= -72
 c1179: - 73 var_411#411 - var_681#713 + var_753#785 >= -72
 c1180: - 73 var_412#448 + var_628#660 - var_681#713 >= -72
 c1181: - 73 var_413#564 - var_681#713 + var_736#768 >= -72
 c1182: - 73 var_414#315 - var_682#714 + var_747#779 >= -72
 c1183: - 73 var_415#395 + var_643#675 - var_682#714 >= -72
 c1184: - 73 var_416#449 + var_628#660 - var_682#714 >= -72
 c1185: - 73 var_417#575 - var_682#714 + var_738#770 >= -72
 c1186: - 73 var_418#339 - var_683#715 + var_749#781 >= -72
 c1187: - 73 var_419#396 + var_643#675 - var_683#715 >= -72
 c1188: - 73 var_420#450 + var_628#660 - var_683#715 >= -72
 c1189: - 73 var_421#577 - var_683#715 + var_740#772 >= -72
 c1190: - 73 var_422#363 - var_684#716 + var_750#782 >= -72
 c1191: - 73 var_423#397 + var_643#675 - var_684#716 >= -72
 c1192: - 73 var_424#451 + var_628#660 - var_684#716 >= -72
 c1193: - 73 var_425#579 - var_684#716 + var_742#774 >= -72
 c1194: - 73 var_426#291 - var_685#717 + var_751#783 >= -72
 c1195: - 73 var_427#398 + var_643#675 - var_685#717 >= -72
 c1196: - 73 var_428#452 + var_628#660 - var_685#717 >= -72
 c1197: - 73 var_429#581 - var_685#717 + var_744#776 >= -72
 c1198: - 73 var_430#387 - var_686#718 + var_752#784 >= -72
 c1199: - 73 var_431#399 + var_643#675 - var_686#718 >= -72
 c1200: - 73 var_432#453 + var_628#660 - var_686#718 >= -72
 c1201: - 73 var_433#583 - var_686#718 + var_746#778 >= -72
 c1202: - 73 var_434#316 - var_687#719 + var_747#779 >= -72
 c1203: - 73 var_435#328 + var_631#663 - var_687#719 >= -72
 c1204: - 73 var_436#461 - var_687#719 + var_748#780 >= -72
 c1205: - 73 var_437#493 + var_646#678 - var_687#719 >= -72
 c1206: - 73 var_438#317 - var_689#721 + var_747#779 >= -72
 c1207: - 73 var_439#352 + var_634#666 - var_689#721 >= -72
 c1208: - 73 var_440#462 - var_689#721 + var_748#780 >= -72
 c1209: - 73 var_441#494 + var_646#678 - var_689#721 >= -72
 c1210: - 73 var_442#318 - var_691#723 + var_747#779 >= -72
 c1211: - 73 var_443#280 + var_637#669 - var_691#723 >= -72
 c1212: - 73 var_444#463 - var_691#723 + var_748#780 >= -72
 c1213: - 73 var_445#495 + var_646#678 - var_691#723 >= -72
 c1214: - 73 var_446#319 - var_693#725 + var_747#779 >= -72
 c1215: - 73 var_447#376 + var_640#672 - var_693#725 >= -72
 c1216: - 73 var_448#464 - var_693#725 + var_748#780 >= -72
 c1217: - 73 var_449#496 + var_646#678 - var_693#725 >= -72
 c1218: - 73 var_450#320 - var_695#727 + var_747#779 >= -72
 c1219: - 73 var_451#400 + var_643#675 - var_695#727 >= -72
 c1220: - 73 var_452#465 - var_695#727 + var_748#780 >= -72
 c1221: - 73 var_453#497 + var_646#678 - var_695#727 >= -72
 c1222: - 73 var_454#304 + var_627#659 - var_697#729 >= -72
 c1223: - 73 var_455#340 - var_697#729 + var_749#781 >= -72
 c1224: - 73 var_456#466 - var_697#729 + var_748#780 >= -72
 c1225: - 73 var_457#512 + var_648#680 - var_697#729 >= -72
 c1226: - 73 var_458#341 - var_699#731 + var_749#781 >= -72
 c1227: - 73 var_459#353 + var_634#666 - var_699#731 >= -72
 c1228: - 73 var_460#467 - var_699#731 + var_748#780 >= -72
 c1229: - 73 var_461#513 + var_648#680 - var_699#731 >= -72
 c1230: - 73 var_462#342 - var_701#733 + var_749#781 >= -72
 c1231: - 73 var_463#281 + var_637#669 - var_701#733 >= -72
 c1232: - 73 var_464#468 - var_701#733 + var_748#780 >= -72
 c1233: - 73 var_465#514 + var_648#680 - var_701#733 >= -72
 c1234: - 73 var_466#343 - var_703#735 + var_749#781 >= -72
 c1235: - 73 var_467#377 + var_640#672 - var_703#735 >= -72
 c1236: - 73 var_468#469 - var_703#735 + var_748#780 >= -72
 c1237: - 73 var_469#515 + var_648#680 - var_703#735 >= -72
 c1238: - 73 var_470#344 - var_705#737 + var_749#781 >= -72
 c1239: - 73 var_471#401 + var_643#675 - var_705#737 >= -72
 c1240: - 73 var_472#470 - var_705#737 + var_748#780 >= -72
 c1241: - 73 var_473#516 + var_648#680 - var_705#737 >= -72
 c1242: - 73 var_474#305 + var_627#659 - var_707#739 >= -72
 c1243: - 73 var_475#364 - var_707#739 + var_750#782 >= -72
 c1244: - 73 var_476#471 - var_707#739 + var_748#780 >= -72
 c1245: - 73 var_477#531 + var_650#682 - var_707#739 >= -72
 c1246: - 73 var_478#329 + var_631#663 - var_709#741 >= -72
 c1247: - 73 var_479#365 - var_709#741 + var_750#782 >= -72
 c1248: - 73 var_480#472 - var_709#741 + var_748#780 >= -72
 c1249: - 73 var_481#532 + var_650#682 - var_709#741 >= -72
 c1250: - 73 var_482#366 - var_711#743 + var_750#782 >= -72
 c1251: - 73 var_483#282 + var_637#669 - var_711#743 >= -72
 c1252: - 73 var_484#473 - var_711#743 + var_748#780 >= -72
 c1253: - 73 var_485#533 + var_650#682 - var_711#743 >= -72
 c1254: - 73 var_486#367 - var_713#745 + var_750#782 >= -72
 c1255: - 73 var_487#378 + var_640#672 - var_713#745 >= -72
 c1256: - 73 var_488#474 - var_713#745 + var_748#780 >= -72
 c1257: - 73 var_489#534 + var_650#682 - var_713#745 >= -72
 c1258: - 73 var_490#368 - var_715#747 + var_750#782 >= -72
 c1259: - 73 var_491#402 + var_643#675 - var_715#747 >= -72
 c1260: - 73 var_492#475 - var_715#747 + var_748#780 >= -72
 c1261: - 73 var_493#535 + var_650#682 - var_715#747 >= -72
 c1262: - 73 var_494#306 + var_627#659 - var_717#749 >= -72
 c1263: - 73 var_495#292 - var_717#749 + var_751#783 >= -72
 c1264: - 73 var_496#476 - var_717#749 + var_748#780 >= -72
 c1265: - 73 var_497#256 + var_652#684 - var_717#749 >= -72
 c1266: - 73 var_498#330 + var_631#663 - var_719#751 >= -72
 c1267: - 73 var_499#293 - var_719#751 + var_751#783 >= -72
 c1268: - 73 var_500#477 - var_719#751 + var_748#780 >= -72
 c1269: - 73 var_501#257 + var_652#684 - var_719#751 >= -72
 c1270: - 73 var_502#354 + var_634#666 - var_721#753 >= -72
 c1271: - 73 var_503#294 - var_721#753 + var_751#783 >= -72
 c1272: - 73 var_504#478 - var_721#753 + var_748#780 >= -72
 c1273: - 73 var_505#258 + var_652#684 - var_721#753 >= -72
 c1274: - 73 var_506#295 - var_723#755 + var_751#783 >= -72
 c1275: - 73 var_507#379 + var_640#672 - var_723#755 >= -72
 c1276: - 73 var_508#479 - var_723#755 + var_748#780 >= -72
 c1277: - 73 var_509#259 + var_652#684 - var_723#755 >= -72
 c1278: - 73 var_510#296 - var_725#757 + var_751#783 >= -72
 c1279: - 73 var_511#403 + var_643#675 - var_725#757 >= -72
 c1280: - 73 var_512#480 - var_725#757 + var_748#780 >= -72
 c1281: - 73 var_513#260 + var_652#684 - var_725#757 >= -72
 c1282: - 73 var_514#307 + var_627#659 - var_727#759 >= -72
 c1283: - 73 var_515#388 - var_727#759 + var_752#784 >= -72
 c1284: - 73 var_516#481 - var_727#759 + var_748#780 >= -72
 c1285: - 73 var_517#550 + var_654#686 - var_727#759 >= -72
 c1286: - 73 var_518#331 + var_631#663 - var_729#761 >= -72
 c1287: - 73 var_519#389 - var_729#761 + var_752#784 >= -72
 c1288: - 73 var_520#482 - var_729#761 + var_748#780 >= -72
 c1289: - 73 var_521#551 + var_654#686 - var_729#761 >= -72
 c1290: - 73 var_522#355 + var_634#666 - var_731#763 >= -72
 c1291: - 73 var_523#390 - var_731#763 + var_752#784 >= -72
 c1292: - 73 var_524#483 - var_731#763 + var_748#780 >= -72
 c1293: - 73 var_525#552 + var_654#686 - var_731#763 >= -72
 c1294: - 73 var_526#283 + var_637#669 - var_733#765 >= -72
 c1295: - 73 var_527#391 - var_733#765 + var_752#784 >= -72
 c1296: - 73 var_528#484 - var_733#765 + var_748#780 >= -72
 c1297: - 73 var_529#553 + var_654#686 - var_733#765 >= -72
 c1298: - 73 var_530#392 - var_735#767 + var_752#784 >= -72
 c1299: - 73 var_531#404 + var_643#675 - var_735#767 >= -72
 c1300: - 73 var_532#485 - var_735#767 + var_748#780 >= -72
 c1301: - 73 var_533#554 + var_654#686 - var_735#767 >= -72
 c1302: - 73 var_534#308 + var_627#659 - var_737#769 >= -72
 c1303: - 73 var_535#412 - var_737#769 + var_753#785 >= -72
 c1304: - 73 var_536#486 - var_737#769 + var_748#780 >= -72
 c1305: - 73 var_537#569 + var_656#688 - var_737#769 >= -72
 c1306: - 73 var_538#332 + var_631#663 - var_739#771 >= -72
 c1307: - 73 var_539#413 - var_739#771 + var_753#785 >= -72
 c1308: - 73 var_540#487 - var_739#771 + var_748#780 >= -72
 c1309: - 73 var_541#570 + var_656#688 - var_739#771 >= -72
 c1310: - 73 var_542#356 + var_634#666 - var_741#773 >= -72
 c1311: - 73 var_543#414 - var_741#773 + var_753#785 >= -72
 c1312: - 73 var_544#488 - var_741#773 + var_748#780 >= -72
 c1313: - 73 var_545#571 + var_656#688 - var_741#773 >= -72
 c1314: - 73 var_546#284 + var_637#669 - var_743#775 >= -72
 c1315: - 73 var_547#415 - var_743#775 + var_753#785 >= -72
 c1316: - 73 var_548#489 - var_743#775 + var_748#780 >= -72
 c1317: - 73 var_549#572 + var_656#688 - var_743#775 >= -72
 c1318: - 73 var_550#380 + var_640#672 - var_745#777 >= -72
 c1319: - 73 var_551#416 - var_745#777 + var_753#785 >= -72
 c1320: - 73 var_552#490 - var_745#777 + var_748#780 >= -72
 c1321: - 73 var_553#573 + var_656#688 - var_745#777 >= -72
 c1322: pickmup_a#0 - var_554#586 >= 0
 c1323: pickmup_b#1 - var_555#587 >= 0
 c1324: pickmup_c#2 - var_556#588 >= 0
 c1325: pickmup_d#3 - var_557#589 >= 0
 c1326: pickmup_e#4 - var_558#590 >= 0
 c1327: pickmup_f#5 - var_559#591 >= 0
 c1328: putmdown_a#6 - var_560#592 >= 0
 c1329: putmdown_b#7 - var_561#593 >= 0
 c1330: putmdown_c#8 - var_562#594 >= 0
 c1331: putmdown_d#9 - var_563#595 >= 0
 c1332: putmdown_e#10 - var_564#596 >= 0
 c1333: putmdown_f#11 - var_565#597 >= 0
 c1334: stack_a_b#12 - var_566#598 >= 0
 c1335: stack_a_c#13 - var_567#599 >= 0
 c1336: stack_a_d#14 - var_568#600 >= 0
 c1337: stack_a_e#15 - var_569#601 >= 0
 c1338: stack_a_f#16 - var_570#602 >= 0
 c1339: stack_b_a#17 - var_571#603 >= 0
 c1340: stack_b_c#18 - var_572#604 >= 0
 c1341: stack_b_d#19 - var_573#605 >= 0
 c1342: stack_b_e#20 - var_574#606 >= 0
 c1343: stack_b_f#21 - var_575#607 >= 0
 c1344: stack_c_a#22 - var_576#608 >= 0
 c1345: stack_c_b#23 - var_577#609 >= 0
 c1346: stack_c_d#24 - var_578#610 >= 0
 c1347: stack_c_e#25 - var_579#611 >= 0
 c1348: stack_c_f#26 - var_580#612 >= 0
 c1349: stack_d_a#27 - var_581#613 >= 0
 c1350: stack_d_b#28 - var_582#614 >= 0
 c1351: stack_d_c#29 - var_583#615 >= 0
 c1352: stack_d_e#30 - var_584#616 >= 0
 c1353: stack_d_f#31 - var_585#617 >= 0
 c1354: stack_e_a#32 - var_586#618 >= 0
 c1355: stack_e_b#33 - var_587#619 >= 0
 c1356: stack_e_c#34 - var_588#620 >= 0
 c1357: stack_e_d#35 - var_589#621 >= 0
 c1358: stack_e_f#36 - var_590#622 >= 0
 c1359: stack_f_a#37 - var_591#623 >= 0
 c1360: stack_f_b#38 - var_592#624 >= 0
 c1361: stack_f_c#39 - var_593#625 >= 0
 c1362: stack_f_d#40 - var_594#626 >= 0
 c1363: stack_f_e#41 - var_595#627 >= 0
 c1364: unstack_a_b#42 - var_596#628 >= 0
 c1365: unstack_a_c#43 - var_597#629 >= 0
 c1366: unstack_a_d#44 - var_598#630 >= 0
 c1367: unstack_a_e#45 - var_599#631 >= 0
 c1368: unstack_a_f#46 - var_600#632 >= 0
 c1369: unstack_b_a#47 - var_601#633 >= 0
 c1370: unstack_b_c#48 - var_602#634 >= 0
 c1371: unstack_b_d#49 - var_603#635 >= 0
 c1372: unstack_b_e#50 - var_604#636 >= 0
 c1373: unstack_b_f#51 - var_605#637 >= 0
 c1374: unstack_c_a#52 - var_606#638 >= 0
 c1375: unstack_c_b#53 - var_607#639 >= 0
 c1376: unstack_c_d#54 - var_608#640 >= 0
 c1377: unstack_c_e#55 - var_609#641 >= 0
 c1378: unstack_c_f#56 - var_610#642 >= 0
 c1379: unstack_d_a#57 - var_611#643 >= 0
 c1380: unstack_d_b#58 - var_612#644 >= 0
 c1381: unstack_d_c#59 - var_613#645 >= 0
 c1382: unstack_d_e#60 - var_614#646 >= 0
 c1383: unstack_d_f#61 - var_615#647 >= 0
 c1384: unstack_e_a#62 - var_616#648 >= 0
 c1385: unstack_e_b#63 - var_617#649 >= 0
 c1386: unstack_e_c#64 - var_618#650 >= 0
 c1387: unstack_e_d#65 - var_619#651 >= 0
 c1388: unstack_e_f#66 - var_620#652 >= 0
 c1389: unstack_f_a#67 - var_621#653 >= 0
 c1390: unstack_f_b#68 - var_622#654 >= 0
 c1391: unstack_f_c#69 - var_623#655 >= 0
 c1392: unstack_f_d#70 - var_624#656 >= 0
 c1393: unstack_f_e#71 - var_625#657 >= 0
 c1394: - _(YF_ge_19)#248 + _(YF_ge_20)#249 <= 0
 c1395: - _(YF_ge_18)#247 + _(YF_ge_19)#248 <= 0
 c1396: - _(YF_ge_17)#246 + _(YF_ge_18)#247 <= 0
 c1397: - _(YF_ge_16)#245 + _(YF_ge_17)#246 <= 0
 c1398: - _(YF_ge_15)#244 + _(YF_ge_16)#245 <= 0
 c1399: - _(YF_ge_14)#243 + _(YF_ge_15)#244 <= 0
 c1400: - _(YF_ge_13)#242 + _(YF_ge_14)#243 <= 0
 c1401: - _(YF_ge_12)#241 + _(YF_ge_13)#242 <= 0
 c1402: - _(YF_ge_11)#240 + _(YF_ge_12)#241 <= 0
 c1403: - _(YF_ge_10)#239 + _(YF_ge_11)#240 <= 0
 c1404: - _(YF_ge_9)#238 + _(YF_ge_10)#239 <= 0
 c1405: - _(YF_ge_8)#237 + _(YF_ge_9)#238 <= 0
 c1406: - _(YF_ge_7)#236 + _(YF_ge_8)#237 <= 0
 c1407: - _(YF_ge_6)#235 + _(YF_ge_7)#236 <= 0
 c1408: - _(YF_ge_5)#234 + _(YF_ge_6)#235 <= 0
 c1409: - _(YF_ge_4)#233 + _(YF_ge_5)#234 <= 0
 c1410: - _(YF_ge_3)#232 + _(YF_ge_4)#233 <= 0
 c1411: - _(YF_ge_2)#230 + _(YF_ge_3)#232 <= 0
 c1412: YF#73 - 10000000000 _(YF_ge_20)#249 <= 19
 c1413: YF#73 - 10000000000 _(YF_ge_19)#248 <= 18
 c1414: YF#73 - 10000000000 _(YF_ge_18)#247 <= 17
 c1415: YF#73 - 10000000000 _(YF_ge_17)#246 <= 16
 c1416: YF#73 - 10000000000 _(YF_ge_16)#245 <= 15
 c1417: YF#73 - 10000000000 _(YF_ge_15)#244 <= 14
 c1418: YF#73 - 10000000000 _(YF_ge_14)#243 <= 13
 c1419: YF#73 - 10000000000 _(YF_ge_13)#242 <= 12
 c1420: YF#73 - 10000000000 _(YF_ge_12)#241 <= 11
 c1421: YF#73 - 10000000000 _(YF_ge_11)#240 <= 10
 c1422: YF#73 - 10000000000 _(YF_ge_10)#239 <= 9
 c1423: YF#73 - 10000000000 _(YF_ge_9)#238 <= 8
 c1424: YF#73 - 10000000000 _(YF_ge_8)#237 <= 7
 c1425: YF#73 - 10000000000 _(YF_ge_7)#236 <= 6
 c1426: YF#73 - 10000000000 _(YF_ge_6)#235 <= 5
 c1427: YF#73 - 10000000000 _(YF_ge_5)#234 <= 4
 c1428: YF#73 - 10000000000 _(YF_ge_4)#233 <= 3
 c1429: YF#73 - 10000000000 _(YF_ge_3)#232 <= 2
 c1430: - _(putmdown_a_ge_2)#86 + _(putmdown_a_ge_3)#88 <= 0
 c1431: putmdown_a#6 - 10000000000 _(putmdown_a_ge_3)#88 <= 2
 c1432: - _(stack_b_a_ge_2)#114 + _(stack_b_a_ge_3)#116 <= 0
 c1433: stack_b_a#17 - 10000000000 _(stack_b_a_ge_3)#116 <= 2
 c1434: - _(YF_ge_21)#250 + _(YF_ge_22)#251 <= 0
 c1435: - _(YF_ge_20)#249 + _(YF_ge_21)#250 <= 0
 c1436: YF#73 - 10000000000 _(YF_ge_22)#251 <= 21
 c1437: YF#73 - 10000000000 _(YF_ge_21)#250 <= 20
 c1438: - _(stack_a_d_ge_2)#106 + _(stack_a_d_ge_3)#108 <= 0
 c1439: stack_a_d#14 - 10000000000 _(stack_a_d_ge_3)#108 <= 2
 c1440: - _(YF_ge_23)#252 + _(YF_ge_24)#253 <= 0
 c1441: - _(YF_ge_22)#251 + _(YF_ge_23)#252 <= 0
 c1442: YF#73 - 10000000000 _(YF_ge_24)#253 <= 23
 c1443: YF#73 - 10000000000 _(YF_ge_23)#252 <= 22
 c1444: - _(stack_b_d_ge_2)#119 + _(stack_b_d_ge_3)#121 <= 0
 c1445: stack_b_d#19 - 10000000000 _(stack_b_d_ge_3)#121 <= 2
 c1446: - _(stack_a_d_ge_3)#108 + _(stack_a_d_ge_4)#109 <= 0
 c1447: stack_a_d#14 - 10000000000 _(stack_a_d_ge_4)#109 <= 3
 c1448: - _(unstack_a_b_ge_2)#167 + _(unstack_a_b_ge_3)#169 <= 0
 c1449: unstack_a_b#42 - 10000000000 _(unstack_a_b_ge_3)#169 <= 2
 c1450: - _(stack_b_f_ge_2)#124 + _(stack_b_f_ge_3)#126 <= 0
 c1451: stack_b_f#21 - 10000000000 _(stack_b_f_ge_3)#126 <= 2
 c1452: - _(putmdown_b_ge_2)#90 + _(putmdown_b_ge_3)#92 <= 0
 c1453: putmdown_b#7 - 10000000000 _(putmdown_b_ge_3)#92 <= 2
 c1454: - _(putmdown_a_ge_3)#88 + _(putmdown_a_ge_4)#89 <= 0
 c1455: putmdown_a#6 - 10000000000 _(putmdown_a_ge_4)#89 <= 3
 c1456: - _(putmdown_d_ge_2)#95 + _(putmdown_d_ge_3)#97 <= 0
 c1457: putmdown_d#9 - 10000000000 _(putmdown_d_ge_3)#97 <= 2
 c1458: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_3)#92
        + _(putmdown_c_ge_1)#94 + _(putmdown_e_ge_1)#99
        + _(putmdown_f_ge_1)#101 + _(stack_a_c_ge_1)#105
        + _(stack_a_d_ge_2)#106 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_c_a_ge_1)#128 + _(stack_c_b_ge_1)#130
        + _(stack_c_e_ge_1)#134 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_2)#159 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_b_c_ge_1)#181 + _(unstack_c_d_ge_1)#193
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_24)#253
        >= 1
 c1459: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_3)#92
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_2)#159 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251
        >= 1
 c1460: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_2)#106
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_d_f_ge_1)#146
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 >= 1
 c1461: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_2)#124
        + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140 + _(stack_d_f_ge_1)#146
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_24)#253 >= 1
 c1462: _(putmdown_a_ge_4)#89 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_24)#253 >= 1
 c1463: _(putmdown_a_ge_2)#86 + _(putmdown_d_ge_1)#96 + _(stack_a_d_ge_1)#107
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 >= 1
 c1464: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_3)#108 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 >= 1
 c1465: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_3)#92
        + _(putmdown_c_ge_1)#94 + _(putmdown_e_ge_1)#99
        + _(putmdown_f_ge_2)#100 + _(stack_a_c_ge_1)#105
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_c_a_ge_1)#128 + _(stack_c_b_ge_1)#130
        + _(stack_c_e_ge_1)#134 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_2)#159 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_b_c_ge_1)#181 + _(unstack_c_d_ge_1)#193
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_24)#253
        >= 1
 c1466: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_24)#253 >= 1
 c1467: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_2)#106 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1468: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_2)#124
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1469: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_2)#106 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1470: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1471: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1472: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_2)#165
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1473: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_2)#100
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1474: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_4)#109 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1475: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1476: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1477: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_3)#169 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1478: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_3)#169 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1479: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1480: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1481: _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_3)#97
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1482: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1483: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1484: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_3)#116 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 >= 1
 c1485: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1486: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1487: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 >= 1
 c1488: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249
        >= 1
 c1489: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249
        >= 1
 c1490: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1491: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1492: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249 >= 1
 c1493: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1494: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_2)#106
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1495: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138
        + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249
        >= 1
 c1496: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1497: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1498: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_c_ge_1)#94
        + _(putmdown_d_ge_2)#95 + _(putmdown_e_ge_1)#99
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_2)#124 + _(stack_c_b_ge_1)#130
        + _(stack_c_e_ge_1)#134 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152 + _(stack_e_d_ge_1)#154
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_b_c_ge_1)#181
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_24)#253
        >= 1
 c1499: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1500: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1501: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1502: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1503: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1504: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1505: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1506: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1507: _(pickmup_d_ge_1)#81 + _(putmdown_b_ge_1)#91 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1508: _(putmdown_a_ge_1)#87 + _(stack_a_d_ge_2)#106 >= 1
 c1509: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1510: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1511: _(putmdown_d_ge_1)#96 + _(stack_a_d_ge_1)#107 + _(YF_ge_16)#245 >= 1
 c1512: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1513: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1514: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_22)#251 >= 1
 c1515: _(YF_ge_14)#243 >= 1
 c1516: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_2)#106
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_d_f_ge_1)#146
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 >= 1
 c1517: _(pickmup_d_ge_1)#81 + _(putmdown_b_ge_1)#91 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_18)#247 >= 1
 c1518: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90 + _(putmdown_d_ge_2)#95
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1519: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1520: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249 >= 1
 c1521: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1522: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_2)#124
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1523: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1524: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(YF_ge_18)#247 >= 1
 c1525: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_2)#100
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_f_b_ge_2)#159 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1526: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1527: _(putmdown_a_ge_1)#87 + _(YF_ge_18)#247 >= 1
 c1528: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_2)#114
        + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_d_f_ge_1)#146
        + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1529: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1530: _(putmdown_a_ge_1)#87 + _(stack_a_d_ge_1)#107 >= 1
 c1531: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_18)#247 >= 1
 c1532: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249 >= 1
 c1533: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_2)#167 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1534: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1535: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1536: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1537: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_2)#218 + _(YF_ge_22)#251 >= 1
 c1538: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1539: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1540: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1541: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_2)#167 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1542: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1543: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1544: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1545: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1546: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1547: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1548: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1549: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140 + _(stack_d_f_ge_1)#146
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1550: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1551: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1552: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249
        >= 1
 c1553: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1554: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1555: _(stack_a_d_ge_1)#107 + _(YF_ge_16)#245 >= 1
 c1556: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1557: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1558: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1559: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_2)#119 + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138
        + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1560: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138
        + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249 >= 1
 c1561: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_1)#120 + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138
        + _(stack_d_b_ge_1)#140 + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249 >= 1
 c1562: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1563: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_3)#108 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1564: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1565: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1566: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1567: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_2)#112 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1568: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1569: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1570: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_3)#92
        + _(putmdown_c_ge_1)#94 + _(putmdown_e_ge_1)#99
        + _(putmdown_f_ge_1)#101 + _(stack_a_c_ge_1)#105
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_c_a_ge_1)#128 + _(stack_c_b_ge_1)#130
        + _(stack_c_e_ge_1)#134 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_2)#159 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_b_c_ge_1)#181 + _(unstack_c_d_ge_1)#193
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_24)#253
        >= 1
 c1571: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_2)#106 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_3)#126 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_22)#251 >= 1
 c1572: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1573: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_2)#106
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1574: _(putmdown_a_ge_1)#87 + _(stack_a_d_ge_3)#108 >= 1
 c1575: _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91 + _(putmdown_d_ge_2)#95
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_3)#121 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_1)#125
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1576: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1577: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1578: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1579: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_3)#108 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1580: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_c_ge_1)#94 + _(putmdown_e_ge_1)#99
        + _(putmdown_f_ge_2)#100 + _(stack_a_c_ge_1)#105
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_2)#114 + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_2)#124 + _(stack_c_a_ge_1)#128 + _(stack_c_b_ge_1)#130
        + _(stack_c_e_ge_1)#134 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_1)#166 + _(unstack_a_b_ge_1)#168
        + _(unstack_b_c_ge_1)#181 + _(unstack_c_d_ge_1)#193
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_24)#253
        >= 1
 c1581: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(unstack_a_b_ge_1)#168
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249 >= 1
 c1582: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1583: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1584: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_2)#124 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_3)#169 + _(YF_ge_22)#251 >= 1
 c1585: _(putmdown_a_ge_1)#87 + _(YF_ge_16)#245 >= 1
 c1586: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(YF_ge_20)#249 >= 1
 c1587: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_2)#100
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_2)#139
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1588: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_2)#119 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_3)#126
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1589: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_e_ge_1)#99 + _(putmdown_f_ge_1)#101
        + _(stack_a_d_ge_1)#107 + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115
        + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123 + _(stack_b_f_ge_3)#126
        + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140 + _(stack_e_b_ge_1)#150
        + _(stack_e_c_ge_1)#152 + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_1)#160
        + _(stack_f_d_ge_1)#164 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_e_f_ge_1)#217
        + _(unstack_f_a_ge_1)#219 + _(YF_ge_22)#251 >= 1
 c1590: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_2)#106
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1591: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_2)#90
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_d_ge_1)#164
        + _(unstack_a_b_ge_1)#168 + _(unstack_f_a_ge_1)#219 + _(YF_ge_20)#249
        >= 1
 c1592: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_2)#137 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1593: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_3)#88 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1594: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_3)#92
        + _(putmdown_c_ge_1)#94 + _(putmdown_e_ge_1)#99
        + _(putmdown_f_ge_1)#101 + _(stack_a_c_ge_1)#105
        + _(stack_a_d_ge_1)#107 + _(stack_a_e_ge_1)#111 + _(stack_a_f_ge_1)#113
        + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120 + _(stack_b_e_ge_1)#123
        + _(stack_b_f_ge_1)#125 + _(stack_c_a_ge_1)#128 + _(stack_c_b_ge_1)#130
        + _(stack_c_e_ge_1)#134 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_e_a_ge_1)#148 + _(stack_e_b_ge_1)#150 + _(stack_e_c_ge_1)#152
        + _(stack_e_d_ge_1)#154 + _(stack_f_b_ge_2)#159 + _(stack_f_d_ge_1)#164
        + _(stack_f_e_ge_2)#165 + _(unstack_a_b_ge_1)#168
        + _(unstack_b_c_ge_1)#181 + _(unstack_c_d_ge_1)#193
        + _(unstack_e_f_ge_1)#217 + _(unstack_f_a_ge_1)#219 + _(YF_ge_24)#253
        >= 1
 c1595: _(pickmup_d_ge_2)#80 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(stack_a_d_ge_1)#107 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_1)#120
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(unstack_a_b_ge_2)#167 + _(YF_ge_20)#249 >= 1
 c1596: _(pickmup_d_ge_1)#81 + _(putmdown_a_ge_2)#86 + _(putmdown_b_ge_1)#91
        + _(putmdown_f_ge_1)#101 + _(stack_a_d_ge_1)#107
        + _(stack_a_f_ge_1)#113 + _(stack_b_a_ge_1)#115 + _(stack_b_d_ge_2)#119
        + _(stack_b_f_ge_1)#125 + _(stack_d_a_ge_1)#138 + _(stack_d_b_ge_1)#140
        + _(stack_f_b_ge_1)#160 + _(stack_f_e_ge_1)#166
        + _(unstack_a_b_ge_1)#168 + _(YF_ge_20)#249 >= 1
 c1597: _(putmdown_a_ge_1)#87 + _(YF_ge_20)#249 >= 1
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
 0 <= _(putmdown_a_ge_3)#88 <= 1
 0 <= _(putmdown_a_ge_4)#89 <= 1
 0 <= _(putmdown_b_ge_2)#90 <= 1
 0 <= _(putmdown_b_ge_1)#91 <= 1
 0 <= _(putmdown_b_ge_3)#92 <= 1
 0 <= _(putmdown_c_ge_2)#93 <= 1
 0 <= _(putmdown_c_ge_1)#94 <= 1
 0 <= _(putmdown_d_ge_2)#95 <= 1
 0 <= _(putmdown_d_ge_1)#96 <= 1
 0 <= _(putmdown_d_ge_3)#97 <= 1
 0 <= _(putmdown_e_ge_2)#98 <= 1
 0 <= _(putmdown_e_ge_1)#99 <= 1
 0 <= _(putmdown_f_ge_2)#100 <= 1
 0 <= _(putmdown_f_ge_1)#101 <= 1
 0 <= _(stack_a_b_ge_2)#102 <= 1
 0 <= _(stack_a_b_ge_1)#103 <= 1
 0 <= _(stack_a_c_ge_2)#104 <= 1
 0 <= _(stack_a_c_ge_1)#105 <= 1
 0 <= _(stack_a_d_ge_2)#106 <= 1
 0 <= _(stack_a_d_ge_1)#107 <= 1
 0 <= _(stack_a_d_ge_3)#108 <= 1
 0 <= _(stack_a_d_ge_4)#109 <= 1
 0 <= _(stack_a_e_ge_2)#110 <= 1
 0 <= _(stack_a_e_ge_1)#111 <= 1
 0 <= _(stack_a_f_ge_2)#112 <= 1
 0 <= _(stack_a_f_ge_1)#113 <= 1
 0 <= _(stack_b_a_ge_2)#114 <= 1
 0 <= _(stack_b_a_ge_1)#115 <= 1
 0 <= _(stack_b_a_ge_3)#116 <= 1
 0 <= _(stack_b_c_ge_2)#117 <= 1
 0 <= _(stack_b_c_ge_1)#118 <= 1
 0 <= _(stack_b_d_ge_2)#119 <= 1
 0 <= _(stack_b_d_ge_1)#120 <= 1
 0 <= _(stack_b_d_ge_3)#121 <= 1
 0 <= _(stack_b_e_ge_2)#122 <= 1
 0 <= _(stack_b_e_ge_1)#123 <= 1
 0 <= _(stack_b_f_ge_2)#124 <= 1
 0 <= _(stack_b_f_ge_1)#125 <= 1
 0 <= _(stack_b_f_ge_3)#126 <= 1
 0 <= _(stack_c_a_ge_2)#127 <= 1
 0 <= _(stack_c_a_ge_1)#128 <= 1
 0 <= _(stack_c_b_ge_2)#129 <= 1
 0 <= _(stack_c_b_ge_1)#130 <= 1
 0 <= _(stack_c_d_ge_2)#131 <= 1
 0 <= _(stack_c_d_ge_1)#132 <= 1
 0 <= _(stack_c_e_ge_2)#133 <= 1
 0 <= _(stack_c_e_ge_1)#134 <= 1
 0 <= _(stack_c_f_ge_2)#135 <= 1
 0 <= _(stack_c_f_ge_1)#136 <= 1
 0 <= _(stack_d_a_ge_2)#137 <= 1
 0 <= _(stack_d_a_ge_1)#138 <= 1
 0 <= _(stack_d_b_ge_2)#139 <= 1
 0 <= _(stack_d_b_ge_1)#140 <= 1
 0 <= _(stack_d_c_ge_2)#141 <= 1
 0 <= _(stack_d_c_ge_1)#142 <= 1
 0 <= _(stack_d_e_ge_2)#143 <= 1
 0 <= _(stack_d_e_ge_1)#144 <= 1
 0 <= _(stack_d_f_ge_2)#145 <= 1
 0 <= _(stack_d_f_ge_1)#146 <= 1
 0 <= _(stack_e_a_ge_2)#147 <= 1
 0 <= _(stack_e_a_ge_1)#148 <= 1
 0 <= _(stack_e_b_ge_2)#149 <= 1
 0 <= _(stack_e_b_ge_1)#150 <= 1
 0 <= _(stack_e_c_ge_2)#151 <= 1
 0 <= _(stack_e_c_ge_1)#152 <= 1
 0 <= _(stack_e_d_ge_2)#153 <= 1
 0 <= _(stack_e_d_ge_1)#154 <= 1
 0 <= _(stack_e_f_ge_2)#155 <= 1
 0 <= _(stack_e_f_ge_1)#156 <= 1
 0 <= _(stack_f_a_ge_2)#157 <= 1
 0 <= _(stack_f_a_ge_1)#158 <= 1
 0 <= _(stack_f_b_ge_2)#159 <= 1
 0 <= _(stack_f_b_ge_1)#160 <= 1
 0 <= _(stack_f_c_ge_2)#161 <= 1
 0 <= _(stack_f_c_ge_1)#162 <= 1
 0 <= _(stack_f_d_ge_2)#163 <= 1
 0 <= _(stack_f_d_ge_1)#164 <= 1
 0 <= _(stack_f_e_ge_2)#165 <= 1
 0 <= _(stack_f_e_ge_1)#166 <= 1
 0 <= _(unstack_a_b_ge_2)#167 <= 1
 0 <= _(unstack_a_b_ge_1)#168 <= 1
 0 <= _(unstack_a_b_ge_3)#169 <= 1
 0 <= _(unstack_a_c_ge_2)#170 <= 1
 0 <= _(unstack_a_c_ge_1)#171 <= 1
 0 <= _(unstack_a_d_ge_2)#172 <= 1
 0 <= _(unstack_a_d_ge_1)#173 <= 1
 0 <= _(unstack_a_e_ge_2)#174 <= 1
 0 <= _(unstack_a_e_ge_1)#175 <= 1
 0 <= _(unstack_a_f_ge_2)#176 <= 1
 0 <= _(unstack_a_f_ge_1)#177 <= 1
 0 <= _(unstack_b_a_ge_2)#178 <= 1
 0 <= _(unstack_b_a_ge_1)#179 <= 1
 0 <= _(unstack_b_c_ge_2)#180 <= 1
 0 <= _(unstack_b_c_ge_1)#181 <= 1
 0 <= _(unstack_b_d_ge_2)#182 <= 1
 0 <= _(unstack_b_d_ge_1)#183 <= 1
 0 <= _(unstack_b_e_ge_2)#184 <= 1
 0 <= _(unstack_b_e_ge_1)#185 <= 1
 0 <= _(unstack_b_f_ge_2)#186 <= 1
 0 <= _(unstack_b_f_ge_1)#187 <= 1
 0 <= _(unstack_c_a_ge_2)#188 <= 1
 0 <= _(unstack_c_a_ge_1)#189 <= 1
 0 <= _(unstack_c_b_ge_2)#190 <= 1
 0 <= _(unstack_c_b_ge_1)#191 <= 1
 0 <= _(unstack_c_d_ge_2)#192 <= 1
 0 <= _(unstack_c_d_ge_1)#193 <= 1
 0 <= _(unstack_c_e_ge_2)#194 <= 1
 0 <= _(unstack_c_e_ge_1)#195 <= 1
 0 <= _(unstack_c_f_ge_2)#196 <= 1
 0 <= _(unstack_c_f_ge_1)#197 <= 1
 0 <= _(unstack_d_a_ge_2)#198 <= 1
 0 <= _(unstack_d_a_ge_1)#199 <= 1
 0 <= _(unstack_d_b_ge_2)#200 <= 1
 0 <= _(unstack_d_b_ge_1)#201 <= 1
 0 <= _(unstack_d_c_ge_2)#202 <= 1
 0 <= _(unstack_d_c_ge_1)#203 <= 1
 0 <= _(unstack_d_e_ge_2)#204 <= 1
 0 <= _(unstack_d_e_ge_1)#205 <= 1
 0 <= _(unstack_d_f_ge_2)#206 <= 1
 0 <= _(unstack_d_f_ge_1)#207 <= 1
 0 <= _(unstack_e_a_ge_2)#208 <= 1
 0 <= _(unstack_e_a_ge_1)#209 <= 1
 0 <= _(unstack_e_b_ge_2)#210 <= 1
 0 <= _(unstack_e_b_ge_1)#211 <= 1
 0 <= _(unstack_e_c_ge_2)#212 <= 1
 0 <= _(unstack_e_c_ge_1)#213 <= 1
 0 <= _(unstack_e_d_ge_2)#214 <= 1
 0 <= _(unstack_e_d_ge_1)#215 <= 1
 0 <= _(unstack_e_f_ge_2)#216 <= 1
 0 <= _(unstack_e_f_ge_1)#217 <= 1
 0 <= _(unstack_f_a_ge_2)#218 <= 1
 0 <= _(unstack_f_a_ge_1)#219 <= 1
 0 <= _(unstack_f_b_ge_2)#220 <= 1
 0 <= _(unstack_f_b_ge_1)#221 <= 1
 0 <= _(unstack_f_c_ge_2)#222 <= 1
 0 <= _(unstack_f_c_ge_1)#223 <= 1
 0 <= _(unstack_f_d_ge_2)#224 <= 1
 0 <= _(unstack_f_d_ge_1)#225 <= 1
 0 <= _(unstack_f_e_ge_2)#226 <= 1
 0 <= _(unstack_f_e_ge_1)#227 <= 1
 0 <= _(YT_ge_2)#228 <= 1
 0 <= _(YT_ge_1)#229 <= 1
 0 <= _(YF_ge_2)#230 <= 1
 0 <= _(YF_ge_1)#231 <= 1
 0 <= _(YF_ge_3)#232 <= 1
 0 <= _(YF_ge_4)#233 <= 1
 0 <= _(YF_ge_5)#234 <= 1
 0 <= _(YF_ge_6)#235 <= 1
 0 <= _(YF_ge_7)#236 <= 1
 0 <= _(YF_ge_8)#237 <= 1
 0 <= _(YF_ge_9)#238 <= 1
 0 <= _(YF_ge_10)#239 <= 1
 0 <= _(YF_ge_11)#240 <= 1
 0 <= _(YF_ge_12)#241 <= 1
 0 <= _(YF_ge_13)#242 <= 1
 0 <= _(YF_ge_14)#243 <= 1
 0 <= _(YF_ge_15)#244 <= 1
 0 <= _(YF_ge_16)#245 <= 1
 0 <= _(YF_ge_17)#246 <= 1
 0 <= _(YF_ge_18)#247 <= 1
 0 <= _(YF_ge_19)#248 <= 1
 0 <= _(YF_ge_20)#249 <= 1
 0 <= _(YF_ge_21)#250 <= 1
 0 <= _(YF_ge_22)#251 <= 1
 0 <= _(YF_ge_23)#252 <= 1
 0 <= _(YF_ge_24)#253 <= 1
 0 <= var_227#254 <= 1
 0 <= var_289#255 <= 1
 0 <= var_497#256 <= 1
 0 <= var_501#257 <= 1
 0 <= var_505#258 <= 1
 0 <= var_509#259 <= 1
 0 <= var_513#260 <= 1
 0 <= var_228#261 <= 1
 0 <= var_377#262 <= 1
 0 <= var_229#263 <= 1
 0 <= var_381#264 <= 1
 0 <= var_230#265 <= 1
 0 <= var_385#266 <= 1
 0 <= var_231#267 <= 1
 0 <= var_389#268 <= 1
 0 <= var_232#269 <= 1
 0 <= var_393#270 <= 1
 0 <= var_233#271 <= 1
 0 <= var_307#272 <= 1
 0 <= var_234#273 <= 1
 0 <= var_305#274 <= 1
 0 <= var_375#275 <= 1
 0 <= var_379#276 <= 1
 0 <= var_383#277 <= 1
 0 <= var_386#278 <= 1
 0 <= var_390#279 <= 1
 0 <= var_443#280 <= 1
 0 <= var_463#281 <= 1
 0 <= var_483#282 <= 1
 0 <= var_526#283 <= 1
 0 <= var_546#284 <= 1
 0 <= var_235#285 <= 1
 0 <= var_287#286 <= 1
 0 <= var_323#287 <= 1
 0 <= var_343#288 <= 1
 0 <= var_363#289 <= 1
 0 <= var_406#290 <= 1
 0 <= var_426#291 <= 1
 0 <= var_495#292 <= 1
 0 <= var_499#293 <= 1
 0 <= var_503#294 <= 1
 0 <= var_506#295 <= 1
 0 <= var_510#296 <= 1
 0 <= var_236#297 <= 1
 0 <= var_296#298 <= 1
 0 <= var_314#299 <= 1
 0 <= var_318#300 <= 1
 0 <= var_322#301 <= 1
 0 <= var_326#302 <= 1
 0 <= var_330#303 <= 1
 0 <= var_454#304 <= 1
 0 <= var_474#305 <= 1
 0 <= var_494#306 <= 1
 0 <= var_514#307 <= 1
 0 <= var_534#308 <= 1
 0 <= var_237#309 <= 1
 0 <= var_278#310 <= 1
 0 <= var_334#311 <= 1
 0 <= var_354#312 <= 1
 0 <= var_374#313 <= 1
 0 <= var_394#314 <= 1
 0 <= var_414#315 <= 1
 0 <= var_434#316 <= 1
 0 <= var_438#317 <= 1
 0 <= var_442#318 <= 1
 0 <= var_446#319 <= 1
 0 <= var_450#320 <= 1
 0 <= var_238#321 <= 1
 0 <= var_299#322 <= 1
 0 <= var_335#323 <= 1
 0 <= var_338#324 <= 1
 0 <= var_342#325 <= 1
 0 <= var_346#326 <= 1
 0 <= var_350#327 <= 1
 0 <= var_435#328 <= 1
 0 <= var_478#329 <= 1
 0 <= var_498#330 <= 1
 0 <= var_518#331 <= 1
 0 <= var_538#332 <= 1
 0 <= var_239#333 <= 1
 0 <= var_281#334 <= 1
 0 <= var_315#335 <= 1
 0 <= var_358#336 <= 1
 0 <= var_378#337 <= 1
 0 <= var_398#338 <= 1
 0 <= var_418#339 <= 1
 0 <= var_455#340 <= 1
 0 <= var_458#341 <= 1
 0 <= var_462#342 <= 1
 0 <= var_466#343 <= 1
 0 <= var_470#344 <= 1
 0 <= var_240#345 <= 1
 0 <= var_302#346 <= 1
 0 <= var_355#347 <= 1
 0 <= var_359#348 <= 1
 0 <= var_362#349 <= 1
 0 <= var_366#350 <= 1
 0 <= var_370#351 <= 1
 0 <= var_439#352 <= 1
 0 <= var_459#353 <= 1
 0 <= var_502#354 <= 1
 0 <= var_522#355 <= 1
 0 <= var_542#356 <= 1
 0 <= var_241#357 <= 1
 0 <= var_284#358 <= 1
 0 <= var_319#359 <= 1
 0 <= var_339#360 <= 1
 0 <= var_382#361 <= 1
 0 <= var_402#362 <= 1
 0 <= var_422#363 <= 1
 0 <= var_475#364 <= 1
 0 <= var_479#365 <= 1
 0 <= var_482#366 <= 1
 0 <= var_486#367 <= 1
 0 <= var_490#368 <= 1
 0 <= var_242#369 <= 1
 0 <= var_308#370 <= 1
 0 <= var_395#371 <= 1
 0 <= var_399#372 <= 1
 0 <= var_403#373 <= 1
 0 <= var_407#374 <= 1
 0 <= var_410#375 <= 1
 0 <= var_447#376 <= 1
 0 <= var_467#377 <= 1
 0 <= var_487#378 <= 1
 0 <= var_507#379 <= 1
 0 <= var_550#380 <= 1
 0 <= var_243#381 <= 1
 0 <= var_290#382 <= 1
 0 <= var_327#383 <= 1
 0 <= var_347#384 <= 1
 0 <= var_367#385 <= 1
 0 <= var_387#386 <= 1
 0 <= var_430#387 <= 1
 0 <= var_515#388 <= 1
 0 <= var_519#389 <= 1
 0 <= var_523#390 <= 1
 0 <= var_527#391 <= 1
 0 <= var_530#392 <= 1
 0 <= var_244#393 <= 1
 0 <= var_311#394 <= 1
 0 <= var_415#395 <= 1
 0 <= var_419#396 <= 1
 0 <= var_423#397 <= 1
 0 <= var_427#398 <= 1
 0 <= var_431#399 <= 1
 0 <= var_451#400 <= 1
 0 <= var_471#401 <= 1
 0 <= var_491#402 <= 1
 0 <= var_511#403 <= 1
 0 <= var_531#404 <= 1
 0 <= var_245#405 <= 1
 0 <= var_293#406 <= 1
 0 <= var_331#407 <= 1
 0 <= var_351#408 <= 1
 0 <= var_371#409 <= 1
 0 <= var_391#410 <= 1
 0 <= var_411#411 <= 1
 0 <= var_535#412 <= 1
 0 <= var_539#413 <= 1
 0 <= var_543#414 <= 1
 0 <= var_547#415 <= 1
 0 <= var_551#416 <= 1
 0 <= var_246#417 <= 1
 0 <= var_297#418 <= 1
 0 <= var_300#419 <= 1
 0 <= var_303#420 <= 1
 0 <= var_306#421 <= 1
 0 <= var_309#422 <= 1
 0 <= var_312#423 <= 1
 0 <= var_316#424 <= 1
 0 <= var_320#425 <= 1
 0 <= var_324#426 <= 1
 0 <= var_328#427 <= 1
 0 <= var_332#428 <= 1
 0 <= var_336#429 <= 1
 0 <= var_340#430 <= 1
 0 <= var_344#431 <= 1
 0 <= var_348#432 <= 1
 0 <= var_352#433 <= 1
 0 <= var_356#434 <= 1
 0 <= var_360#435 <= 1
 0 <= var_364#436 <= 1
 0 <= var_368#437 <= 1
 0 <= var_372#438 <= 1
 0 <= var_376#439 <= 1
 0 <= var_380#440 <= 1
 0 <= var_384#441 <= 1
 0 <= var_388#442 <= 1
 0 <= var_392#443 <= 1
 0 <= var_396#444 <= 1
 0 <= var_400#445 <= 1
 0 <= var_404#446 <= 1
 0 <= var_408#447 <= 1
 0 <= var_412#448 <= 1
 0 <= var_416#449 <= 1
 0 <= var_420#450 <= 1
 0 <= var_424#451 <= 1
 0 <= var_428#452 <= 1
 0 <= var_432#453 <= 1
 0 <= var_247#454 <= 1
 0 <= var_279#455 <= 1
 0 <= var_282#456 <= 1
 0 <= var_285#457 <= 1
 0 <= var_288#458 <= 1
 0 <= var_291#459 <= 1
 0 <= var_294#460 <= 1
 0 <= var_436#461 <= 1
 0 <= var_440#462 <= 1
 0 <= var_444#463 <= 1
 0 <= var_448#464 <= 1
 0 <= var_452#465 <= 1
 0 <= var_456#466 <= 1
 0 <= var_460#467 <= 1
 0 <= var_464#468 <= 1
 0 <= var_468#469 <= 1
 0 <= var_472#470 <= 1
 0 <= var_476#471 <= 1
 0 <= var_480#472 <= 1
 0 <= var_484#473 <= 1
 0 <= var_488#474 <= 1
 0 <= var_492#475 <= 1
 0 <= var_496#476 <= 1
 0 <= var_500#477 <= 1
 0 <= var_504#478 <= 1
 0 <= var_508#479 <= 1
 0 <= var_512#480 <= 1
 0 <= var_516#481 <= 1
 0 <= var_520#482 <= 1
 0 <= var_524#483 <= 1
 0 <= var_528#484 <= 1
 0 <= var_532#485 <= 1
 0 <= var_536#486 <= 1
 0 <= var_540#487 <= 1
 0 <= var_544#488 <= 1
 0 <= var_548#489 <= 1
 0 <= var_552#490 <= 1
 0 <= var_248#491 <= 1
 0 <= var_280#492 <= 1
 0 <= var_437#493 <= 1
 0 <= var_441#494 <= 1
 0 <= var_445#495 <= 1
 0 <= var_449#496 <= 1
 0 <= var_453#497 <= 1
      var_222#498 = 1
 0 <= var_317#499 <= 1
 0 <= var_249#500 <= 1
 0 <= var_321#501 <= 1
 0 <= var_250#502 <= 1
 0 <= var_325#503 <= 1
 0 <= var_251#504 <= 1
 0 <= var_329#505 <= 1
 0 <= var_252#506 <= 1
 0 <= var_333#507 <= 1
 0 <= var_253#508 <= 1
 0 <= var_298#509 <= 1
 0 <= var_254#510 <= 1
 0 <= var_283#511 <= 1
 0 <= var_457#512 <= 1
 0 <= var_461#513 <= 1
 0 <= var_465#514 <= 1
 0 <= var_469#515 <= 1
 0 <= var_473#516 <= 1
 0 <= var_255#517 <= 1
 0 <= var_337#518 <= 1
      var_223#519 = 1
 0 <= var_341#520 <= 1
 0 <= var_256#521 <= 1
 0 <= var_345#522 <= 1
 0 <= var_257#523 <= 1
 0 <= var_349#524 <= 1
 0 <= var_258#525 <= 1
 0 <= var_353#526 <= 1
 0 <= var_259#527 <= 1
 0 <= var_301#528 <= 1
 0 <= var_260#529 <= 1
 0 <= var_286#530 <= 1
 0 <= var_477#531 <= 1
 0 <= var_481#532 <= 1
 0 <= var_485#533 <= 1
 0 <= var_489#534 <= 1
 0 <= var_493#535 <= 1
 0 <= var_261#536 <= 1
 0 <= var_357#537 <= 1
 0 <= var_262#538 <= 1
 0 <= var_361#539 <= 1
      var_224#540 = 1
 0 <= var_365#541 <= 1
 0 <= var_263#542 <= 1
 0 <= var_369#543 <= 1
 0 <= var_264#544 <= 1
 0 <= var_373#545 <= 1
 0 <= var_265#546 <= 1
 0 <= var_304#547 <= 1
 0 <= var_266#548 <= 1
 0 <= var_292#549 <= 1
 0 <= var_517#550 <= 1
 0 <= var_521#551 <= 1
 0 <= var_525#552 <= 1
 0 <= var_529#553 <= 1
 0 <= var_533#554 <= 1
 0 <= var_267#555 <= 1
 0 <= var_397#556 <= 1
 0 <= var_268#557 <= 1
 0 <= var_401#558 <= 1
 0 <= var_269#559 <= 1
 0 <= var_405#560 <= 1
 0 <= var_270#561 <= 1
 0 <= var_409#562 <= 1
      var_225#563 = 1
 0 <= var_413#564 <= 1
 0 <= var_271#565 <= 1
 0 <= var_310#566 <= 1
 0 <= var_272#567 <= 1
 0 <= var_295#568 <= 1
 0 <= var_537#569 <= 1
 0 <= var_541#570 <= 1
 0 <= var_545#571 <= 1
 0 <= var_549#572 <= 1
 0 <= var_553#573 <= 1
      var_226#574 = 1
 0 <= var_417#575 <= 1
 0 <= var_273#576 <= 1
 0 <= var_421#577 <= 1
 0 <= var_274#578 <= 1
 0 <= var_425#579 <= 1
 0 <= var_275#580 <= 1
 0 <= var_429#581 <= 1
 0 <= var_276#582 <= 1
 0 <= var_433#583 <= 1
 0 <= var_277#584 <= 1
 0 <= var_313#585 <= 1
 0 <= var_554#586 <= 1
 0 <= var_555#587 <= 1
 0 <= var_556#588 <= 1
 0 <= var_557#589 <= 1
 0 <= var_558#590 <= 1
 0 <= var_559#591 <= 1
 0 <= var_560#592 <= 1
 0 <= var_561#593 <= 1
 0 <= var_562#594 <= 1
 0 <= var_563#595 <= 1
 0 <= var_564#596 <= 1
 0 <= var_565#597 <= 1
 0 <= var_566#598 <= 1
 0 <= var_567#599 <= 1
 0 <= var_568#600 <= 1
 0 <= var_569#601 <= 1
 0 <= var_570#602 <= 1
 0 <= var_571#603 <= 1
 0 <= var_572#604 <= 1
 0 <= var_573#605 <= 1
 0 <= var_574#606 <= 1
 0 <= var_575#607 <= 1
 0 <= var_576#608 <= 1
 0 <= var_577#609 <= 1
 0 <= var_578#610 <= 1
 0 <= var_579#611 <= 1
 0 <= var_580#612 <= 1
 0 <= var_581#613 <= 1
 0 <= var_582#614 <= 1
 0 <= var_583#615 <= 1
 0 <= var_584#616 <= 1
 0 <= var_585#617 <= 1
 0 <= var_586#618 <= 1
 0 <= var_587#619 <= 1
 0 <= var_588#620 <= 1
 0 <= var_589#621 <= 1
 0 <= var_590#622 <= 1
 0 <= var_591#623 <= 1
 0 <= var_592#624 <= 1
 0 <= var_593#625 <= 1
 0 <= var_594#626 <= 1
 0 <= var_595#627 <= 1
 0 <= var_596#628 <= 1
 0 <= var_597#629 <= 1
 0 <= var_598#630 <= 1
 0 <= var_599#631 <= 1
 0 <= var_600#632 <= 1
 0 <= var_601#633 <= 1
 0 <= var_602#634 <= 1
 0 <= var_603#635 <= 1
 0 <= var_604#636 <= 1
 0 <= var_605#637 <= 1
 0 <= var_606#638 <= 1
 0 <= var_607#639 <= 1
 0 <= var_608#640 <= 1
 0 <= var_609#641 <= 1
 0 <= var_610#642 <= 1
 0 <= var_611#643 <= 1
 0 <= var_612#644 <= 1
 0 <= var_613#645 <= 1
 0 <= var_614#646 <= 1
 0 <= var_615#647 <= 1
 0 <= var_616#648 <= 1
 0 <= var_617#649 <= 1
 0 <= var_618#650 <= 1
 0 <= var_619#651 <= 1
 0 <= var_620#652 <= 1
 0 <= var_621#653 <= 1
 0 <= var_622#654 <= 1
 0 <= var_623#655 <= 1
 0 <= var_624#656 <= 1
 0 <= var_625#657 <= 1
 0 <= var_626#658 <= 72
 0 <= var_627#659 <= 72
 0 <= var_628#660 <= 72
 0 <= var_629#661 <= 72
 0 <= var_630#662 <= 72
 0 <= var_631#663 <= 72
 0 <= var_632#664 <= 72
 0 <= var_633#665 <= 72
 0 <= var_634#666 <= 72
 0 <= var_635#667 <= 72
 0 <= var_636#668 <= 72
 0 <= var_637#669 <= 72
 0 <= var_638#670 <= 72
 0 <= var_639#671 <= 72
 0 <= var_640#672 <= 72
 0 <= var_641#673 <= 72
 0 <= var_642#674 <= 72
 0 <= var_643#675 <= 72
 0 <= var_644#676 <= 72
 0 <= var_645#677 <= 72
 0 <= var_646#678 <= 72
 0 <= var_647#679 <= 72
 0 <= var_648#680 <= 72
 0 <= var_649#681 <= 72
 0 <= var_650#682 <= 72
 0 <= var_651#683 <= 72
 0 <= var_652#684 <= 72
 0 <= var_653#685 <= 72
 0 <= var_654#686 <= 72
 0 <= var_655#687 <= 72
 0 <= var_656#688 <= 72
 0 <= var_657#689 <= 72
 0 <= var_658#690 <= 72
 0 <= var_659#691 <= 72
 0 <= var_660#692 <= 72
 0 <= var_661#693 <= 72
 0 <= var_662#694 <= 72
 0 <= var_663#695 <= 72
 0 <= var_664#696 <= 72
 0 <= var_665#697 <= 72
 0 <= var_666#698 <= 72
 0 <= var_667#699 <= 72
 0 <= var_668#700 <= 72
 0 <= var_669#701 <= 72
 0 <= var_670#702 <= 72
 0 <= var_671#703 <= 72
 0 <= var_672#704 <= 72
 0 <= var_673#705 <= 72
 0 <= var_674#706 <= 72
 0 <= var_675#707 <= 72
 0 <= var_676#708 <= 72
 0 <= var_677#709 <= 72
 0 <= var_678#710 <= 72
 0 <= var_679#711 <= 72
 0 <= var_680#712 <= 72
 0 <= var_681#713 <= 72
 0 <= var_682#714 <= 72
 0 <= var_683#715 <= 72
 0 <= var_684#716 <= 72
 0 <= var_685#717 <= 72
 0 <= var_686#718 <= 72
 0 <= var_687#719 <= 72
 0 <= var_688#720 <= 72
 0 <= var_689#721 <= 72
 0 <= var_690#722 <= 72
 0 <= var_691#723 <= 72
 0 <= var_692#724 <= 72
 0 <= var_693#725 <= 72
 0 <= var_694#726 <= 72
 0 <= var_695#727 <= 72
 0 <= var_696#728 <= 72
 0 <= var_697#729 <= 72
 0 <= var_698#730 <= 72
 0 <= var_699#731 <= 72
 0 <= var_700#732 <= 72
 0 <= var_701#733 <= 72
 0 <= var_702#734 <= 72
 0 <= var_703#735 <= 72
 0 <= var_704#736 <= 72
 0 <= var_705#737 <= 72
 0 <= var_706#738 <= 72
 0 <= var_707#739 <= 72
 0 <= var_708#740 <= 72
 0 <= var_709#741 <= 72
 0 <= var_710#742 <= 72
 0 <= var_711#743 <= 72
 0 <= var_712#744 <= 72
 0 <= var_713#745 <= 72
 0 <= var_714#746 <= 72
 0 <= var_715#747 <= 72
 0 <= var_716#748 <= 72
 0 <= var_717#749 <= 72
 0 <= var_718#750 <= 72
 0 <= var_719#751 <= 72
 0 <= var_720#752 <= 72
 0 <= var_721#753 <= 72
 0 <= var_722#754 <= 72
 0 <= var_723#755 <= 72
 0 <= var_724#756 <= 72
 0 <= var_725#757 <= 72
 0 <= var_726#758 <= 72
 0 <= var_727#759 <= 72
 0 <= var_728#760 <= 72
 0 <= var_729#761 <= 72
 0 <= var_730#762 <= 72
 0 <= var_731#763 <= 72
 0 <= var_732#764 <= 72
 0 <= var_733#765 <= 72
 0 <= var_734#766 <= 72
 0 <= var_735#767 <= 72
 0 <= var_736#768 <= 72
 0 <= var_737#769 <= 72
 0 <= var_738#770 <= 72
 0 <= var_739#771 <= 72
 0 <= var_740#772 <= 72
 0 <= var_741#773 <= 72
 0 <= var_742#774 <= 72
 0 <= var_743#775 <= 72
 0 <= var_744#776 <= 72
 0 <= var_745#777 <= 72
 0 <= var_746#778 <= 72
 0 <= var_747#779 <= 72
 0 <= var_748#780 <= 72
 0 <= var_749#781 <= 72
 0 <= var_750#782 <= 72
 0 <= var_751#783 <= 72
 0 <= var_752#784 <= 72
 0 <= var_753#785 <= 72
Binaries
 _(pickmup_a_ge_2)#74  _(pickmup_a_ge_1)#75  _(pickmup_b_ge_2)#76 
 _(pickmup_b_ge_1)#77  _(pickmup_c_ge_2)#78  _(pickmup_c_ge_1)#79 
 _(pickmup_d_ge_2)#80  _(pickmup_d_ge_1)#81  _(pickmup_e_ge_2)#82 
 _(pickmup_e_ge_1)#83  _(pickmup_f_ge_2)#84  _(pickmup_f_ge_1)#85 
 _(putmdown_a_ge_2)#86  _(putmdown_a_ge_1)#87  _(putmdown_a_ge_3)#88 
 _(putmdown_a_ge_4)#89  _(putmdown_b_ge_2)#90  _(putmdown_b_ge_1)#91 
 _(putmdown_b_ge_3)#92  _(putmdown_c_ge_2)#93  _(putmdown_c_ge_1)#94 
 _(putmdown_d_ge_2)#95  _(putmdown_d_ge_1)#96  _(putmdown_d_ge_3)#97 
 _(putmdown_e_ge_2)#98  _(putmdown_e_ge_1)#99  _(putmdown_f_ge_2)#100 
 _(putmdown_f_ge_1)#101  _(stack_a_b_ge_2)#102  _(stack_a_b_ge_1)#103 
 _(stack_a_c_ge_2)#104  _(stack_a_c_ge_1)#105  _(stack_a_d_ge_2)#106 
 _(stack_a_d_ge_1)#107  _(stack_a_d_ge_3)#108  _(stack_a_d_ge_4)#109 
 _(stack_a_e_ge_2)#110  _(stack_a_e_ge_1)#111  _(stack_a_f_ge_2)#112 
 _(stack_a_f_ge_1)#113  _(stack_b_a_ge_2)#114  _(stack_b_a_ge_1)#115 
 _(stack_b_a_ge_3)#116  _(stack_b_c_ge_2)#117  _(stack_b_c_ge_1)#118 
 _(stack_b_d_ge_2)#119  _(stack_b_d_ge_1)#120  _(stack_b_d_ge_3)#121 
 _(stack_b_e_ge_2)#122  _(stack_b_e_ge_1)#123  _(stack_b_f_ge_2)#124 
 _(stack_b_f_ge_1)#125  _(stack_b_f_ge_3)#126  _(stack_c_a_ge_2)#127 
 _(stack_c_a_ge_1)#128  _(stack_c_b_ge_2)#129  _(stack_c_b_ge_1)#130 
 _(stack_c_d_ge_2)#131  _(stack_c_d_ge_1)#132  _(stack_c_e_ge_2)#133 
 _(stack_c_e_ge_1)#134  _(stack_c_f_ge_2)#135  _(stack_c_f_ge_1)#136 
 _(stack_d_a_ge_2)#137  _(stack_d_a_ge_1)#138  _(stack_d_b_ge_2)#139 
 _(stack_d_b_ge_1)#140  _(stack_d_c_ge_2)#141  _(stack_d_c_ge_1)#142 
 _(stack_d_e_ge_2)#143  _(stack_d_e_ge_1)#144  _(stack_d_f_ge_2)#145 
 _(stack_d_f_ge_1)#146  _(stack_e_a_ge_2)#147  _(stack_e_a_ge_1)#148 
 _(stack_e_b_ge_2)#149  _(stack_e_b_ge_1)#150  _(stack_e_c_ge_2)#151 
 _(stack_e_c_ge_1)#152  _(stack_e_d_ge_2)#153  _(stack_e_d_ge_1)#154 
 _(stack_e_f_ge_2)#155  _(stack_e_f_ge_1)#156  _(stack_f_a_ge_2)#157 
 _(stack_f_a_ge_1)#158  _(stack_f_b_ge_2)#159  _(stack_f_b_ge_1)#160 
 _(stack_f_c_ge_2)#161  _(stack_f_c_ge_1)#162  _(stack_f_d_ge_2)#163 
 _(stack_f_d_ge_1)#164  _(stack_f_e_ge_2)#165  _(stack_f_e_ge_1)#166 
 _(unstack_a_b_ge_2)#167  _(unstack_a_b_ge_1)#168  _(unstack_a_b_ge_3)#169 
 _(unstack_a_c_ge_2)#170  _(unstack_a_c_ge_1)#171  _(unstack_a_d_ge_2)#172 
 _(unstack_a_d_ge_1)#173  _(unstack_a_e_ge_2)#174  _(unstack_a_e_ge_1)#175 
 _(unstack_a_f_ge_2)#176  _(unstack_a_f_ge_1)#177  _(unstack_b_a_ge_2)#178 
 _(unstack_b_a_ge_1)#179  _(unstack_b_c_ge_2)#180  _(unstack_b_c_ge_1)#181 
 _(unstack_b_d_ge_2)#182  _(unstack_b_d_ge_1)#183  _(unstack_b_e_ge_2)#184 
 _(unstack_b_e_ge_1)#185  _(unstack_b_f_ge_2)#186  _(unstack_b_f_ge_1)#187 
 _(unstack_c_a_ge_2)#188  _(unstack_c_a_ge_1)#189  _(unstack_c_b_ge_2)#190 
 _(unstack_c_b_ge_1)#191  _(unstack_c_d_ge_2)#192  _(unstack_c_d_ge_1)#193 
 _(unstack_c_e_ge_2)#194  _(unstack_c_e_ge_1)#195  _(unstack_c_f_ge_2)#196 
 _(unstack_c_f_ge_1)#197  _(unstack_d_a_ge_2)#198  _(unstack_d_a_ge_1)#199 
 _(unstack_d_b_ge_2)#200  _(unstack_d_b_ge_1)#201  _(unstack_d_c_ge_2)#202 
 _(unstack_d_c_ge_1)#203  _(unstack_d_e_ge_2)#204  _(unstack_d_e_ge_1)#205 
 _(unstack_d_f_ge_2)#206  _(unstack_d_f_ge_1)#207  _(unstack_e_a_ge_2)#208 
 _(unstack_e_a_ge_1)#209  _(unstack_e_b_ge_2)#210  _(unstack_e_b_ge_1)#211 
 _(unstack_e_c_ge_2)#212  _(unstack_e_c_ge_1)#213  _(unstack_e_d_ge_2)#214 
 _(unstack_e_d_ge_1)#215  _(unstack_e_f_ge_2)#216  _(unstack_e_f_ge_1)#217 
 _(unstack_f_a_ge_2)#218  _(unstack_f_a_ge_1)#219  _(unstack_f_b_ge_2)#220 
 _(unstack_f_b_ge_1)#221  _(unstack_f_c_ge_2)#222  _(unstack_f_c_ge_1)#223 
 _(unstack_f_d_ge_2)#224  _(unstack_f_d_ge_1)#225  _(unstack_f_e_ge_2)#226 
 _(unstack_f_e_ge_1)#227  _(YT_ge_2)#228  _(YT_ge_1)#229  _(YF_ge_2)#230 
 _(YF_ge_1)#231  _(YF_ge_3)#232  _(YF_ge_4)#233  _(YF_ge_5)#234 
 _(YF_ge_6)#235  _(YF_ge_7)#236  _(YF_ge_8)#237  _(YF_ge_9)#238 
 _(YF_ge_10)#239  _(YF_ge_11)#240  _(YF_ge_12)#241  _(YF_ge_13)#242 
 _(YF_ge_14)#243  _(YF_ge_15)#244  _(YF_ge_16)#245  _(YF_ge_17)#246 
 _(YF_ge_18)#247  _(YF_ge_19)#248  _(YF_ge_20)#249  _(YF_ge_21)#250 
 _(YF_ge_22)#251  _(YF_ge_23)#252  _(YF_ge_24)#253  var_227#254  var_289#255 
 var_497#256  var_501#257  var_505#258  var_509#259  var_513#260  var_228#261 
 var_377#262  var_229#263  var_381#264  var_230#265  var_385#266  var_231#267 
 var_389#268  var_232#269  var_393#270  var_233#271  var_307#272  var_234#273 
 var_305#274  var_375#275  var_379#276  var_383#277  var_386#278  var_390#279 
 var_443#280  var_463#281  var_483#282  var_526#283  var_546#284  var_235#285 
 var_287#286  var_323#287  var_343#288  var_363#289  var_406#290  var_426#291 
 var_495#292  var_499#293  var_503#294  var_506#295  var_510#296  var_236#297 
 var_296#298  var_314#299  var_318#300  var_322#301  var_326#302  var_330#303 
 var_454#304  var_474#305  var_494#306  var_514#307  var_534#308  var_237#309 
 var_278#310  var_334#311  var_354#312  var_374#313  var_394#314  var_414#315 
 var_434#316  var_438#317  var_442#318  var_446#319  var_450#320  var_238#321 
 var_299#322  var_335#323  var_338#324  var_342#325  var_346#326  var_350#327 
 var_435#328  var_478#329  var_498#330  var_518#331  var_538#332  var_239#333 
 var_281#334  var_315#335  var_358#336  var_378#337  var_398#338  var_418#339 
 var_455#340  var_458#341  var_462#342  var_466#343  var_470#344  var_240#345 
 var_302#346  var_355#347  var_359#348  var_362#349  var_366#350  var_370#351 
 var_439#352  var_459#353  var_502#354  var_522#355  var_542#356  var_241#357 
 var_284#358  var_319#359  var_339#360  var_382#361  var_402#362  var_422#363 
 var_475#364  var_479#365  var_482#366  var_486#367  var_490#368  var_242#369 
 var_308#370  var_395#371  var_399#372  var_403#373  var_407#374  var_410#375 
 var_447#376  var_467#377  var_487#378  var_507#379  var_550#380  var_243#381 
 var_290#382  var_327#383  var_347#384  var_367#385  var_387#386  var_430#387 
 var_515#388  var_519#389  var_523#390  var_527#391  var_530#392  var_244#393 
 var_311#394  var_415#395  var_419#396  var_423#397  var_427#398  var_431#399 
 var_451#400  var_471#401  var_491#402  var_511#403  var_531#404  var_245#405 
 var_293#406  var_331#407  var_351#408  var_371#409  var_391#410  var_411#411 
 var_535#412  var_539#413  var_543#414  var_547#415  var_551#416  var_246#417 
 var_297#418  var_300#419  var_303#420  var_306#421  var_309#422  var_312#423 
 var_316#424  var_320#425  var_324#426  var_328#427  var_332#428  var_336#429 
 var_340#430  var_344#431  var_348#432  var_352#433  var_356#434  var_360#435 
 var_364#436  var_368#437  var_372#438  var_376#439  var_380#440  var_384#441 
 var_388#442  var_392#443  var_396#444  var_400#445  var_404#446  var_408#447 
 var_412#448  var_416#449  var_420#450  var_424#451  var_428#452  var_432#453 
 var_247#454  var_279#455  var_282#456  var_285#457  var_288#458  var_291#459 
 var_294#460  var_436#461  var_440#462  var_444#463  var_448#464  var_452#465 
 var_456#466  var_460#467  var_464#468  var_468#469  var_472#470  var_476#471 
 var_480#472  var_484#473  var_488#474  var_492#475  var_496#476  var_500#477 
 var_504#478  var_508#479  var_512#480  var_516#481  var_520#482  var_524#483 
 var_528#484  var_532#485  var_536#486  var_540#487  var_544#488  var_548#489 
 var_552#490  var_248#491  var_280#492  var_437#493  var_441#494  var_445#495 
 var_449#496  var_453#497  var_317#499  var_249#500  var_321#501  var_250#502 
 var_325#503  var_251#504  var_329#505  var_252#506  var_333#507  var_253#508 
 var_298#509  var_254#510  var_283#511  var_457#512  var_461#513  var_465#514 
 var_469#515  var_473#516  var_255#517  var_337#518  var_341#520  var_256#521 
 var_345#522  var_257#523  var_349#524  var_258#525  var_353#526  var_259#527 
 var_301#528  var_260#529  var_286#530  var_477#531  var_481#532  var_485#533 
 var_489#534  var_493#535  var_261#536  var_357#537  var_262#538  var_361#539 
 var_365#541  var_263#542  var_369#543  var_264#544  var_373#545  var_265#546 
 var_304#547  var_266#548  var_292#549  var_517#550  var_521#551  var_525#552 
 var_529#553  var_533#554  var_267#555  var_397#556  var_268#557  var_401#558 
 var_269#559  var_405#560  var_270#561  var_409#562  var_413#564  var_271#565 
 var_310#566  var_272#567  var_295#568  var_537#569  var_541#570  var_545#571 
 var_549#572  var_553#573  var_417#575  var_273#576  var_421#577  var_274#578 
 var_425#579  var_275#580  var_429#581  var_276#582  var_433#583  var_277#584 
 var_313#585  var_554#586  var_555#587  var_556#588  var_557#589  var_558#590 
 var_559#591  var_560#592  var_561#593  var_562#594  var_563#595  var_564#596 
 var_565#597  var_566#598  var_567#599  var_568#600  var_569#601  var_570#602 
 var_571#603  var_572#604  var_573#605  var_574#606  var_575#607  var_576#608 
 var_577#609  var_578#610  var_579#611  var_580#612  var_581#613  var_582#614 
 var_583#615  var_584#616  var_585#617  var_586#618  var_587#619  var_588#620 
 var_589#621  var_590#622  var_591#623  var_592#624  var_593#625  var_594#626 
 var_595#627  var_596#628  var_597#629  var_598#630  var_599#631  var_600#632 
 var_601#633  var_602#634  var_603#635  var_604#636  var_605#637  var_606#638 
 var_607#639  var_608#640  var_609#641  var_610#642  var_611#643  var_612#644 
 var_613#645  var_614#646  var_615#647  var_616#648  var_617#649  var_618#650 
 var_619#651  var_620#652  var_621#653  var_622#654  var_623#655  var_624#656 
 var_625#657 
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
 unstack_f_d#70  unstack_f_e#71  YT#72  YF#73  var_222#498  var_223#519 
 var_224#540  var_225#563  var_226#574  var_626#658  var_627#659  var_628#660 
 var_629#661  var_630#662  var_631#663  var_632#664  var_633#665  var_634#666 
 var_635#667  var_636#668  var_637#669  var_638#670  var_639#671  var_640#672 
 var_641#673  var_642#674  var_643#675  var_644#676  var_645#677  var_646#678 
 var_647#679  var_648#680  var_649#681  var_650#682  var_651#683  var_652#684 
 var_653#685  var_654#686  var_655#687  var_656#688  var_657#689  var_658#690 
 var_659#691  var_660#692  var_661#693  var_662#694  var_663#695  var_664#696 
 var_665#697  var_666#698  var_667#699  var_668#700  var_669#701  var_670#702 
 var_671#703  var_672#704  var_673#705  var_674#706  var_675#707  var_676#708 
 var_677#709  var_678#710  var_679#711  var_680#712  var_681#713  var_682#714 
 var_683#715  var_684#716  var_685#717  var_686#718  var_687#719  var_688#720 
 var_689#721  var_690#722  var_691#723  var_692#724  var_693#725  var_694#726 
 var_695#727  var_696#728  var_697#729  var_698#730  var_699#731  var_700#732 
 var_701#733  var_702#734  var_703#735  var_704#736  var_705#737  var_706#738 
 var_707#739  var_708#740  var_709#741  var_710#742  var_711#743  var_712#744 
 var_713#745  var_714#746  var_715#747  var_716#748  var_717#749  var_718#750 
 var_719#751  var_720#752  var_721#753  var_722#754  var_723#755  var_724#756 
 var_725#757  var_726#758  var_727#759  var_728#760  var_729#761  var_730#762 
 var_731#763  var_732#764  var_733#765  var_734#766  var_735#767  var_736#768 
 var_737#769  var_738#770  var_739#771  var_740#772  var_741#773  var_742#774 
 var_743#775  var_744#776  var_745#777  var_746#778  var_747#779  var_748#780 
 var_749#781  var_750#782  var_751#783  var_752#784  var_753#785 
End

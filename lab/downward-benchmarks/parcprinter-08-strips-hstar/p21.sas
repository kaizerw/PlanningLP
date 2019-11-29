begin_version
3
end_version
begin_metric
1
end_metric
15
begin_variable
var0
-1
2
Atom uninitialized()
NegatedAtom uninitialized()
end_variable
begin_variable
var1
-1
2
Atom available(uime-rsrc)
NegatedAtom available(uime-rsrc)
end_variable
begin_variable
var2
-1
2
Atom available(uc1-rsrc)
NegatedAtom available(uc1-rsrc)
end_variable
begin_variable
var3
-1
2
Atom available(sys-rsrc)
NegatedAtom available(sys-rsrc)
end_variable
begin_variable
var4
-1
2
Atom available(lime-rsrc)
NegatedAtom available(lime-rsrc)
end_variable
begin_variable
var5
-1
2
Atom available(lc1-rsrc)
NegatedAtom available(lc1-rsrc)
end_variable
begin_variable
var6
-1
2
Atom available(hw1-rsrc)
NegatedAtom available(hw1-rsrc)
end_variable
begin_variable
var7
-1
2
Atom available(fe1-rsrc)
NegatedAtom available(fe1-rsrc)
end_variable
begin_variable
var8
-1
2
Atom notprintedwith(sheet1, front, black)
NegatedAtom notprintedwith(sheet1, front, black)
end_variable
begin_variable
var9
-1
2
Atom sideup(sheet1, back)
NegatedAtom sideup(sheet1, back)
end_variable
begin_variable
var10
-1
12
Atom location(sheet1, fe1_exit-hw1_leftentry)
Atom location(sheet1, hw1_rightexit-sys_entry)
Atom location(sheet1, hw1_toprightentry-uc1_exit)
Atom location(sheet1, lc1_entry-hw1_bottomleftexit)
Atom location(sheet1, lc1_entryfromime-lime_exit)
Atom location(sheet1, lc1_exit-hw1_bottomrightentry)
Atom location(sheet1, lime_entry-lc1_exittoime)
Atom location(sheet1, some_feeder_tray)
Atom location(sheet1, some_finisher_tray)
Atom location(sheet1, uc1_entry-hw1_topleftexit)
Atom location(sheet1, uc1_exittoime-uime_entry)
Atom location(sheet1, uime_exit-uc1_entryfromime)
end_variable
begin_variable
var11
-1
2
Atom notprintedwith(sheet1, back, black)
NegatedAtom notprintedwith(sheet1, back, black)
end_variable
begin_variable
var12
-1
2
Atom sideup(sheet1, front)
NegatedAtom sideup(sheet1, front)
end_variable
begin_variable
var13
-1
2
Atom stackedin(sheet1, sys_outputtray)
NegatedAtom stackedin(sheet1, sys_outputtray)
end_variable
begin_variable
var14
-1
2
Atom hasimage(sheet1, front, image-1)
NegatedAtom hasimage(sheet1, front, image-1)
end_variable
0
begin_state
0
1
1
1
1
1
1
1
0
1
7
0
1
1
1
end_state
begin_goal
4
11 0
12 0
13 0
14 0
end_goal
28
begin_operator
fe1-feed-letter sheet1
1
7 0
2
0 10 7 0
0 9 -1 0
224
end_operator
begin_operator
fe1-feedmsi-letter sheet1
1
7 0
2
0 10 7 0
0 9 -1 0
125
end_operator
begin_operator
hw1-bottomrightentrytobottomleftexit-letter sheet1
1
6 0
1
0 10 5 3
8999
end_operator
begin_operator
hw1-bottomrightentrytorightexit-letter sheet1
1
6 0
1
0 10 5 1
1499
end_operator
begin_operator
hw1-bottomrightentrytotopleftexit-letter sheet1
1
6 0
1
0 10 5 9
8999
end_operator
begin_operator
hw1-leftentrytobottomleftexit-letter sheet1
1
6 0
1
0 10 0 3
1499
end_operator
begin_operator
hw1-leftentrytotopleftexit-letter sheet1
1
6 0
1
0 10 0 9
1499
end_operator
begin_operator
hw1-toprightentrytobottomleftexit-letter sheet1
1
6 0
1
0 10 2 3
8999
end_operator
begin_operator
hw1-toprightentrytorightexit-letter sheet1
1
6 0
1
0 10 2 1
1499
end_operator
begin_operator
hw1-toprightentrytotopleftexit-letter sheet1
1
6 0
1
0 10 2 9
8999
end_operator
begin_operator
initialize 
0
8
0 7 -1 0
0 6 -1 0
0 5 -1 0
0 4 -1 0
0 3 -1 0
0 2 -1 0
0 1 -1 0
0 0 0 1
0
end_operator
begin_operator
lc1-fromime-letter sheet1
1
5 0
1
0 10 4 5
4999
end_operator
begin_operator
lc1-invertfromime-letter sheet1 back front
1
5 0
3
0 10 4 5
0 9 0 1
0 12 -1 0
9999
end_operator
begin_operator
lc1-invertfromime-letter sheet1 front back
1
5 0
3
0 10 4 5
0 9 -1 0
0 12 0 1
9999
end_operator
begin_operator
lc1-inverttoime-letter sheet1 back front
1
5 0
3
0 10 3 6
0 9 0 1
0 12 -1 0
9999
end_operator
begin_operator
lc1-inverttoime-letter sheet1 front back
1
5 0
3
0 10 3 6
0 9 -1 0
0 12 0 1
9999
end_operator
begin_operator
lc1-toime-letter sheet1
1
5 0
1
0 10 3 6
4999
end_operator
begin_operator
lime-simplexmono-letter sheet1 back image-1
2
4 0
9 0
2
0 10 6 4
0 11 0 1
212790
end_operator
begin_operator
lime-simplexmono-letter sheet1 front image-1
2
4 0
12 0
3
0 14 -1 0
0 10 6 4
0 8 0 1
212790
end_operator
begin_operator
sys-stack-letter sheet1 dummy-sheet
1
3 0
2
0 10 1 8
0 13 -1 0
1499
end_operator
begin_operator
uc1-fromime-letter sheet1
1
2 0
1
0 10 11 2
2999
end_operator
begin_operator
uc1-invertfromime-letter sheet1 back front
1
2 0
3
0 10 11 2
0 9 0 1
0 12 -1 0
8000
end_operator
begin_operator
uc1-invertfromime-letter sheet1 front back
1
2 0
3
0 10 11 2
0 9 -1 0
0 12 0 1
8000
end_operator
begin_operator
uc1-inverttoime-letter sheet1 back front
1
2 0
3
0 10 9 10
0 9 0 1
0 12 -1 0
8000
end_operator
begin_operator
uc1-inverttoime-letter sheet1 front back
1
2 0
3
0 10 9 10
0 9 -1 0
0 12 0 1
8000
end_operator
begin_operator
uc1-toime-letter sheet1
1
2 0
1
0 10 9 10
2999
end_operator
begin_operator
uime-simplex-letter sheet1 back image-1
2
1 0
9 0
2
0 10 10 11
0 11 0 1
127790
end_operator
begin_operator
uime-simplex-letter sheet1 front image-1
2
1 0
12 0
3
0 14 -1 0
0 10 10 11
0 8 0 1
127790
end_operator
0

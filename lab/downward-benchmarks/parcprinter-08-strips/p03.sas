begin_version
3
end_version
begin_metric
1
end_metric
25
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
Atom available(up-rsrc)
NegatedAtom available(up-rsrc)
end_variable
begin_variable
var2
-1
2
Atom available(finisher2-rsrc)
NegatedAtom available(finisher2-rsrc)
end_variable
begin_variable
var3
-1
2
Atom available(finisher1-rsrc)
NegatedAtom available(finisher1-rsrc)
end_variable
begin_variable
var4
-1
2
Atom available(down-rsrc)
NegatedAtom available(down-rsrc)
end_variable
begin_variable
var5
-1
2
Atom available(colorprinter-rsrc)
NegatedAtom available(colorprinter-rsrc)
end_variable
begin_variable
var6
-1
2
Atom available(colorfeeder-rsrc)
NegatedAtom available(colorfeeder-rsrc)
end_variable
begin_variable
var7
-1
2
Atom available(colorcontainer-rsrc)
NegatedAtom available(colorcontainer-rsrc)
end_variable
begin_variable
var8
-1
2
Atom available(blackfeeder-rsrc)
NegatedAtom available(blackfeeder-rsrc)
end_variable
begin_variable
var9
-1
2
Atom available(blackcontainer-rsrc)
NegatedAtom available(blackcontainer-rsrc)
end_variable
begin_variable
var10
-1
12
Atom location(sheet1, blackcontainer_entry-blackfeeder_exit)
Atom location(sheet1, blackcontainer_exittoime-blackprinter_entry)
Atom location(sheet1, colorcontainer_entry-down_bottomexit)
Atom location(sheet1, colorcontainer_exit-up_bottomentry)
Atom location(sheet1, colorcontainer_exittoime-colorprinter_entry)
Atom location(sheet1, colorprinter_exit-colorcontainer_entryfromime)
Atom location(sheet1, down_bottomentry-colorfeeder_exit)
Atom location(sheet1, finisher1_entry-up_topexit)
Atom location(sheet1, finisher2_entry-finisher1_exit)
Atom location(sheet1, finisher2_exit)
Atom location(sheet1, some_feeder_tray)
Atom location(sheet1, some_finisher_tray)
end_variable
begin_variable
var11
-1
2
Atom notprintedwith(sheet1, front, color)
NegatedAtom notprintedwith(sheet1, front, color)
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
Atom stackedin(sheet1, finisher1_tray)
NegatedAtom stackedin(sheet1, finisher1_tray)
end_variable
begin_variable
var14
-1
12
Atom location(sheet2, blackcontainer_entry-blackfeeder_exit)
Atom location(sheet2, blackcontainer_exittoime-blackprinter_entry)
Atom location(sheet2, colorcontainer_entry-down_bottomexit)
Atom location(sheet2, colorcontainer_exit-up_bottomentry)
Atom location(sheet2, colorcontainer_exittoime-colorprinter_entry)
Atom location(sheet2, colorprinter_exit-colorcontainer_entryfromime)
Atom location(sheet2, down_bottomentry-colorfeeder_exit)
Atom location(sheet2, finisher1_entry-up_topexit)
Atom location(sheet2, finisher2_entry-finisher1_exit)
Atom location(sheet2, finisher2_exit)
Atom location(sheet2, some_feeder_tray)
Atom location(sheet2, some_finisher_tray)
end_variable
begin_variable
var15
-1
2
Atom notprintedwith(sheet2, front, color)
NegatedAtom notprintedwith(sheet2, front, color)
end_variable
begin_variable
var16
-1
2
Atom sideup(sheet2, front)
NegatedAtom sideup(sheet2, front)
end_variable
begin_variable
var17
-1
2
Atom stackedin(sheet2, finisher1_tray)
NegatedAtom stackedin(sheet2, finisher1_tray)
end_variable
begin_variable
var18
-1
12
Atom location(sheet3, blackcontainer_entry-blackfeeder_exit)
Atom location(sheet3, blackcontainer_exittoime-blackprinter_entry)
Atom location(sheet3, colorcontainer_entry-down_bottomexit)
Atom location(sheet3, colorcontainer_exit-up_bottomentry)
Atom location(sheet3, colorcontainer_exittoime-colorprinter_entry)
Atom location(sheet3, colorprinter_exit-colorcontainer_entryfromime)
Atom location(sheet3, down_bottomentry-colorfeeder_exit)
Atom location(sheet3, finisher1_entry-up_topexit)
Atom location(sheet3, finisher2_entry-finisher1_exit)
Atom location(sheet3, finisher2_exit)
Atom location(sheet3, some_feeder_tray)
Atom location(sheet3, some_finisher_tray)
end_variable
begin_variable
var19
-1
2
Atom notprintedwith(sheet3, front, color)
NegatedAtom notprintedwith(sheet3, front, color)
end_variable
begin_variable
var20
-1
2
Atom sideup(sheet3, front)
NegatedAtom sideup(sheet3, front)
end_variable
begin_variable
var21
-1
2
Atom stackedin(sheet3, finisher1_tray)
NegatedAtom stackedin(sheet3, finisher1_tray)
end_variable
begin_variable
var22
-1
2
Atom hasimage(sheet3, front, image-3)
NegatedAtom hasimage(sheet3, front, image-3)
end_variable
begin_variable
var23
-1
2
Atom hasimage(sheet2, front, image-2)
NegatedAtom hasimage(sheet2, front, image-2)
end_variable
begin_variable
var24
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
1
1
10
0
1
1
10
0
1
1
10
0
1
1
1
1
1
end_state
begin_goal
9
12 0
13 0
16 0
17 0
20 0
21 0
22 0
23 0
24 0
end_goal
43
begin_operator
blackcontainer-toime-letter sheet1
1
9 0
1
0 10 0 1
2000
end_operator
begin_operator
blackcontainer-toime-letter sheet2
1
9 0
1
0 14 0 1
2000
end_operator
begin_operator
blackcontainer-toime-letter sheet3
1
9 0
1
0 18 0 1
2000
end_operator
begin_operator
blackfeeder-feed-letter sheet1
1
8 0
2
0 10 10 0
0 12 -1 0
8000
end_operator
begin_operator
blackfeeder-feed-letter sheet2
1
8 0
2
0 14 10 0
0 16 -1 0
8000
end_operator
begin_operator
blackfeeder-feed-letter sheet3
1
8 0
2
0 18 10 0
0 20 -1 0
8000
end_operator
begin_operator
colorcontainer-fromime-letter sheet1
1
7 0
1
0 10 5 3
8000
end_operator
begin_operator
colorcontainer-fromime-letter sheet2
1
7 0
1
0 14 5 3
8000
end_operator
begin_operator
colorcontainer-fromime-letter sheet3
1
7 0
1
0 18 5 3
8000
end_operator
begin_operator
colorcontainer-toime-letter sheet1
1
7 0
1
0 10 2 4
8000
end_operator
begin_operator
colorcontainer-toime-letter sheet2
1
7 0
1
0 14 2 4
8000
end_operator
begin_operator
colorcontainer-toime-letter sheet3
1
7 0
1
0 18 2 4
8000
end_operator
begin_operator
colorfeeder-feed-letter sheet1
1
6 0
2
0 10 10 6
0 12 -1 0
8000
end_operator
begin_operator
colorfeeder-feed-letter sheet2
1
6 0
2
0 14 10 6
0 16 -1 0
8000
end_operator
begin_operator
colorfeeder-feed-letter sheet3
1
6 0
2
0 18 10 6
0 20 -1 0
8000
end_operator
begin_operator
colorprinter-simplex-letter sheet1 front image-1
2
5 0
12 0
3
0 24 -1 0
0 10 4 5
0 11 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet1 front image-2
2
5 0
12 0
2
0 10 4 5
0 11 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet1 front image-3
2
5 0
12 0
2
0 10 4 5
0 11 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet2 front image-1
2
5 0
16 0
2
0 14 4 5
0 15 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet2 front image-2
2
5 0
16 0
3
0 23 -1 0
0 14 4 5
0 15 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet2 front image-3
2
5 0
16 0
2
0 14 4 5
0 15 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet3 front image-1
2
5 0
20 0
2
0 18 4 5
0 19 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet3 front image-2
2
5 0
20 0
2
0 18 4 5
0 19 0 1
224040
end_operator
begin_operator
colorprinter-simplex-letter sheet3 front image-3
2
5 0
20 0
3
0 22 -1 0
0 18 4 5
0 19 0 1
224040
end_operator
begin_operator
down-movebottom-letter sheet1
1
4 0
1
0 10 6 2
2999
end_operator
begin_operator
down-movebottom-letter sheet2
1
4 0
1
0 14 6 2
2999
end_operator
begin_operator
down-movebottom-letter sheet3
1
4 0
1
0 18 6 2
2999
end_operator
begin_operator
finisher1-passthrough-letter sheet1
1
3 0
1
0 10 7 8
8000
end_operator
begin_operator
finisher1-passthrough-letter sheet2
1
3 0
1
0 14 7 8
8000
end_operator
begin_operator
finisher1-passthrough-letter sheet3
1
3 0
1
0 18 7 8
8000
end_operator
begin_operator
finisher1-stack-letter sheet1 dummy-sheet
1
3 0
2
0 10 7 11
0 13 -1 0
8000
end_operator
begin_operator
finisher1-stack-letter sheet2 sheet1
2
3 0
10 11
2
0 14 7 11
0 17 -1 0
8000
end_operator
begin_operator
finisher1-stack-letter sheet3 sheet2
2
3 0
14 11
2
0 18 7 11
0 21 -1 0
8000
end_operator
begin_operator
finisher2-passthrough-letter sheet1
1
2 0
1
0 10 8 9
8000
end_operator
begin_operator
finisher2-passthrough-letter sheet2
1
2 0
1
0 14 8 9
8000
end_operator
begin_operator
finisher2-passthrough-letter sheet3
1
2 0
1
0 18 8 9
8000
end_operator
begin_operator
finisher2-stack-letter sheet1 dummy-sheet
1
2 0
1
0 10 8 11
8000
end_operator
begin_operator
finisher2-stack-letter sheet2 sheet1
2
2 0
10 11
1
0 14 8 11
8000
end_operator
begin_operator
finisher2-stack-letter sheet3 sheet2
2
2 0
14 11
1
0 18 8 11
8000
end_operator
begin_operator
initialize 
0
10
0 9 -1 0
0 8 -1 0
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
up-moveup-letter sheet1
1
1 0
1
0 10 3 7
9999
end_operator
begin_operator
up-moveup-letter sheet2
1
1 0
1
0 14 3 7
9999
end_operator
begin_operator
up-moveup-letter sheet3
1
1 0
1
0 18 3 7
9999
end_operator
0

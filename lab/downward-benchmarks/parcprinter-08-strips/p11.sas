begin_version
3
end_version
begin_metric
1
end_metric
22
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
Atom available(ure-rsrc)
NegatedAtom available(ure-rsrc)
end_variable
begin_variable
var2
-1
2
Atom available(uc2-rsrc)
NegatedAtom available(uc2-rsrc)
end_variable
begin_variable
var3
-1
2
Atom available(uc1-rsrc)
NegatedAtom available(uc1-rsrc)
end_variable
begin_variable
var4
-1
2
Atom available(ube-rsrc)
NegatedAtom available(ube-rsrc)
end_variable
begin_variable
var5
-1
2
Atom available(sys-rsrc)
NegatedAtom available(sys-rsrc)
end_variable
begin_variable
var6
-1
2
Atom available(rh2-rsrc)
NegatedAtom available(rh2-rsrc)
end_variable
begin_variable
var7
-1
2
Atom available(rh1-rsrc)
NegatedAtom available(rh1-rsrc)
end_variable
begin_variable
var8
-1
2
Atom available(om-rsrc)
NegatedAtom available(om-rsrc)
end_variable
begin_variable
var9
-1
2
Atom available(lre-rsrc)
NegatedAtom available(lre-rsrc)
end_variable
begin_variable
var10
-1
2
Atom available(lc2-rsrc)
NegatedAtom available(lc2-rsrc)
end_variable
begin_variable
var11
-1
2
Atom available(lc1-rsrc)
NegatedAtom available(lc1-rsrc)
end_variable
begin_variable
var12
-1
2
Atom available(lbe-rsrc)
NegatedAtom available(lbe-rsrc)
end_variable
begin_variable
var13
-1
2
Atom available(im1-rsrc)
NegatedAtom available(im1-rsrc)
end_variable
begin_variable
var14
-1
2
Atom available(fe1-rsrc)
NegatedAtom available(fe1-rsrc)
end_variable
begin_variable
var15
-1
2
Atom notprintedwith(sheet1, front, black)
NegatedAtom notprintedwith(sheet1, front, black)
end_variable
begin_variable
var16
-1
2
Atom sideup(sheet1, back)
NegatedAtom sideup(sheet1, back)
end_variable
begin_variable
var17
-1
21
Atom location(sheet1, fe1_exit-im1_feedentry)
Atom location(sheet1, im1_bottomexit-lc1_entry)
Atom location(sheet1, lbe_entry-lc1_offramp)
Atom location(sheet1, lc1_exit-lc2_entry)
Atom location(sheet1, lc1_onramp-lbe_exit)
Atom location(sheet1, lc2_onramp-lre_exit)
Atom location(sheet1, lre_entry-lc2_offramp)
Atom location(sheet1, om_bottomentry-lc2_exit)
Atom location(sheet1, om_outputexit-sys_entry)
Atom location(sheet1, om_returnexit-rh2_entry)
Atom location(sheet1, rh1_entry-rh2_exit)
Atom location(sheet1, rh1_exit-im1_returnentry)
Atom location(sheet1, some_feeder_tray)
Atom location(sheet1, some_finisher_tray)
Atom location(sheet1, ube_entry-uc1_offramp)
Atom location(sheet1, uc1_entry-im1_topexit)
Atom location(sheet1, uc1_onramp-ube_exit)
Atom location(sheet1, uc2_entry-uc1_exit)
Atom location(sheet1, uc2_exit-om_topentry)
Atom location(sheet1, ure_entry-uc2_offramp)
Atom location(sheet1, ure_exit-uc2_onramp)
end_variable
begin_variable
var18
-1
2
Atom notprintedwith(sheet1, back, black)
NegatedAtom notprintedwith(sheet1, back, black)
end_variable
begin_variable
var19
-1
2
Atom sideup(sheet1, front)
NegatedAtom sideup(sheet1, front)
end_variable
begin_variable
var20
-1
2
Atom stackedin(sheet1, sys_outputtray)
NegatedAtom stackedin(sheet1, sys_outputtray)
end_variable
begin_variable
var21
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
1
1
1
1
1
0
1
12
0
1
1
1
end_state
begin_goal
4
18 0
19 0
20 0
21 0
end_goal
46
begin_operator
fe1-feed-letter sheet1
1
14 0
2
0 17 12 0
0 16 -1 0
899
end_operator
begin_operator
fe1-feedmsi-letter sheet1
1
14 0
2
0 17 12 0
0 16 -1 0
500
end_operator
begin_operator
im1-looplower-letter sheet1
1
13 0
1
0 17 11 1
3131
end_operator
begin_operator
im1-loopupper-letter sheet1
1
13 0
1
0 17 11 15
8164
end_operator
begin_operator
im1-movelower-letter sheet1
1
13 0
1
0 17 0 1
3088
end_operator
begin_operator
im1-moveupper-letter sheet1
1
13 0
1
0 17 0 15
8171
end_operator
begin_operator
initialize 
0
15
0 14 -1 0
0 13 -1 0
0 12 -1 0
0 11 -1 0
0 10 -1 0
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
lbe-simplex-letter sheet1 back image-1
2
12 0
16 0
2
0 17 2 4
0 18 0 1
123749
end_operator
begin_operator
lbe-simplex-letter sheet1 front image-1
2
12 0
19 0
3
0 21 -1 0
0 17 2 4
0 15 0 1
123749
end_operator
begin_operator
lc1-divert-letter sheet1 back front
1
11 0
3
0 17 1 2
0 16 0 1
0 19 -1 0
11805
end_operator
begin_operator
lc1-divert-letter sheet1 front back
1
11 0
3
0 17 1 2
0 16 -1 0
0 19 0 1
11805
end_operator
begin_operator
lc1-fmove-letter sheet1
1
11 0
1
0 17 1 3
10890
end_operator
begin_operator
lc1-merge-letter sheet1
1
11 0
1
0 17 4 3
27709
end_operator
begin_operator
lc1-mergeinvert-letter sheet1 back front
1
11 0
3
0 17 4 3
0 16 0 1
0 19 -1 0
28119
end_operator
begin_operator
lc1-mergeinvert-letter sheet1 front back
1
11 0
3
0 17 4 3
0 16 -1 0
0 19 0 1
28119
end_operator
begin_operator
lc2-divert-letter sheet1 back front
1
10 0
3
0 17 3 6
0 16 0 1
0 19 -1 0
17452
end_operator
begin_operator
lc2-divert-letter sheet1 front back
1
10 0
3
0 17 3 6
0 16 -1 0
0 19 0 1
17452
end_operator
begin_operator
lc2-fmove-letter sheet1
1
10 0
1
0 17 3 7
11207
end_operator
begin_operator
lc2-merge-letter sheet1 back front
1
10 0
3
0 17 5 7
0 16 0 1
0 19 -1 0
78919
end_operator
begin_operator
lc2-merge-letter sheet1 front back
1
10 0
3
0 17 5 7
0 16 -1 0
0 19 0 1
78919
end_operator
begin_operator
lc2-mergeinvert-letter sheet1
1
10 0
1
0 17 5 7
78919
end_operator
begin_operator
lre-simplexmono-letter sheet1 back image-1
2
9 0
16 0
2
0 17 6 5
0 18 0 1
211849
end_operator
begin_operator
lre-simplexmono-letter sheet1 front image-1
2
9 0
19 0
3
0 21 -1 0
0 17 6 5
0 15 0 1
211849
end_operator
begin_operator
om-lowerout-letter sheet1
1
8 0
1
0 17 7 8
3251
end_operator
begin_operator
om-lowerreturn-letter sheet1
1
8 0
1
0 17 7 9
3568
end_operator
begin_operator
om-upperout-letter sheet1
1
8 0
1
0 17 18 8
8037
end_operator
begin_operator
om-upperreturn-letter sheet1
1
8 0
1
0 17 18 9
8343
end_operator
begin_operator
rh1-returnmove-letter sheet1
1
7 0
1
0 17 10 11
10869
end_operator
begin_operator
rh2-returnmove-letter sheet1
1
6 0
1
0 17 9 10
10869
end_operator
begin_operator
sys-stack-letter sheet1 dummy-sheet
1
5 0
2
0 17 8 13
0 20 -1 0
1499
end_operator
begin_operator
ube-simplex-letter sheet1 back image-1
2
4 0
16 0
2
0 17 14 16
0 18 0 1
123749
end_operator
begin_operator
ube-simplex-letter sheet1 front image-1
2
4 0
19 0
3
0 21 -1 0
0 17 14 16
0 15 0 1
123749
end_operator
begin_operator
uc1-divert-letter sheet1 back front
1
3 0
3
0 17 15 14
0 16 0 1
0 19 -1 0
11805
end_operator
begin_operator
uc1-divert-letter sheet1 front back
1
3 0
3
0 17 15 14
0 16 -1 0
0 19 0 1
11805
end_operator
begin_operator
uc1-fmove-letter sheet1
1
3 0
1
0 17 15 17
10890
end_operator
begin_operator
uc1-merge-letter sheet1
1
3 0
1
0 17 16 17
27709
end_operator
begin_operator
uc1-mergeinvert-letter sheet1 back front
1
3 0
3
0 17 16 17
0 16 0 1
0 19 -1 0
28119
end_operator
begin_operator
uc1-mergeinvert-letter sheet1 front back
1
3 0
3
0 17 16 17
0 16 -1 0
0 19 0 1
28119
end_operator
begin_operator
uc2-divert-letter sheet1 back front
1
2 0
3
0 17 17 19
0 16 0 1
0 19 -1 0
17452
end_operator
begin_operator
uc2-divert-letter sheet1 front back
1
2 0
3
0 17 17 19
0 16 -1 0
0 19 0 1
17452
end_operator
begin_operator
uc2-fmove-letter sheet1
1
2 0
1
0 17 17 18
11207
end_operator
begin_operator
uc2-merge-letter sheet1 back front
1
2 0
3
0 17 20 18
0 16 0 1
0 19 -1 0
78919
end_operator
begin_operator
uc2-merge-letter sheet1 front back
1
2 0
3
0 17 20 18
0 16 -1 0
0 19 0 1
78919
end_operator
begin_operator
uc2-mergeinvert-letter sheet1
1
2 0
1
0 17 20 18
78919
end_operator
begin_operator
ure-simplexmono-letter sheet1 back image-1
2
1 0
16 0
2
0 17 19 20
0 18 0 1
211849
end_operator
begin_operator
ure-simplexmono-letter sheet1 front image-1
2
1 0
19 0
3
0 21 -1 0
0 17 19 20
0 15 0 1
211849
end_operator
0

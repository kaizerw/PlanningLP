begin_version
3
end_version
begin_metric
0
end_metric
27
begin_variable
var0
-1
3
Atom at(truck2, depot1)
Atom at(truck2, market1)
Atom at(truck2, market2)
end_variable
begin_variable
var1
-1
3
Atom at(truck1, depot1)
Atom at(truck1, market1)
Atom at(truck1, market2)
end_variable
begin_variable
var2
-1
2
Atom loaded(goods5, truck1, level0)
Atom loaded(goods5, truck1, level1)
end_variable
begin_variable
var3
-1
2
Atom loaded(goods5, truck2, level0)
Atom loaded(goods5, truck2, level1)
end_variable
begin_variable
var4
-1
2
Atom on-sale(goods5, market1, level0)
Atom on-sale(goods5, market1, level1)
end_variable
begin_variable
var5
-1
2
Atom ready-to-load(goods5, market1, level0)
Atom ready-to-load(goods5, market1, level1)
end_variable
begin_variable
var6
-1
2
Atom stored(goods5, level0)
Atom stored(goods5, level1)
end_variable
begin_variable
var7
-1
2
Atom loaded(goods4, truck1, level0)
Atom loaded(goods4, truck1, level1)
end_variable
begin_variable
var8
-1
2
Atom loaded(goods4, truck2, level0)
Atom loaded(goods4, truck2, level1)
end_variable
begin_variable
var9
-1
2
Atom on-sale(goods4, market1, level0)
Atom on-sale(goods4, market1, level1)
end_variable
begin_variable
var10
-1
2
Atom ready-to-load(goods4, market1, level0)
Atom ready-to-load(goods4, market1, level1)
end_variable
begin_variable
var11
-1
2
Atom stored(goods4, level0)
Atom stored(goods4, level1)
end_variable
begin_variable
var12
-1
2
Atom loaded(goods3, truck1, level0)
Atom loaded(goods3, truck1, level1)
end_variable
begin_variable
var13
-1
2
Atom loaded(goods3, truck2, level0)
Atom loaded(goods3, truck2, level1)
end_variable
begin_variable
var14
-1
2
Atom on-sale(goods3, market1, level0)
Atom on-sale(goods3, market1, level1)
end_variable
begin_variable
var15
-1
2
Atom ready-to-load(goods3, market1, level0)
Atom ready-to-load(goods3, market1, level1)
end_variable
begin_variable
var16
-1
2
Atom stored(goods3, level0)
Atom stored(goods3, level1)
end_variable
begin_variable
var17
-1
2
Atom loaded(goods2, truck1, level0)
Atom loaded(goods2, truck1, level1)
end_variable
begin_variable
var18
-1
2
Atom loaded(goods2, truck2, level0)
Atom loaded(goods2, truck2, level1)
end_variable
begin_variable
var19
-1
2
Atom on-sale(goods2, market1, level0)
Atom on-sale(goods2, market1, level1)
end_variable
begin_variable
var20
-1
2
Atom ready-to-load(goods2, market1, level0)
Atom ready-to-load(goods2, market1, level1)
end_variable
begin_variable
var21
-1
2
Atom stored(goods2, level0)
Atom stored(goods2, level1)
end_variable
begin_variable
var22
-1
2
Atom loaded(goods1, truck1, level0)
Atom loaded(goods1, truck1, level1)
end_variable
begin_variable
var23
-1
2
Atom loaded(goods1, truck2, level0)
Atom loaded(goods1, truck2, level1)
end_variable
begin_variable
var24
-1
2
Atom on-sale(goods1, market1, level0)
Atom on-sale(goods1, market1, level1)
end_variable
begin_variable
var25
-1
2
Atom ready-to-load(goods1, market1, level0)
Atom ready-to-load(goods1, market1, level1)
end_variable
begin_variable
var26
-1
2
Atom stored(goods1, level0)
Atom stored(goods1, level1)
end_variable
0
begin_state
0
0
0
0
1
0
0
0
0
1
0
0
0
0
1
0
0
0
0
1
0
0
0
0
1
0
0
end_state
begin_goal
5
6 1
11 1
16 1
21 1
26 1
end_goal
38
begin_operator
buy truck1 goods1 market1 level0 level1 level0 level1
1
1 1
2
0 24 1 0
0 25 0 1
1
end_operator
begin_operator
buy truck1 goods2 market1 level0 level1 level0 level1
1
1 1
2
0 19 1 0
0 20 0 1
1
end_operator
begin_operator
buy truck1 goods3 market1 level0 level1 level0 level1
1
1 1
2
0 14 1 0
0 15 0 1
1
end_operator
begin_operator
buy truck1 goods4 market1 level0 level1 level0 level1
1
1 1
2
0 9 1 0
0 10 0 1
1
end_operator
begin_operator
buy truck1 goods5 market1 level0 level1 level0 level1
1
1 1
2
0 4 1 0
0 5 0 1
1
end_operator
begin_operator
buy truck2 goods1 market1 level0 level1 level0 level1
1
0 1
2
0 24 1 0
0 25 0 1
1
end_operator
begin_operator
buy truck2 goods2 market1 level0 level1 level0 level1
1
0 1
2
0 19 1 0
0 20 0 1
1
end_operator
begin_operator
buy truck2 goods3 market1 level0 level1 level0 level1
1
0 1
2
0 14 1 0
0 15 0 1
1
end_operator
begin_operator
buy truck2 goods4 market1 level0 level1 level0 level1
1
0 1
2
0 9 1 0
0 10 0 1
1
end_operator
begin_operator
buy truck2 goods5 market1 level0 level1 level0 level1
1
0 1
2
0 4 1 0
0 5 0 1
1
end_operator
begin_operator
drive truck1 depot1 market2
0
1
0 1 0 2
1
end_operator
begin_operator
drive truck1 market1 market2
0
1
0 1 1 2
1
end_operator
begin_operator
drive truck1 market2 depot1
0
1
0 1 2 0
1
end_operator
begin_operator
drive truck1 market2 market1
0
1
0 1 2 1
1
end_operator
begin_operator
drive truck2 depot1 market2
0
1
0 0 0 2
1
end_operator
begin_operator
drive truck2 market1 market2
0
1
0 0 1 2
1
end_operator
begin_operator
drive truck2 market2 depot1
0
1
0 0 2 0
1
end_operator
begin_operator
drive truck2 market2 market1
0
1
0 0 2 1
1
end_operator
begin_operator
load goods1 truck1 market1 level0 level1 level0 level1
1
1 1
2
0 22 0 1
0 25 1 0
1
end_operator
begin_operator
load goods1 truck2 market1 level0 level1 level0 level1
1
0 1
2
0 23 0 1
0 25 1 0
1
end_operator
begin_operator
load goods2 truck1 market1 level0 level1 level0 level1
1
1 1
2
0 17 0 1
0 20 1 0
1
end_operator
begin_operator
load goods2 truck2 market1 level0 level1 level0 level1
1
0 1
2
0 18 0 1
0 20 1 0
1
end_operator
begin_operator
load goods3 truck1 market1 level0 level1 level0 level1
1
1 1
2
0 12 0 1
0 15 1 0
1
end_operator
begin_operator
load goods3 truck2 market1 level0 level1 level0 level1
1
0 1
2
0 13 0 1
0 15 1 0
1
end_operator
begin_operator
load goods4 truck1 market1 level0 level1 level0 level1
1
1 1
2
0 7 0 1
0 10 1 0
1
end_operator
begin_operator
load goods4 truck2 market1 level0 level1 level0 level1
1
0 1
2
0 8 0 1
0 10 1 0
1
end_operator
begin_operator
load goods5 truck1 market1 level0 level1 level0 level1
1
1 1
2
0 2 0 1
0 5 1 0
1
end_operator
begin_operator
load goods5 truck2 market1 level0 level1 level0 level1
1
0 1
2
0 3 0 1
0 5 1 0
1
end_operator
begin_operator
unload goods1 truck1 depot1 level0 level1 level0 level1
1
1 0
2
0 22 1 0
0 26 0 1
1
end_operator
begin_operator
unload goods1 truck2 depot1 level0 level1 level0 level1
1
0 0
2
0 23 1 0
0 26 0 1
1
end_operator
begin_operator
unload goods2 truck1 depot1 level0 level1 level0 level1
1
1 0
2
0 17 1 0
0 21 0 1
1
end_operator
begin_operator
unload goods2 truck2 depot1 level0 level1 level0 level1
1
0 0
2
0 18 1 0
0 21 0 1
1
end_operator
begin_operator
unload goods3 truck1 depot1 level0 level1 level0 level1
1
1 0
2
0 12 1 0
0 16 0 1
1
end_operator
begin_operator
unload goods3 truck2 depot1 level0 level1 level0 level1
1
0 0
2
0 13 1 0
0 16 0 1
1
end_operator
begin_operator
unload goods4 truck1 depot1 level0 level1 level0 level1
1
1 0
2
0 7 1 0
0 11 0 1
1
end_operator
begin_operator
unload goods4 truck2 depot1 level0 level1 level0 level1
1
0 0
2
0 8 1 0
0 11 0 1
1
end_operator
begin_operator
unload goods5 truck1 depot1 level0 level1 level0 level1
1
1 0
2
0 2 1 0
0 6 0 1
1
end_operator
begin_operator
unload goods5 truck2 depot1 level0 level1 level0 level1
1
0 0
2
0 3 1 0
0 6 0 1
1
end_operator
0

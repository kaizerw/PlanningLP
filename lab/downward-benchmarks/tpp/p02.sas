begin_version
3
end_version
begin_metric
0
end_metric
9
begin_variable
var0
-1
2
Atom at(truck1, depot1)
Atom at(truck1, market1)
end_variable
begin_variable
var1
-1
2
Atom on-sale(goods2, market1, level0)
Atom on-sale(goods2, market1, level1)
end_variable
begin_variable
var2
-1
2
Atom ready-to-load(goods2, market1, level0)
Atom ready-to-load(goods2, market1, level1)
end_variable
begin_variable
var3
-1
2
Atom loaded(goods2, truck1, level0)
Atom loaded(goods2, truck1, level1)
end_variable
begin_variable
var4
-1
2
Atom stored(goods2, level0)
Atom stored(goods2, level1)
end_variable
begin_variable
var5
-1
2
Atom on-sale(goods1, market1, level0)
Atom on-sale(goods1, market1, level1)
end_variable
begin_variable
var6
-1
2
Atom ready-to-load(goods1, market1, level0)
Atom ready-to-load(goods1, market1, level1)
end_variable
begin_variable
var7
-1
2
Atom loaded(goods1, truck1, level0)
Atom loaded(goods1, truck1, level1)
end_variable
begin_variable
var8
-1
2
Atom stored(goods1, level0)
Atom stored(goods1, level1)
end_variable
0
begin_state
0
1
0
0
0
1
0
0
0
end_state
begin_goal
2
4 1
8 1
end_goal
8
begin_operator
buy truck1 goods1 market1 level0 level1 level0 level1
1
0 1
2
0 5 1 0
0 6 0 1
1
end_operator
begin_operator
buy truck1 goods2 market1 level0 level1 level0 level1
1
0 1
2
0 1 1 0
0 2 0 1
1
end_operator
begin_operator
drive truck1 depot1 market1
0
1
0 0 0 1
1
end_operator
begin_operator
drive truck1 market1 depot1
0
1
0 0 1 0
1
end_operator
begin_operator
load goods1 truck1 market1 level0 level1 level0 level1
1
0 1
2
0 7 0 1
0 6 1 0
1
end_operator
begin_operator
load goods2 truck1 market1 level0 level1 level0 level1
1
0 1
2
0 3 0 1
0 2 1 0
1
end_operator
begin_operator
unload goods1 truck1 depot1 level0 level1 level0 level1
1
0 0
2
0 7 1 0
0 8 0 1
1
end_operator
begin_operator
unload goods2 truck1 depot1 level0 level1 level0 level1
1
0 0
2
0 3 1 0
0 4 0 1
1
end_operator
0

begin_version
3
end_version
begin_metric
0
end_metric
4
begin_variable
var0
-1
4
Atom at-robot(loc-x0-y0)
Atom at-robot(loc-x0-y1)
Atom at-robot(loc-x1-y0)
Atom at-robot(loc-x1-y1)
end_variable
begin_variable
var1
-1
2
Atom visited(loc-x1-y0)
NegatedAtom visited(loc-x1-y0)
end_variable
begin_variable
var2
-1
2
Atom visited(loc-x0-y1)
NegatedAtom visited(loc-x0-y1)
end_variable
begin_variable
var3
-1
2
Atom visited(loc-x0-y0)
NegatedAtom visited(loc-x0-y0)
end_variable
0
begin_state
3
1
1
1
end_state
begin_goal
3
1 0
2 0
3 0
end_goal
8
begin_operator
move loc-x0-y0 loc-x0-y1
0
2
0 0 0 1
0 2 -1 0
1
end_operator
begin_operator
move loc-x0-y0 loc-x1-y0
0
2
0 0 0 2
0 1 -1 0
1
end_operator
begin_operator
move loc-x0-y1 loc-x0-y0
0
2
0 0 1 0
0 3 -1 0
1
end_operator
begin_operator
move loc-x0-y1 loc-x1-y1
0
1
0 0 1 3
1
end_operator
begin_operator
move loc-x1-y0 loc-x0-y0
0
2
0 0 2 0
0 3 -1 0
1
end_operator
begin_operator
move loc-x1-y0 loc-x1-y1
0
1
0 0 2 3
1
end_operator
begin_operator
move loc-x1-y1 loc-x0-y1
0
2
0 0 3 1
0 2 -1 0
1
end_operator
begin_operator
move loc-x1-y1 loc-x1-y0
0
2
0 0 3 2
0 1 -1 0
1
end_operator
0

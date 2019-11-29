begin_version
3
end_version
begin_metric
0
end_metric
6
begin_variable
var0
-1
3
Atom at(hoist0, container-0-0)
Atom at(hoist0, depot0-1-1)
Atom at(hoist0, loadarea)
end_variable
begin_variable
var1
-1
2
Atom clear(container-0-0)
NegatedAtom clear(container-0-0)
end_variable
begin_variable
var2
-1
2
Atom clear(depot0-1-1)
NegatedAtom clear(depot0-1-1)
end_variable
begin_variable
var3
-1
3
Atom lifting(hoist0, crate0)
Atom on(crate0, container-0-0)
Atom on(crate0, depot0-1-1)
end_variable
begin_variable
var4
-1
2
Atom available(hoist0)
NegatedAtom available(hoist0)
end_variable
begin_variable
var5
-1
2
Atom in(crate0, depot0)
NegatedAtom in(crate0, depot0)
end_variable
1
begin_mutex_group
2
4 0
3 0
end_mutex_group
begin_state
1
1
1
1
0
1
end_state
begin_goal
1
5 0
end_goal
8
begin_operator
drop hoist0 crate0 container-0-0 loadarea container0
1
0 2
3
0 4 -1 0
0 1 0 1
0 3 0 1
1
end_operator
begin_operator
drop hoist0 crate0 depot0-1-1 loadarea depot0
1
0 2
4
0 4 -1 0
0 2 0 1
0 5 -1 0
0 3 0 2
1
end_operator
begin_operator
go-in hoist0 loadarea container-0-0
0
2
0 0 2 0
0 1 0 1
1
end_operator
begin_operator
go-in hoist0 loadarea depot0-1-1
0
2
0 0 2 1
0 2 0 1
1
end_operator
begin_operator
go-out hoist0 container-0-0 loadarea
0
2
0 0 0 2
0 1 -1 0
1
end_operator
begin_operator
go-out hoist0 depot0-1-1 loadarea
0
2
0 0 1 2
0 2 -1 0
1
end_operator
begin_operator
lift hoist0 crate0 container-0-0 loadarea container0
1
0 2
3
0 4 0 1
0 1 -1 0
0 3 1 0
1
end_operator
begin_operator
lift hoist0 crate0 depot0-1-1 loadarea depot0
1
0 2
4
0 4 0 1
0 2 -1 0
0 5 -1 1
0 3 2 0
1
end_operator
0

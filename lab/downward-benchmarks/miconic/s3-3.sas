begin_version
3
end_version
begin_metric
0
end_metric
7
begin_variable
var0
-1
6
Atom lift-at(f0)
Atom lift-at(f1)
Atom lift-at(f2)
Atom lift-at(f3)
Atom lift-at(f4)
Atom lift-at(f5)
end_variable
begin_variable
var1
-1
2
Atom boarded(p2)
NegatedAtom boarded(p2)
end_variable
begin_variable
var2
-1
2
Atom served(p2)
NegatedAtom served(p2)
end_variable
begin_variable
var3
-1
2
Atom boarded(p1)
NegatedAtom boarded(p1)
end_variable
begin_variable
var4
-1
2
Atom served(p1)
NegatedAtom served(p1)
end_variable
begin_variable
var5
-1
2
Atom boarded(p0)
NegatedAtom boarded(p0)
end_variable
begin_variable
var6
-1
2
Atom served(p0)
NegatedAtom served(p0)
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
end_state
begin_goal
3
2 0
4 0
6 0
end_goal
36
begin_operator
board f0 p2
1
0 0
1
0 1 -1 0
1
end_operator
begin_operator
board f1 p1
1
0 1
1
0 3 -1 0
1
end_operator
begin_operator
board f5 p0
1
0 5
1
0 5 -1 0
1
end_operator
begin_operator
depart f0 p0
1
0 0
2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
depart f3 p1
1
0 3
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
depart f5 p2
1
0 5
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
down f1 f0
0
1
0 0 1 0
1
end_operator
begin_operator
down f2 f0
0
1
0 0 2 0
1
end_operator
begin_operator
down f2 f1
0
1
0 0 2 1
1
end_operator
begin_operator
down f3 f0
0
1
0 0 3 0
1
end_operator
begin_operator
down f3 f1
0
1
0 0 3 1
1
end_operator
begin_operator
down f3 f2
0
1
0 0 3 2
1
end_operator
begin_operator
down f4 f0
0
1
0 0 4 0
1
end_operator
begin_operator
down f4 f1
0
1
0 0 4 1
1
end_operator
begin_operator
down f4 f2
0
1
0 0 4 2
1
end_operator
begin_operator
down f4 f3
0
1
0 0 4 3
1
end_operator
begin_operator
down f5 f0
0
1
0 0 5 0
1
end_operator
begin_operator
down f5 f1
0
1
0 0 5 1
1
end_operator
begin_operator
down f5 f2
0
1
0 0 5 2
1
end_operator
begin_operator
down f5 f3
0
1
0 0 5 3
1
end_operator
begin_operator
down f5 f4
0
1
0 0 5 4
1
end_operator
begin_operator
up f0 f1
0
1
0 0 0 1
1
end_operator
begin_operator
up f0 f2
0
1
0 0 0 2
1
end_operator
begin_operator
up f0 f3
0
1
0 0 0 3
1
end_operator
begin_operator
up f0 f4
0
1
0 0 0 4
1
end_operator
begin_operator
up f0 f5
0
1
0 0 0 5
1
end_operator
begin_operator
up f1 f2
0
1
0 0 1 2
1
end_operator
begin_operator
up f1 f3
0
1
0 0 1 3
1
end_operator
begin_operator
up f1 f4
0
1
0 0 1 4
1
end_operator
begin_operator
up f1 f5
0
1
0 0 1 5
1
end_operator
begin_operator
up f2 f3
0
1
0 0 2 3
1
end_operator
begin_operator
up f2 f4
0
1
0 0 2 4
1
end_operator
begin_operator
up f2 f5
0
1
0 0 2 5
1
end_operator
begin_operator
up f3 f4
0
1
0 0 3 4
1
end_operator
begin_operator
up f3 f5
0
1
0 0 3 5
1
end_operator
begin_operator
up f4 f5
0
1
0 0 4 5
1
end_operator
0

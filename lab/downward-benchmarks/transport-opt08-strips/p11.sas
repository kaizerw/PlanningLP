begin_version
3
end_version
begin_metric
1
end_metric
6
begin_variable
var0
-1
4
Atom at(truck-2, city-1-loc-1)
Atom at(truck-2, city-1-loc-2)
Atom at(truck-2, city-2-loc-1)
Atom at(truck-2, city-2-loc-2)
end_variable
begin_variable
var1
-1
4
Atom at(truck-1, city-1-loc-1)
Atom at(truck-1, city-1-loc-2)
Atom at(truck-1, city-2-loc-1)
Atom at(truck-1, city-2-loc-2)
end_variable
begin_variable
var2
-1
5
Atom capacity(truck-1, capacity-0)
Atom capacity(truck-1, capacity-1)
Atom capacity(truck-1, capacity-2)
Atom capacity(truck-1, capacity-3)
Atom capacity(truck-1, capacity-4)
end_variable
begin_variable
var3
-1
5
Atom capacity(truck-2, capacity-0)
Atom capacity(truck-2, capacity-1)
Atom capacity(truck-2, capacity-2)
Atom capacity(truck-2, capacity-3)
Atom capacity(truck-2, capacity-4)
end_variable
begin_variable
var4
-1
6
Atom at(package-1, city-1-loc-1)
Atom at(package-1, city-1-loc-2)
Atom at(package-1, city-2-loc-1)
Atom at(package-1, city-2-loc-2)
Atom in(package-1, truck-1)
Atom in(package-1, truck-2)
end_variable
begin_variable
var5
-1
6
Atom at(package-2, city-1-loc-1)
Atom at(package-2, city-1-loc-2)
Atom at(package-2, city-2-loc-1)
Atom at(package-2, city-2-loc-2)
Atom in(package-2, truck-1)
Atom in(package-2, truck-2)
end_variable
0
begin_state
3
3
3
3
0
0
end_state
begin_goal
2
4 2
5 3
end_goal
140
begin_operator
drive truck-1 city-1-loc-1 city-1-loc-2
0
1
0 1 0 1
45
end_operator
begin_operator
drive truck-1 city-1-loc-2 city-1-loc-1
0
1
0 1 1 0
45
end_operator
begin_operator
drive truck-1 city-1-loc-2 city-2-loc-2
0
1
0 1 1 3
166
end_operator
begin_operator
drive truck-1 city-2-loc-1 city-2-loc-2
0
1
0 1 2 3
30
end_operator
begin_operator
drive truck-1 city-2-loc-2 city-1-loc-2
0
1
0 1 3 1
166
end_operator
begin_operator
drive truck-1 city-2-loc-2 city-2-loc-1
0
1
0 1 3 2
30
end_operator
begin_operator
drive truck-2 city-1-loc-1 city-1-loc-2
0
1
0 0 0 1
45
end_operator
begin_operator
drive truck-2 city-1-loc-2 city-1-loc-1
0
1
0 0 1 0
45
end_operator
begin_operator
drive truck-2 city-1-loc-2 city-2-loc-2
0
1
0 0 1 3
166
end_operator
begin_operator
drive truck-2 city-2-loc-1 city-2-loc-2
0
1
0 0 2 3
30
end_operator
begin_operator
drive truck-2 city-2-loc-2 city-1-loc-2
0
1
0 0 3 1
166
end_operator
begin_operator
drive truck-2 city-2-loc-2 city-2-loc-1
0
1
0 0 3 2
30
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-1 capacity-0 capacity-1
1
1 0
2
0 4 4 0
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-1 capacity-1 capacity-2
1
1 0
2
0 4 4 0
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-1 capacity-2 capacity-3
1
1 0
2
0 4 4 0
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-1 capacity-3 capacity-4
1
1 0
2
0 4 4 0
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-2 capacity-0 capacity-1
1
1 0
2
0 5 4 0
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-2 capacity-1 capacity-2
1
1 0
2
0 5 4 0
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-2 capacity-2 capacity-3
1
1 0
2
0 5 4 0
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-1-loc-1 package-2 capacity-3 capacity-4
1
1 0
2
0 5 4 0
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-1 capacity-0 capacity-1
1
1 1
2
0 4 4 1
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-1 capacity-1 capacity-2
1
1 1
2
0 4 4 1
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-1 capacity-2 capacity-3
1
1 1
2
0 4 4 1
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-1 capacity-3 capacity-4
1
1 1
2
0 4 4 1
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-2 capacity-0 capacity-1
1
1 1
2
0 5 4 1
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-2 capacity-1 capacity-2
1
1 1
2
0 5 4 1
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-2 capacity-2 capacity-3
1
1 1
2
0 5 4 1
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-1-loc-2 package-2 capacity-3 capacity-4
1
1 1
2
0 5 4 1
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-1 capacity-0 capacity-1
1
1 2
2
0 4 4 2
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-1 capacity-1 capacity-2
1
1 2
2
0 4 4 2
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-1 capacity-2 capacity-3
1
1 2
2
0 4 4 2
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-1 capacity-3 capacity-4
1
1 2
2
0 4 4 2
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-2 capacity-0 capacity-1
1
1 2
2
0 5 4 2
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-2 capacity-1 capacity-2
1
1 2
2
0 5 4 2
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-2 capacity-2 capacity-3
1
1 2
2
0 5 4 2
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-2-loc-1 package-2 capacity-3 capacity-4
1
1 2
2
0 5 4 2
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-1 capacity-0 capacity-1
1
1 3
2
0 4 4 3
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-1 capacity-1 capacity-2
1
1 3
2
0 4 4 3
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-1 capacity-2 capacity-3
1
1 3
2
0 4 4 3
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-1 capacity-3 capacity-4
1
1 3
2
0 4 4 3
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-2 capacity-0 capacity-1
1
1 3
2
0 5 4 3
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-2 capacity-1 capacity-2
1
1 3
2
0 5 4 3
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-2 capacity-2 capacity-3
1
1 3
2
0 5 4 3
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-2-loc-2 package-2 capacity-3 capacity-4
1
1 3
2
0 5 4 3
0 2 3 4
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-1 capacity-0 capacity-1
1
0 0
2
0 4 5 0
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-1 capacity-1 capacity-2
1
0 0
2
0 4 5 0
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-1 capacity-2 capacity-3
1
0 0
2
0 4 5 0
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-1 capacity-3 capacity-4
1
0 0
2
0 4 5 0
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-2 capacity-0 capacity-1
1
0 0
2
0 5 5 0
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-2 capacity-1 capacity-2
1
0 0
2
0 5 5 0
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-2 capacity-2 capacity-3
1
0 0
2
0 5 5 0
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-1-loc-1 package-2 capacity-3 capacity-4
1
0 0
2
0 5 5 0
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-1 capacity-0 capacity-1
1
0 1
2
0 4 5 1
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-1 capacity-1 capacity-2
1
0 1
2
0 4 5 1
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-1 capacity-2 capacity-3
1
0 1
2
0 4 5 1
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-1 capacity-3 capacity-4
1
0 1
2
0 4 5 1
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-2 capacity-0 capacity-1
1
0 1
2
0 5 5 1
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-2 capacity-1 capacity-2
1
0 1
2
0 5 5 1
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-2 capacity-2 capacity-3
1
0 1
2
0 5 5 1
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-1-loc-2 package-2 capacity-3 capacity-4
1
0 1
2
0 5 5 1
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-1 capacity-0 capacity-1
1
0 2
2
0 4 5 2
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-1 capacity-1 capacity-2
1
0 2
2
0 4 5 2
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-1 capacity-2 capacity-3
1
0 2
2
0 4 5 2
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-1 capacity-3 capacity-4
1
0 2
2
0 4 5 2
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-2 capacity-0 capacity-1
1
0 2
2
0 5 5 2
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-2 capacity-1 capacity-2
1
0 2
2
0 5 5 2
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-2 capacity-2 capacity-3
1
0 2
2
0 5 5 2
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-2-loc-1 package-2 capacity-3 capacity-4
1
0 2
2
0 5 5 2
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-1 capacity-0 capacity-1
1
0 3
2
0 4 5 3
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-1 capacity-1 capacity-2
1
0 3
2
0 4 5 3
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-1 capacity-2 capacity-3
1
0 3
2
0 4 5 3
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-1 capacity-3 capacity-4
1
0 3
2
0 4 5 3
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-2 capacity-0 capacity-1
1
0 3
2
0 5 5 3
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-2 capacity-1 capacity-2
1
0 3
2
0 5 5 3
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-2 capacity-2 capacity-3
1
0 3
2
0 5 5 3
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-2-loc-2 package-2 capacity-3 capacity-4
1
0 3
2
0 5 5 3
0 3 3 4
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-1 capacity-0 capacity-1
1
1 0
2
0 4 0 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-1 capacity-1 capacity-2
1
1 0
2
0 4 0 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-1 capacity-2 capacity-3
1
1 0
2
0 4 0 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-1 capacity-3 capacity-4
1
1 0
2
0 4 0 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-2 capacity-0 capacity-1
1
1 0
2
0 5 0 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-2 capacity-1 capacity-2
1
1 0
2
0 5 0 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-2 capacity-2 capacity-3
1
1 0
2
0 5 0 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-1 package-2 capacity-3 capacity-4
1
1 0
2
0 5 0 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-1 capacity-0 capacity-1
1
1 1
2
0 4 1 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-1 capacity-1 capacity-2
1
1 1
2
0 4 1 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-1 capacity-2 capacity-3
1
1 1
2
0 4 1 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-1 capacity-3 capacity-4
1
1 1
2
0 4 1 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-2 capacity-0 capacity-1
1
1 1
2
0 5 1 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-2 capacity-1 capacity-2
1
1 1
2
0 5 1 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-2 capacity-2 capacity-3
1
1 1
2
0 5 1 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-1-loc-2 package-2 capacity-3 capacity-4
1
1 1
2
0 5 1 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-1 capacity-0 capacity-1
1
1 2
2
0 4 2 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-1 capacity-1 capacity-2
1
1 2
2
0 4 2 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-1 capacity-2 capacity-3
1
1 2
2
0 4 2 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-1 capacity-3 capacity-4
1
1 2
2
0 4 2 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-2 capacity-0 capacity-1
1
1 2
2
0 5 2 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-2 capacity-1 capacity-2
1
1 2
2
0 5 2 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-2 capacity-2 capacity-3
1
1 2
2
0 5 2 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-1 package-2 capacity-3 capacity-4
1
1 2
2
0 5 2 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-1 capacity-0 capacity-1
1
1 3
2
0 4 3 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-1 capacity-1 capacity-2
1
1 3
2
0 4 3 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-1 capacity-2 capacity-3
1
1 3
2
0 4 3 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-1 capacity-3 capacity-4
1
1 3
2
0 4 3 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-2 capacity-0 capacity-1
1
1 3
2
0 5 3 4
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-2 capacity-1 capacity-2
1
1 3
2
0 5 3 4
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-2 capacity-2 capacity-3
1
1 3
2
0 5 3 4
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-2-loc-2 package-2 capacity-3 capacity-4
1
1 3
2
0 5 3 4
0 2 4 3
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-1 capacity-0 capacity-1
1
0 0
2
0 4 0 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-1 capacity-1 capacity-2
1
0 0
2
0 4 0 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-1 capacity-2 capacity-3
1
0 0
2
0 4 0 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-1 capacity-3 capacity-4
1
0 0
2
0 4 0 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-2 capacity-0 capacity-1
1
0 0
2
0 5 0 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-2 capacity-1 capacity-2
1
0 0
2
0 5 0 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-2 capacity-2 capacity-3
1
0 0
2
0 5 0 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-1 package-2 capacity-3 capacity-4
1
0 0
2
0 5 0 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-1 capacity-0 capacity-1
1
0 1
2
0 4 1 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-1 capacity-1 capacity-2
1
0 1
2
0 4 1 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-1 capacity-2 capacity-3
1
0 1
2
0 4 1 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-1 capacity-3 capacity-4
1
0 1
2
0 4 1 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-2 capacity-0 capacity-1
1
0 1
2
0 5 1 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-2 capacity-1 capacity-2
1
0 1
2
0 5 1 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-2 capacity-2 capacity-3
1
0 1
2
0 5 1 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-1-loc-2 package-2 capacity-3 capacity-4
1
0 1
2
0 5 1 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-1 capacity-0 capacity-1
1
0 2
2
0 4 2 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-1 capacity-1 capacity-2
1
0 2
2
0 4 2 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-1 capacity-2 capacity-3
1
0 2
2
0 4 2 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-1 capacity-3 capacity-4
1
0 2
2
0 4 2 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-2 capacity-0 capacity-1
1
0 2
2
0 5 2 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-2 capacity-1 capacity-2
1
0 2
2
0 5 2 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-2 capacity-2 capacity-3
1
0 2
2
0 5 2 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-1 package-2 capacity-3 capacity-4
1
0 2
2
0 5 2 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-1 capacity-0 capacity-1
1
0 3
2
0 4 3 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-1 capacity-1 capacity-2
1
0 3
2
0 4 3 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-1 capacity-2 capacity-3
1
0 3
2
0 4 3 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-1 capacity-3 capacity-4
1
0 3
2
0 4 3 5
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-2 capacity-0 capacity-1
1
0 3
2
0 5 3 5
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-2 capacity-1 capacity-2
1
0 3
2
0 5 3 5
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-2 capacity-2 capacity-3
1
0 3
2
0 5 3 5
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-2-loc-2 package-2 capacity-3 capacity-4
1
0 3
2
0 5 3 5
0 3 4 3
1
end_operator
0

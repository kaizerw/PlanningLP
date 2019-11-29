begin_version
3
end_version
begin_metric
1
end_metric
7
begin_variable
var0
-1
6
Atom at(truck-2, city-loc-1)
Atom at(truck-2, city-loc-2)
Atom at(truck-2, city-loc-3)
Atom at(truck-2, city-loc-4)
Atom at(truck-2, city-loc-5)
Atom at(truck-2, city-loc-6)
end_variable
begin_variable
var1
-1
6
Atom at(truck-1, city-loc-1)
Atom at(truck-1, city-loc-2)
Atom at(truck-1, city-loc-3)
Atom at(truck-1, city-loc-4)
Atom at(truck-1, city-loc-5)
Atom at(truck-1, city-loc-6)
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
8
Atom at(package-1, city-loc-1)
Atom at(package-1, city-loc-2)
Atom at(package-1, city-loc-3)
Atom at(package-1, city-loc-4)
Atom at(package-1, city-loc-5)
Atom at(package-1, city-loc-6)
Atom in(package-1, truck-1)
Atom in(package-1, truck-2)
end_variable
begin_variable
var5
-1
8
Atom at(package-2, city-loc-1)
Atom at(package-2, city-loc-2)
Atom at(package-2, city-loc-3)
Atom at(package-2, city-loc-4)
Atom at(package-2, city-loc-5)
Atom at(package-2, city-loc-6)
Atom in(package-2, truck-1)
Atom in(package-2, truck-2)
end_variable
begin_variable
var6
-1
8
Atom at(package-3, city-loc-1)
Atom at(package-3, city-loc-2)
Atom at(package-3, city-loc-3)
Atom at(package-3, city-loc-4)
Atom at(package-3, city-loc-5)
Atom at(package-3, city-loc-6)
Atom in(package-3, truck-1)
Atom in(package-3, truck-2)
end_variable
0
begin_state
3
1
4
3
4
3
3
end_state
begin_goal
3
4 3
5 1
6 5
end_goal
312
begin_operator
drive truck-1 city-loc-1 city-loc-3
0
1
0 1 0 2
22
end_operator
begin_operator
drive truck-1 city-loc-1 city-loc-4
0
1
0 1 0 3
26
end_operator
begin_operator
drive truck-1 city-loc-1 city-loc-5
0
1
0 1 0 4
37
end_operator
begin_operator
drive truck-1 city-loc-2 city-loc-6
0
1
0 1 1 5
19
end_operator
begin_operator
drive truck-1 city-loc-3 city-loc-1
0
1
0 1 2 0
22
end_operator
begin_operator
drive truck-1 city-loc-3 city-loc-6
0
1
0 1 2 5
34
end_operator
begin_operator
drive truck-1 city-loc-4 city-loc-1
0
1
0 1 3 0
26
end_operator
begin_operator
drive truck-1 city-loc-4 city-loc-5
0
1
0 1 3 4
12
end_operator
begin_operator
drive truck-1 city-loc-5 city-loc-1
0
1
0 1 4 0
37
end_operator
begin_operator
drive truck-1 city-loc-5 city-loc-4
0
1
0 1 4 3
12
end_operator
begin_operator
drive truck-1 city-loc-6 city-loc-2
0
1
0 1 5 1
19
end_operator
begin_operator
drive truck-1 city-loc-6 city-loc-3
0
1
0 1 5 2
34
end_operator
begin_operator
drive truck-2 city-loc-1 city-loc-3
0
1
0 0 0 2
22
end_operator
begin_operator
drive truck-2 city-loc-1 city-loc-4
0
1
0 0 0 3
26
end_operator
begin_operator
drive truck-2 city-loc-1 city-loc-5
0
1
0 0 0 4
37
end_operator
begin_operator
drive truck-2 city-loc-2 city-loc-6
0
1
0 0 1 5
19
end_operator
begin_operator
drive truck-2 city-loc-3 city-loc-1
0
1
0 0 2 0
22
end_operator
begin_operator
drive truck-2 city-loc-3 city-loc-6
0
1
0 0 2 5
34
end_operator
begin_operator
drive truck-2 city-loc-4 city-loc-1
0
1
0 0 3 0
26
end_operator
begin_operator
drive truck-2 city-loc-4 city-loc-5
0
1
0 0 3 4
12
end_operator
begin_operator
drive truck-2 city-loc-5 city-loc-1
0
1
0 0 4 0
37
end_operator
begin_operator
drive truck-2 city-loc-5 city-loc-4
0
1
0 0 4 3
12
end_operator
begin_operator
drive truck-2 city-loc-6 city-loc-2
0
1
0 0 5 1
19
end_operator
begin_operator
drive truck-2 city-loc-6 city-loc-3
0
1
0 0 5 2
34
end_operator
begin_operator
drop truck-1 city-loc-1 package-1 capacity-0 capacity-1
1
1 0
2
0 4 6 0
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-1 capacity-1 capacity-2
1
1 0
2
0 4 6 0
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-1 capacity-2 capacity-3
1
1 0
2
0 4 6 0
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-1 capacity-3 capacity-4
1
1 0
2
0 4 6 0
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-2 capacity-0 capacity-1
1
1 0
2
0 5 6 0
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-2 capacity-1 capacity-2
1
1 0
2
0 5 6 0
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-2 capacity-2 capacity-3
1
1 0
2
0 5 6 0
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-2 capacity-3 capacity-4
1
1 0
2
0 5 6 0
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-3 capacity-0 capacity-1
1
1 0
2
0 6 6 0
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-3 capacity-1 capacity-2
1
1 0
2
0 6 6 0
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-3 capacity-2 capacity-3
1
1 0
2
0 6 6 0
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-1 package-3 capacity-3 capacity-4
1
1 0
2
0 6 6 0
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-1 capacity-0 capacity-1
1
1 1
2
0 4 6 1
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-1 capacity-1 capacity-2
1
1 1
2
0 4 6 1
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-1 capacity-2 capacity-3
1
1 1
2
0 4 6 1
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-1 capacity-3 capacity-4
1
1 1
2
0 4 6 1
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-2 capacity-0 capacity-1
1
1 1
2
0 5 6 1
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-2 capacity-1 capacity-2
1
1 1
2
0 5 6 1
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-2 capacity-2 capacity-3
1
1 1
2
0 5 6 1
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-2 capacity-3 capacity-4
1
1 1
2
0 5 6 1
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-3 capacity-0 capacity-1
1
1 1
2
0 6 6 1
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-3 capacity-1 capacity-2
1
1 1
2
0 6 6 1
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-3 capacity-2 capacity-3
1
1 1
2
0 6 6 1
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-2 package-3 capacity-3 capacity-4
1
1 1
2
0 6 6 1
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-1 capacity-0 capacity-1
1
1 2
2
0 4 6 2
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-1 capacity-1 capacity-2
1
1 2
2
0 4 6 2
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-1 capacity-2 capacity-3
1
1 2
2
0 4 6 2
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-1 capacity-3 capacity-4
1
1 2
2
0 4 6 2
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-2 capacity-0 capacity-1
1
1 2
2
0 5 6 2
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-2 capacity-1 capacity-2
1
1 2
2
0 5 6 2
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-2 capacity-2 capacity-3
1
1 2
2
0 5 6 2
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-2 capacity-3 capacity-4
1
1 2
2
0 5 6 2
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-3 capacity-0 capacity-1
1
1 2
2
0 6 6 2
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-3 capacity-1 capacity-2
1
1 2
2
0 6 6 2
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-3 capacity-2 capacity-3
1
1 2
2
0 6 6 2
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-3 package-3 capacity-3 capacity-4
1
1 2
2
0 6 6 2
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-1 capacity-0 capacity-1
1
1 3
2
0 4 6 3
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-1 capacity-1 capacity-2
1
1 3
2
0 4 6 3
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-1 capacity-2 capacity-3
1
1 3
2
0 4 6 3
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-1 capacity-3 capacity-4
1
1 3
2
0 4 6 3
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-2 capacity-0 capacity-1
1
1 3
2
0 5 6 3
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-2 capacity-1 capacity-2
1
1 3
2
0 5 6 3
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-2 capacity-2 capacity-3
1
1 3
2
0 5 6 3
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-2 capacity-3 capacity-4
1
1 3
2
0 5 6 3
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-3 capacity-0 capacity-1
1
1 3
2
0 6 6 3
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-3 capacity-1 capacity-2
1
1 3
2
0 6 6 3
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-3 capacity-2 capacity-3
1
1 3
2
0 6 6 3
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-4 package-3 capacity-3 capacity-4
1
1 3
2
0 6 6 3
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-1 capacity-0 capacity-1
1
1 4
2
0 4 6 4
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-1 capacity-1 capacity-2
1
1 4
2
0 4 6 4
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-1 capacity-2 capacity-3
1
1 4
2
0 4 6 4
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-1 capacity-3 capacity-4
1
1 4
2
0 4 6 4
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-2 capacity-0 capacity-1
1
1 4
2
0 5 6 4
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-2 capacity-1 capacity-2
1
1 4
2
0 5 6 4
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-2 capacity-2 capacity-3
1
1 4
2
0 5 6 4
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-2 capacity-3 capacity-4
1
1 4
2
0 5 6 4
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-3 capacity-0 capacity-1
1
1 4
2
0 6 6 4
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-3 capacity-1 capacity-2
1
1 4
2
0 6 6 4
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-3 capacity-2 capacity-3
1
1 4
2
0 6 6 4
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-5 package-3 capacity-3 capacity-4
1
1 4
2
0 6 6 4
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-1 capacity-0 capacity-1
1
1 5
2
0 4 6 5
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-1 capacity-1 capacity-2
1
1 5
2
0 4 6 5
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-1 capacity-2 capacity-3
1
1 5
2
0 4 6 5
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-1 capacity-3 capacity-4
1
1 5
2
0 4 6 5
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-2 capacity-0 capacity-1
1
1 5
2
0 5 6 5
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-2 capacity-1 capacity-2
1
1 5
2
0 5 6 5
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-2 capacity-2 capacity-3
1
1 5
2
0 5 6 5
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-2 capacity-3 capacity-4
1
1 5
2
0 5 6 5
0 2 3 4
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-3 capacity-0 capacity-1
1
1 5
2
0 6 6 5
0 2 0 1
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-3 capacity-1 capacity-2
1
1 5
2
0 6 6 5
0 2 1 2
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-3 capacity-2 capacity-3
1
1 5
2
0 6 6 5
0 2 2 3
1
end_operator
begin_operator
drop truck-1 city-loc-6 package-3 capacity-3 capacity-4
1
1 5
2
0 6 6 5
0 2 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-1 capacity-0 capacity-1
1
0 0
2
0 4 7 0
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-1 capacity-1 capacity-2
1
0 0
2
0 4 7 0
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-1 capacity-2 capacity-3
1
0 0
2
0 4 7 0
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-1 capacity-3 capacity-4
1
0 0
2
0 4 7 0
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-2 capacity-0 capacity-1
1
0 0
2
0 5 7 0
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-2 capacity-1 capacity-2
1
0 0
2
0 5 7 0
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-2 capacity-2 capacity-3
1
0 0
2
0 5 7 0
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-2 capacity-3 capacity-4
1
0 0
2
0 5 7 0
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-3 capacity-0 capacity-1
1
0 0
2
0 6 7 0
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-3 capacity-1 capacity-2
1
0 0
2
0 6 7 0
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-3 capacity-2 capacity-3
1
0 0
2
0 6 7 0
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-1 package-3 capacity-3 capacity-4
1
0 0
2
0 6 7 0
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-1 capacity-0 capacity-1
1
0 1
2
0 4 7 1
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-1 capacity-1 capacity-2
1
0 1
2
0 4 7 1
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-1 capacity-2 capacity-3
1
0 1
2
0 4 7 1
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-1 capacity-3 capacity-4
1
0 1
2
0 4 7 1
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-2 capacity-0 capacity-1
1
0 1
2
0 5 7 1
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-2 capacity-1 capacity-2
1
0 1
2
0 5 7 1
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-2 capacity-2 capacity-3
1
0 1
2
0 5 7 1
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-2 capacity-3 capacity-4
1
0 1
2
0 5 7 1
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-3 capacity-0 capacity-1
1
0 1
2
0 6 7 1
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-3 capacity-1 capacity-2
1
0 1
2
0 6 7 1
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-3 capacity-2 capacity-3
1
0 1
2
0 6 7 1
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-2 package-3 capacity-3 capacity-4
1
0 1
2
0 6 7 1
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-1 capacity-0 capacity-1
1
0 2
2
0 4 7 2
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-1 capacity-1 capacity-2
1
0 2
2
0 4 7 2
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-1 capacity-2 capacity-3
1
0 2
2
0 4 7 2
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-1 capacity-3 capacity-4
1
0 2
2
0 4 7 2
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-2 capacity-0 capacity-1
1
0 2
2
0 5 7 2
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-2 capacity-1 capacity-2
1
0 2
2
0 5 7 2
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-2 capacity-2 capacity-3
1
0 2
2
0 5 7 2
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-2 capacity-3 capacity-4
1
0 2
2
0 5 7 2
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-3 capacity-0 capacity-1
1
0 2
2
0 6 7 2
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-3 capacity-1 capacity-2
1
0 2
2
0 6 7 2
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-3 capacity-2 capacity-3
1
0 2
2
0 6 7 2
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-3 package-3 capacity-3 capacity-4
1
0 2
2
0 6 7 2
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-1 capacity-0 capacity-1
1
0 3
2
0 4 7 3
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-1 capacity-1 capacity-2
1
0 3
2
0 4 7 3
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-1 capacity-2 capacity-3
1
0 3
2
0 4 7 3
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-1 capacity-3 capacity-4
1
0 3
2
0 4 7 3
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-2 capacity-0 capacity-1
1
0 3
2
0 5 7 3
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-2 capacity-1 capacity-2
1
0 3
2
0 5 7 3
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-2 capacity-2 capacity-3
1
0 3
2
0 5 7 3
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-2 capacity-3 capacity-4
1
0 3
2
0 5 7 3
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-3 capacity-0 capacity-1
1
0 3
2
0 6 7 3
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-3 capacity-1 capacity-2
1
0 3
2
0 6 7 3
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-3 capacity-2 capacity-3
1
0 3
2
0 6 7 3
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-4 package-3 capacity-3 capacity-4
1
0 3
2
0 6 7 3
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-1 capacity-0 capacity-1
1
0 4
2
0 4 7 4
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-1 capacity-1 capacity-2
1
0 4
2
0 4 7 4
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-1 capacity-2 capacity-3
1
0 4
2
0 4 7 4
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-1 capacity-3 capacity-4
1
0 4
2
0 4 7 4
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-2 capacity-0 capacity-1
1
0 4
2
0 5 7 4
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-2 capacity-1 capacity-2
1
0 4
2
0 5 7 4
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-2 capacity-2 capacity-3
1
0 4
2
0 5 7 4
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-2 capacity-3 capacity-4
1
0 4
2
0 5 7 4
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-3 capacity-0 capacity-1
1
0 4
2
0 6 7 4
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-3 capacity-1 capacity-2
1
0 4
2
0 6 7 4
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-3 capacity-2 capacity-3
1
0 4
2
0 6 7 4
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-5 package-3 capacity-3 capacity-4
1
0 4
2
0 6 7 4
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-1 capacity-0 capacity-1
1
0 5
2
0 4 7 5
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-1 capacity-1 capacity-2
1
0 5
2
0 4 7 5
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-1 capacity-2 capacity-3
1
0 5
2
0 4 7 5
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-1 capacity-3 capacity-4
1
0 5
2
0 4 7 5
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-2 capacity-0 capacity-1
1
0 5
2
0 5 7 5
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-2 capacity-1 capacity-2
1
0 5
2
0 5 7 5
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-2 capacity-2 capacity-3
1
0 5
2
0 5 7 5
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-2 capacity-3 capacity-4
1
0 5
2
0 5 7 5
0 3 3 4
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-3 capacity-0 capacity-1
1
0 5
2
0 6 7 5
0 3 0 1
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-3 capacity-1 capacity-2
1
0 5
2
0 6 7 5
0 3 1 2
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-3 capacity-2 capacity-3
1
0 5
2
0 6 7 5
0 3 2 3
1
end_operator
begin_operator
drop truck-2 city-loc-6 package-3 capacity-3 capacity-4
1
0 5
2
0 6 7 5
0 3 3 4
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-1 capacity-0 capacity-1
1
1 0
2
0 4 0 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-1 capacity-1 capacity-2
1
1 0
2
0 4 0 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-1 capacity-2 capacity-3
1
1 0
2
0 4 0 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-1 capacity-3 capacity-4
1
1 0
2
0 4 0 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-2 capacity-0 capacity-1
1
1 0
2
0 5 0 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-2 capacity-1 capacity-2
1
1 0
2
0 5 0 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-2 capacity-2 capacity-3
1
1 0
2
0 5 0 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-2 capacity-3 capacity-4
1
1 0
2
0 5 0 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-3 capacity-0 capacity-1
1
1 0
2
0 6 0 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-3 capacity-1 capacity-2
1
1 0
2
0 6 0 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-3 capacity-2 capacity-3
1
1 0
2
0 6 0 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-1 package-3 capacity-3 capacity-4
1
1 0
2
0 6 0 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-1 capacity-0 capacity-1
1
1 1
2
0 4 1 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-1 capacity-1 capacity-2
1
1 1
2
0 4 1 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-1 capacity-2 capacity-3
1
1 1
2
0 4 1 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-1 capacity-3 capacity-4
1
1 1
2
0 4 1 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-2 capacity-0 capacity-1
1
1 1
2
0 5 1 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-2 capacity-1 capacity-2
1
1 1
2
0 5 1 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-2 capacity-2 capacity-3
1
1 1
2
0 5 1 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-2 capacity-3 capacity-4
1
1 1
2
0 5 1 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-3 capacity-0 capacity-1
1
1 1
2
0 6 1 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-3 capacity-1 capacity-2
1
1 1
2
0 6 1 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-3 capacity-2 capacity-3
1
1 1
2
0 6 1 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-2 package-3 capacity-3 capacity-4
1
1 1
2
0 6 1 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-1 capacity-0 capacity-1
1
1 2
2
0 4 2 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-1 capacity-1 capacity-2
1
1 2
2
0 4 2 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-1 capacity-2 capacity-3
1
1 2
2
0 4 2 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-1 capacity-3 capacity-4
1
1 2
2
0 4 2 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-2 capacity-0 capacity-1
1
1 2
2
0 5 2 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-2 capacity-1 capacity-2
1
1 2
2
0 5 2 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-2 capacity-2 capacity-3
1
1 2
2
0 5 2 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-2 capacity-3 capacity-4
1
1 2
2
0 5 2 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-3 capacity-0 capacity-1
1
1 2
2
0 6 2 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-3 capacity-1 capacity-2
1
1 2
2
0 6 2 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-3 capacity-2 capacity-3
1
1 2
2
0 6 2 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-3 package-3 capacity-3 capacity-4
1
1 2
2
0 6 2 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-1 capacity-0 capacity-1
1
1 3
2
0 4 3 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-1 capacity-1 capacity-2
1
1 3
2
0 4 3 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-1 capacity-2 capacity-3
1
1 3
2
0 4 3 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-1 capacity-3 capacity-4
1
1 3
2
0 4 3 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-2 capacity-0 capacity-1
1
1 3
2
0 5 3 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-2 capacity-1 capacity-2
1
1 3
2
0 5 3 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-2 capacity-2 capacity-3
1
1 3
2
0 5 3 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-2 capacity-3 capacity-4
1
1 3
2
0 5 3 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-3 capacity-0 capacity-1
1
1 3
2
0 6 3 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-3 capacity-1 capacity-2
1
1 3
2
0 6 3 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-3 capacity-2 capacity-3
1
1 3
2
0 6 3 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-4 package-3 capacity-3 capacity-4
1
1 3
2
0 6 3 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-1 capacity-0 capacity-1
1
1 4
2
0 4 4 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-1 capacity-1 capacity-2
1
1 4
2
0 4 4 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-1 capacity-2 capacity-3
1
1 4
2
0 4 4 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-1 capacity-3 capacity-4
1
1 4
2
0 4 4 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-2 capacity-0 capacity-1
1
1 4
2
0 5 4 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-2 capacity-1 capacity-2
1
1 4
2
0 5 4 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-2 capacity-2 capacity-3
1
1 4
2
0 5 4 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-2 capacity-3 capacity-4
1
1 4
2
0 5 4 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-3 capacity-0 capacity-1
1
1 4
2
0 6 4 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-3 capacity-1 capacity-2
1
1 4
2
0 6 4 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-3 capacity-2 capacity-3
1
1 4
2
0 6 4 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-5 package-3 capacity-3 capacity-4
1
1 4
2
0 6 4 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-1 capacity-0 capacity-1
1
1 5
2
0 4 5 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-1 capacity-1 capacity-2
1
1 5
2
0 4 5 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-1 capacity-2 capacity-3
1
1 5
2
0 4 5 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-1 capacity-3 capacity-4
1
1 5
2
0 4 5 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-2 capacity-0 capacity-1
1
1 5
2
0 5 5 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-2 capacity-1 capacity-2
1
1 5
2
0 5 5 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-2 capacity-2 capacity-3
1
1 5
2
0 5 5 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-2 capacity-3 capacity-4
1
1 5
2
0 5 5 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-3 capacity-0 capacity-1
1
1 5
2
0 6 5 6
0 2 1 0
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-3 capacity-1 capacity-2
1
1 5
2
0 6 5 6
0 2 2 1
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-3 capacity-2 capacity-3
1
1 5
2
0 6 5 6
0 2 3 2
1
end_operator
begin_operator
pick-up truck-1 city-loc-6 package-3 capacity-3 capacity-4
1
1 5
2
0 6 5 6
0 2 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-1 capacity-0 capacity-1
1
0 0
2
0 4 0 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-1 capacity-1 capacity-2
1
0 0
2
0 4 0 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-1 capacity-2 capacity-3
1
0 0
2
0 4 0 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-1 capacity-3 capacity-4
1
0 0
2
0 4 0 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-2 capacity-0 capacity-1
1
0 0
2
0 5 0 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-2 capacity-1 capacity-2
1
0 0
2
0 5 0 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-2 capacity-2 capacity-3
1
0 0
2
0 5 0 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-2 capacity-3 capacity-4
1
0 0
2
0 5 0 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-3 capacity-0 capacity-1
1
0 0
2
0 6 0 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-3 capacity-1 capacity-2
1
0 0
2
0 6 0 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-3 capacity-2 capacity-3
1
0 0
2
0 6 0 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-1 package-3 capacity-3 capacity-4
1
0 0
2
0 6 0 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-1 capacity-0 capacity-1
1
0 1
2
0 4 1 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-1 capacity-1 capacity-2
1
0 1
2
0 4 1 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-1 capacity-2 capacity-3
1
0 1
2
0 4 1 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-1 capacity-3 capacity-4
1
0 1
2
0 4 1 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-2 capacity-0 capacity-1
1
0 1
2
0 5 1 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-2 capacity-1 capacity-2
1
0 1
2
0 5 1 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-2 capacity-2 capacity-3
1
0 1
2
0 5 1 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-2 capacity-3 capacity-4
1
0 1
2
0 5 1 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-3 capacity-0 capacity-1
1
0 1
2
0 6 1 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-3 capacity-1 capacity-2
1
0 1
2
0 6 1 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-3 capacity-2 capacity-3
1
0 1
2
0 6 1 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-2 package-3 capacity-3 capacity-4
1
0 1
2
0 6 1 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-1 capacity-0 capacity-1
1
0 2
2
0 4 2 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-1 capacity-1 capacity-2
1
0 2
2
0 4 2 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-1 capacity-2 capacity-3
1
0 2
2
0 4 2 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-1 capacity-3 capacity-4
1
0 2
2
0 4 2 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-2 capacity-0 capacity-1
1
0 2
2
0 5 2 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-2 capacity-1 capacity-2
1
0 2
2
0 5 2 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-2 capacity-2 capacity-3
1
0 2
2
0 5 2 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-2 capacity-3 capacity-4
1
0 2
2
0 5 2 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-3 capacity-0 capacity-1
1
0 2
2
0 6 2 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-3 capacity-1 capacity-2
1
0 2
2
0 6 2 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-3 capacity-2 capacity-3
1
0 2
2
0 6 2 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-3 package-3 capacity-3 capacity-4
1
0 2
2
0 6 2 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-1 capacity-0 capacity-1
1
0 3
2
0 4 3 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-1 capacity-1 capacity-2
1
0 3
2
0 4 3 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-1 capacity-2 capacity-3
1
0 3
2
0 4 3 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-1 capacity-3 capacity-4
1
0 3
2
0 4 3 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-2 capacity-0 capacity-1
1
0 3
2
0 5 3 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-2 capacity-1 capacity-2
1
0 3
2
0 5 3 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-2 capacity-2 capacity-3
1
0 3
2
0 5 3 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-2 capacity-3 capacity-4
1
0 3
2
0 5 3 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-3 capacity-0 capacity-1
1
0 3
2
0 6 3 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-3 capacity-1 capacity-2
1
0 3
2
0 6 3 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-3 capacity-2 capacity-3
1
0 3
2
0 6 3 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-4 package-3 capacity-3 capacity-4
1
0 3
2
0 6 3 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-1 capacity-0 capacity-1
1
0 4
2
0 4 4 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-1 capacity-1 capacity-2
1
0 4
2
0 4 4 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-1 capacity-2 capacity-3
1
0 4
2
0 4 4 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-1 capacity-3 capacity-4
1
0 4
2
0 4 4 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-2 capacity-0 capacity-1
1
0 4
2
0 5 4 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-2 capacity-1 capacity-2
1
0 4
2
0 5 4 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-2 capacity-2 capacity-3
1
0 4
2
0 5 4 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-2 capacity-3 capacity-4
1
0 4
2
0 5 4 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-3 capacity-0 capacity-1
1
0 4
2
0 6 4 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-3 capacity-1 capacity-2
1
0 4
2
0 6 4 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-3 capacity-2 capacity-3
1
0 4
2
0 6 4 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-5 package-3 capacity-3 capacity-4
1
0 4
2
0 6 4 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-1 capacity-0 capacity-1
1
0 5
2
0 4 5 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-1 capacity-1 capacity-2
1
0 5
2
0 4 5 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-1 capacity-2 capacity-3
1
0 5
2
0 4 5 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-1 capacity-3 capacity-4
1
0 5
2
0 4 5 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-2 capacity-0 capacity-1
1
0 5
2
0 5 5 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-2 capacity-1 capacity-2
1
0 5
2
0 5 5 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-2 capacity-2 capacity-3
1
0 5
2
0 5 5 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-2 capacity-3 capacity-4
1
0 5
2
0 5 5 7
0 3 4 3
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-3 capacity-0 capacity-1
1
0 5
2
0 6 5 7
0 3 1 0
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-3 capacity-1 capacity-2
1
0 5
2
0 6 5 7
0 3 2 1
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-3 capacity-2 capacity-3
1
0 5
2
0 6 5 7
0 3 3 2
1
end_operator
begin_operator
pick-up truck-2 city-loc-6 package-3 capacity-3 capacity-4
1
0 5
2
0 6 5 7
0 3 4 3
1
end_operator
0

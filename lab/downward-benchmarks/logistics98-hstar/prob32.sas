begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
2
Atom at(truck6, city3-1)
Atom at(truck6, city3-2)
end_variable
begin_variable
var1
-1
2
Atom at(truck5, city2-1)
Atom at(truck5, city2-2)
end_variable
begin_variable
var2
-1
2
Atom at(truck4, city1-1)
Atom at(truck4, city1-2)
end_variable
begin_variable
var3
-1
2
Atom at(truck3, city3-1)
Atom at(truck3, city3-2)
end_variable
begin_variable
var4
-1
2
Atom at(truck2, city1-1)
Atom at(truck2, city1-2)
end_variable
begin_variable
var5
-1
2
Atom at(truck1, city2-1)
Atom at(truck1, city2-2)
end_variable
begin_variable
var6
-1
3
Atom at(plane1, city1-2)
Atom at(plane1, city2-2)
Atom at(plane1, city3-2)
end_variable
begin_variable
var7
-1
13
Atom at(package5, city1-1)
Atom at(package5, city1-2)
Atom at(package5, city2-1)
Atom at(package5, city2-2)
Atom at(package5, city3-1)
Atom at(package5, city3-2)
Atom in(package5, plane1)
Atom in(package5, truck1)
Atom in(package5, truck2)
Atom in(package5, truck3)
Atom in(package5, truck4)
Atom in(package5, truck5)
Atom in(package5, truck6)
end_variable
begin_variable
var8
-1
13
Atom at(package4, city1-1)
Atom at(package4, city1-2)
Atom at(package4, city2-1)
Atom at(package4, city2-2)
Atom at(package4, city3-1)
Atom at(package4, city3-2)
Atom in(package4, plane1)
Atom in(package4, truck1)
Atom in(package4, truck2)
Atom in(package4, truck3)
Atom in(package4, truck4)
Atom in(package4, truck5)
Atom in(package4, truck6)
end_variable
begin_variable
var9
-1
13
Atom at(package3, city1-1)
Atom at(package3, city1-2)
Atom at(package3, city2-1)
Atom at(package3, city2-2)
Atom at(package3, city3-1)
Atom at(package3, city3-2)
Atom in(package3, plane1)
Atom in(package3, truck1)
Atom in(package3, truck2)
Atom in(package3, truck3)
Atom in(package3, truck4)
Atom in(package3, truck5)
Atom in(package3, truck6)
end_variable
0
begin_state
0
0
0
1
1
1
2
2
1
0
end_state
begin_goal
3
7 5
8 2
9 2
end_goal
108
begin_operator
drive-truck truck1 city2-1 city2-2 city2
0
1
0 5 0 1
1
end_operator
begin_operator
drive-truck truck1 city2-2 city2-1 city2
0
1
0 5 1 0
1
end_operator
begin_operator
drive-truck truck2 city1-1 city1-2 city1
0
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck2 city1-2 city1-1 city1
0
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck3 city3-1 city3-2 city3
0
1
0 3 0 1
1
end_operator
begin_operator
drive-truck truck3 city3-2 city3-1 city3
0
1
0 3 1 0
1
end_operator
begin_operator
drive-truck truck4 city1-1 city1-2 city1
0
1
0 2 0 1
1
end_operator
begin_operator
drive-truck truck4 city1-2 city1-1 city1
0
1
0 2 1 0
1
end_operator
begin_operator
drive-truck truck5 city2-1 city2-2 city2
0
1
0 1 0 1
1
end_operator
begin_operator
drive-truck truck5 city2-2 city2-1 city2
0
1
0 1 1 0
1
end_operator
begin_operator
drive-truck truck6 city3-1 city3-2 city3
0
1
0 0 0 1
1
end_operator
begin_operator
drive-truck truck6 city3-2 city3-1 city3
0
1
0 0 1 0
1
end_operator
begin_operator
fly-airplane plane1 city1-2 city2-2
0
1
0 6 0 1
1
end_operator
begin_operator
fly-airplane plane1 city1-2 city3-2
0
1
0 6 0 2
1
end_operator
begin_operator
fly-airplane plane1 city2-2 city1-2
0
1
0 6 1 0
1
end_operator
begin_operator
fly-airplane plane1 city2-2 city3-2
0
1
0 6 1 2
1
end_operator
begin_operator
fly-airplane plane1 city3-2 city1-2
0
1
0 6 2 0
1
end_operator
begin_operator
fly-airplane plane1 city3-2 city2-2
0
1
0 6 2 1
1
end_operator
begin_operator
load-airplane package3 plane1 city1-2
1
6 0
1
0 9 1 6
1
end_operator
begin_operator
load-airplane package3 plane1 city2-2
1
6 1
1
0 9 3 6
1
end_operator
begin_operator
load-airplane package3 plane1 city3-2
1
6 2
1
0 9 5 6
1
end_operator
begin_operator
load-airplane package4 plane1 city1-2
1
6 0
1
0 8 1 6
1
end_operator
begin_operator
load-airplane package4 plane1 city2-2
1
6 1
1
0 8 3 6
1
end_operator
begin_operator
load-airplane package4 plane1 city3-2
1
6 2
1
0 8 5 6
1
end_operator
begin_operator
load-airplane package5 plane1 city1-2
1
6 0
1
0 7 1 6
1
end_operator
begin_operator
load-airplane package5 plane1 city2-2
1
6 1
1
0 7 3 6
1
end_operator
begin_operator
load-airplane package5 plane1 city3-2
1
6 2
1
0 7 5 6
1
end_operator
begin_operator
load-truck package3 truck1 city2-1
1
5 0
1
0 9 2 7
1
end_operator
begin_operator
load-truck package3 truck1 city2-2
1
5 1
1
0 9 3 7
1
end_operator
begin_operator
load-truck package3 truck2 city1-1
1
4 0
1
0 9 0 8
1
end_operator
begin_operator
load-truck package3 truck2 city1-2
1
4 1
1
0 9 1 8
1
end_operator
begin_operator
load-truck package3 truck3 city3-1
1
3 0
1
0 9 4 9
1
end_operator
begin_operator
load-truck package3 truck3 city3-2
1
3 1
1
0 9 5 9
1
end_operator
begin_operator
load-truck package3 truck4 city1-1
1
2 0
1
0 9 0 10
1
end_operator
begin_operator
load-truck package3 truck4 city1-2
1
2 1
1
0 9 1 10
1
end_operator
begin_operator
load-truck package3 truck5 city2-1
1
1 0
1
0 9 2 11
1
end_operator
begin_operator
load-truck package3 truck5 city2-2
1
1 1
1
0 9 3 11
1
end_operator
begin_operator
load-truck package3 truck6 city3-1
1
0 0
1
0 9 4 12
1
end_operator
begin_operator
load-truck package3 truck6 city3-2
1
0 1
1
0 9 5 12
1
end_operator
begin_operator
load-truck package4 truck1 city2-1
1
5 0
1
0 8 2 7
1
end_operator
begin_operator
load-truck package4 truck1 city2-2
1
5 1
1
0 8 3 7
1
end_operator
begin_operator
load-truck package4 truck2 city1-1
1
4 0
1
0 8 0 8
1
end_operator
begin_operator
load-truck package4 truck2 city1-2
1
4 1
1
0 8 1 8
1
end_operator
begin_operator
load-truck package4 truck3 city3-1
1
3 0
1
0 8 4 9
1
end_operator
begin_operator
load-truck package4 truck3 city3-2
1
3 1
1
0 8 5 9
1
end_operator
begin_operator
load-truck package4 truck4 city1-1
1
2 0
1
0 8 0 10
1
end_operator
begin_operator
load-truck package4 truck4 city1-2
1
2 1
1
0 8 1 10
1
end_operator
begin_operator
load-truck package4 truck5 city2-1
1
1 0
1
0 8 2 11
1
end_operator
begin_operator
load-truck package4 truck5 city2-2
1
1 1
1
0 8 3 11
1
end_operator
begin_operator
load-truck package4 truck6 city3-1
1
0 0
1
0 8 4 12
1
end_operator
begin_operator
load-truck package4 truck6 city3-2
1
0 1
1
0 8 5 12
1
end_operator
begin_operator
load-truck package5 truck1 city2-1
1
5 0
1
0 7 2 7
1
end_operator
begin_operator
load-truck package5 truck1 city2-2
1
5 1
1
0 7 3 7
1
end_operator
begin_operator
load-truck package5 truck2 city1-1
1
4 0
1
0 7 0 8
1
end_operator
begin_operator
load-truck package5 truck2 city1-2
1
4 1
1
0 7 1 8
1
end_operator
begin_operator
load-truck package5 truck3 city3-1
1
3 0
1
0 7 4 9
1
end_operator
begin_operator
load-truck package5 truck3 city3-2
1
3 1
1
0 7 5 9
1
end_operator
begin_operator
load-truck package5 truck4 city1-1
1
2 0
1
0 7 0 10
1
end_operator
begin_operator
load-truck package5 truck4 city1-2
1
2 1
1
0 7 1 10
1
end_operator
begin_operator
load-truck package5 truck5 city2-1
1
1 0
1
0 7 2 11
1
end_operator
begin_operator
load-truck package5 truck5 city2-2
1
1 1
1
0 7 3 11
1
end_operator
begin_operator
load-truck package5 truck6 city3-1
1
0 0
1
0 7 4 12
1
end_operator
begin_operator
load-truck package5 truck6 city3-2
1
0 1
1
0 7 5 12
1
end_operator
begin_operator
unload-airplane package3 plane1 city1-2
1
6 0
1
0 9 6 1
1
end_operator
begin_operator
unload-airplane package3 plane1 city2-2
1
6 1
1
0 9 6 3
1
end_operator
begin_operator
unload-airplane package3 plane1 city3-2
1
6 2
1
0 9 6 5
1
end_operator
begin_operator
unload-airplane package4 plane1 city1-2
1
6 0
1
0 8 6 1
1
end_operator
begin_operator
unload-airplane package4 plane1 city2-2
1
6 1
1
0 8 6 3
1
end_operator
begin_operator
unload-airplane package4 plane1 city3-2
1
6 2
1
0 8 6 5
1
end_operator
begin_operator
unload-airplane package5 plane1 city1-2
1
6 0
1
0 7 6 1
1
end_operator
begin_operator
unload-airplane package5 plane1 city2-2
1
6 1
1
0 7 6 3
1
end_operator
begin_operator
unload-airplane package5 plane1 city3-2
1
6 2
1
0 7 6 5
1
end_operator
begin_operator
unload-truck package3 truck1 city2-1
1
5 0
1
0 9 7 2
1
end_operator
begin_operator
unload-truck package3 truck1 city2-2
1
5 1
1
0 9 7 3
1
end_operator
begin_operator
unload-truck package3 truck2 city1-1
1
4 0
1
0 9 8 0
1
end_operator
begin_operator
unload-truck package3 truck2 city1-2
1
4 1
1
0 9 8 1
1
end_operator
begin_operator
unload-truck package3 truck3 city3-1
1
3 0
1
0 9 9 4
1
end_operator
begin_operator
unload-truck package3 truck3 city3-2
1
3 1
1
0 9 9 5
1
end_operator
begin_operator
unload-truck package3 truck4 city1-1
1
2 0
1
0 9 10 0
1
end_operator
begin_operator
unload-truck package3 truck4 city1-2
1
2 1
1
0 9 10 1
1
end_operator
begin_operator
unload-truck package3 truck5 city2-1
1
1 0
1
0 9 11 2
1
end_operator
begin_operator
unload-truck package3 truck5 city2-2
1
1 1
1
0 9 11 3
1
end_operator
begin_operator
unload-truck package3 truck6 city3-1
1
0 0
1
0 9 12 4
1
end_operator
begin_operator
unload-truck package3 truck6 city3-2
1
0 1
1
0 9 12 5
1
end_operator
begin_operator
unload-truck package4 truck1 city2-1
1
5 0
1
0 8 7 2
1
end_operator
begin_operator
unload-truck package4 truck1 city2-2
1
5 1
1
0 8 7 3
1
end_operator
begin_operator
unload-truck package4 truck2 city1-1
1
4 0
1
0 8 8 0
1
end_operator
begin_operator
unload-truck package4 truck2 city1-2
1
4 1
1
0 8 8 1
1
end_operator
begin_operator
unload-truck package4 truck3 city3-1
1
3 0
1
0 8 9 4
1
end_operator
begin_operator
unload-truck package4 truck3 city3-2
1
3 1
1
0 8 9 5
1
end_operator
begin_operator
unload-truck package4 truck4 city1-1
1
2 0
1
0 8 10 0
1
end_operator
begin_operator
unload-truck package4 truck4 city1-2
1
2 1
1
0 8 10 1
1
end_operator
begin_operator
unload-truck package4 truck5 city2-1
1
1 0
1
0 8 11 2
1
end_operator
begin_operator
unload-truck package4 truck5 city2-2
1
1 1
1
0 8 11 3
1
end_operator
begin_operator
unload-truck package4 truck6 city3-1
1
0 0
1
0 8 12 4
1
end_operator
begin_operator
unload-truck package4 truck6 city3-2
1
0 1
1
0 8 12 5
1
end_operator
begin_operator
unload-truck package5 truck1 city2-1
1
5 0
1
0 7 7 2
1
end_operator
begin_operator
unload-truck package5 truck1 city2-2
1
5 1
1
0 7 7 3
1
end_operator
begin_operator
unload-truck package5 truck2 city1-1
1
4 0
1
0 7 8 0
1
end_operator
begin_operator
unload-truck package5 truck2 city1-2
1
4 1
1
0 7 8 1
1
end_operator
begin_operator
unload-truck package5 truck3 city3-1
1
3 0
1
0 7 9 4
1
end_operator
begin_operator
unload-truck package5 truck3 city3-2
1
3 1
1
0 7 9 5
1
end_operator
begin_operator
unload-truck package5 truck4 city1-1
1
2 0
1
0 7 10 0
1
end_operator
begin_operator
unload-truck package5 truck4 city1-2
1
2 1
1
0 7 10 1
1
end_operator
begin_operator
unload-truck package5 truck5 city2-1
1
1 0
1
0 7 11 2
1
end_operator
begin_operator
unload-truck package5 truck5 city2-2
1
1 1
1
0 7 11 3
1
end_operator
begin_operator
unload-truck package5 truck6 city3-1
1
0 0
1
0 7 12 4
1
end_operator
begin_operator
unload-truck package5 truck6 city3-2
1
0 1
1
0 7 12 5
1
end_operator
0

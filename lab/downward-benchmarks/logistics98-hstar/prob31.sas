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
Atom at(truck5, city5-1)
Atom at(truck5, city5-2)
end_variable
begin_variable
var1
-1
2
Atom at(truck4, city4-1)
Atom at(truck4, city4-2)
end_variable
begin_variable
var2
-1
2
Atom at(truck3, city3-1)
Atom at(truck3, city3-2)
end_variable
begin_variable
var3
-1
2
Atom at(truck2, city2-1)
Atom at(truck2, city2-2)
end_variable
begin_variable
var4
-1
2
Atom at(truck1, city1-1)
Atom at(truck1, city1-2)
end_variable
begin_variable
var5
-1
5
Atom at(plane2, city1-2)
Atom at(plane2, city2-2)
Atom at(plane2, city3-2)
Atom at(plane2, city4-2)
Atom at(plane2, city5-2)
end_variable
begin_variable
var6
-1
5
Atom at(plane1, city1-2)
Atom at(plane1, city2-2)
Atom at(plane1, city3-2)
Atom at(plane1, city4-2)
Atom at(plane1, city5-2)
end_variable
begin_variable
var7
-1
17
Atom at(package3, city1-1)
Atom at(package3, city1-2)
Atom at(package3, city2-1)
Atom at(package3, city2-2)
Atom at(package3, city3-1)
Atom at(package3, city3-2)
Atom at(package3, city4-1)
Atom at(package3, city4-2)
Atom at(package3, city5-1)
Atom at(package3, city5-2)
Atom in(package3, plane1)
Atom in(package3, plane2)
Atom in(package3, truck1)
Atom in(package3, truck2)
Atom in(package3, truck3)
Atom in(package3, truck4)
Atom in(package3, truck5)
end_variable
begin_variable
var8
-1
17
Atom at(package2, city1-1)
Atom at(package2, city1-2)
Atom at(package2, city2-1)
Atom at(package2, city2-2)
Atom at(package2, city3-1)
Atom at(package2, city3-2)
Atom at(package2, city4-1)
Atom at(package2, city4-2)
Atom at(package2, city5-1)
Atom at(package2, city5-2)
Atom in(package2, plane1)
Atom in(package2, plane2)
Atom in(package2, truck1)
Atom in(package2, truck2)
Atom in(package2, truck3)
Atom in(package2, truck4)
Atom in(package2, truck5)
end_variable
begin_variable
var9
-1
17
Atom at(package1, city1-1)
Atom at(package1, city1-2)
Atom at(package1, city2-1)
Atom at(package1, city2-2)
Atom at(package1, city3-1)
Atom at(package1, city3-2)
Atom at(package1, city4-1)
Atom at(package1, city4-2)
Atom at(package1, city5-1)
Atom at(package1, city5-2)
Atom in(package1, plane1)
Atom in(package1, plane2)
Atom in(package1, truck1)
Atom in(package1, truck2)
Atom in(package1, truck3)
Atom in(package1, truck4)
Atom in(package1, truck5)
end_variable
0
begin_state
0
0
0
0
0
0
1
0
1
6
end_state
begin_goal
3
7 1
8 0
9 5
end_goal
170
begin_operator
drive-truck truck1 city1-1 city1-2 city1
0
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck1 city1-2 city1-1 city1
0
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck2 city2-1 city2-2 city2
0
1
0 3 0 1
1
end_operator
begin_operator
drive-truck truck2 city2-2 city2-1 city2
0
1
0 3 1 0
1
end_operator
begin_operator
drive-truck truck3 city3-1 city3-2 city3
0
1
0 2 0 1
1
end_operator
begin_operator
drive-truck truck3 city3-2 city3-1 city3
0
1
0 2 1 0
1
end_operator
begin_operator
drive-truck truck4 city4-1 city4-2 city4
0
1
0 1 0 1
1
end_operator
begin_operator
drive-truck truck4 city4-2 city4-1 city4
0
1
0 1 1 0
1
end_operator
begin_operator
drive-truck truck5 city5-1 city5-2 city5
0
1
0 0 0 1
1
end_operator
begin_operator
drive-truck truck5 city5-2 city5-1 city5
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
fly-airplane plane1 city1-2 city4-2
0
1
0 6 0 3
1
end_operator
begin_operator
fly-airplane plane1 city1-2 city5-2
0
1
0 6 0 4
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
fly-airplane plane1 city2-2 city4-2
0
1
0 6 1 3
1
end_operator
begin_operator
fly-airplane plane1 city2-2 city5-2
0
1
0 6 1 4
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
fly-airplane plane1 city3-2 city4-2
0
1
0 6 2 3
1
end_operator
begin_operator
fly-airplane plane1 city3-2 city5-2
0
1
0 6 2 4
1
end_operator
begin_operator
fly-airplane plane1 city4-2 city1-2
0
1
0 6 3 0
1
end_operator
begin_operator
fly-airplane plane1 city4-2 city2-2
0
1
0 6 3 1
1
end_operator
begin_operator
fly-airplane plane1 city4-2 city3-2
0
1
0 6 3 2
1
end_operator
begin_operator
fly-airplane plane1 city4-2 city5-2
0
1
0 6 3 4
1
end_operator
begin_operator
fly-airplane plane1 city5-2 city1-2
0
1
0 6 4 0
1
end_operator
begin_operator
fly-airplane plane1 city5-2 city2-2
0
1
0 6 4 1
1
end_operator
begin_operator
fly-airplane plane1 city5-2 city3-2
0
1
0 6 4 2
1
end_operator
begin_operator
fly-airplane plane1 city5-2 city4-2
0
1
0 6 4 3
1
end_operator
begin_operator
fly-airplane plane2 city1-2 city2-2
0
1
0 5 0 1
1
end_operator
begin_operator
fly-airplane plane2 city1-2 city3-2
0
1
0 5 0 2
1
end_operator
begin_operator
fly-airplane plane2 city1-2 city4-2
0
1
0 5 0 3
1
end_operator
begin_operator
fly-airplane plane2 city1-2 city5-2
0
1
0 5 0 4
1
end_operator
begin_operator
fly-airplane plane2 city2-2 city1-2
0
1
0 5 1 0
1
end_operator
begin_operator
fly-airplane plane2 city2-2 city3-2
0
1
0 5 1 2
1
end_operator
begin_operator
fly-airplane plane2 city2-2 city4-2
0
1
0 5 1 3
1
end_operator
begin_operator
fly-airplane plane2 city2-2 city5-2
0
1
0 5 1 4
1
end_operator
begin_operator
fly-airplane plane2 city3-2 city1-2
0
1
0 5 2 0
1
end_operator
begin_operator
fly-airplane plane2 city3-2 city2-2
0
1
0 5 2 1
1
end_operator
begin_operator
fly-airplane plane2 city3-2 city4-2
0
1
0 5 2 3
1
end_operator
begin_operator
fly-airplane plane2 city3-2 city5-2
0
1
0 5 2 4
1
end_operator
begin_operator
fly-airplane plane2 city4-2 city1-2
0
1
0 5 3 0
1
end_operator
begin_operator
fly-airplane plane2 city4-2 city2-2
0
1
0 5 3 1
1
end_operator
begin_operator
fly-airplane plane2 city4-2 city3-2
0
1
0 5 3 2
1
end_operator
begin_operator
fly-airplane plane2 city4-2 city5-2
0
1
0 5 3 4
1
end_operator
begin_operator
fly-airplane plane2 city5-2 city1-2
0
1
0 5 4 0
1
end_operator
begin_operator
fly-airplane plane2 city5-2 city2-2
0
1
0 5 4 1
1
end_operator
begin_operator
fly-airplane plane2 city5-2 city3-2
0
1
0 5 4 2
1
end_operator
begin_operator
fly-airplane plane2 city5-2 city4-2
0
1
0 5 4 3
1
end_operator
begin_operator
load-airplane package1 plane1 city1-2
1
6 0
1
0 9 1 10
1
end_operator
begin_operator
load-airplane package1 plane1 city2-2
1
6 1
1
0 9 3 10
1
end_operator
begin_operator
load-airplane package1 plane1 city3-2
1
6 2
1
0 9 5 10
1
end_operator
begin_operator
load-airplane package1 plane1 city4-2
1
6 3
1
0 9 7 10
1
end_operator
begin_operator
load-airplane package1 plane1 city5-2
1
6 4
1
0 9 9 10
1
end_operator
begin_operator
load-airplane package1 plane2 city1-2
1
5 0
1
0 9 1 11
1
end_operator
begin_operator
load-airplane package1 plane2 city2-2
1
5 1
1
0 9 3 11
1
end_operator
begin_operator
load-airplane package1 plane2 city3-2
1
5 2
1
0 9 5 11
1
end_operator
begin_operator
load-airplane package1 plane2 city4-2
1
5 3
1
0 9 7 11
1
end_operator
begin_operator
load-airplane package1 plane2 city5-2
1
5 4
1
0 9 9 11
1
end_operator
begin_operator
load-airplane package2 plane1 city1-2
1
6 0
1
0 8 1 10
1
end_operator
begin_operator
load-airplane package2 plane1 city2-2
1
6 1
1
0 8 3 10
1
end_operator
begin_operator
load-airplane package2 plane1 city3-2
1
6 2
1
0 8 5 10
1
end_operator
begin_operator
load-airplane package2 plane1 city4-2
1
6 3
1
0 8 7 10
1
end_operator
begin_operator
load-airplane package2 plane1 city5-2
1
6 4
1
0 8 9 10
1
end_operator
begin_operator
load-airplane package2 plane2 city1-2
1
5 0
1
0 8 1 11
1
end_operator
begin_operator
load-airplane package2 plane2 city2-2
1
5 1
1
0 8 3 11
1
end_operator
begin_operator
load-airplane package2 plane2 city3-2
1
5 2
1
0 8 5 11
1
end_operator
begin_operator
load-airplane package2 plane2 city4-2
1
5 3
1
0 8 7 11
1
end_operator
begin_operator
load-airplane package2 plane2 city5-2
1
5 4
1
0 8 9 11
1
end_operator
begin_operator
load-airplane package3 plane1 city1-2
1
6 0
1
0 7 1 10
1
end_operator
begin_operator
load-airplane package3 plane1 city2-2
1
6 1
1
0 7 3 10
1
end_operator
begin_operator
load-airplane package3 plane1 city3-2
1
6 2
1
0 7 5 10
1
end_operator
begin_operator
load-airplane package3 plane1 city4-2
1
6 3
1
0 7 7 10
1
end_operator
begin_operator
load-airplane package3 plane1 city5-2
1
6 4
1
0 7 9 10
1
end_operator
begin_operator
load-airplane package3 plane2 city1-2
1
5 0
1
0 7 1 11
1
end_operator
begin_operator
load-airplane package3 plane2 city2-2
1
5 1
1
0 7 3 11
1
end_operator
begin_operator
load-airplane package3 plane2 city3-2
1
5 2
1
0 7 5 11
1
end_operator
begin_operator
load-airplane package3 plane2 city4-2
1
5 3
1
0 7 7 11
1
end_operator
begin_operator
load-airplane package3 plane2 city5-2
1
5 4
1
0 7 9 11
1
end_operator
begin_operator
load-truck package1 truck1 city1-1
1
4 0
1
0 9 0 12
1
end_operator
begin_operator
load-truck package1 truck1 city1-2
1
4 1
1
0 9 1 12
1
end_operator
begin_operator
load-truck package1 truck2 city2-1
1
3 0
1
0 9 2 13
1
end_operator
begin_operator
load-truck package1 truck2 city2-2
1
3 1
1
0 9 3 13
1
end_operator
begin_operator
load-truck package1 truck3 city3-1
1
2 0
1
0 9 4 14
1
end_operator
begin_operator
load-truck package1 truck3 city3-2
1
2 1
1
0 9 5 14
1
end_operator
begin_operator
load-truck package1 truck4 city4-1
1
1 0
1
0 9 6 15
1
end_operator
begin_operator
load-truck package1 truck4 city4-2
1
1 1
1
0 9 7 15
1
end_operator
begin_operator
load-truck package1 truck5 city5-1
1
0 0
1
0 9 8 16
1
end_operator
begin_operator
load-truck package1 truck5 city5-2
1
0 1
1
0 9 9 16
1
end_operator
begin_operator
load-truck package2 truck1 city1-1
1
4 0
1
0 8 0 12
1
end_operator
begin_operator
load-truck package2 truck1 city1-2
1
4 1
1
0 8 1 12
1
end_operator
begin_operator
load-truck package2 truck2 city2-1
1
3 0
1
0 8 2 13
1
end_operator
begin_operator
load-truck package2 truck2 city2-2
1
3 1
1
0 8 3 13
1
end_operator
begin_operator
load-truck package2 truck3 city3-1
1
2 0
1
0 8 4 14
1
end_operator
begin_operator
load-truck package2 truck3 city3-2
1
2 1
1
0 8 5 14
1
end_operator
begin_operator
load-truck package2 truck4 city4-1
1
1 0
1
0 8 6 15
1
end_operator
begin_operator
load-truck package2 truck4 city4-2
1
1 1
1
0 8 7 15
1
end_operator
begin_operator
load-truck package2 truck5 city5-1
1
0 0
1
0 8 8 16
1
end_operator
begin_operator
load-truck package2 truck5 city5-2
1
0 1
1
0 8 9 16
1
end_operator
begin_operator
load-truck package3 truck1 city1-1
1
4 0
1
0 7 0 12
1
end_operator
begin_operator
load-truck package3 truck1 city1-2
1
4 1
1
0 7 1 12
1
end_operator
begin_operator
load-truck package3 truck2 city2-1
1
3 0
1
0 7 2 13
1
end_operator
begin_operator
load-truck package3 truck2 city2-2
1
3 1
1
0 7 3 13
1
end_operator
begin_operator
load-truck package3 truck3 city3-1
1
2 0
1
0 7 4 14
1
end_operator
begin_operator
load-truck package3 truck3 city3-2
1
2 1
1
0 7 5 14
1
end_operator
begin_operator
load-truck package3 truck4 city4-1
1
1 0
1
0 7 6 15
1
end_operator
begin_operator
load-truck package3 truck4 city4-2
1
1 1
1
0 7 7 15
1
end_operator
begin_operator
load-truck package3 truck5 city5-1
1
0 0
1
0 7 8 16
1
end_operator
begin_operator
load-truck package3 truck5 city5-2
1
0 1
1
0 7 9 16
1
end_operator
begin_operator
unload-airplane package1 plane1 city1-2
1
6 0
1
0 9 10 1
1
end_operator
begin_operator
unload-airplane package1 plane1 city2-2
1
6 1
1
0 9 10 3
1
end_operator
begin_operator
unload-airplane package1 plane1 city3-2
1
6 2
1
0 9 10 5
1
end_operator
begin_operator
unload-airplane package1 plane1 city4-2
1
6 3
1
0 9 10 7
1
end_operator
begin_operator
unload-airplane package1 plane1 city5-2
1
6 4
1
0 9 10 9
1
end_operator
begin_operator
unload-airplane package1 plane2 city1-2
1
5 0
1
0 9 11 1
1
end_operator
begin_operator
unload-airplane package1 plane2 city2-2
1
5 1
1
0 9 11 3
1
end_operator
begin_operator
unload-airplane package1 plane2 city3-2
1
5 2
1
0 9 11 5
1
end_operator
begin_operator
unload-airplane package1 plane2 city4-2
1
5 3
1
0 9 11 7
1
end_operator
begin_operator
unload-airplane package1 plane2 city5-2
1
5 4
1
0 9 11 9
1
end_operator
begin_operator
unload-airplane package2 plane1 city1-2
1
6 0
1
0 8 10 1
1
end_operator
begin_operator
unload-airplane package2 plane1 city2-2
1
6 1
1
0 8 10 3
1
end_operator
begin_operator
unload-airplane package2 plane1 city3-2
1
6 2
1
0 8 10 5
1
end_operator
begin_operator
unload-airplane package2 plane1 city4-2
1
6 3
1
0 8 10 7
1
end_operator
begin_operator
unload-airplane package2 plane1 city5-2
1
6 4
1
0 8 10 9
1
end_operator
begin_operator
unload-airplane package2 plane2 city1-2
1
5 0
1
0 8 11 1
1
end_operator
begin_operator
unload-airplane package2 plane2 city2-2
1
5 1
1
0 8 11 3
1
end_operator
begin_operator
unload-airplane package2 plane2 city3-2
1
5 2
1
0 8 11 5
1
end_operator
begin_operator
unload-airplane package2 plane2 city4-2
1
5 3
1
0 8 11 7
1
end_operator
begin_operator
unload-airplane package2 plane2 city5-2
1
5 4
1
0 8 11 9
1
end_operator
begin_operator
unload-airplane package3 plane1 city1-2
1
6 0
1
0 7 10 1
1
end_operator
begin_operator
unload-airplane package3 plane1 city2-2
1
6 1
1
0 7 10 3
1
end_operator
begin_operator
unload-airplane package3 plane1 city3-2
1
6 2
1
0 7 10 5
1
end_operator
begin_operator
unload-airplane package3 plane1 city4-2
1
6 3
1
0 7 10 7
1
end_operator
begin_operator
unload-airplane package3 plane1 city5-2
1
6 4
1
0 7 10 9
1
end_operator
begin_operator
unload-airplane package3 plane2 city1-2
1
5 0
1
0 7 11 1
1
end_operator
begin_operator
unload-airplane package3 plane2 city2-2
1
5 1
1
0 7 11 3
1
end_operator
begin_operator
unload-airplane package3 plane2 city3-2
1
5 2
1
0 7 11 5
1
end_operator
begin_operator
unload-airplane package3 plane2 city4-2
1
5 3
1
0 7 11 7
1
end_operator
begin_operator
unload-airplane package3 plane2 city5-2
1
5 4
1
0 7 11 9
1
end_operator
begin_operator
unload-truck package1 truck1 city1-1
1
4 0
1
0 9 12 0
1
end_operator
begin_operator
unload-truck package1 truck1 city1-2
1
4 1
1
0 9 12 1
1
end_operator
begin_operator
unload-truck package1 truck2 city2-1
1
3 0
1
0 9 13 2
1
end_operator
begin_operator
unload-truck package1 truck2 city2-2
1
3 1
1
0 9 13 3
1
end_operator
begin_operator
unload-truck package1 truck3 city3-1
1
2 0
1
0 9 14 4
1
end_operator
begin_operator
unload-truck package1 truck3 city3-2
1
2 1
1
0 9 14 5
1
end_operator
begin_operator
unload-truck package1 truck4 city4-1
1
1 0
1
0 9 15 6
1
end_operator
begin_operator
unload-truck package1 truck4 city4-2
1
1 1
1
0 9 15 7
1
end_operator
begin_operator
unload-truck package1 truck5 city5-1
1
0 0
1
0 9 16 8
1
end_operator
begin_operator
unload-truck package1 truck5 city5-2
1
0 1
1
0 9 16 9
1
end_operator
begin_operator
unload-truck package2 truck1 city1-1
1
4 0
1
0 8 12 0
1
end_operator
begin_operator
unload-truck package2 truck1 city1-2
1
4 1
1
0 8 12 1
1
end_operator
begin_operator
unload-truck package2 truck2 city2-1
1
3 0
1
0 8 13 2
1
end_operator
begin_operator
unload-truck package2 truck2 city2-2
1
3 1
1
0 8 13 3
1
end_operator
begin_operator
unload-truck package2 truck3 city3-1
1
2 0
1
0 8 14 4
1
end_operator
begin_operator
unload-truck package2 truck3 city3-2
1
2 1
1
0 8 14 5
1
end_operator
begin_operator
unload-truck package2 truck4 city4-1
1
1 0
1
0 8 15 6
1
end_operator
begin_operator
unload-truck package2 truck4 city4-2
1
1 1
1
0 8 15 7
1
end_operator
begin_operator
unload-truck package2 truck5 city5-1
1
0 0
1
0 8 16 8
1
end_operator
begin_operator
unload-truck package2 truck5 city5-2
1
0 1
1
0 8 16 9
1
end_operator
begin_operator
unload-truck package3 truck1 city1-1
1
4 0
1
0 7 12 0
1
end_operator
begin_operator
unload-truck package3 truck1 city1-2
1
4 1
1
0 7 12 1
1
end_operator
begin_operator
unload-truck package3 truck2 city2-1
1
3 0
1
0 7 13 2
1
end_operator
begin_operator
unload-truck package3 truck2 city2-2
1
3 1
1
0 7 13 3
1
end_operator
begin_operator
unload-truck package3 truck3 city3-1
1
2 0
1
0 7 14 4
1
end_operator
begin_operator
unload-truck package3 truck3 city3-2
1
2 1
1
0 7 14 5
1
end_operator
begin_operator
unload-truck package3 truck4 city4-1
1
1 0
1
0 7 15 6
1
end_operator
begin_operator
unload-truck package3 truck4 city4-2
1
1 1
1
0 7 15 7
1
end_operator
begin_operator
unload-truck package3 truck5 city5-1
1
0 0
1
0 7 16 8
1
end_operator
begin_operator
unload-truck package3 truck5 city5-2
1
0 1
1
0 7 16 9
1
end_operator
0

begin_version
3
end_version
begin_metric
0
end_metric
14
begin_variable
var0
-1
5
Atom at(truck3, s0)
Atom at(truck3, s1)
Atom at(truck3, s2)
Atom at(truck3, s3)
Atom at(truck3, s4)
end_variable
begin_variable
var1
-1
2
Atom empty(truck3)
NegatedAtom empty(truck3)
end_variable
begin_variable
var2
-1
2
Atom empty(truck2)
NegatedAtom empty(truck2)
end_variable
begin_variable
var3
-1
2
Atom empty(truck1)
NegatedAtom empty(truck1)
end_variable
begin_variable
var4
-1
5
Atom at(truck1, s0)
Atom at(truck1, s1)
Atom at(truck1, s2)
Atom at(truck1, s3)
Atom at(truck1, s4)
end_variable
begin_variable
var5
-1
5
Atom at(truck2, s0)
Atom at(truck2, s1)
Atom at(truck2, s2)
Atom at(truck2, s3)
Atom at(truck2, s4)
end_variable
begin_variable
var6
-1
14
Atom at(driver1, p0-1)
Atom at(driver1, p1-2)
Atom at(driver1, p1-3)
Atom at(driver1, p3-2)
Atom at(driver1, p3-4)
Atom at(driver1, p4-0)
Atom at(driver1, s0)
Atom at(driver1, s1)
Atom at(driver1, s2)
Atom at(driver1, s3)
Atom at(driver1, s4)
Atom driving(driver1, truck1)
Atom driving(driver1, truck2)
Atom driving(driver1, truck3)
end_variable
begin_variable
var7
-1
14
Atom at(driver2, p0-1)
Atom at(driver2, p1-2)
Atom at(driver2, p1-3)
Atom at(driver2, p3-2)
Atom at(driver2, p3-4)
Atom at(driver2, p4-0)
Atom at(driver2, s0)
Atom at(driver2, s1)
Atom at(driver2, s2)
Atom at(driver2, s3)
Atom at(driver2, s4)
Atom driving(driver2, truck1)
Atom driving(driver2, truck2)
Atom driving(driver2, truck3)
end_variable
begin_variable
var8
-1
8
Atom at(package6, s0)
Atom at(package6, s1)
Atom at(package6, s2)
Atom at(package6, s3)
Atom at(package6, s4)
Atom in(package6, truck1)
Atom in(package6, truck2)
Atom in(package6, truck3)
end_variable
begin_variable
var9
-1
8
Atom at(package5, s0)
Atom at(package5, s1)
Atom at(package5, s2)
Atom at(package5, s3)
Atom at(package5, s4)
Atom in(package5, truck1)
Atom in(package5, truck2)
Atom in(package5, truck3)
end_variable
begin_variable
var10
-1
8
Atom at(package4, s0)
Atom at(package4, s1)
Atom at(package4, s2)
Atom at(package4, s3)
Atom at(package4, s4)
Atom in(package4, truck1)
Atom in(package4, truck2)
Atom in(package4, truck3)
end_variable
begin_variable
var11
-1
8
Atom at(package3, s0)
Atom at(package3, s1)
Atom at(package3, s2)
Atom at(package3, s3)
Atom at(package3, s4)
Atom in(package3, truck1)
Atom in(package3, truck2)
Atom in(package3, truck3)
end_variable
begin_variable
var12
-1
8
Atom at(package2, s0)
Atom at(package2, s1)
Atom at(package2, s2)
Atom at(package2, s3)
Atom at(package2, s4)
Atom in(package2, truck1)
Atom in(package2, truck2)
Atom in(package2, truck3)
end_variable
begin_variable
var13
-1
8
Atom at(package1, s0)
Atom at(package1, s1)
Atom at(package1, s2)
Atom at(package1, s3)
Atom at(package1, s4)
Atom in(package1, truck1)
Atom in(package1, truck2)
Atom in(package1, truck3)
end_variable
3
begin_mutex_group
3
6 11
7 11
3 0
end_mutex_group
begin_mutex_group
3
6 12
7 12
2 0
end_mutex_group
begin_mutex_group
3
6 13
7 13
1 0
end_mutex_group
begin_state
3
0
0
0
2
0
10
7
1
1
0
3
1
2
end_state
begin_goal
10
4 3
5 3
6 9
7 10
8 1
9 1
10 0
11 1
12 2
13 3
end_goal
384
begin_operator
board-truck driver1 truck1 s0
1
4 0
2
0 6 6 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck1 s1
1
4 1
2
0 6 7 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck1 s2
1
4 2
2
0 6 8 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck1 s3
1
4 3
2
0 6 9 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck1 s4
1
4 4
2
0 6 10 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s0
1
5 0
2
0 6 6 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s1
1
5 1
2
0 6 7 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s2
1
5 2
2
0 6 8 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s3
1
5 3
2
0 6 9 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s4
1
5 4
2
0 6 10 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s0
1
0 0
2
0 6 6 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s1
1
0 1
2
0 6 7 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s2
1
0 2
2
0 6 8 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s3
1
0 3
2
0 6 9 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s4
1
0 4
2
0 6 10 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s0
1
4 0
2
0 7 6 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s1
1
4 1
2
0 7 7 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s2
1
4 2
2
0 7 8 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s3
1
4 3
2
0 7 9 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s4
1
4 4
2
0 7 10 11
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s0
1
5 0
2
0 7 6 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s1
1
5 1
2
0 7 7 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s2
1
5 2
2
0 7 8 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s3
1
5 3
2
0 7 9 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s4
1
5 4
2
0 7 10 12
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s0
1
0 0
2
0 7 6 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s1
1
0 1
2
0 7 7 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s2
1
0 2
2
0 7 8 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s3
1
0 3
2
0 7 9 13
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s4
1
0 4
2
0 7 10 13
0 1 0 1
1
end_operator
begin_operator
disembark-truck driver1 truck1 s0
1
4 0
2
0 6 11 6
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck1 s1
1
4 1
2
0 6 11 7
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck1 s2
1
4 2
2
0 6 11 8
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck1 s3
1
4 3
2
0 6 11 9
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck1 s4
1
4 4
2
0 6 11 10
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s0
1
5 0
2
0 6 12 6
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s1
1
5 1
2
0 6 12 7
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s2
1
5 2
2
0 6 12 8
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s3
1
5 3
2
0 6 12 9
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s4
1
5 4
2
0 6 12 10
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s0
1
0 0
2
0 6 13 6
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s1
1
0 1
2
0 6 13 7
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s2
1
0 2
2
0 6 13 8
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s3
1
0 3
2
0 6 13 9
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s4
1
0 4
2
0 6 13 10
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s0
1
4 0
2
0 7 11 6
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s1
1
4 1
2
0 7 11 7
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s2
1
4 2
2
0 7 11 8
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s3
1
4 3
2
0 7 11 9
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s4
1
4 4
2
0 7 11 10
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s0
1
5 0
2
0 7 12 6
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s1
1
5 1
2
0 7 12 7
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s2
1
5 2
2
0 7 12 8
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s3
1
5 3
2
0 7 12 9
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s4
1
5 4
2
0 7 12 10
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s0
1
0 0
2
0 7 13 6
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s1
1
0 1
2
0 7 13 7
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s2
1
0 2
2
0 7 13 8
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s3
1
0 3
2
0 7 13 9
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s4
1
0 4
2
0 7 13 10
0 1 -1 0
1
end_operator
begin_operator
drive-truck truck1 s0 s1 driver1
1
6 11
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck1 s0 s1 driver2
1
7 11
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck1 s0 s2 driver1
1
6 11
1
0 4 0 2
1
end_operator
begin_operator
drive-truck truck1 s0 s2 driver2
1
7 11
1
0 4 0 2
1
end_operator
begin_operator
drive-truck truck1 s0 s3 driver1
1
6 11
1
0 4 0 3
1
end_operator
begin_operator
drive-truck truck1 s0 s3 driver2
1
7 11
1
0 4 0 3
1
end_operator
begin_operator
drive-truck truck1 s0 s4 driver1
1
6 11
1
0 4 0 4
1
end_operator
begin_operator
drive-truck truck1 s0 s4 driver2
1
7 11
1
0 4 0 4
1
end_operator
begin_operator
drive-truck truck1 s1 s0 driver1
1
6 11
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck1 s1 s0 driver2
1
7 11
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck1 s1 s2 driver1
1
6 11
1
0 4 1 2
1
end_operator
begin_operator
drive-truck truck1 s1 s2 driver2
1
7 11
1
0 4 1 2
1
end_operator
begin_operator
drive-truck truck1 s2 s0 driver1
1
6 11
1
0 4 2 0
1
end_operator
begin_operator
drive-truck truck1 s2 s0 driver2
1
7 11
1
0 4 2 0
1
end_operator
begin_operator
drive-truck truck1 s2 s1 driver1
1
6 11
1
0 4 2 1
1
end_operator
begin_operator
drive-truck truck1 s2 s1 driver2
1
7 11
1
0 4 2 1
1
end_operator
begin_operator
drive-truck truck1 s2 s3 driver1
1
6 11
1
0 4 2 3
1
end_operator
begin_operator
drive-truck truck1 s2 s3 driver2
1
7 11
1
0 4 2 3
1
end_operator
begin_operator
drive-truck truck1 s2 s4 driver1
1
6 11
1
0 4 2 4
1
end_operator
begin_operator
drive-truck truck1 s2 s4 driver2
1
7 11
1
0 4 2 4
1
end_operator
begin_operator
drive-truck truck1 s3 s0 driver1
1
6 11
1
0 4 3 0
1
end_operator
begin_operator
drive-truck truck1 s3 s0 driver2
1
7 11
1
0 4 3 0
1
end_operator
begin_operator
drive-truck truck1 s3 s2 driver1
1
6 11
1
0 4 3 2
1
end_operator
begin_operator
drive-truck truck1 s3 s2 driver2
1
7 11
1
0 4 3 2
1
end_operator
begin_operator
drive-truck truck1 s3 s4 driver1
1
6 11
1
0 4 3 4
1
end_operator
begin_operator
drive-truck truck1 s3 s4 driver2
1
7 11
1
0 4 3 4
1
end_operator
begin_operator
drive-truck truck1 s4 s0 driver1
1
6 11
1
0 4 4 0
1
end_operator
begin_operator
drive-truck truck1 s4 s0 driver2
1
7 11
1
0 4 4 0
1
end_operator
begin_operator
drive-truck truck1 s4 s2 driver1
1
6 11
1
0 4 4 2
1
end_operator
begin_operator
drive-truck truck1 s4 s2 driver2
1
7 11
1
0 4 4 2
1
end_operator
begin_operator
drive-truck truck1 s4 s3 driver1
1
6 11
1
0 4 4 3
1
end_operator
begin_operator
drive-truck truck1 s4 s3 driver2
1
7 11
1
0 4 4 3
1
end_operator
begin_operator
drive-truck truck2 s0 s1 driver1
1
6 12
1
0 5 0 1
1
end_operator
begin_operator
drive-truck truck2 s0 s1 driver2
1
7 12
1
0 5 0 1
1
end_operator
begin_operator
drive-truck truck2 s0 s2 driver1
1
6 12
1
0 5 0 2
1
end_operator
begin_operator
drive-truck truck2 s0 s2 driver2
1
7 12
1
0 5 0 2
1
end_operator
begin_operator
drive-truck truck2 s0 s3 driver1
1
6 12
1
0 5 0 3
1
end_operator
begin_operator
drive-truck truck2 s0 s3 driver2
1
7 12
1
0 5 0 3
1
end_operator
begin_operator
drive-truck truck2 s0 s4 driver1
1
6 12
1
0 5 0 4
1
end_operator
begin_operator
drive-truck truck2 s0 s4 driver2
1
7 12
1
0 5 0 4
1
end_operator
begin_operator
drive-truck truck2 s1 s0 driver1
1
6 12
1
0 5 1 0
1
end_operator
begin_operator
drive-truck truck2 s1 s0 driver2
1
7 12
1
0 5 1 0
1
end_operator
begin_operator
drive-truck truck2 s1 s2 driver1
1
6 12
1
0 5 1 2
1
end_operator
begin_operator
drive-truck truck2 s1 s2 driver2
1
7 12
1
0 5 1 2
1
end_operator
begin_operator
drive-truck truck2 s2 s0 driver1
1
6 12
1
0 5 2 0
1
end_operator
begin_operator
drive-truck truck2 s2 s0 driver2
1
7 12
1
0 5 2 0
1
end_operator
begin_operator
drive-truck truck2 s2 s1 driver1
1
6 12
1
0 5 2 1
1
end_operator
begin_operator
drive-truck truck2 s2 s1 driver2
1
7 12
1
0 5 2 1
1
end_operator
begin_operator
drive-truck truck2 s2 s3 driver1
1
6 12
1
0 5 2 3
1
end_operator
begin_operator
drive-truck truck2 s2 s3 driver2
1
7 12
1
0 5 2 3
1
end_operator
begin_operator
drive-truck truck2 s2 s4 driver1
1
6 12
1
0 5 2 4
1
end_operator
begin_operator
drive-truck truck2 s2 s4 driver2
1
7 12
1
0 5 2 4
1
end_operator
begin_operator
drive-truck truck2 s3 s0 driver1
1
6 12
1
0 5 3 0
1
end_operator
begin_operator
drive-truck truck2 s3 s0 driver2
1
7 12
1
0 5 3 0
1
end_operator
begin_operator
drive-truck truck2 s3 s2 driver1
1
6 12
1
0 5 3 2
1
end_operator
begin_operator
drive-truck truck2 s3 s2 driver2
1
7 12
1
0 5 3 2
1
end_operator
begin_operator
drive-truck truck2 s3 s4 driver1
1
6 12
1
0 5 3 4
1
end_operator
begin_operator
drive-truck truck2 s3 s4 driver2
1
7 12
1
0 5 3 4
1
end_operator
begin_operator
drive-truck truck2 s4 s0 driver1
1
6 12
1
0 5 4 0
1
end_operator
begin_operator
drive-truck truck2 s4 s0 driver2
1
7 12
1
0 5 4 0
1
end_operator
begin_operator
drive-truck truck2 s4 s2 driver1
1
6 12
1
0 5 4 2
1
end_operator
begin_operator
drive-truck truck2 s4 s2 driver2
1
7 12
1
0 5 4 2
1
end_operator
begin_operator
drive-truck truck2 s4 s3 driver1
1
6 12
1
0 5 4 3
1
end_operator
begin_operator
drive-truck truck2 s4 s3 driver2
1
7 12
1
0 5 4 3
1
end_operator
begin_operator
drive-truck truck3 s0 s1 driver1
1
6 13
1
0 0 0 1
1
end_operator
begin_operator
drive-truck truck3 s0 s1 driver2
1
7 13
1
0 0 0 1
1
end_operator
begin_operator
drive-truck truck3 s0 s2 driver1
1
6 13
1
0 0 0 2
1
end_operator
begin_operator
drive-truck truck3 s0 s2 driver2
1
7 13
1
0 0 0 2
1
end_operator
begin_operator
drive-truck truck3 s0 s3 driver1
1
6 13
1
0 0 0 3
1
end_operator
begin_operator
drive-truck truck3 s0 s3 driver2
1
7 13
1
0 0 0 3
1
end_operator
begin_operator
drive-truck truck3 s0 s4 driver1
1
6 13
1
0 0 0 4
1
end_operator
begin_operator
drive-truck truck3 s0 s4 driver2
1
7 13
1
0 0 0 4
1
end_operator
begin_operator
drive-truck truck3 s1 s0 driver1
1
6 13
1
0 0 1 0
1
end_operator
begin_operator
drive-truck truck3 s1 s0 driver2
1
7 13
1
0 0 1 0
1
end_operator
begin_operator
drive-truck truck3 s1 s2 driver1
1
6 13
1
0 0 1 2
1
end_operator
begin_operator
drive-truck truck3 s1 s2 driver2
1
7 13
1
0 0 1 2
1
end_operator
begin_operator
drive-truck truck3 s2 s0 driver1
1
6 13
1
0 0 2 0
1
end_operator
begin_operator
drive-truck truck3 s2 s0 driver2
1
7 13
1
0 0 2 0
1
end_operator
begin_operator
drive-truck truck3 s2 s1 driver1
1
6 13
1
0 0 2 1
1
end_operator
begin_operator
drive-truck truck3 s2 s1 driver2
1
7 13
1
0 0 2 1
1
end_operator
begin_operator
drive-truck truck3 s2 s3 driver1
1
6 13
1
0 0 2 3
1
end_operator
begin_operator
drive-truck truck3 s2 s3 driver2
1
7 13
1
0 0 2 3
1
end_operator
begin_operator
drive-truck truck3 s2 s4 driver1
1
6 13
1
0 0 2 4
1
end_operator
begin_operator
drive-truck truck3 s2 s4 driver2
1
7 13
1
0 0 2 4
1
end_operator
begin_operator
drive-truck truck3 s3 s0 driver1
1
6 13
1
0 0 3 0
1
end_operator
begin_operator
drive-truck truck3 s3 s0 driver2
1
7 13
1
0 0 3 0
1
end_operator
begin_operator
drive-truck truck3 s3 s2 driver1
1
6 13
1
0 0 3 2
1
end_operator
begin_operator
drive-truck truck3 s3 s2 driver2
1
7 13
1
0 0 3 2
1
end_operator
begin_operator
drive-truck truck3 s3 s4 driver1
1
6 13
1
0 0 3 4
1
end_operator
begin_operator
drive-truck truck3 s3 s4 driver2
1
7 13
1
0 0 3 4
1
end_operator
begin_operator
drive-truck truck3 s4 s0 driver1
1
6 13
1
0 0 4 0
1
end_operator
begin_operator
drive-truck truck3 s4 s0 driver2
1
7 13
1
0 0 4 0
1
end_operator
begin_operator
drive-truck truck3 s4 s2 driver1
1
6 13
1
0 0 4 2
1
end_operator
begin_operator
drive-truck truck3 s4 s2 driver2
1
7 13
1
0 0 4 2
1
end_operator
begin_operator
drive-truck truck3 s4 s3 driver1
1
6 13
1
0 0 4 3
1
end_operator
begin_operator
drive-truck truck3 s4 s3 driver2
1
7 13
1
0 0 4 3
1
end_operator
begin_operator
load-truck package1 truck1 s0
1
4 0
1
0 13 0 5
1
end_operator
begin_operator
load-truck package1 truck1 s1
1
4 1
1
0 13 1 5
1
end_operator
begin_operator
load-truck package1 truck1 s2
1
4 2
1
0 13 2 5
1
end_operator
begin_operator
load-truck package1 truck1 s3
1
4 3
1
0 13 3 5
1
end_operator
begin_operator
load-truck package1 truck1 s4
1
4 4
1
0 13 4 5
1
end_operator
begin_operator
load-truck package1 truck2 s0
1
5 0
1
0 13 0 6
1
end_operator
begin_operator
load-truck package1 truck2 s1
1
5 1
1
0 13 1 6
1
end_operator
begin_operator
load-truck package1 truck2 s2
1
5 2
1
0 13 2 6
1
end_operator
begin_operator
load-truck package1 truck2 s3
1
5 3
1
0 13 3 6
1
end_operator
begin_operator
load-truck package1 truck2 s4
1
5 4
1
0 13 4 6
1
end_operator
begin_operator
load-truck package1 truck3 s0
1
0 0
1
0 13 0 7
1
end_operator
begin_operator
load-truck package1 truck3 s1
1
0 1
1
0 13 1 7
1
end_operator
begin_operator
load-truck package1 truck3 s2
1
0 2
1
0 13 2 7
1
end_operator
begin_operator
load-truck package1 truck3 s3
1
0 3
1
0 13 3 7
1
end_operator
begin_operator
load-truck package1 truck3 s4
1
0 4
1
0 13 4 7
1
end_operator
begin_operator
load-truck package2 truck1 s0
1
4 0
1
0 12 0 5
1
end_operator
begin_operator
load-truck package2 truck1 s1
1
4 1
1
0 12 1 5
1
end_operator
begin_operator
load-truck package2 truck1 s2
1
4 2
1
0 12 2 5
1
end_operator
begin_operator
load-truck package2 truck1 s3
1
4 3
1
0 12 3 5
1
end_operator
begin_operator
load-truck package2 truck1 s4
1
4 4
1
0 12 4 5
1
end_operator
begin_operator
load-truck package2 truck2 s0
1
5 0
1
0 12 0 6
1
end_operator
begin_operator
load-truck package2 truck2 s1
1
5 1
1
0 12 1 6
1
end_operator
begin_operator
load-truck package2 truck2 s2
1
5 2
1
0 12 2 6
1
end_operator
begin_operator
load-truck package2 truck2 s3
1
5 3
1
0 12 3 6
1
end_operator
begin_operator
load-truck package2 truck2 s4
1
5 4
1
0 12 4 6
1
end_operator
begin_operator
load-truck package2 truck3 s0
1
0 0
1
0 12 0 7
1
end_operator
begin_operator
load-truck package2 truck3 s1
1
0 1
1
0 12 1 7
1
end_operator
begin_operator
load-truck package2 truck3 s2
1
0 2
1
0 12 2 7
1
end_operator
begin_operator
load-truck package2 truck3 s3
1
0 3
1
0 12 3 7
1
end_operator
begin_operator
load-truck package2 truck3 s4
1
0 4
1
0 12 4 7
1
end_operator
begin_operator
load-truck package3 truck1 s0
1
4 0
1
0 11 0 5
1
end_operator
begin_operator
load-truck package3 truck1 s1
1
4 1
1
0 11 1 5
1
end_operator
begin_operator
load-truck package3 truck1 s2
1
4 2
1
0 11 2 5
1
end_operator
begin_operator
load-truck package3 truck1 s3
1
4 3
1
0 11 3 5
1
end_operator
begin_operator
load-truck package3 truck1 s4
1
4 4
1
0 11 4 5
1
end_operator
begin_operator
load-truck package3 truck2 s0
1
5 0
1
0 11 0 6
1
end_operator
begin_operator
load-truck package3 truck2 s1
1
5 1
1
0 11 1 6
1
end_operator
begin_operator
load-truck package3 truck2 s2
1
5 2
1
0 11 2 6
1
end_operator
begin_operator
load-truck package3 truck2 s3
1
5 3
1
0 11 3 6
1
end_operator
begin_operator
load-truck package3 truck2 s4
1
5 4
1
0 11 4 6
1
end_operator
begin_operator
load-truck package3 truck3 s0
1
0 0
1
0 11 0 7
1
end_operator
begin_operator
load-truck package3 truck3 s1
1
0 1
1
0 11 1 7
1
end_operator
begin_operator
load-truck package3 truck3 s2
1
0 2
1
0 11 2 7
1
end_operator
begin_operator
load-truck package3 truck3 s3
1
0 3
1
0 11 3 7
1
end_operator
begin_operator
load-truck package3 truck3 s4
1
0 4
1
0 11 4 7
1
end_operator
begin_operator
load-truck package4 truck1 s0
1
4 0
1
0 10 0 5
1
end_operator
begin_operator
load-truck package4 truck1 s1
1
4 1
1
0 10 1 5
1
end_operator
begin_operator
load-truck package4 truck1 s2
1
4 2
1
0 10 2 5
1
end_operator
begin_operator
load-truck package4 truck1 s3
1
4 3
1
0 10 3 5
1
end_operator
begin_operator
load-truck package4 truck1 s4
1
4 4
1
0 10 4 5
1
end_operator
begin_operator
load-truck package4 truck2 s0
1
5 0
1
0 10 0 6
1
end_operator
begin_operator
load-truck package4 truck2 s1
1
5 1
1
0 10 1 6
1
end_operator
begin_operator
load-truck package4 truck2 s2
1
5 2
1
0 10 2 6
1
end_operator
begin_operator
load-truck package4 truck2 s3
1
5 3
1
0 10 3 6
1
end_operator
begin_operator
load-truck package4 truck2 s4
1
5 4
1
0 10 4 6
1
end_operator
begin_operator
load-truck package4 truck3 s0
1
0 0
1
0 10 0 7
1
end_operator
begin_operator
load-truck package4 truck3 s1
1
0 1
1
0 10 1 7
1
end_operator
begin_operator
load-truck package4 truck3 s2
1
0 2
1
0 10 2 7
1
end_operator
begin_operator
load-truck package4 truck3 s3
1
0 3
1
0 10 3 7
1
end_operator
begin_operator
load-truck package4 truck3 s4
1
0 4
1
0 10 4 7
1
end_operator
begin_operator
load-truck package5 truck1 s0
1
4 0
1
0 9 0 5
1
end_operator
begin_operator
load-truck package5 truck1 s1
1
4 1
1
0 9 1 5
1
end_operator
begin_operator
load-truck package5 truck1 s2
1
4 2
1
0 9 2 5
1
end_operator
begin_operator
load-truck package5 truck1 s3
1
4 3
1
0 9 3 5
1
end_operator
begin_operator
load-truck package5 truck1 s4
1
4 4
1
0 9 4 5
1
end_operator
begin_operator
load-truck package5 truck2 s0
1
5 0
1
0 9 0 6
1
end_operator
begin_operator
load-truck package5 truck2 s1
1
5 1
1
0 9 1 6
1
end_operator
begin_operator
load-truck package5 truck2 s2
1
5 2
1
0 9 2 6
1
end_operator
begin_operator
load-truck package5 truck2 s3
1
5 3
1
0 9 3 6
1
end_operator
begin_operator
load-truck package5 truck2 s4
1
5 4
1
0 9 4 6
1
end_operator
begin_operator
load-truck package5 truck3 s0
1
0 0
1
0 9 0 7
1
end_operator
begin_operator
load-truck package5 truck3 s1
1
0 1
1
0 9 1 7
1
end_operator
begin_operator
load-truck package5 truck3 s2
1
0 2
1
0 9 2 7
1
end_operator
begin_operator
load-truck package5 truck3 s3
1
0 3
1
0 9 3 7
1
end_operator
begin_operator
load-truck package5 truck3 s4
1
0 4
1
0 9 4 7
1
end_operator
begin_operator
load-truck package6 truck1 s0
1
4 0
1
0 8 0 5
1
end_operator
begin_operator
load-truck package6 truck1 s1
1
4 1
1
0 8 1 5
1
end_operator
begin_operator
load-truck package6 truck1 s2
1
4 2
1
0 8 2 5
1
end_operator
begin_operator
load-truck package6 truck1 s3
1
4 3
1
0 8 3 5
1
end_operator
begin_operator
load-truck package6 truck1 s4
1
4 4
1
0 8 4 5
1
end_operator
begin_operator
load-truck package6 truck2 s0
1
5 0
1
0 8 0 6
1
end_operator
begin_operator
load-truck package6 truck2 s1
1
5 1
1
0 8 1 6
1
end_operator
begin_operator
load-truck package6 truck2 s2
1
5 2
1
0 8 2 6
1
end_operator
begin_operator
load-truck package6 truck2 s3
1
5 3
1
0 8 3 6
1
end_operator
begin_operator
load-truck package6 truck2 s4
1
5 4
1
0 8 4 6
1
end_operator
begin_operator
load-truck package6 truck3 s0
1
0 0
1
0 8 0 7
1
end_operator
begin_operator
load-truck package6 truck3 s1
1
0 1
1
0 8 1 7
1
end_operator
begin_operator
load-truck package6 truck3 s2
1
0 2
1
0 8 2 7
1
end_operator
begin_operator
load-truck package6 truck3 s3
1
0 3
1
0 8 3 7
1
end_operator
begin_operator
load-truck package6 truck3 s4
1
0 4
1
0 8 4 7
1
end_operator
begin_operator
unload-truck package1 truck1 s0
1
4 0
1
0 13 5 0
1
end_operator
begin_operator
unload-truck package1 truck1 s1
1
4 1
1
0 13 5 1
1
end_operator
begin_operator
unload-truck package1 truck1 s2
1
4 2
1
0 13 5 2
1
end_operator
begin_operator
unload-truck package1 truck1 s3
1
4 3
1
0 13 5 3
1
end_operator
begin_operator
unload-truck package1 truck1 s4
1
4 4
1
0 13 5 4
1
end_operator
begin_operator
unload-truck package1 truck2 s0
1
5 0
1
0 13 6 0
1
end_operator
begin_operator
unload-truck package1 truck2 s1
1
5 1
1
0 13 6 1
1
end_operator
begin_operator
unload-truck package1 truck2 s2
1
5 2
1
0 13 6 2
1
end_operator
begin_operator
unload-truck package1 truck2 s3
1
5 3
1
0 13 6 3
1
end_operator
begin_operator
unload-truck package1 truck2 s4
1
5 4
1
0 13 6 4
1
end_operator
begin_operator
unload-truck package1 truck3 s0
1
0 0
1
0 13 7 0
1
end_operator
begin_operator
unload-truck package1 truck3 s1
1
0 1
1
0 13 7 1
1
end_operator
begin_operator
unload-truck package1 truck3 s2
1
0 2
1
0 13 7 2
1
end_operator
begin_operator
unload-truck package1 truck3 s3
1
0 3
1
0 13 7 3
1
end_operator
begin_operator
unload-truck package1 truck3 s4
1
0 4
1
0 13 7 4
1
end_operator
begin_operator
unload-truck package2 truck1 s0
1
4 0
1
0 12 5 0
1
end_operator
begin_operator
unload-truck package2 truck1 s1
1
4 1
1
0 12 5 1
1
end_operator
begin_operator
unload-truck package2 truck1 s2
1
4 2
1
0 12 5 2
1
end_operator
begin_operator
unload-truck package2 truck1 s3
1
4 3
1
0 12 5 3
1
end_operator
begin_operator
unload-truck package2 truck1 s4
1
4 4
1
0 12 5 4
1
end_operator
begin_operator
unload-truck package2 truck2 s0
1
5 0
1
0 12 6 0
1
end_operator
begin_operator
unload-truck package2 truck2 s1
1
5 1
1
0 12 6 1
1
end_operator
begin_operator
unload-truck package2 truck2 s2
1
5 2
1
0 12 6 2
1
end_operator
begin_operator
unload-truck package2 truck2 s3
1
5 3
1
0 12 6 3
1
end_operator
begin_operator
unload-truck package2 truck2 s4
1
5 4
1
0 12 6 4
1
end_operator
begin_operator
unload-truck package2 truck3 s0
1
0 0
1
0 12 7 0
1
end_operator
begin_operator
unload-truck package2 truck3 s1
1
0 1
1
0 12 7 1
1
end_operator
begin_operator
unload-truck package2 truck3 s2
1
0 2
1
0 12 7 2
1
end_operator
begin_operator
unload-truck package2 truck3 s3
1
0 3
1
0 12 7 3
1
end_operator
begin_operator
unload-truck package2 truck3 s4
1
0 4
1
0 12 7 4
1
end_operator
begin_operator
unload-truck package3 truck1 s0
1
4 0
1
0 11 5 0
1
end_operator
begin_operator
unload-truck package3 truck1 s1
1
4 1
1
0 11 5 1
1
end_operator
begin_operator
unload-truck package3 truck1 s2
1
4 2
1
0 11 5 2
1
end_operator
begin_operator
unload-truck package3 truck1 s3
1
4 3
1
0 11 5 3
1
end_operator
begin_operator
unload-truck package3 truck1 s4
1
4 4
1
0 11 5 4
1
end_operator
begin_operator
unload-truck package3 truck2 s0
1
5 0
1
0 11 6 0
1
end_operator
begin_operator
unload-truck package3 truck2 s1
1
5 1
1
0 11 6 1
1
end_operator
begin_operator
unload-truck package3 truck2 s2
1
5 2
1
0 11 6 2
1
end_operator
begin_operator
unload-truck package3 truck2 s3
1
5 3
1
0 11 6 3
1
end_operator
begin_operator
unload-truck package3 truck2 s4
1
5 4
1
0 11 6 4
1
end_operator
begin_operator
unload-truck package3 truck3 s0
1
0 0
1
0 11 7 0
1
end_operator
begin_operator
unload-truck package3 truck3 s1
1
0 1
1
0 11 7 1
1
end_operator
begin_operator
unload-truck package3 truck3 s2
1
0 2
1
0 11 7 2
1
end_operator
begin_operator
unload-truck package3 truck3 s3
1
0 3
1
0 11 7 3
1
end_operator
begin_operator
unload-truck package3 truck3 s4
1
0 4
1
0 11 7 4
1
end_operator
begin_operator
unload-truck package4 truck1 s0
1
4 0
1
0 10 5 0
1
end_operator
begin_operator
unload-truck package4 truck1 s1
1
4 1
1
0 10 5 1
1
end_operator
begin_operator
unload-truck package4 truck1 s2
1
4 2
1
0 10 5 2
1
end_operator
begin_operator
unload-truck package4 truck1 s3
1
4 3
1
0 10 5 3
1
end_operator
begin_operator
unload-truck package4 truck1 s4
1
4 4
1
0 10 5 4
1
end_operator
begin_operator
unload-truck package4 truck2 s0
1
5 0
1
0 10 6 0
1
end_operator
begin_operator
unload-truck package4 truck2 s1
1
5 1
1
0 10 6 1
1
end_operator
begin_operator
unload-truck package4 truck2 s2
1
5 2
1
0 10 6 2
1
end_operator
begin_operator
unload-truck package4 truck2 s3
1
5 3
1
0 10 6 3
1
end_operator
begin_operator
unload-truck package4 truck2 s4
1
5 4
1
0 10 6 4
1
end_operator
begin_operator
unload-truck package4 truck3 s0
1
0 0
1
0 10 7 0
1
end_operator
begin_operator
unload-truck package4 truck3 s1
1
0 1
1
0 10 7 1
1
end_operator
begin_operator
unload-truck package4 truck3 s2
1
0 2
1
0 10 7 2
1
end_operator
begin_operator
unload-truck package4 truck3 s3
1
0 3
1
0 10 7 3
1
end_operator
begin_operator
unload-truck package4 truck3 s4
1
0 4
1
0 10 7 4
1
end_operator
begin_operator
unload-truck package5 truck1 s0
1
4 0
1
0 9 5 0
1
end_operator
begin_operator
unload-truck package5 truck1 s1
1
4 1
1
0 9 5 1
1
end_operator
begin_operator
unload-truck package5 truck1 s2
1
4 2
1
0 9 5 2
1
end_operator
begin_operator
unload-truck package5 truck1 s3
1
4 3
1
0 9 5 3
1
end_operator
begin_operator
unload-truck package5 truck1 s4
1
4 4
1
0 9 5 4
1
end_operator
begin_operator
unload-truck package5 truck2 s0
1
5 0
1
0 9 6 0
1
end_operator
begin_operator
unload-truck package5 truck2 s1
1
5 1
1
0 9 6 1
1
end_operator
begin_operator
unload-truck package5 truck2 s2
1
5 2
1
0 9 6 2
1
end_operator
begin_operator
unload-truck package5 truck2 s3
1
5 3
1
0 9 6 3
1
end_operator
begin_operator
unload-truck package5 truck2 s4
1
5 4
1
0 9 6 4
1
end_operator
begin_operator
unload-truck package5 truck3 s0
1
0 0
1
0 9 7 0
1
end_operator
begin_operator
unload-truck package5 truck3 s1
1
0 1
1
0 9 7 1
1
end_operator
begin_operator
unload-truck package5 truck3 s2
1
0 2
1
0 9 7 2
1
end_operator
begin_operator
unload-truck package5 truck3 s3
1
0 3
1
0 9 7 3
1
end_operator
begin_operator
unload-truck package5 truck3 s4
1
0 4
1
0 9 7 4
1
end_operator
begin_operator
unload-truck package6 truck1 s0
1
4 0
1
0 8 5 0
1
end_operator
begin_operator
unload-truck package6 truck1 s1
1
4 1
1
0 8 5 1
1
end_operator
begin_operator
unload-truck package6 truck1 s2
1
4 2
1
0 8 5 2
1
end_operator
begin_operator
unload-truck package6 truck1 s3
1
4 3
1
0 8 5 3
1
end_operator
begin_operator
unload-truck package6 truck1 s4
1
4 4
1
0 8 5 4
1
end_operator
begin_operator
unload-truck package6 truck2 s0
1
5 0
1
0 8 6 0
1
end_operator
begin_operator
unload-truck package6 truck2 s1
1
5 1
1
0 8 6 1
1
end_operator
begin_operator
unload-truck package6 truck2 s2
1
5 2
1
0 8 6 2
1
end_operator
begin_operator
unload-truck package6 truck2 s3
1
5 3
1
0 8 6 3
1
end_operator
begin_operator
unload-truck package6 truck2 s4
1
5 4
1
0 8 6 4
1
end_operator
begin_operator
unload-truck package6 truck3 s0
1
0 0
1
0 8 7 0
1
end_operator
begin_operator
unload-truck package6 truck3 s1
1
0 1
1
0 8 7 1
1
end_operator
begin_operator
unload-truck package6 truck3 s2
1
0 2
1
0 8 7 2
1
end_operator
begin_operator
unload-truck package6 truck3 s3
1
0 3
1
0 8 7 3
1
end_operator
begin_operator
unload-truck package6 truck3 s4
1
0 4
1
0 8 7 4
1
end_operator
begin_operator
walk driver1 p0-1 s0
0
1
0 6 0 6
1
end_operator
begin_operator
walk driver1 p0-1 s1
0
1
0 6 0 7
1
end_operator
begin_operator
walk driver1 p1-2 s1
0
1
0 6 1 7
1
end_operator
begin_operator
walk driver1 p1-2 s2
0
1
0 6 1 8
1
end_operator
begin_operator
walk driver1 p1-3 s1
0
1
0 6 2 7
1
end_operator
begin_operator
walk driver1 p1-3 s3
0
1
0 6 2 9
1
end_operator
begin_operator
walk driver1 p3-2 s2
0
1
0 6 3 8
1
end_operator
begin_operator
walk driver1 p3-2 s3
0
1
0 6 3 9
1
end_operator
begin_operator
walk driver1 p3-4 s3
0
1
0 6 4 9
1
end_operator
begin_operator
walk driver1 p3-4 s4
0
1
0 6 4 10
1
end_operator
begin_operator
walk driver1 p4-0 s0
0
1
0 6 5 6
1
end_operator
begin_operator
walk driver1 p4-0 s4
0
1
0 6 5 10
1
end_operator
begin_operator
walk driver1 s0 p0-1
0
1
0 6 6 0
1
end_operator
begin_operator
walk driver1 s0 p4-0
0
1
0 6 6 5
1
end_operator
begin_operator
walk driver1 s1 p0-1
0
1
0 6 7 0
1
end_operator
begin_operator
walk driver1 s1 p1-2
0
1
0 6 7 1
1
end_operator
begin_operator
walk driver1 s1 p1-3
0
1
0 6 7 2
1
end_operator
begin_operator
walk driver1 s2 p1-2
0
1
0 6 8 1
1
end_operator
begin_operator
walk driver1 s2 p3-2
0
1
0 6 8 3
1
end_operator
begin_operator
walk driver1 s3 p1-3
0
1
0 6 9 2
1
end_operator
begin_operator
walk driver1 s3 p3-2
0
1
0 6 9 3
1
end_operator
begin_operator
walk driver1 s3 p3-4
0
1
0 6 9 4
1
end_operator
begin_operator
walk driver1 s4 p3-4
0
1
0 6 10 4
1
end_operator
begin_operator
walk driver1 s4 p4-0
0
1
0 6 10 5
1
end_operator
begin_operator
walk driver2 p0-1 s0
0
1
0 7 0 6
1
end_operator
begin_operator
walk driver2 p0-1 s1
0
1
0 7 0 7
1
end_operator
begin_operator
walk driver2 p1-2 s1
0
1
0 7 1 7
1
end_operator
begin_operator
walk driver2 p1-2 s2
0
1
0 7 1 8
1
end_operator
begin_operator
walk driver2 p1-3 s1
0
1
0 7 2 7
1
end_operator
begin_operator
walk driver2 p1-3 s3
0
1
0 7 2 9
1
end_operator
begin_operator
walk driver2 p3-2 s2
0
1
0 7 3 8
1
end_operator
begin_operator
walk driver2 p3-2 s3
0
1
0 7 3 9
1
end_operator
begin_operator
walk driver2 p3-4 s3
0
1
0 7 4 9
1
end_operator
begin_operator
walk driver2 p3-4 s4
0
1
0 7 4 10
1
end_operator
begin_operator
walk driver2 p4-0 s0
0
1
0 7 5 6
1
end_operator
begin_operator
walk driver2 p4-0 s4
0
1
0 7 5 10
1
end_operator
begin_operator
walk driver2 s0 p0-1
0
1
0 7 6 0
1
end_operator
begin_operator
walk driver2 s0 p4-0
0
1
0 7 6 5
1
end_operator
begin_operator
walk driver2 s1 p0-1
0
1
0 7 7 0
1
end_operator
begin_operator
walk driver2 s1 p1-2
0
1
0 7 7 1
1
end_operator
begin_operator
walk driver2 s1 p1-3
0
1
0 7 7 2
1
end_operator
begin_operator
walk driver2 s2 p1-2
0
1
0 7 8 1
1
end_operator
begin_operator
walk driver2 s2 p3-2
0
1
0 7 8 3
1
end_operator
begin_operator
walk driver2 s3 p1-3
0
1
0 7 9 2
1
end_operator
begin_operator
walk driver2 s3 p3-2
0
1
0 7 9 3
1
end_operator
begin_operator
walk driver2 s3 p3-4
0
1
0 7 9 4
1
end_operator
begin_operator
walk driver2 s4 p3-4
0
1
0 7 10 4
1
end_operator
begin_operator
walk driver2 s4 p4-0
0
1
0 7 10 5
1
end_operator
0

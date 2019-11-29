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
8
Atom at(driver3, p1-2)
Atom at(driver3, p2-0)
Atom at(driver3, s0)
Atom at(driver3, s1)
Atom at(driver3, s2)
Atom driving(driver3, truck1)
Atom driving(driver3, truck2)
Atom driving(driver3, truck3)
end_variable
begin_variable
var1
-1
2
Atom empty(truck1)
NegatedAtom empty(truck1)
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
Atom empty(truck3)
NegatedAtom empty(truck3)
end_variable
begin_variable
var4
-1
3
Atom at(truck1, s0)
Atom at(truck1, s1)
Atom at(truck1, s2)
end_variable
begin_variable
var5
-1
3
Atom at(truck2, s0)
Atom at(truck2, s1)
Atom at(truck2, s2)
end_variable
begin_variable
var6
-1
3
Atom at(truck3, s0)
Atom at(truck3, s1)
Atom at(truck3, s2)
end_variable
begin_variable
var7
-1
8
Atom at(driver1, p1-2)
Atom at(driver1, p2-0)
Atom at(driver1, s0)
Atom at(driver1, s1)
Atom at(driver1, s2)
Atom driving(driver1, truck1)
Atom driving(driver1, truck2)
Atom driving(driver1, truck3)
end_variable
begin_variable
var8
-1
8
Atom at(driver2, p1-2)
Atom at(driver2, p2-0)
Atom at(driver2, s0)
Atom at(driver2, s1)
Atom at(driver2, s2)
Atom driving(driver2, truck1)
Atom driving(driver2, truck2)
Atom driving(driver2, truck3)
end_variable
begin_variable
var9
-1
6
Atom at(package5, s0)
Atom at(package5, s1)
Atom at(package5, s2)
Atom in(package5, truck1)
Atom in(package5, truck2)
Atom in(package5, truck3)
end_variable
begin_variable
var10
-1
6
Atom at(package4, s0)
Atom at(package4, s1)
Atom at(package4, s2)
Atom in(package4, truck1)
Atom in(package4, truck2)
Atom in(package4, truck3)
end_variable
begin_variable
var11
-1
6
Atom at(package3, s0)
Atom at(package3, s1)
Atom at(package3, s2)
Atom in(package3, truck1)
Atom in(package3, truck2)
Atom in(package3, truck3)
end_variable
begin_variable
var12
-1
6
Atom at(package2, s0)
Atom at(package2, s1)
Atom at(package2, s2)
Atom in(package2, truck1)
Atom in(package2, truck2)
Atom in(package2, truck3)
end_variable
begin_variable
var13
-1
6
Atom at(package1, s0)
Atom at(package1, s1)
Atom at(package1, s2)
Atom in(package1, truck1)
Atom in(package1, truck2)
Atom in(package1, truck3)
end_variable
3
begin_mutex_group
4
7 5
8 5
0 5
1 0
end_mutex_group
begin_mutex_group
4
7 6
8 6
0 6
2 0
end_mutex_group
begin_mutex_group
4
7 7
8 7
0 7
3 0
end_mutex_group
begin_state
3
0
0
0
0
1
1
4
4
1
1
0
1
1
end_state
begin_goal
10
4 0
5 0
6 2
7 3
8 2
9 1
10 1
11 0
12 1
13 2
end_goal
222
begin_operator
board-truck driver1 truck1 s0
1
4 0
2
0 7 2 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck1 s1
1
4 1
2
0 7 3 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck1 s2
1
4 2
2
0 7 4 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s0
1
5 0
2
0 7 2 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s1
1
5 1
2
0 7 3 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck2 s2
1
5 2
2
0 7 4 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s0
1
6 0
2
0 7 2 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s1
1
6 1
2
0 7 3 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver1 truck3 s2
1
6 2
2
0 7 4 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s0
1
4 0
2
0 8 2 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s1
1
4 1
2
0 8 3 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck1 s2
1
4 2
2
0 8 4 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s0
1
5 0
2
0 8 2 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s1
1
5 1
2
0 8 3 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck2 s2
1
5 2
2
0 8 4 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s0
1
6 0
2
0 8 2 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s1
1
6 1
2
0 8 3 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver2 truck3 s2
1
6 2
2
0 8 4 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver3 truck1 s0
1
4 0
2
0 0 2 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver3 truck1 s1
1
4 1
2
0 0 3 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver3 truck1 s2
1
4 2
2
0 0 4 5
0 1 0 1
1
end_operator
begin_operator
board-truck driver3 truck2 s0
1
5 0
2
0 0 2 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver3 truck2 s1
1
5 1
2
0 0 3 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver3 truck2 s2
1
5 2
2
0 0 4 6
0 2 0 1
1
end_operator
begin_operator
board-truck driver3 truck3 s0
1
6 0
2
0 0 2 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver3 truck3 s1
1
6 1
2
0 0 3 7
0 3 0 1
1
end_operator
begin_operator
board-truck driver3 truck3 s2
1
6 2
2
0 0 4 7
0 3 0 1
1
end_operator
begin_operator
disembark-truck driver1 truck1 s0
1
4 0
2
0 7 5 2
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck1 s1
1
4 1
2
0 7 5 3
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck1 s2
1
4 2
2
0 7 5 4
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s0
1
5 0
2
0 7 6 2
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s1
1
5 1
2
0 7 6 3
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck2 s2
1
5 2
2
0 7 6 4
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s0
1
6 0
2
0 7 7 2
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s1
1
6 1
2
0 7 7 3
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver1 truck3 s2
1
6 2
2
0 7 7 4
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s0
1
4 0
2
0 8 5 2
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s1
1
4 1
2
0 8 5 3
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck1 s2
1
4 2
2
0 8 5 4
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s0
1
5 0
2
0 8 6 2
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s1
1
5 1
2
0 8 6 3
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck2 s2
1
5 2
2
0 8 6 4
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s0
1
6 0
2
0 8 7 2
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s1
1
6 1
2
0 8 7 3
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver2 truck3 s2
1
6 2
2
0 8 7 4
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck1 s0
1
4 0
2
0 0 5 2
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck1 s1
1
4 1
2
0 0 5 3
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck1 s2
1
4 2
2
0 0 5 4
0 1 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck2 s0
1
5 0
2
0 0 6 2
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck2 s1
1
5 1
2
0 0 6 3
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck2 s2
1
5 2
2
0 0 6 4
0 2 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck3 s0
1
6 0
2
0 0 7 2
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck3 s1
1
6 1
2
0 0 7 3
0 3 -1 0
1
end_operator
begin_operator
disembark-truck driver3 truck3 s2
1
6 2
2
0 0 7 4
0 3 -1 0
1
end_operator
begin_operator
drive-truck truck1 s0 s1 driver1
1
7 5
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck1 s0 s1 driver2
1
8 5
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck1 s0 s1 driver3
1
0 5
1
0 4 0 1
1
end_operator
begin_operator
drive-truck truck1 s0 s2 driver1
1
7 5
1
0 4 0 2
1
end_operator
begin_operator
drive-truck truck1 s0 s2 driver2
1
8 5
1
0 4 0 2
1
end_operator
begin_operator
drive-truck truck1 s0 s2 driver3
1
0 5
1
0 4 0 2
1
end_operator
begin_operator
drive-truck truck1 s1 s0 driver1
1
7 5
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck1 s1 s0 driver2
1
8 5
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck1 s1 s0 driver3
1
0 5
1
0 4 1 0
1
end_operator
begin_operator
drive-truck truck1 s1 s2 driver1
1
7 5
1
0 4 1 2
1
end_operator
begin_operator
drive-truck truck1 s1 s2 driver2
1
8 5
1
0 4 1 2
1
end_operator
begin_operator
drive-truck truck1 s1 s2 driver3
1
0 5
1
0 4 1 2
1
end_operator
begin_operator
drive-truck truck1 s2 s0 driver1
1
7 5
1
0 4 2 0
1
end_operator
begin_operator
drive-truck truck1 s2 s0 driver2
1
8 5
1
0 4 2 0
1
end_operator
begin_operator
drive-truck truck1 s2 s0 driver3
1
0 5
1
0 4 2 0
1
end_operator
begin_operator
drive-truck truck1 s2 s1 driver1
1
7 5
1
0 4 2 1
1
end_operator
begin_operator
drive-truck truck1 s2 s1 driver2
1
8 5
1
0 4 2 1
1
end_operator
begin_operator
drive-truck truck1 s2 s1 driver3
1
0 5
1
0 4 2 1
1
end_operator
begin_operator
drive-truck truck2 s0 s1 driver1
1
7 6
1
0 5 0 1
1
end_operator
begin_operator
drive-truck truck2 s0 s1 driver2
1
8 6
1
0 5 0 1
1
end_operator
begin_operator
drive-truck truck2 s0 s1 driver3
1
0 6
1
0 5 0 1
1
end_operator
begin_operator
drive-truck truck2 s0 s2 driver1
1
7 6
1
0 5 0 2
1
end_operator
begin_operator
drive-truck truck2 s0 s2 driver2
1
8 6
1
0 5 0 2
1
end_operator
begin_operator
drive-truck truck2 s0 s2 driver3
1
0 6
1
0 5 0 2
1
end_operator
begin_operator
drive-truck truck2 s1 s0 driver1
1
7 6
1
0 5 1 0
1
end_operator
begin_operator
drive-truck truck2 s1 s0 driver2
1
8 6
1
0 5 1 0
1
end_operator
begin_operator
drive-truck truck2 s1 s0 driver3
1
0 6
1
0 5 1 0
1
end_operator
begin_operator
drive-truck truck2 s1 s2 driver1
1
7 6
1
0 5 1 2
1
end_operator
begin_operator
drive-truck truck2 s1 s2 driver2
1
8 6
1
0 5 1 2
1
end_operator
begin_operator
drive-truck truck2 s1 s2 driver3
1
0 6
1
0 5 1 2
1
end_operator
begin_operator
drive-truck truck2 s2 s0 driver1
1
7 6
1
0 5 2 0
1
end_operator
begin_operator
drive-truck truck2 s2 s0 driver2
1
8 6
1
0 5 2 0
1
end_operator
begin_operator
drive-truck truck2 s2 s0 driver3
1
0 6
1
0 5 2 0
1
end_operator
begin_operator
drive-truck truck2 s2 s1 driver1
1
7 6
1
0 5 2 1
1
end_operator
begin_operator
drive-truck truck2 s2 s1 driver2
1
8 6
1
0 5 2 1
1
end_operator
begin_operator
drive-truck truck2 s2 s1 driver3
1
0 6
1
0 5 2 1
1
end_operator
begin_operator
drive-truck truck3 s0 s1 driver1
1
7 7
1
0 6 0 1
1
end_operator
begin_operator
drive-truck truck3 s0 s1 driver2
1
8 7
1
0 6 0 1
1
end_operator
begin_operator
drive-truck truck3 s0 s1 driver3
1
0 7
1
0 6 0 1
1
end_operator
begin_operator
drive-truck truck3 s0 s2 driver1
1
7 7
1
0 6 0 2
1
end_operator
begin_operator
drive-truck truck3 s0 s2 driver2
1
8 7
1
0 6 0 2
1
end_operator
begin_operator
drive-truck truck3 s0 s2 driver3
1
0 7
1
0 6 0 2
1
end_operator
begin_operator
drive-truck truck3 s1 s0 driver1
1
7 7
1
0 6 1 0
1
end_operator
begin_operator
drive-truck truck3 s1 s0 driver2
1
8 7
1
0 6 1 0
1
end_operator
begin_operator
drive-truck truck3 s1 s0 driver3
1
0 7
1
0 6 1 0
1
end_operator
begin_operator
drive-truck truck3 s1 s2 driver1
1
7 7
1
0 6 1 2
1
end_operator
begin_operator
drive-truck truck3 s1 s2 driver2
1
8 7
1
0 6 1 2
1
end_operator
begin_operator
drive-truck truck3 s1 s2 driver3
1
0 7
1
0 6 1 2
1
end_operator
begin_operator
drive-truck truck3 s2 s0 driver1
1
7 7
1
0 6 2 0
1
end_operator
begin_operator
drive-truck truck3 s2 s0 driver2
1
8 7
1
0 6 2 0
1
end_operator
begin_operator
drive-truck truck3 s2 s0 driver3
1
0 7
1
0 6 2 0
1
end_operator
begin_operator
drive-truck truck3 s2 s1 driver1
1
7 7
1
0 6 2 1
1
end_operator
begin_operator
drive-truck truck3 s2 s1 driver2
1
8 7
1
0 6 2 1
1
end_operator
begin_operator
drive-truck truck3 s2 s1 driver3
1
0 7
1
0 6 2 1
1
end_operator
begin_operator
load-truck package1 truck1 s0
1
4 0
1
0 13 0 3
1
end_operator
begin_operator
load-truck package1 truck1 s1
1
4 1
1
0 13 1 3
1
end_operator
begin_operator
load-truck package1 truck1 s2
1
4 2
1
0 13 2 3
1
end_operator
begin_operator
load-truck package1 truck2 s0
1
5 0
1
0 13 0 4
1
end_operator
begin_operator
load-truck package1 truck2 s1
1
5 1
1
0 13 1 4
1
end_operator
begin_operator
load-truck package1 truck2 s2
1
5 2
1
0 13 2 4
1
end_operator
begin_operator
load-truck package1 truck3 s0
1
6 0
1
0 13 0 5
1
end_operator
begin_operator
load-truck package1 truck3 s1
1
6 1
1
0 13 1 5
1
end_operator
begin_operator
load-truck package1 truck3 s2
1
6 2
1
0 13 2 5
1
end_operator
begin_operator
load-truck package2 truck1 s0
1
4 0
1
0 12 0 3
1
end_operator
begin_operator
load-truck package2 truck1 s1
1
4 1
1
0 12 1 3
1
end_operator
begin_operator
load-truck package2 truck1 s2
1
4 2
1
0 12 2 3
1
end_operator
begin_operator
load-truck package2 truck2 s0
1
5 0
1
0 12 0 4
1
end_operator
begin_operator
load-truck package2 truck2 s1
1
5 1
1
0 12 1 4
1
end_operator
begin_operator
load-truck package2 truck2 s2
1
5 2
1
0 12 2 4
1
end_operator
begin_operator
load-truck package2 truck3 s0
1
6 0
1
0 12 0 5
1
end_operator
begin_operator
load-truck package2 truck3 s1
1
6 1
1
0 12 1 5
1
end_operator
begin_operator
load-truck package2 truck3 s2
1
6 2
1
0 12 2 5
1
end_operator
begin_operator
load-truck package3 truck1 s0
1
4 0
1
0 11 0 3
1
end_operator
begin_operator
load-truck package3 truck1 s1
1
4 1
1
0 11 1 3
1
end_operator
begin_operator
load-truck package3 truck1 s2
1
4 2
1
0 11 2 3
1
end_operator
begin_operator
load-truck package3 truck2 s0
1
5 0
1
0 11 0 4
1
end_operator
begin_operator
load-truck package3 truck2 s1
1
5 1
1
0 11 1 4
1
end_operator
begin_operator
load-truck package3 truck2 s2
1
5 2
1
0 11 2 4
1
end_operator
begin_operator
load-truck package3 truck3 s0
1
6 0
1
0 11 0 5
1
end_operator
begin_operator
load-truck package3 truck3 s1
1
6 1
1
0 11 1 5
1
end_operator
begin_operator
load-truck package3 truck3 s2
1
6 2
1
0 11 2 5
1
end_operator
begin_operator
load-truck package4 truck1 s0
1
4 0
1
0 10 0 3
1
end_operator
begin_operator
load-truck package4 truck1 s1
1
4 1
1
0 10 1 3
1
end_operator
begin_operator
load-truck package4 truck1 s2
1
4 2
1
0 10 2 3
1
end_operator
begin_operator
load-truck package4 truck2 s0
1
5 0
1
0 10 0 4
1
end_operator
begin_operator
load-truck package4 truck2 s1
1
5 1
1
0 10 1 4
1
end_operator
begin_operator
load-truck package4 truck2 s2
1
5 2
1
0 10 2 4
1
end_operator
begin_operator
load-truck package4 truck3 s0
1
6 0
1
0 10 0 5
1
end_operator
begin_operator
load-truck package4 truck3 s1
1
6 1
1
0 10 1 5
1
end_operator
begin_operator
load-truck package4 truck3 s2
1
6 2
1
0 10 2 5
1
end_operator
begin_operator
load-truck package5 truck1 s0
1
4 0
1
0 9 0 3
1
end_operator
begin_operator
load-truck package5 truck1 s1
1
4 1
1
0 9 1 3
1
end_operator
begin_operator
load-truck package5 truck1 s2
1
4 2
1
0 9 2 3
1
end_operator
begin_operator
load-truck package5 truck2 s0
1
5 0
1
0 9 0 4
1
end_operator
begin_operator
load-truck package5 truck2 s1
1
5 1
1
0 9 1 4
1
end_operator
begin_operator
load-truck package5 truck2 s2
1
5 2
1
0 9 2 4
1
end_operator
begin_operator
load-truck package5 truck3 s0
1
6 0
1
0 9 0 5
1
end_operator
begin_operator
load-truck package5 truck3 s1
1
6 1
1
0 9 1 5
1
end_operator
begin_operator
load-truck package5 truck3 s2
1
6 2
1
0 9 2 5
1
end_operator
begin_operator
unload-truck package1 truck1 s0
1
4 0
1
0 13 3 0
1
end_operator
begin_operator
unload-truck package1 truck1 s1
1
4 1
1
0 13 3 1
1
end_operator
begin_operator
unload-truck package1 truck1 s2
1
4 2
1
0 13 3 2
1
end_operator
begin_operator
unload-truck package1 truck2 s0
1
5 0
1
0 13 4 0
1
end_operator
begin_operator
unload-truck package1 truck2 s1
1
5 1
1
0 13 4 1
1
end_operator
begin_operator
unload-truck package1 truck2 s2
1
5 2
1
0 13 4 2
1
end_operator
begin_operator
unload-truck package1 truck3 s0
1
6 0
1
0 13 5 0
1
end_operator
begin_operator
unload-truck package1 truck3 s1
1
6 1
1
0 13 5 1
1
end_operator
begin_operator
unload-truck package1 truck3 s2
1
6 2
1
0 13 5 2
1
end_operator
begin_operator
unload-truck package2 truck1 s0
1
4 0
1
0 12 3 0
1
end_operator
begin_operator
unload-truck package2 truck1 s1
1
4 1
1
0 12 3 1
1
end_operator
begin_operator
unload-truck package2 truck1 s2
1
4 2
1
0 12 3 2
1
end_operator
begin_operator
unload-truck package2 truck2 s0
1
5 0
1
0 12 4 0
1
end_operator
begin_operator
unload-truck package2 truck2 s1
1
5 1
1
0 12 4 1
1
end_operator
begin_operator
unload-truck package2 truck2 s2
1
5 2
1
0 12 4 2
1
end_operator
begin_operator
unload-truck package2 truck3 s0
1
6 0
1
0 12 5 0
1
end_operator
begin_operator
unload-truck package2 truck3 s1
1
6 1
1
0 12 5 1
1
end_operator
begin_operator
unload-truck package2 truck3 s2
1
6 2
1
0 12 5 2
1
end_operator
begin_operator
unload-truck package3 truck1 s0
1
4 0
1
0 11 3 0
1
end_operator
begin_operator
unload-truck package3 truck1 s1
1
4 1
1
0 11 3 1
1
end_operator
begin_operator
unload-truck package3 truck1 s2
1
4 2
1
0 11 3 2
1
end_operator
begin_operator
unload-truck package3 truck2 s0
1
5 0
1
0 11 4 0
1
end_operator
begin_operator
unload-truck package3 truck2 s1
1
5 1
1
0 11 4 1
1
end_operator
begin_operator
unload-truck package3 truck2 s2
1
5 2
1
0 11 4 2
1
end_operator
begin_operator
unload-truck package3 truck3 s0
1
6 0
1
0 11 5 0
1
end_operator
begin_operator
unload-truck package3 truck3 s1
1
6 1
1
0 11 5 1
1
end_operator
begin_operator
unload-truck package3 truck3 s2
1
6 2
1
0 11 5 2
1
end_operator
begin_operator
unload-truck package4 truck1 s0
1
4 0
1
0 10 3 0
1
end_operator
begin_operator
unload-truck package4 truck1 s1
1
4 1
1
0 10 3 1
1
end_operator
begin_operator
unload-truck package4 truck1 s2
1
4 2
1
0 10 3 2
1
end_operator
begin_operator
unload-truck package4 truck2 s0
1
5 0
1
0 10 4 0
1
end_operator
begin_operator
unload-truck package4 truck2 s1
1
5 1
1
0 10 4 1
1
end_operator
begin_operator
unload-truck package4 truck2 s2
1
5 2
1
0 10 4 2
1
end_operator
begin_operator
unload-truck package4 truck3 s0
1
6 0
1
0 10 5 0
1
end_operator
begin_operator
unload-truck package4 truck3 s1
1
6 1
1
0 10 5 1
1
end_operator
begin_operator
unload-truck package4 truck3 s2
1
6 2
1
0 10 5 2
1
end_operator
begin_operator
unload-truck package5 truck1 s0
1
4 0
1
0 9 3 0
1
end_operator
begin_operator
unload-truck package5 truck1 s1
1
4 1
1
0 9 3 1
1
end_operator
begin_operator
unload-truck package5 truck1 s2
1
4 2
1
0 9 3 2
1
end_operator
begin_operator
unload-truck package5 truck2 s0
1
5 0
1
0 9 4 0
1
end_operator
begin_operator
unload-truck package5 truck2 s1
1
5 1
1
0 9 4 1
1
end_operator
begin_operator
unload-truck package5 truck2 s2
1
5 2
1
0 9 4 2
1
end_operator
begin_operator
unload-truck package5 truck3 s0
1
6 0
1
0 9 5 0
1
end_operator
begin_operator
unload-truck package5 truck3 s1
1
6 1
1
0 9 5 1
1
end_operator
begin_operator
unload-truck package5 truck3 s2
1
6 2
1
0 9 5 2
1
end_operator
begin_operator
walk driver1 p1-2 s1
0
1
0 7 0 3
1
end_operator
begin_operator
walk driver1 p1-2 s2
0
1
0 7 0 4
1
end_operator
begin_operator
walk driver1 p2-0 s0
0
1
0 7 1 2
1
end_operator
begin_operator
walk driver1 p2-0 s2
0
1
0 7 1 4
1
end_operator
begin_operator
walk driver1 s0 p2-0
0
1
0 7 2 1
1
end_operator
begin_operator
walk driver1 s1 p1-2
0
1
0 7 3 0
1
end_operator
begin_operator
walk driver1 s2 p1-2
0
1
0 7 4 0
1
end_operator
begin_operator
walk driver1 s2 p2-0
0
1
0 7 4 1
1
end_operator
begin_operator
walk driver2 p1-2 s1
0
1
0 8 0 3
1
end_operator
begin_operator
walk driver2 p1-2 s2
0
1
0 8 0 4
1
end_operator
begin_operator
walk driver2 p2-0 s0
0
1
0 8 1 2
1
end_operator
begin_operator
walk driver2 p2-0 s2
0
1
0 8 1 4
1
end_operator
begin_operator
walk driver2 s0 p2-0
0
1
0 8 2 1
1
end_operator
begin_operator
walk driver2 s1 p1-2
0
1
0 8 3 0
1
end_operator
begin_operator
walk driver2 s2 p1-2
0
1
0 8 4 0
1
end_operator
begin_operator
walk driver2 s2 p2-0
0
1
0 8 4 1
1
end_operator
begin_operator
walk driver3 p1-2 s1
0
1
0 0 0 3
1
end_operator
begin_operator
walk driver3 p1-2 s2
0
1
0 0 0 4
1
end_operator
begin_operator
walk driver3 p2-0 s0
0
1
0 0 1 2
1
end_operator
begin_operator
walk driver3 p2-0 s2
0
1
0 0 1 4
1
end_operator
begin_operator
walk driver3 s0 p2-0
0
1
0 0 2 1
1
end_operator
begin_operator
walk driver3 s1 p1-2
0
1
0 0 3 0
1
end_operator
begin_operator
walk driver3 s2 p1-2
0
1
0 0 4 0
1
end_operator
begin_operator
walk driver3 s2 p2-0
0
1
0 0 4 1
1
end_operator
0

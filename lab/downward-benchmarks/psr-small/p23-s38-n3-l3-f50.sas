begin_version
3
end_version
begin_metric
0
end_metric
17
begin_variable
var0
-1
2
Atom closed-sd10()
Atom not-closed-sd10()
end_variable
begin_variable
var1
-1
2
Atom closed-sd15()
Atom not-closed-sd15()
end_variable
begin_variable
var2
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var3
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
begin_variable
var4
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var5
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
begin_variable
var6
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var7
-1
2
Atom not-closed-cb3()
NegatedAtom not-closed-cb3()
end_variable
begin_variable
var8
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var9
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var10
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var11
-1
2
Atom not-updated-cb3()
Atom updated-cb3()
end_variable
begin_variable
var12
-1
2
Atom closed-sd13()
Atom not-closed-sd13()
end_variable
begin_variable
var13
-1
2
Atom closed-sd14()
Atom not-closed-sd14()
end_variable
begin_variable
var14
-1
6
Atom do-close_sd10-condeffs()
Atom do-close_sd13-condeffs()
Atom do-close_sd14-condeffs()
Atom do-close_sd15-condeffs()
Atom do-normal()
Atom do-wait_cb3-condeffs()
end_variable
begin_variable
var15
-1
2
Atom closed-cb3()
NegatedAtom closed-cb3()
end_variable
begin_variable
var16
-1
2
Atom closed-sd18()
Atom not-closed-sd18()
end_variable
0
begin_state
1
0
1
0
1
0
1
1
1
0
0
0
0
0
4
0
0
end_state
begin_goal
8
9 1
10 1
11 1
12 0
13 0
14 4
15 0
16 0
end_goal
44
begin_operator
close_cb1 
3
14 4
10 1
11 1
3
0 3 -1 0
0 4 0 1
0 9 1 0
1
end_operator
begin_operator
close_cb2 
3
14 4
9 1
11 1
3
0 5 -1 0
0 6 0 1
0 10 1 0
1
end_operator
begin_operator
close_cb3 
3
14 4
9 1
10 1
3
0 15 -1 0
0 7 0 1
0 11 1 0
1
end_operator
begin_operator
close_sd10 
3
9 1
10 1
11 1
2
0 0 1 0
0 14 4 0
1
end_operator
begin_operator
close_sd10-condeff0-no-0 
2
14 0
7 0
1
0 8 -1 0
1
end_operator
begin_operator
close_sd10-condeff0-yes 
1
14 0
3
0 15 0 1
0 8 -1 0
0 7 -1 0
1
end_operator
begin_operator
close_sd10-endof-condeffs 
0
2
0 14 0 4
0 8 0 1
1
end_operator
begin_operator
close_sd13 
3
9 1
10 1
11 1
2
0 12 1 0
0 14 4 1
1
end_operator
begin_operator
close_sd13-condeff0-no-0 
2
1 1
14 1
1
0 8 -1 0
1
end_operator
begin_operator
close_sd13-condeff0-no-1 
2
13 1
14 1
1
0 8 -1 0
1
end_operator
begin_operator
close_sd13-condeff0-no-2 
2
14 1
7 0
1
0 8 -1 0
1
end_operator
begin_operator
close_sd13-condeff0-yes 
3
13 0
1 0
14 1
3
0 15 0 1
0 8 -1 0
0 7 -1 0
1
end_operator
begin_operator
close_sd13-endof-condeffs 
0
2
0 14 1 4
0 8 0 1
1
end_operator
begin_operator
close_sd14 
3
9 1
10 1
11 1
2
0 13 1 0
0 14 4 2
1
end_operator
begin_operator
close_sd14-condeff0-no-0 
2
1 1
14 2
1
0 8 -1 0
1
end_operator
begin_operator
close_sd14-condeff0-no-1 
2
12 1
14 2
1
0 8 -1 0
1
end_operator
begin_operator
close_sd14-condeff0-no-2 
2
14 2
7 0
1
0 8 -1 0
1
end_operator
begin_operator
close_sd14-condeff0-yes 
3
12 0
1 0
14 2
3
0 15 0 1
0 8 -1 0
0 7 -1 0
1
end_operator
begin_operator
close_sd14-endof-condeffs 
0
2
0 14 2 4
0 8 0 1
1
end_operator
begin_operator
close_sd15 
3
9 1
10 1
11 1
2
0 1 1 0
0 14 4 3
1
end_operator
begin_operator
close_sd15-condeff0-no-0 
2
13 1
14 3
1
0 8 -1 0
1
end_operator
begin_operator
close_sd15-condeff0-no-1 
2
12 1
14 3
1
0 8 -1 0
1
end_operator
begin_operator
close_sd15-condeff0-no-2 
2
14 3
7 0
1
0 8 -1 0
1
end_operator
begin_operator
close_sd15-condeff0-yes 
3
12 0
13 0
14 3
3
0 15 0 1
0 8 -1 0
0 7 -1 0
1
end_operator
begin_operator
close_sd15-endof-condeffs 
0
2
0 14 3 4
0 8 0 1
1
end_operator
begin_operator
close_sd18 
4
14 4
9 1
10 1
11 1
1
0 16 1 0
1
end_operator
begin_operator
open-cb1 
4
14 4
9 1
10 1
11 1
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
open-cb2 
4
14 4
9 1
10 1
11 1
2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
open-cb3 
4
14 4
9 1
10 1
11 1
2
0 15 0 1
0 7 -1 0
1
end_operator
begin_operator
open-sd10 
4
14 4
9 1
10 1
11 1
1
0 0 0 1
1
end_operator
begin_operator
open-sd13 
4
14 4
9 1
10 1
11 1
1
0 12 0 1
1
end_operator
begin_operator
open-sd14 
4
14 4
9 1
10 1
11 1
1
0 13 0 1
1
end_operator
begin_operator
open-sd15 
4
14 4
9 1
10 1
11 1
1
0 1 0 1
1
end_operator
begin_operator
open-sd18 
4
14 4
9 1
10 1
11 1
1
0 16 0 1
1
end_operator
begin_operator
wait_cb1 
1
14 4
3
0 3 -1 1
0 4 -1 0
0 9 0 1
1
end_operator
begin_operator
wait_cb2 
1
14 4
3
0 5 -1 1
0 6 -1 0
0 10 0 1
1
end_operator
begin_operator
wait_cb3 
0
2
0 14 4 5
0 11 0 1
1
end_operator
begin_operator
wait_cb3-condeff0-no-0 
2
0 1
14 5
1
0 8 -1 0
1
end_operator
begin_operator
wait_cb3-condeff0-yes 
2
0 0
14 5
3
0 15 -1 1
0 8 -1 0
0 7 -1 0
1
end_operator
begin_operator
wait_cb3-condeff1-no-0 
2
1 1
14 5
1
0 2 -1 0
1
end_operator
begin_operator
wait_cb3-condeff1-no-1 
2
13 1
14 5
1
0 2 -1 0
1
end_operator
begin_operator
wait_cb3-condeff1-no-2 
2
12 1
14 5
1
0 2 -1 0
1
end_operator
begin_operator
wait_cb3-condeff1-yes 
4
12 0
13 0
1 0
14 5
3
0 15 -1 1
0 2 -1 0
0 7 -1 0
1
end_operator
begin_operator
wait_cb3-endof-condeffs 
0
3
0 14 5 4
0 8 0 1
0 2 0 1
1
end_operator
0

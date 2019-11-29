begin_version
3
end_version
begin_metric
0
end_metric
16
begin_variable
var0
-1
2
Atom done-2()
NegatedAtom done-2()
end_variable
begin_variable
var1
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var2
-1
2
Atom closed-sd10()
Atom not-closed-sd10()
end_variable
begin_variable
var3
-1
2
Atom closed-sd3()
Atom not-closed-sd3()
end_variable
begin_variable
var4
-1
2
Atom closed-sd8()
Atom not-closed-sd8()
end_variable
begin_variable
var5
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
begin_variable
var6
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var7
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
begin_variable
var8
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var9
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var10
-1
2
Atom not-closed-cb3()
NegatedAtom not-closed-cb3()
end_variable
begin_variable
var11
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var12
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var13
-1
2
Atom not-updated-cb3()
Atom updated-cb3()
end_variable
begin_variable
var14
-1
2
Atom closed-cb3()
NegatedAtom closed-cb3()
end_variable
begin_variable
var15
-1
5
Atom do-close_sd10-condeffs()
Atom do-close_sd3-condeffs()
Atom do-close_sd8-condeffs()
Atom do-normal()
Atom do-wait_cb3-condeffs()
end_variable
0
begin_state
1
1
0
1
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
3
end_state
begin_goal
5
11 1
12 1
13 1
14 0
15 3
end_goal
31
begin_operator
close_cb1 
3
15 3
12 1
13 1
3
0 5 -1 0
0 6 0 1
0 11 1 0
1
end_operator
begin_operator
close_cb2 
3
15 3
11 1
13 1
3
0 7 -1 0
0 8 0 1
0 12 1 0
1
end_operator
begin_operator
close_cb3 
3
15 3
11 1
12 1
3
0 14 -1 0
0 10 0 1
0 13 1 0
1
end_operator
begin_operator
close_sd10 
3
11 1
12 1
13 1
2
0 2 1 0
0 15 3 0
1
end_operator
begin_operator
close_sd10-condeff0-no-0 
2
15 0
10 0
1
0 9 -1 0
1
end_operator
begin_operator
close_sd10-condeff0-yes 
1
15 0
3
0 14 0 1
0 9 -1 0
0 10 -1 0
1
end_operator
begin_operator
close_sd10-endof-condeffs 
0
2
0 15 0 3
0 9 0 1
1
end_operator
begin_operator
close_sd3 
3
11 1
12 1
13 1
2
0 3 1 0
0 15 3 1
1
end_operator
begin_operator
close_sd3-condeff0-no-0 
2
15 1
10 0
1
0 9 -1 0
1
end_operator
begin_operator
close_sd3-condeff0-yes 
1
15 1
3
0 14 0 1
0 9 -1 0
0 10 -1 0
1
end_operator
begin_operator
close_sd3-endof-condeffs 
0
2
0 15 1 3
0 9 0 1
1
end_operator
begin_operator
close_sd8 
3
11 1
12 1
13 1
2
0 4 1 0
0 15 3 2
1
end_operator
begin_operator
close_sd8-condeff0-no-0 
2
15 2
10 0
1
0 9 -1 0
1
end_operator
begin_operator
close_sd8-condeff0-yes 
1
15 2
3
0 14 0 1
0 9 -1 0
0 10 -1 0
1
end_operator
begin_operator
close_sd8-endof-condeffs 
0
2
0 15 2 3
0 9 0 1
1
end_operator
begin_operator
open-cb1 
4
15 3
11 1
12 1
13 1
2
0 5 0 1
0 6 -1 0
1
end_operator
begin_operator
open-cb2 
4
15 3
11 1
12 1
13 1
2
0 7 0 1
0 8 -1 0
1
end_operator
begin_operator
open-cb3 
4
15 3
11 1
12 1
13 1
2
0 14 0 1
0 10 -1 0
1
end_operator
begin_operator
open-sd10 
4
15 3
11 1
12 1
13 1
1
0 2 0 1
1
end_operator
begin_operator
open-sd3 
4
15 3
11 1
12 1
13 1
1
0 3 0 1
1
end_operator
begin_operator
open-sd8 
4
15 3
11 1
12 1
13 1
1
0 4 0 1
1
end_operator
begin_operator
wait_cb1 
1
15 3
3
0 5 -1 1
0 6 -1 0
0 11 0 1
1
end_operator
begin_operator
wait_cb2 
1
15 3
3
0 7 -1 1
0 8 -1 0
0 12 0 1
1
end_operator
begin_operator
wait_cb3 
0
2
0 15 3 4
0 13 0 1
1
end_operator
begin_operator
wait_cb3-condeff0-no-0 
2
3 1
15 4
1
0 9 -1 0
1
end_operator
begin_operator
wait_cb3-condeff0-yes 
2
3 0
15 4
3
0 14 -1 1
0 9 -1 0
0 10 -1 0
1
end_operator
begin_operator
wait_cb3-condeff1-no-0 
2
4 1
15 4
1
0 1 -1 0
1
end_operator
begin_operator
wait_cb3-condeff1-yes 
2
4 0
15 4
3
0 14 -1 1
0 1 -1 0
0 10 -1 0
1
end_operator
begin_operator
wait_cb3-condeff2-no-0 
2
2 1
15 4
1
0 0 -1 0
1
end_operator
begin_operator
wait_cb3-condeff2-yes 
2
2 0
15 4
3
0 14 -1 1
0 0 -1 0
0 10 -1 0
1
end_operator
begin_operator
wait_cb3-endof-condeffs 
0
4
0 15 4 3
0 9 0 1
0 1 0 1
0 0 0 1
1
end_operator
0

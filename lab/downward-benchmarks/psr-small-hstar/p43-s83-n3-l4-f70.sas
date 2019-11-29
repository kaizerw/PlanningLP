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
Atom closed-sd1()
Atom not-closed-sd1()
end_variable
begin_variable
var1
-1
2
Atom closed-sd10()
Atom not-closed-sd10()
end_variable
begin_variable
var2
-1
2
Atom closed-sd11()
Atom not-closed-sd11()
end_variable
begin_variable
var3
-1
2
Atom done-2()
NegatedAtom done-2()
end_variable
begin_variable
var4
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
begin_variable
var5
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var6
-1
2
Atom closed-cb3()
NegatedAtom closed-cb3()
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
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var9
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var10
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var11
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var12
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
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
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var15
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
begin_variable
var16
-1
6
Atom do-close_sd1-condeffs()
Atom do-close_sd10-condeffs()
Atom do-close_sd11-condeffs()
Atom do-close_sd6-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
0
begin_state
0
0
0
1
0
1
0
1
1
1
1
0
0
0
1
0
4
end_state
begin_goal
6
11 1
12 1
13 1
14 0
15 0
16 4
end_goal
44
begin_operator
close_cb1 
3
16 4
11 1
13 1
3
0 15 -1 0
0 9 0 1
0 12 1 0
1
end_operator
begin_operator
close_cb2 
3
16 4
12 1
13 1
3
0 4 -1 0
0 5 0 1
0 11 1 0
1
end_operator
begin_operator
close_cb3 
3
16 4
12 1
11 1
3
0 6 -1 0
0 7 0 1
0 13 1 0
1
end_operator
begin_operator
close_sd1 
3
12 1
11 1
13 1
2
0 0 1 0
0 16 4 0
1
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
16 0
9 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd1-condeff0-yes 
1
16 0
3
0 15 0 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 16 0 4
0 10 0 1
1
end_operator
begin_operator
close_sd10 
3
12 1
11 1
13 1
2
0 1 1 0
0 16 4 1
1
end_operator
begin_operator
close_sd10-condeff0-no-0 
2
14 1
16 1
1
0 10 -1 0
1
end_operator
begin_operator
close_sd10-condeff0-no-1 
2
16 1
9 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd10-condeff0-yes 
2
14 0
16 1
3
0 15 0 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd10-endof-condeffs 
0
2
0 16 1 4
0 10 0 1
1
end_operator
begin_operator
close_sd11 
3
12 1
11 1
13 1
2
0 2 1 0
0 16 4 2
1
end_operator
begin_operator
close_sd11-condeff0-no-0 
2
14 1
16 2
1
0 10 -1 0
1
end_operator
begin_operator
close_sd11-condeff0-no-1 
2
16 2
9 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd11-condeff0-yes 
2
14 0
16 2
3
0 15 0 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd11-endof-condeffs 
0
2
0 16 2 4
0 10 0 1
1
end_operator
begin_operator
close_sd6 
3
12 1
11 1
13 1
2
0 14 1 0
0 16 4 3
1
end_operator
begin_operator
close_sd6-condeff0-no-0 
2
1 1
16 3
1
0 10 -1 0
1
end_operator
begin_operator
close_sd6-condeff0-no-1 
2
16 3
9 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd6-condeff0-yes 
2
1 0
16 3
3
0 15 0 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd6-condeff1-no-0 
2
2 1
16 3
1
0 8 -1 0
1
end_operator
begin_operator
close_sd6-condeff1-no-1 
2
16 3
9 0
1
0 8 -1 0
1
end_operator
begin_operator
close_sd6-condeff1-yes 
2
2 0
16 3
3
0 15 0 1
0 8 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd6-endof-condeffs 
0
3
0 16 3 4
0 10 0 1
0 8 0 1
1
end_operator
begin_operator
open-cb1 
4
16 4
12 1
11 1
13 1
2
0 15 0 1
0 9 -1 0
1
end_operator
begin_operator
open-cb2 
4
16 4
12 1
11 1
13 1
2
0 4 0 1
0 5 -1 0
1
end_operator
begin_operator
open-cb3 
4
16 4
12 1
11 1
13 1
2
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
open-sd1 
4
16 4
12 1
11 1
13 1
1
0 0 0 1
1
end_operator
begin_operator
open-sd10 
4
16 4
12 1
11 1
13 1
1
0 1 0 1
1
end_operator
begin_operator
open-sd11 
4
16 4
12 1
11 1
13 1
1
0 2 0 1
1
end_operator
begin_operator
open-sd6 
4
16 4
12 1
11 1
13 1
1
0 14 0 1
1
end_operator
begin_operator
wait_cb1 
0
2
0 16 4 5
0 12 0 1
1
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
0 1
16 5
1
0 10 -1 0
1
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
0 0
16 5
3
0 15 -1 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
1 1
16 5
1
0 8 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-no-1 
2
14 1
16 5
1
0 8 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-yes 
3
1 0
14 0
16 5
3
0 15 -1 1
0 8 -1 0
0 9 -1 0
1
end_operator
begin_operator
wait_cb1-condeff2-no-0 
2
2 1
16 5
1
0 3 -1 0
1
end_operator
begin_operator
wait_cb1-condeff2-no-1 
2
14 1
16 5
1
0 3 -1 0
1
end_operator
begin_operator
wait_cb1-condeff2-yes 
3
2 0
14 0
16 5
3
0 15 -1 1
0 3 -1 0
0 9 -1 0
1
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
4
0 16 5 4
0 10 0 1
0 8 0 1
0 3 0 1
1
end_operator
begin_operator
wait_cb2 
1
16 4
3
0 4 -1 1
0 5 -1 0
0 11 0 1
1
end_operator
begin_operator
wait_cb3 
1
16 4
3
0 6 -1 1
0 7 -1 0
0 13 0 1
1
end_operator
0

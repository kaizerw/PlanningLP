begin_version
3
end_version
begin_metric
0
end_metric
19
begin_variable
var0
-1
2
Atom done-1()
NegatedAtom done-1()
end_variable
begin_variable
var1
-1
2
Atom closed-sd1()
Atom not-closed-sd1()
end_variable
begin_variable
var2
-1
2
Atom closed-sd2()
Atom not-closed-sd2()
end_variable
begin_variable
var3
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var4
-1
2
Atom closed-cb3()
NegatedAtom closed-cb3()
end_variable
begin_variable
var5
-1
2
Atom not-closed-cb3()
NegatedAtom not-closed-cb3()
end_variable
begin_variable
var6
-1
2
Atom closed-cb4()
NegatedAtom closed-cb4()
end_variable
begin_variable
var7
-1
2
Atom not-closed-cb4()
NegatedAtom not-closed-cb4()
end_variable
begin_variable
var8
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var9
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
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
Atom not-updated-cb3()
Atom updated-cb3()
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
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var14
-1
2
Atom not-updated-cb4()
Atom updated-cb4()
end_variable
begin_variable
var15
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var16
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
begin_variable
var17
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
begin_variable
var18
-1
7
Atom do-close_sd1-condeffs()
Atom do-close_sd2-condeffs()
Atom do-close_sd5-condeffs()
Atom do-close_sd6-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
Atom do-wait_cb2-condeffs()
end_variable
0
begin_state
1
1
0
0
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
0
0
0
0
4
end_state
begin_goal
8
11 1
12 1
13 1
14 1
15 0
16 0
17 0
18 4
end_goal
43
begin_operator
close_cb1 
4
18 4
13 1
11 1
14 1
3
0 17 -1 0
0 8 0 1
0 12 1 0
1
end_operator
begin_operator
close_cb2 
4
18 4
12 1
11 1
14 1
3
0 16 -1 0
0 9 0 1
0 13 1 0
1
end_operator
begin_operator
close_cb3 
4
18 4
12 1
13 1
14 1
3
0 4 -1 0
0 5 0 1
0 11 1 0
1
end_operator
begin_operator
close_cb4 
4
18 4
12 1
13 1
11 1
3
0 6 -1 0
0 7 0 1
0 14 1 0
1
end_operator
begin_operator
close_sd1 
4
12 1
13 1
11 1
14 1
2
0 1 1 0
0 18 4 0
1
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
18 0
8 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd1-condeff0-yes 
1
18 0
3
0 17 0 1
0 10 -1 0
0 8 -1 0
1
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 18 0 4
0 10 0 1
1
end_operator
begin_operator
close_sd2 
4
12 1
13 1
11 1
14 1
2
0 2 1 0
0 18 4 1
1
end_operator
begin_operator
close_sd2-condeff0-no-0 
2
18 1
8 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd2-condeff0-yes 
1
18 1
3
0 17 0 1
0 10 -1 0
0 8 -1 0
1
end_operator
begin_operator
close_sd2-endof-condeffs 
0
2
0 18 1 4
0 10 0 1
1
end_operator
begin_operator
close_sd5 
4
12 1
13 1
11 1
14 1
2
0 15 1 0
0 18 4 2
1
end_operator
begin_operator
close_sd5-condeff0-no-0 
2
3 1
18 2
1
0 10 -1 0
1
end_operator
begin_operator
close_sd5-condeff0-no-1 
2
18 2
9 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd5-condeff0-yes 
2
3 0
18 2
3
0 16 0 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd5-endof-condeffs 
0
2
0 18 2 4
0 10 0 1
1
end_operator
begin_operator
close_sd6 
4
12 1
13 1
11 1
14 1
2
0 3 1 0
0 18 4 3
1
end_operator
begin_operator
close_sd6-condeff0-no-0 
2
15 1
18 3
1
0 10 -1 0
1
end_operator
begin_operator
close_sd6-condeff0-no-1 
2
18 3
9 0
1
0 10 -1 0
1
end_operator
begin_operator
close_sd6-condeff0-yes 
2
15 0
18 3
3
0 16 0 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
close_sd6-endof-condeffs 
0
2
0 18 3 4
0 10 0 1
1
end_operator
begin_operator
open-cb1 
5
18 4
12 1
13 1
11 1
14 1
2
0 17 0 1
0 8 -1 0
1
end_operator
begin_operator
open-cb2 
5
18 4
12 1
13 1
11 1
14 1
2
0 16 0 1
0 9 -1 0
1
end_operator
begin_operator
open-cb3 
5
18 4
12 1
13 1
11 1
14 1
2
0 4 0 1
0 5 -1 0
1
end_operator
begin_operator
open-cb4 
5
18 4
12 1
13 1
11 1
14 1
2
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
open-sd1 
5
18 4
12 1
13 1
11 1
14 1
1
0 1 0 1
1
end_operator
begin_operator
open-sd2 
5
18 4
12 1
13 1
11 1
14 1
1
0 2 0 1
1
end_operator
begin_operator
open-sd5 
5
18 4
12 1
13 1
11 1
14 1
1
0 15 0 1
1
end_operator
begin_operator
open-sd6 
5
18 4
12 1
13 1
11 1
14 1
1
0 3 0 1
1
end_operator
begin_operator
wait_cb1 
0
2
0 18 4 5
0 12 0 1
1
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
1 1
18 5
1
0 10 -1 0
1
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
1 0
18 5
3
0 17 -1 1
0 10 -1 0
0 8 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
2 1
18 5
1
0 0 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-yes 
2
2 0
18 5
3
0 17 -1 1
0 0 -1 0
0 8 -1 0
1
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 18 5 4
0 10 0 1
0 0 0 1
1
end_operator
begin_operator
wait_cb2 
0
2
0 18 4 6
0 13 0 1
1
end_operator
begin_operator
wait_cb2-condeff0-no-0 
2
3 1
18 6
1
0 10 -1 0
1
end_operator
begin_operator
wait_cb2-condeff0-no-1 
2
15 1
18 6
1
0 10 -1 0
1
end_operator
begin_operator
wait_cb2-condeff0-yes 
3
15 0
3 0
18 6
3
0 16 -1 1
0 10 -1 0
0 9 -1 0
1
end_operator
begin_operator
wait_cb2-endof-condeffs 
0
2
0 18 6 4
0 10 0 1
1
end_operator
begin_operator
wait_cb3 
1
18 4
3
0 4 -1 1
0 5 -1 0
0 11 0 1
1
end_operator
begin_operator
wait_cb4 
1
18 4
3
0 6 -1 1
0 7 -1 0
0 14 0 1
1
end_operator
0

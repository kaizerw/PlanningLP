begin_version
3
end_version
begin_metric
0
end_metric
12
begin_variable
var0
-1
2
Atom closed-sd2()
Atom not-closed-sd2()
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
Atom closed-sd4()
Atom not-closed-sd4()
end_variable
begin_variable
var3
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
begin_variable
var4
-1
2
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var5
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var6
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var7
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var8
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var9
-1
2
Atom closed-sd1()
Atom not-closed-sd1()
end_variable
begin_variable
var10
-1
5
Atom do-close_sd1-condeffs()
Atom do-close_sd2-condeffs()
Atom do-close_sd4-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
begin_variable
var11
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
0
begin_state
0
1
0
0
1
1
1
0
0
1
3
0
end_state
begin_goal
5
7 1
8 1
9 0
10 3
11 0
end_goal
29
begin_operator
close_cb1 
2
10 3
7 1
3
0 11 -1 0
0 5 0 1
0 8 1 0
1
end_operator
begin_operator
close_cb2 
2
10 3
8 1
3
0 3 -1 0
0 4 0 1
0 7 1 0
1
end_operator
begin_operator
close_sd1 
2
8 1
7 1
2
0 9 1 0
0 10 3 0
1
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
2 1
10 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd1-condeff0-no-1 
2
10 0
5 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd1-condeff0-yes 
2
2 0
10 0
3
0 11 0 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 10 0 3
0 6 0 1
1
end_operator
begin_operator
close_sd2 
2
8 1
7 1
2
0 0 1 0
0 10 3 1
1
end_operator
begin_operator
close_sd2-condeff0-no-0 
2
10 1
5 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd2-condeff0-yes 
1
10 1
3
0 11 0 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
close_sd2-endof-condeffs 
0
2
0 10 1 3
0 6 0 1
1
end_operator
begin_operator
close_sd4 
2
8 1
7 1
2
0 2 1 0
0 10 3 2
1
end_operator
begin_operator
close_sd4-condeff0-no-0 
2
9 1
10 2
1
0 6 -1 0
1
end_operator
begin_operator
close_sd4-condeff0-no-1 
2
10 2
5 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd4-condeff0-yes 
2
9 0
10 2
3
0 11 0 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
close_sd4-endof-condeffs 
0
2
0 10 2 3
0 6 0 1
1
end_operator
begin_operator
open-cb1 
3
10 3
8 1
7 1
2
0 11 0 1
0 5 -1 0
1
end_operator
begin_operator
open-cb2 
3
10 3
8 1
7 1
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
open-sd1 
3
10 3
8 1
7 1
1
0 9 0 1
1
end_operator
begin_operator
open-sd2 
3
10 3
8 1
7 1
1
0 0 0 1
1
end_operator
begin_operator
open-sd4 
3
10 3
8 1
7 1
1
0 2 0 1
1
end_operator
begin_operator
wait_cb1 
0
2
0 10 3 4
0 8 0 1
1
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
2 1
10 4
1
0 6 -1 0
1
end_operator
begin_operator
wait_cb1-condeff0-no-1 
2
9 1
10 4
1
0 6 -1 0
1
end_operator
begin_operator
wait_cb1-condeff0-yes 
3
9 0
2 0
10 4
3
0 11 -1 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
0 1
10 4
1
0 1 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-yes 
2
0 0
10 4
3
0 11 -1 1
0 1 -1 0
0 5 -1 0
1
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 10 4 3
0 6 0 1
0 1 0 1
1
end_operator
begin_operator
wait_cb2 
1
10 3
3
0 3 -1 1
0 4 -1 0
0 7 0 1
1
end_operator
0

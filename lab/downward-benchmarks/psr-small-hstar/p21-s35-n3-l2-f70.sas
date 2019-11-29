begin_version
3
end_version
begin_metric
0
end_metric
13
begin_variable
var0
-1
2
Atom closed-sd6()
Atom not-closed-sd6()
end_variable
begin_variable
var1
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
begin_variable
var2
-1
2
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var3
-1
2
Atom closed-cb3()
NegatedAtom closed-cb3()
end_variable
begin_variable
var4
-1
2
Atom not-closed-cb3()
NegatedAtom not-closed-cb3()
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
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var7
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var8
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var9
-1
2
Atom not-updated-cb3()
Atom updated-cb3()
end_variable
begin_variable
var10
-1
2
Atom closed-sd5()
Atom not-closed-sd5()
end_variable
begin_variable
var11
-1
4
Atom do-close_sd5-condeffs()
Atom do-close_sd6-condeffs()
Atom do-normal()
Atom do-wait_cb2-condeffs()
end_variable
begin_variable
var12
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
end_variable
0
begin_state
0
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
2
0
end_state
begin_goal
6
7 1
8 1
9 1
10 0
11 2
12 0
end_goal
25
begin_operator
close_cb1 
3
11 2
8 1
9 1
3
0 1 -1 0
0 2 0 1
0 7 1 0
1
end_operator
begin_operator
close_cb2 
3
11 2
7 1
9 1
3
0 12 -1 0
0 5 0 1
0 8 1 0
1
end_operator
begin_operator
close_cb3 
3
11 2
7 1
8 1
3
0 3 -1 0
0 4 0 1
0 9 1 0
1
end_operator
begin_operator
close_sd5 
3
7 1
8 1
9 1
2
0 10 1 0
0 11 2 0
1
end_operator
begin_operator
close_sd5-condeff0-no-0 
2
0 1
11 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd5-condeff0-no-1 
2
11 0
5 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd5-condeff0-yes 
2
0 0
11 0
3
0 12 0 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
close_sd5-endof-condeffs 
0
2
0 11 0 2
0 6 0 1
1
end_operator
begin_operator
close_sd6 
3
7 1
8 1
9 1
2
0 0 1 0
0 11 2 1
1
end_operator
begin_operator
close_sd6-condeff0-no-0 
2
10 1
11 1
1
0 6 -1 0
1
end_operator
begin_operator
close_sd6-condeff0-no-1 
2
11 1
5 0
1
0 6 -1 0
1
end_operator
begin_operator
close_sd6-condeff0-yes 
2
10 0
11 1
3
0 12 0 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
close_sd6-endof-condeffs 
0
2
0 11 1 2
0 6 0 1
1
end_operator
begin_operator
open-cb1 
4
11 2
7 1
8 1
9 1
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
open-cb2 
4
11 2
7 1
8 1
9 1
2
0 12 0 1
0 5 -1 0
1
end_operator
begin_operator
open-cb3 
4
11 2
7 1
8 1
9 1
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
open-sd5 
4
11 2
7 1
8 1
9 1
1
0 10 0 1
1
end_operator
begin_operator
open-sd6 
4
11 2
7 1
8 1
9 1
1
0 0 0 1
1
end_operator
begin_operator
wait_cb1 
1
11 2
3
0 1 -1 1
0 2 -1 0
0 7 0 1
1
end_operator
begin_operator
wait_cb2 
0
2
0 11 2 3
0 8 0 1
1
end_operator
begin_operator
wait_cb2-condeff0-no-0 
2
0 1
11 3
1
0 6 -1 0
1
end_operator
begin_operator
wait_cb2-condeff0-no-1 
2
10 1
11 3
1
0 6 -1 0
1
end_operator
begin_operator
wait_cb2-condeff0-yes 
3
10 0
0 0
11 3
3
0 12 -1 1
0 6 -1 0
0 5 -1 0
1
end_operator
begin_operator
wait_cb2-endof-condeffs 
0
2
0 11 3 2
0 6 0 1
1
end_operator
begin_operator
wait_cb3 
1
11 2
3
0 3 -1 1
0 4 -1 0
0 9 0 1
1
end_operator
0

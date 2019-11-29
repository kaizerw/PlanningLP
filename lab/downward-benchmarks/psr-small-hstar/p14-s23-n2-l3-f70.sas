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
Atom closed-sd8()
Atom not-closed-sd8()
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
Atom not-closed-cb2()
NegatedAtom not-closed-cb2()
end_variable
begin_variable
var4
-1
2
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var5
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var6
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var7
-1
2
Atom closed-sd7()
Atom not-closed-sd7()
end_variable
begin_variable
var8
-1
4
Atom do-close_sd7-condeffs()
Atom do-close_sd8-condeffs()
Atom do-normal()
Atom do-wait_cb2-condeffs()
end_variable
begin_variable
var9
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
1
1
0
0
0
2
0
end_state
begin_goal
5
5 1
6 1
7 0
8 2
9 0
end_goal
22
begin_operator
close_cb1 
2
8 2
6 1
3
0 1 -1 0
0 2 0 1
0 5 1 0
1
end_operator
begin_operator
close_cb2 
2
8 2
5 1
3
0 9 -1 0
0 3 0 1
0 6 1 0
1
end_operator
begin_operator
close_sd7 
2
5 1
6 1
2
0 7 1 0
0 8 2 0
1
end_operator
begin_operator
close_sd7-condeff0-no-0 
2
0 1
8 0
1
0 4 -1 0
1
end_operator
begin_operator
close_sd7-condeff0-no-1 
2
8 0
3 0
1
0 4 -1 0
1
end_operator
begin_operator
close_sd7-condeff0-yes 
2
0 0
8 0
3
0 9 0 1
0 4 -1 0
0 3 -1 0
1
end_operator
begin_operator
close_sd7-endof-condeffs 
0
2
0 8 0 2
0 4 0 1
1
end_operator
begin_operator
close_sd8 
2
5 1
6 1
2
0 0 1 0
0 8 2 1
1
end_operator
begin_operator
close_sd8-condeff0-no-0 
2
7 1
8 1
1
0 4 -1 0
1
end_operator
begin_operator
close_sd8-condeff0-no-1 
2
8 1
3 0
1
0 4 -1 0
1
end_operator
begin_operator
close_sd8-condeff0-yes 
2
7 0
8 1
3
0 9 0 1
0 4 -1 0
0 3 -1 0
1
end_operator
begin_operator
close_sd8-endof-condeffs 
0
2
0 8 1 2
0 4 0 1
1
end_operator
begin_operator
open-cb1 
3
8 2
5 1
6 1
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
open-cb2 
3
8 2
5 1
6 1
2
0 9 0 1
0 3 -1 0
1
end_operator
begin_operator
open-sd7 
3
8 2
5 1
6 1
1
0 7 0 1
1
end_operator
begin_operator
open-sd8 
3
8 2
5 1
6 1
1
0 0 0 1
1
end_operator
begin_operator
wait_cb1 
1
8 2
3
0 1 -1 1
0 2 -1 0
0 5 0 1
1
end_operator
begin_operator
wait_cb2 
0
2
0 8 2 3
0 6 0 1
1
end_operator
begin_operator
wait_cb2-condeff0-no-0 
2
0 1
8 3
1
0 4 -1 0
1
end_operator
begin_operator
wait_cb2-condeff0-no-1 
2
7 1
8 3
1
0 4 -1 0
1
end_operator
begin_operator
wait_cb2-condeff0-yes 
3
7 0
0 0
8 3
3
0 9 -1 1
0 4 -1 0
0 3 -1 0
1
end_operator
begin_operator
wait_cb2-endof-condeffs 
0
2
0 8 3 2
0 4 0 1
1
end_operator
0

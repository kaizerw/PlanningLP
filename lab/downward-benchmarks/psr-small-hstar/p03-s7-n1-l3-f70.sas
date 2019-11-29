begin_version
3
end_version
begin_metric
0
end_metric
8
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
Atom closed-sd4()
Atom not-closed-sd4()
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
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
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
4
Atom do-close_sd1-condeffs()
Atom do-close_sd4-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
begin_variable
var7
-1
2
Atom closed-cb1()
NegatedAtom closed-cb1()
end_variable
0
begin_state
0
0
1
1
1
0
2
0
end_state
begin_goal
3
5 1
6 2
7 0
end_goal
18
begin_operator
close_cb1 
1
6 2
3
0 7 -1 0
0 3 0 1
0 5 1 0
1
end_operator
begin_operator
close_sd1 
1
5 1
2
0 0 1 0
0 6 2 0
1
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
6 0
3 0
1
0 4 -1 0
1
end_operator
begin_operator
close_sd1-condeff0-yes 
1
6 0
3
0 7 0 1
0 4 -1 0
0 3 -1 0
1
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 6 0 2
0 4 0 1
1
end_operator
begin_operator
close_sd4 
1
5 1
2
0 1 1 0
0 6 2 1
1
end_operator
begin_operator
close_sd4-condeff0-no-0 
2
6 1
3 0
1
0 4 -1 0
1
end_operator
begin_operator
close_sd4-condeff0-yes 
1
6 1
3
0 7 0 1
0 4 -1 0
0 3 -1 0
1
end_operator
begin_operator
close_sd4-endof-condeffs 
0
2
0 6 1 2
0 4 0 1
1
end_operator
begin_operator
open-cb1 
2
6 2
5 1
2
0 7 0 1
0 3 -1 0
1
end_operator
begin_operator
open-sd1 
2
6 2
5 1
1
0 0 0 1
1
end_operator
begin_operator
open-sd4 
2
6 2
5 1
1
0 1 0 1
1
end_operator
begin_operator
wait_cb1 
0
2
0 6 2 3
0 5 0 1
1
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
0 1
6 3
1
0 4 -1 0
1
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
0 0
6 3
3
0 7 -1 1
0 4 -1 0
0 3 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-no-0 
2
1 1
6 3
1
0 2 -1 0
1
end_operator
begin_operator
wait_cb1-condeff1-yes 
2
1 0
6 3
3
0 7 -1 1
0 2 -1 0
0 3 -1 0
1
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
3
0 6 3 2
0 4 0 1
0 2 0 1
1
end_operator
0

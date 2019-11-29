begin_version
3
end_version
begin_metric
0
end_metric
9
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
Atom done-0()
NegatedAtom done-0()
end_variable
begin_variable
var2
-1
2
Atom closed-cb2()
NegatedAtom closed-cb2()
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
Atom not-closed-cb1()
NegatedAtom not-closed-cb1()
end_variable
begin_variable
var5
-1
2
Atom not-updated-cb2()
Atom updated-cb2()
end_variable
begin_variable
var6
-1
2
Atom not-updated-cb1()
Atom updated-cb1()
end_variable
begin_variable
var7
-1
3
Atom do-close_sd1-condeffs()
Atom do-normal()
Atom do-wait_cb1-condeffs()
end_variable
begin_variable
var8
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
1
1
0
0
1
0
end_state
begin_goal
4
5 1
6 1
7 1
8 0
end_goal
14
begin_operator
close_cb1 
2
7 1
5 1
3
0 8 -1 0
0 4 0 1
0 6 1 0
1
end_operator
begin_operator
close_cb2 
2
7 1
6 1
3
0 2 -1 0
0 3 0 1
0 5 1 0
1
end_operator
begin_operator
close_sd1 
2
6 1
5 1
2
0 0 1 0
0 7 1 0
1
end_operator
begin_operator
close_sd1-condeff0-no-0 
2
7 0
4 0
1
0 1 -1 0
1
end_operator
begin_operator
close_sd1-condeff0-yes 
1
7 0
3
0 8 0 1
0 1 -1 0
0 4 -1 0
1
end_operator
begin_operator
close_sd1-endof-condeffs 
0
2
0 7 0 1
0 1 0 1
1
end_operator
begin_operator
open-cb1 
3
7 1
6 1
5 1
2
0 8 0 1
0 4 -1 0
1
end_operator
begin_operator
open-cb2 
3
7 1
6 1
5 1
2
0 2 0 1
0 3 -1 0
1
end_operator
begin_operator
open-sd1 
3
7 1
6 1
5 1
1
0 0 0 1
1
end_operator
begin_operator
wait_cb1 
0
2
0 7 1 2
0 6 0 1
1
end_operator
begin_operator
wait_cb1-condeff0-no-0 
2
0 1
7 2
1
0 1 -1 0
1
end_operator
begin_operator
wait_cb1-condeff0-yes 
2
0 0
7 2
3
0 8 -1 1
0 1 -1 0
0 4 -1 0
1
end_operator
begin_operator
wait_cb1-endof-condeffs 
0
2
0 7 2 1
0 1 0 1
1
end_operator
begin_operator
wait_cb2 
1
7 1
3
0 2 -1 1
0 3 -1 0
0 5 0 1
1
end_operator
0

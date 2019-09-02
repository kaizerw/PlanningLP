begin_version
3
end_version
begin_metric
0
end_metric
4
begin_variable
var0
-1
2
Atom at-robby(rooml)
Atom at-robby(roomr)
end_variable
begin_variable
var1
-1
3
Atom carry(ball1, hand)
Atom carry(ball2, hand)
Atom free(hand)
end_variable
begin_variable
var2
-1
3
Atom at(ball1, rooml)
Atom at(ball1, roomr)
<none of those>
end_variable
begin_variable
var3
-1
3
Atom at(ball2, rooml)
Atom at(ball2, roomr)
<none of those>
end_variable
2
begin_mutex_group
3
2 0
2 1
1 0
end_mutex_group
begin_mutex_group
3
3 0
3 1
1 1
end_mutex_group
begin_state
0
2
0
0
end_state
begin_goal
2
2 1
3 1
end_goal
10
begin_operator
drop ball1 rooml hand
1
0 0
2
0 2 -1 0
0 1 0 2
1
end_operator
begin_operator
drop ball1 roomr hand
1
0 1
2
0 2 -1 1
0 1 0 2
1
end_operator
begin_operator
drop ball2 rooml hand
1
0 0
2
0 3 -1 0
0 1 1 2
1
end_operator
begin_operator
drop ball2 roomr hand
1
0 1
2
0 3 -1 1
0 1 1 2
1
end_operator
begin_operator
move rooml roomr
0
1
0 0 0 1
1
end_operator
begin_operator
move roomr rooml
0
1
0 0 1 0
1
end_operator
begin_operator
pick ball1 rooml hand
1
0 0
2
0 2 0 2
0 1 2 0
1
end_operator
begin_operator
pick ball1 roomr hand
1
0 1
2
0 2 1 2
0 1 2 0
1
end_operator
begin_operator
pick ball2 rooml hand
1
0 0
2
0 3 0 2
0 1 2 1
1
end_operator
begin_operator
pick ball2 roomr hand
1
0 1
2
0 3 1 2
0 1 2 1
1
end_operator
0

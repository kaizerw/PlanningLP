begin_version
3
end_version
begin_metric
1
end_metric
10
begin_variable
var0
-1
4
Atom last-cut-point(sub1)
Atom last-cut-point(sub2)
Atom last-cut-point(sub3)
<none of those>
end_variable
begin_variable
var1
-1
4
Atom s-last(sub1)
Atom s-last(sub2)
Atom s-last(sub3)
<none of those>
end_variable
begin_variable
var2
-1
5
Atom cutting()
Atom splice-point-1(sub1)
Atom splice-point-1(sub2)
Atom splice-point-1(sub3)
<none of those>
end_variable
begin_variable
var3
-1
16
Atom cut-point-1(sub1)
Atom cut-point-1(sub2)
Atom cut-point-1(sub3)
Atom finished()
Atom have-cut()
Atom idle()
Atom inverse-splice-next(sub1)
Atom inverse-splice-next(sub2)
Atom inverse-splice-next(sub3)
Atom inverse-splicing()
Atom inverse-splicing-last()
Atom splice-next(sub1)
Atom splice-next(sub2)
Atom splice-next(sub3)
Atom splicing()
Atom splicing-last()
end_variable
begin_variable
var4
-1
2
Atom inverted(sub1)
Atom normal(sub1)
end_variable
begin_variable
var5
-1
2
Atom inverted(sub2)
Atom normal(sub2)
end_variable
begin_variable
var6
-1
2
Atom inverted(sub3)
Atom normal(sub3)
end_variable
begin_variable
var7
-1
9
Atom cut-point-2(sub1)
Atom cw(sub1, sub1)
Atom cw(sub2, sub1)
Atom cw(sub3, sub1)
Atom s-first(sub1)
Atom s-next(sub2, sub1)
Atom s-next(sub3, sub1)
Atom splice-point-2(sub1)
<none of those>
end_variable
begin_variable
var8
-1
9
Atom cut-point-2(sub2)
Atom cw(sub1, sub2)
Atom cw(sub2, sub2)
Atom cw(sub3, sub2)
Atom s-first(sub2)
Atom s-next(sub1, sub2)
Atom s-next(sub3, sub2)
Atom splice-point-2(sub2)
<none of those>
end_variable
begin_variable
var9
-1
9
Atom cut-point-2(sub3)
Atom cw(sub1, sub3)
Atom cw(sub2, sub3)
Atom cw(sub3, sub3)
Atom s-first(sub3)
Atom s-next(sub1, sub3)
Atom s-next(sub2, sub3)
Atom splice-point-2(sub3)
<none of those>
end_variable
14
begin_mutex_group
9
3 0
3 1
3 2
3 3
3 4
3 5
2 1
2 2
2 3
end_mutex_group
begin_mutex_group
9
3 0
3 1
3 2
3 3
3 4
3 5
7 7
8 7
9 7
end_mutex_group
begin_mutex_group
10
3 6
3 11
7 0
7 1
7 2
7 3
7 4
7 5
7 6
7 7
end_mutex_group
begin_mutex_group
10
3 6
3 11
7 0
7 1
7 2
7 3
7 7
8 5
9 5
1 0
end_mutex_group
begin_mutex_group
10
3 7
3 12
8 0
8 1
8 2
8 3
8 4
8 5
8 6
8 7
end_mutex_group
begin_mutex_group
10
3 7
3 12
7 5
8 0
8 1
8 2
8 3
8 7
9 6
1 1
end_mutex_group
begin_mutex_group
10
3 8
3 13
9 0
9 1
9 2
9 3
9 4
9 5
9 6
9 7
end_mutex_group
begin_mutex_group
10
3 8
3 13
7 6
8 6
9 0
9 1
9 2
9 3
9 7
1 2
end_mutex_group
begin_mutex_group
14
3 3
3 4
3 5
3 6
3 7
3 8
3 9
3 10
3 11
3 12
3 13
3 14
3 15
2 0
end_mutex_group
begin_mutex_group
7
3 3
3 4
3 5
2 0
2 1
2 2
2 3
end_mutex_group
begin_mutex_group
7
3 3
3 4
3 5
7 7
8 7
9 7
2 0
end_mutex_group
begin_mutex_group
7
3 3
3 5
3 10
3 15
7 4
8 4
9 4
end_mutex_group
begin_mutex_group
7
3 3
3 5
3 10
3 15
1 0
1 1
1 2
end_mutex_group
begin_mutex_group
4
3 5
0 0
0 1
0 2
end_mutex_group
begin_state
3
3
4
5
1
1
1
3
1
2
end_state
begin_goal
6
4 1
5 1
6 0
7 3
8 1
9 2
end_goal
138
begin_operator
begin-cut sub1 sub2
0
5
0 3 5 0
0 8 1 4
0 2 -1 0
0 0 -1 0
0 1 -1 1
0
end_operator
begin_operator
begin-cut sub1 sub3
0
5
0 3 5 0
0 9 1 4
0 2 -1 0
0 0 -1 0
0 1 -1 2
0
end_operator
begin_operator
begin-cut sub2 sub1
0
5
0 3 5 1
0 7 2 4
0 2 -1 0
0 0 -1 1
0 1 -1 0
0
end_operator
begin_operator
begin-cut sub2 sub3
0
5
0 3 5 1
0 9 2 4
0 2 -1 0
0 0 -1 1
0 1 -1 2
0
end_operator
begin_operator
begin-cut sub3 sub1
0
5
0 3 5 2
0 7 3 4
0 2 -1 0
0 0 -1 2
0 1 -1 0
0
end_operator
begin_operator
begin-cut sub3 sub2
0
5
0 3 5 2
0 8 3 4
0 2 -1 0
0 0 -1 2
0 1 -1 1
0
end_operator
begin_operator
begin-inverse-splice sub1 sub2
1
0 0
3
0 3 4 9
0 8 1 7
0 2 -1 1
1
end_operator
begin_operator
begin-inverse-splice sub1 sub3
1
0 0
3
0 3 4 9
0 9 1 7
0 2 -1 1
1
end_operator
begin_operator
begin-inverse-splice sub2 sub1
1
0 1
3
0 3 4 9
0 7 2 7
0 2 -1 2
1
end_operator
begin_operator
begin-inverse-splice sub2 sub3
1
0 1
3
0 3 4 9
0 9 2 7
0 2 -1 2
1
end_operator
begin_operator
begin-inverse-splice sub3 sub1
1
0 2
3
0 3 4 9
0 7 3 7
0 2 -1 3
1
end_operator
begin_operator
begin-inverse-splice sub3 sub2
1
0 2
3
0 3 4 9
0 8 3 7
0 2 -1 3
1
end_operator
begin_operator
begin-inverse-splice-special-case sub1
1
0 0
3
0 3 4 9
0 7 1 7
0 2 -1 1
1
end_operator
begin_operator
begin-inverse-splice-special-case sub2
1
0 1
3
0 3 4 9
0 8 2 7
0 2 -1 2
1
end_operator
begin_operator
begin-inverse-splice-special-case sub3
1
0 2
3
0 3 4 9
0 9 3 7
0 2 -1 3
1
end_operator
begin_operator
begin-transpose-splice sub1 sub2
0
3
0 3 4 14
0 8 1 7
0 2 -1 1
2
end_operator
begin_operator
begin-transpose-splice sub1 sub3
0
3
0 3 4 14
0 9 1 7
0 2 -1 1
2
end_operator
begin_operator
begin-transpose-splice sub2 sub1
0
3
0 3 4 14
0 7 2 7
0 2 -1 2
2
end_operator
begin_operator
begin-transpose-splice sub2 sub3
0
3
0 3 4 14
0 9 2 7
0 2 -1 2
2
end_operator
begin_operator
begin-transpose-splice sub3 sub1
0
3
0 3 4 14
0 7 3 7
0 2 -1 3
2
end_operator
begin_operator
begin-transpose-splice sub3 sub2
0
3
0 3 4 14
0 8 3 7
0 2 -1 3
2
end_operator
begin_operator
begin-transverse-splice sub1 sub2
0
3
0 3 4 9
0 8 1 7
0 2 -1 1
2
end_operator
begin_operator
begin-transverse-splice sub1 sub3
0
3
0 3 4 9
0 9 1 7
0 2 -1 1
2
end_operator
begin_operator
begin-transverse-splice sub2 sub1
0
3
0 3 4 9
0 7 2 7
0 2 -1 2
2
end_operator
begin_operator
begin-transverse-splice sub2 sub3
0
3
0 3 4 9
0 9 2 7
0 2 -1 2
2
end_operator
begin_operator
begin-transverse-splice sub3 sub1
0
3
0 3 4 9
0 7 3 7
0 2 -1 3
2
end_operator
begin_operator
begin-transverse-splice sub3 sub2
0
3
0 3 4 9
0 8 3 7
0 2 -1 3
2
end_operator
begin_operator
continue-cut sub1 sub2
1
2 0
2
0 8 1 5
0 1 0 1
0
end_operator
begin_operator
continue-cut sub1 sub3
1
2 0
2
0 9 1 5
0 1 0 2
0
end_operator
begin_operator
continue-cut sub2 sub1
1
2 0
2
0 7 2 5
0 1 1 0
0
end_operator
begin_operator
continue-cut sub2 sub3
1
2 0
2
0 9 2 6
0 1 1 2
0
end_operator
begin_operator
continue-cut sub3 sub1
1
2 0
2
0 7 3 6
0 1 2 0
0
end_operator
begin_operator
continue-cut sub3 sub2
1
2 0
2
0 8 3 6
0 1 2 1
0
end_operator
begin_operator
continue-inverse-splice-1a sub1 sub2
0
4
0 3 9 6
0 7 5 8
0 4 1 0
0 1 0 1
0
end_operator
begin_operator
continue-inverse-splice-1a sub1 sub3
0
4
0 3 9 6
0 7 6 8
0 4 1 0
0 1 0 2
0
end_operator
begin_operator
continue-inverse-splice-1a sub2 sub1
0
4
0 3 9 7
0 8 5 8
0 5 1 0
0 1 1 0
0
end_operator
begin_operator
continue-inverse-splice-1a sub2 sub3
0
4
0 3 9 7
0 8 6 8
0 5 1 0
0 1 1 2
0
end_operator
begin_operator
continue-inverse-splice-1a sub3 sub1
0
4
0 3 9 8
0 9 5 8
0 6 1 0
0 1 2 0
0
end_operator
begin_operator
continue-inverse-splice-1a sub3 sub2
0
4
0 3 9 8
0 9 6 8
0 6 1 0
0 1 2 1
0
end_operator
begin_operator
continue-inverse-splice-1b sub1 sub2
0
4
0 3 9 6
0 7 5 8
0 4 0 1
0 1 0 1
0
end_operator
begin_operator
continue-inverse-splice-1b sub1 sub3
0
4
0 3 9 6
0 7 6 8
0 4 0 1
0 1 0 2
0
end_operator
begin_operator
continue-inverse-splice-1b sub2 sub1
0
4
0 3 9 7
0 8 5 8
0 5 0 1
0 1 1 0
0
end_operator
begin_operator
continue-inverse-splice-1b sub2 sub3
0
4
0 3 9 7
0 8 6 8
0 5 0 1
0 1 1 2
0
end_operator
begin_operator
continue-inverse-splice-1b sub3 sub1
0
4
0 3 9 8
0 9 5 8
0 6 0 1
0 1 2 0
0
end_operator
begin_operator
continue-inverse-splice-1b sub3 sub2
0
4
0 3 9 8
0 9 6 8
0 6 0 1
0 1 2 1
0
end_operator
begin_operator
continue-inverse-splice-2 sub1 sub1
1
2 1
2
0 3 6 9
0 7 -1 1
0
end_operator
begin_operator
continue-inverse-splice-2 sub1 sub2
0
3
0 3 6 9
0 7 -1 2
0 2 2 1
0
end_operator
begin_operator
continue-inverse-splice-2 sub1 sub3
0
3
0 3 6 9
0 7 -1 3
0 2 3 1
0
end_operator
begin_operator
continue-inverse-splice-2 sub2 sub1
0
3
0 3 7 9
0 8 -1 1
0 2 1 2
0
end_operator
begin_operator
continue-inverse-splice-2 sub2 sub2
1
2 2
2
0 3 7 9
0 8 -1 2
0
end_operator
begin_operator
continue-inverse-splice-2 sub2 sub3
0
3
0 3 7 9
0 8 -1 3
0 2 3 2
0
end_operator
begin_operator
continue-inverse-splice-2 sub3 sub1
0
3
0 3 8 9
0 9 -1 1
0 2 1 3
0
end_operator
begin_operator
continue-inverse-splice-2 sub3 sub2
0
3
0 3 8 9
0 9 -1 2
0 2 2 3
0
end_operator
begin_operator
continue-inverse-splice-2 sub3 sub3
1
2 3
2
0 3 8 9
0 9 -1 3
0
end_operator
begin_operator
continue-splice-1 sub1 sub2
0
3
0 3 14 11
0 7 4 8
0 8 5 4
0
end_operator
begin_operator
continue-splice-1 sub1 sub3
0
3
0 3 14 11
0 7 4 8
0 9 5 4
0
end_operator
begin_operator
continue-splice-1 sub2 sub1
0
3
0 3 14 12
0 7 5 4
0 8 4 8
0
end_operator
begin_operator
continue-splice-1 sub2 sub3
0
3
0 3 14 12
0 8 4 8
0 9 6 4
0
end_operator
begin_operator
continue-splice-1 sub3 sub1
0
3
0 3 14 13
0 7 6 4
0 9 4 8
0
end_operator
begin_operator
continue-splice-1 sub3 sub2
0
3
0 3 14 13
0 8 6 4
0 9 4 8
0
end_operator
begin_operator
continue-splice-2 sub1 sub1
1
2 1
2
0 3 11 14
0 7 -1 1
0
end_operator
begin_operator
continue-splice-2 sub1 sub2
0
3
0 3 11 14
0 7 -1 2
0 2 2 1
0
end_operator
begin_operator
continue-splice-2 sub1 sub3
0
3
0 3 11 14
0 7 -1 3
0 2 3 1
0
end_operator
begin_operator
continue-splice-2 sub2 sub1
0
3
0 3 12 14
0 8 -1 1
0 2 1 2
0
end_operator
begin_operator
continue-splice-2 sub2 sub2
1
2 2
2
0 3 12 14
0 8 -1 2
0
end_operator
begin_operator
continue-splice-2 sub2 sub3
0
3
0 3 12 14
0 8 -1 3
0 2 3 2
0
end_operator
begin_operator
continue-splice-2 sub3 sub1
0
3
0 3 13 14
0 9 -1 1
0 2 1 3
0
end_operator
begin_operator
continue-splice-2 sub3 sub2
0
3
0 3 13 14
0 9 -1 2
0 2 2 3
0
end_operator
begin_operator
continue-splice-2 sub3 sub3
1
2 3
2
0 3 13 14
0 9 -1 3
0
end_operator
begin_operator
end-cut-1 sub1 sub2
2
2 0
1 0
1
0 8 1 0
0
end_operator
begin_operator
end-cut-1 sub1 sub3
2
2 0
1 0
1
0 9 1 0
0
end_operator
begin_operator
end-cut-1 sub2 sub1
2
2 0
1 1
1
0 7 2 0
0
end_operator
begin_operator
end-cut-1 sub2 sub3
2
2 0
1 1
1
0 9 2 0
0
end_operator
begin_operator
end-cut-1 sub3 sub1
2
2 0
1 2
1
0 7 3 0
0
end_operator
begin_operator
end-cut-1 sub3 sub2
2
2 0
1 2
1
0 8 3 0
0
end_operator
begin_operator
end-cut-2 sub1 sub1
0
3
0 3 0 4
0 7 0 1
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub1 sub2
0
3
0 3 0 4
0 8 0 1
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub1 sub3
0
3
0 3 0 4
0 9 0 1
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub2 sub1
0
3
0 3 1 4
0 7 0 2
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub2 sub2
0
3
0 3 1 4
0 8 0 2
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub2 sub3
0
3
0 3 1 4
0 9 0 2
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub3 sub1
0
3
0 3 2 4
0 7 0 3
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub3 sub2
0
3
0 3 2 4
0 8 0 3
0 2 0 4
0
end_operator
begin_operator
end-cut-2 sub3 sub3
0
3
0 3 2 4
0 9 0 3
0 2 0 4
0
end_operator
begin_operator
end-inverse-splice-1a sub1 sub1
1
2 1
4
0 3 9 10
0 7 4 1
0 4 1 0
0 1 0 3
0
end_operator
begin_operator
end-inverse-splice-1a sub1 sub2
0
5
0 3 9 10
0 7 4 2
0 2 2 1
0 4 1 0
0 1 0 3
0
end_operator
begin_operator
end-inverse-splice-1a sub1 sub3
0
5
0 3 9 10
0 7 4 3
0 2 3 1
0 4 1 0
0 1 0 3
0
end_operator
begin_operator
end-inverse-splice-1a sub2 sub1
0
5
0 3 9 10
0 8 4 1
0 2 1 2
0 5 1 0
0 1 1 3
0
end_operator
begin_operator
end-inverse-splice-1a sub2 sub2
1
2 2
4
0 3 9 10
0 8 4 2
0 5 1 0
0 1 1 3
0
end_operator
begin_operator
end-inverse-splice-1a sub2 sub3
0
5
0 3 9 10
0 8 4 3
0 2 3 2
0 5 1 0
0 1 1 3
0
end_operator
begin_operator
end-inverse-splice-1a sub3 sub1
0
5
0 3 9 10
0 9 4 1
0 2 1 3
0 6 1 0
0 1 2 3
0
end_operator
begin_operator
end-inverse-splice-1a sub3 sub2
0
5
0 3 9 10
0 9 4 2
0 2 2 3
0 6 1 0
0 1 2 3
0
end_operator
begin_operator
end-inverse-splice-1a sub3 sub3
1
2 3
4
0 3 9 10
0 9 4 3
0 6 1 0
0 1 2 3
0
end_operator
begin_operator
end-inverse-splice-1b sub1 sub1
1
2 1
4
0 3 9 10
0 7 4 1
0 4 0 1
0 1 0 3
0
end_operator
begin_operator
end-inverse-splice-1b sub1 sub2
0
5
0 3 9 10
0 7 4 2
0 2 2 1
0 4 0 1
0 1 0 3
0
end_operator
begin_operator
end-inverse-splice-1b sub1 sub3
0
5
0 3 9 10
0 7 4 3
0 2 3 1
0 4 0 1
0 1 0 3
0
end_operator
begin_operator
end-inverse-splice-1b sub2 sub1
0
5
0 3 9 10
0 8 4 1
0 2 1 2
0 5 0 1
0 1 1 3
0
end_operator
begin_operator
end-inverse-splice-1b sub2 sub2
1
2 2
4
0 3 9 10
0 8 4 2
0 5 0 1
0 1 1 3
0
end_operator
begin_operator
end-inverse-splice-1b sub2 sub3
0
5
0 3 9 10
0 8 4 3
0 2 3 2
0 5 0 1
0 1 1 3
0
end_operator
begin_operator
end-inverse-splice-1b sub3 sub1
0
5
0 3 9 10
0 9 4 1
0 2 1 3
0 6 0 1
0 1 2 3
0
end_operator
begin_operator
end-inverse-splice-1b sub3 sub2
0
5
0 3 9 10
0 9 4 2
0 2 2 3
0 6 0 1
0 1 2 3
0
end_operator
begin_operator
end-inverse-splice-1b sub3 sub3
1
2 3
4
0 3 9 10
0 9 4 3
0 6 0 1
0 1 2 3
0
end_operator
begin_operator
end-inverse-splice-2 sub1 sub1
0
3
0 3 10 3
0 7 7 1
0 2 1 4
0
end_operator
begin_operator
end-inverse-splice-2 sub1 sub2
0
3
0 3 10 3
0 8 7 1
0 2 1 4
0
end_operator
begin_operator
end-inverse-splice-2 sub1 sub3
0
3
0 3 10 3
0 9 7 1
0 2 1 4
0
end_operator
begin_operator
end-inverse-splice-2 sub2 sub1
0
3
0 3 10 3
0 7 7 2
0 2 2 4
0
end_operator
begin_operator
end-inverse-splice-2 sub2 sub2
0
3
0 3 10 3
0 8 7 2
0 2 2 4
0
end_operator
begin_operator
end-inverse-splice-2 sub2 sub3
0
3
0 3 10 3
0 9 7 2
0 2 2 4
0
end_operator
begin_operator
end-inverse-splice-2 sub3 sub1
0
3
0 3 10 3
0 7 7 3
0 2 3 4
0
end_operator
begin_operator
end-inverse-splice-2 sub3 sub2
0
3
0 3 10 3
0 8 7 3
0 2 3 4
0
end_operator
begin_operator
end-inverse-splice-2 sub3 sub3
0
3
0 3 10 3
0 9 7 3
0 2 3 4
0
end_operator
begin_operator
end-splice-1 sub1 sub1
1
2 1
3
0 3 14 15
0 7 4 1
0 1 0 3
0
end_operator
begin_operator
end-splice-1 sub1 sub2
0
4
0 3 14 15
0 7 4 2
0 2 2 1
0 1 0 3
0
end_operator
begin_operator
end-splice-1 sub1 sub3
0
4
0 3 14 15
0 7 4 3
0 2 3 1
0 1 0 3
0
end_operator
begin_operator
end-splice-1 sub2 sub1
0
4
0 3 14 15
0 8 4 1
0 2 1 2
0 1 1 3
0
end_operator
begin_operator
end-splice-1 sub2 sub2
1
2 2
3
0 3 14 15
0 8 4 2
0 1 1 3
0
end_operator
begin_operator
end-splice-1 sub2 sub3
0
4
0 3 14 15
0 8 4 3
0 2 3 2
0 1 1 3
0
end_operator
begin_operator
end-splice-1 sub3 sub1
0
4
0 3 14 15
0 9 4 1
0 2 1 3
0 1 2 3
0
end_operator
begin_operator
end-splice-1 sub3 sub2
0
4
0 3 14 15
0 9 4 2
0 2 2 3
0 1 2 3
0
end_operator
begin_operator
end-splice-1 sub3 sub3
1
2 3
3
0 3 14 15
0 9 4 3
0 1 2 3
0
end_operator
begin_operator
end-splice-2 sub1 sub1
0
3
0 3 15 3
0 7 7 1
0 2 1 4
0
end_operator
begin_operator
end-splice-2 sub1 sub2
0
3
0 3 15 3
0 8 7 1
0 2 1 4
0
end_operator
begin_operator
end-splice-2 sub1 sub3
0
3
0 3 15 3
0 9 7 1
0 2 1 4
0
end_operator
begin_operator
end-splice-2 sub2 sub1
0
3
0 3 15 3
0 7 7 2
0 2 2 4
0
end_operator
begin_operator
end-splice-2 sub2 sub2
0
3
0 3 15 3
0 8 7 2
0 2 2 4
0
end_operator
begin_operator
end-splice-2 sub2 sub3
0
3
0 3 15 3
0 9 7 2
0 2 2 4
0
end_operator
begin_operator
end-splice-2 sub3 sub1
0
3
0 3 15 3
0 7 7 3
0 2 3 4
0
end_operator
begin_operator
end-splice-2 sub3 sub2
0
3
0 3 15 3
0 8 7 3
0 2 3 4
0
end_operator
begin_operator
end-splice-2 sub3 sub3
0
3
0 3 15 3
0 9 7 3
0 2 3 4
0
end_operator
begin_operator
invert-single-gene-a sub1
1
3 5
1
0 4 1 0
1
end_operator
begin_operator
invert-single-gene-a sub2
1
3 5
1
0 5 1 0
1
end_operator
begin_operator
invert-single-gene-a sub3
1
3 5
1
0 6 1 0
1
end_operator
begin_operator
invert-single-gene-b sub1
1
3 5
1
0 4 0 1
1
end_operator
begin_operator
invert-single-gene-b sub2
1
3 5
1
0 5 0 1
1
end_operator
begin_operator
invert-single-gene-b sub3
1
3 5
1
0 6 0 1
1
end_operator
begin_operator
reset-1 sub1
0
2
0 3 3 5
0 0 0 3
0
end_operator
begin_operator
reset-1 sub2
0
2
0 3 3 5
0 0 1 3
0
end_operator
begin_operator
reset-1 sub3
0
2
0 3 3 5
0 0 2 3
0
end_operator
0

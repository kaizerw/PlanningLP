begin_version
3
end_version
begin_metric
0
end_metric
11
begin_variable
var0
-1
2
Atom at(tru3, apt3)
Atom at(tru3, pos3)
end_variable
begin_variable
var1
-1
2
Atom at(tru2, apt2)
Atom at(tru2, pos2)
end_variable
begin_variable
var2
-1
2
Atom at(tru1, apt1)
Atom at(tru1, pos1)
end_variable
begin_variable
var3
-1
3
Atom at(apn1, apt1)
Atom at(apn1, apt2)
Atom at(apn1, apt3)
end_variable
begin_variable
var4
-1
10
Atom at(obj33, apt1)
Atom at(obj33, apt2)
Atom at(obj33, apt3)
Atom at(obj33, pos1)
Atom at(obj33, pos2)
Atom at(obj33, pos3)
Atom in(obj33, apn1)
Atom in(obj33, tru1)
Atom in(obj33, tru2)
Atom in(obj33, tru3)
end_variable
begin_variable
var5
-1
10
Atom at(obj32, apt1)
Atom at(obj32, apt2)
Atom at(obj32, apt3)
Atom at(obj32, pos1)
Atom at(obj32, pos2)
Atom at(obj32, pos3)
Atom in(obj32, apn1)
Atom in(obj32, tru1)
Atom in(obj32, tru2)
Atom in(obj32, tru3)
end_variable
begin_variable
var6
-1
10
Atom at(obj23, apt1)
Atom at(obj23, apt2)
Atom at(obj23, apt3)
Atom at(obj23, pos1)
Atom at(obj23, pos2)
Atom at(obj23, pos3)
Atom in(obj23, apn1)
Atom in(obj23, tru1)
Atom in(obj23, tru2)
Atom in(obj23, tru3)
end_variable
begin_variable
var7
-1
10
Atom at(obj21, apt1)
Atom at(obj21, apt2)
Atom at(obj21, apt3)
Atom at(obj21, pos1)
Atom at(obj21, pos2)
Atom at(obj21, pos3)
Atom in(obj21, apn1)
Atom in(obj21, tru1)
Atom in(obj21, tru2)
Atom in(obj21, tru3)
end_variable
begin_variable
var8
-1
10
Atom at(obj13, apt1)
Atom at(obj13, apt2)
Atom at(obj13, apt3)
Atom at(obj13, pos1)
Atom at(obj13, pos2)
Atom at(obj13, pos3)
Atom in(obj13, apn1)
Atom in(obj13, tru1)
Atom in(obj13, tru2)
Atom in(obj13, tru3)
end_variable
begin_variable
var9
-1
10
Atom at(obj12, apt1)
Atom at(obj12, apt2)
Atom at(obj12, apt3)
Atom at(obj12, pos1)
Atom at(obj12, pos2)
Atom at(obj12, pos3)
Atom in(obj12, apn1)
Atom in(obj12, tru1)
Atom in(obj12, tru2)
Atom in(obj12, tru3)
end_variable
begin_variable
var10
-1
10
Atom at(obj11, apt1)
Atom at(obj11, apt2)
Atom at(obj11, apt3)
Atom at(obj11, pos1)
Atom at(obj11, pos2)
Atom at(obj11, pos3)
Atom in(obj11, apn1)
Atom in(obj11, tru1)
Atom in(obj11, tru2)
Atom in(obj11, tru3)
end_variable
0
begin_state
1
1
1
2
5
5
4
4
3
3
3
end_state
begin_goal
7
4 0
5 3
6 0
7 2
8 4
9 2
10 5
end_goal
138
begin_operator
drive-truck tru1 apt1 pos1 cit1
0
1
0 2 0 1
1
end_operator
begin_operator
drive-truck tru1 pos1 apt1 cit1
0
1
0 2 1 0
1
end_operator
begin_operator
drive-truck tru2 apt2 pos2 cit2
0
1
0 1 0 1
1
end_operator
begin_operator
drive-truck tru2 pos2 apt2 cit2
0
1
0 1 1 0
1
end_operator
begin_operator
drive-truck tru3 apt3 pos3 cit3
0
1
0 0 0 1
1
end_operator
begin_operator
drive-truck tru3 pos3 apt3 cit3
0
1
0 0 1 0
1
end_operator
begin_operator
fly-airplane apn1 apt1 apt2
0
1
0 3 0 1
1
end_operator
begin_operator
fly-airplane apn1 apt1 apt3
0
1
0 3 0 2
1
end_operator
begin_operator
fly-airplane apn1 apt2 apt1
0
1
0 3 1 0
1
end_operator
begin_operator
fly-airplane apn1 apt2 apt3
0
1
0 3 1 2
1
end_operator
begin_operator
fly-airplane apn1 apt3 apt1
0
1
0 3 2 0
1
end_operator
begin_operator
fly-airplane apn1 apt3 apt2
0
1
0 3 2 1
1
end_operator
begin_operator
load-airplane obj11 apn1 apt1
1
3 0
1
0 10 0 6
1
end_operator
begin_operator
load-airplane obj11 apn1 apt2
1
3 1
1
0 10 1 6
1
end_operator
begin_operator
load-airplane obj11 apn1 apt3
1
3 2
1
0 10 2 6
1
end_operator
begin_operator
load-airplane obj12 apn1 apt1
1
3 0
1
0 9 0 6
1
end_operator
begin_operator
load-airplane obj12 apn1 apt2
1
3 1
1
0 9 1 6
1
end_operator
begin_operator
load-airplane obj12 apn1 apt3
1
3 2
1
0 9 2 6
1
end_operator
begin_operator
load-airplane obj13 apn1 apt1
1
3 0
1
0 8 0 6
1
end_operator
begin_operator
load-airplane obj13 apn1 apt2
1
3 1
1
0 8 1 6
1
end_operator
begin_operator
load-airplane obj13 apn1 apt3
1
3 2
1
0 8 2 6
1
end_operator
begin_operator
load-airplane obj21 apn1 apt1
1
3 0
1
0 7 0 6
1
end_operator
begin_operator
load-airplane obj21 apn1 apt2
1
3 1
1
0 7 1 6
1
end_operator
begin_operator
load-airplane obj21 apn1 apt3
1
3 2
1
0 7 2 6
1
end_operator
begin_operator
load-airplane obj23 apn1 apt1
1
3 0
1
0 6 0 6
1
end_operator
begin_operator
load-airplane obj23 apn1 apt2
1
3 1
1
0 6 1 6
1
end_operator
begin_operator
load-airplane obj23 apn1 apt3
1
3 2
1
0 6 2 6
1
end_operator
begin_operator
load-airplane obj32 apn1 apt1
1
3 0
1
0 5 0 6
1
end_operator
begin_operator
load-airplane obj32 apn1 apt2
1
3 1
1
0 5 1 6
1
end_operator
begin_operator
load-airplane obj32 apn1 apt3
1
3 2
1
0 5 2 6
1
end_operator
begin_operator
load-airplane obj33 apn1 apt1
1
3 0
1
0 4 0 6
1
end_operator
begin_operator
load-airplane obj33 apn1 apt2
1
3 1
1
0 4 1 6
1
end_operator
begin_operator
load-airplane obj33 apn1 apt3
1
3 2
1
0 4 2 6
1
end_operator
begin_operator
load-truck obj11 tru1 apt1
1
2 0
1
0 10 0 7
1
end_operator
begin_operator
load-truck obj11 tru1 pos1
1
2 1
1
0 10 3 7
1
end_operator
begin_operator
load-truck obj11 tru2 apt2
1
1 0
1
0 10 1 8
1
end_operator
begin_operator
load-truck obj11 tru2 pos2
1
1 1
1
0 10 4 8
1
end_operator
begin_operator
load-truck obj11 tru3 apt3
1
0 0
1
0 10 2 9
1
end_operator
begin_operator
load-truck obj11 tru3 pos3
1
0 1
1
0 10 5 9
1
end_operator
begin_operator
load-truck obj12 tru1 apt1
1
2 0
1
0 9 0 7
1
end_operator
begin_operator
load-truck obj12 tru1 pos1
1
2 1
1
0 9 3 7
1
end_operator
begin_operator
load-truck obj12 tru2 apt2
1
1 0
1
0 9 1 8
1
end_operator
begin_operator
load-truck obj12 tru2 pos2
1
1 1
1
0 9 4 8
1
end_operator
begin_operator
load-truck obj12 tru3 apt3
1
0 0
1
0 9 2 9
1
end_operator
begin_operator
load-truck obj12 tru3 pos3
1
0 1
1
0 9 5 9
1
end_operator
begin_operator
load-truck obj13 tru1 apt1
1
2 0
1
0 8 0 7
1
end_operator
begin_operator
load-truck obj13 tru1 pos1
1
2 1
1
0 8 3 7
1
end_operator
begin_operator
load-truck obj13 tru2 apt2
1
1 0
1
0 8 1 8
1
end_operator
begin_operator
load-truck obj13 tru2 pos2
1
1 1
1
0 8 4 8
1
end_operator
begin_operator
load-truck obj13 tru3 apt3
1
0 0
1
0 8 2 9
1
end_operator
begin_operator
load-truck obj13 tru3 pos3
1
0 1
1
0 8 5 9
1
end_operator
begin_operator
load-truck obj21 tru1 apt1
1
2 0
1
0 7 0 7
1
end_operator
begin_operator
load-truck obj21 tru1 pos1
1
2 1
1
0 7 3 7
1
end_operator
begin_operator
load-truck obj21 tru2 apt2
1
1 0
1
0 7 1 8
1
end_operator
begin_operator
load-truck obj21 tru2 pos2
1
1 1
1
0 7 4 8
1
end_operator
begin_operator
load-truck obj21 tru3 apt3
1
0 0
1
0 7 2 9
1
end_operator
begin_operator
load-truck obj21 tru3 pos3
1
0 1
1
0 7 5 9
1
end_operator
begin_operator
load-truck obj23 tru1 apt1
1
2 0
1
0 6 0 7
1
end_operator
begin_operator
load-truck obj23 tru1 pos1
1
2 1
1
0 6 3 7
1
end_operator
begin_operator
load-truck obj23 tru2 apt2
1
1 0
1
0 6 1 8
1
end_operator
begin_operator
load-truck obj23 tru2 pos2
1
1 1
1
0 6 4 8
1
end_operator
begin_operator
load-truck obj23 tru3 apt3
1
0 0
1
0 6 2 9
1
end_operator
begin_operator
load-truck obj23 tru3 pos3
1
0 1
1
0 6 5 9
1
end_operator
begin_operator
load-truck obj32 tru1 apt1
1
2 0
1
0 5 0 7
1
end_operator
begin_operator
load-truck obj32 tru1 pos1
1
2 1
1
0 5 3 7
1
end_operator
begin_operator
load-truck obj32 tru2 apt2
1
1 0
1
0 5 1 8
1
end_operator
begin_operator
load-truck obj32 tru2 pos2
1
1 1
1
0 5 4 8
1
end_operator
begin_operator
load-truck obj32 tru3 apt3
1
0 0
1
0 5 2 9
1
end_operator
begin_operator
load-truck obj32 tru3 pos3
1
0 1
1
0 5 5 9
1
end_operator
begin_operator
load-truck obj33 tru1 apt1
1
2 0
1
0 4 0 7
1
end_operator
begin_operator
load-truck obj33 tru1 pos1
1
2 1
1
0 4 3 7
1
end_operator
begin_operator
load-truck obj33 tru2 apt2
1
1 0
1
0 4 1 8
1
end_operator
begin_operator
load-truck obj33 tru2 pos2
1
1 1
1
0 4 4 8
1
end_operator
begin_operator
load-truck obj33 tru3 apt3
1
0 0
1
0 4 2 9
1
end_operator
begin_operator
load-truck obj33 tru3 pos3
1
0 1
1
0 4 5 9
1
end_operator
begin_operator
unload-airplane obj11 apn1 apt1
1
3 0
1
0 10 6 0
1
end_operator
begin_operator
unload-airplane obj11 apn1 apt2
1
3 1
1
0 10 6 1
1
end_operator
begin_operator
unload-airplane obj11 apn1 apt3
1
3 2
1
0 10 6 2
1
end_operator
begin_operator
unload-airplane obj12 apn1 apt1
1
3 0
1
0 9 6 0
1
end_operator
begin_operator
unload-airplane obj12 apn1 apt2
1
3 1
1
0 9 6 1
1
end_operator
begin_operator
unload-airplane obj12 apn1 apt3
1
3 2
1
0 9 6 2
1
end_operator
begin_operator
unload-airplane obj13 apn1 apt1
1
3 0
1
0 8 6 0
1
end_operator
begin_operator
unload-airplane obj13 apn1 apt2
1
3 1
1
0 8 6 1
1
end_operator
begin_operator
unload-airplane obj13 apn1 apt3
1
3 2
1
0 8 6 2
1
end_operator
begin_operator
unload-airplane obj21 apn1 apt1
1
3 0
1
0 7 6 0
1
end_operator
begin_operator
unload-airplane obj21 apn1 apt2
1
3 1
1
0 7 6 1
1
end_operator
begin_operator
unload-airplane obj21 apn1 apt3
1
3 2
1
0 7 6 2
1
end_operator
begin_operator
unload-airplane obj23 apn1 apt1
1
3 0
1
0 6 6 0
1
end_operator
begin_operator
unload-airplane obj23 apn1 apt2
1
3 1
1
0 6 6 1
1
end_operator
begin_operator
unload-airplane obj23 apn1 apt3
1
3 2
1
0 6 6 2
1
end_operator
begin_operator
unload-airplane obj32 apn1 apt1
1
3 0
1
0 5 6 0
1
end_operator
begin_operator
unload-airplane obj32 apn1 apt2
1
3 1
1
0 5 6 1
1
end_operator
begin_operator
unload-airplane obj32 apn1 apt3
1
3 2
1
0 5 6 2
1
end_operator
begin_operator
unload-airplane obj33 apn1 apt1
1
3 0
1
0 4 6 0
1
end_operator
begin_operator
unload-airplane obj33 apn1 apt2
1
3 1
1
0 4 6 1
1
end_operator
begin_operator
unload-airplane obj33 apn1 apt3
1
3 2
1
0 4 6 2
1
end_operator
begin_operator
unload-truck obj11 tru1 apt1
1
2 0
1
0 10 7 0
1
end_operator
begin_operator
unload-truck obj11 tru1 pos1
1
2 1
1
0 10 7 3
1
end_operator
begin_operator
unload-truck obj11 tru2 apt2
1
1 0
1
0 10 8 1
1
end_operator
begin_operator
unload-truck obj11 tru2 pos2
1
1 1
1
0 10 8 4
1
end_operator
begin_operator
unload-truck obj11 tru3 apt3
1
0 0
1
0 10 9 2
1
end_operator
begin_operator
unload-truck obj11 tru3 pos3
1
0 1
1
0 10 9 5
1
end_operator
begin_operator
unload-truck obj12 tru1 apt1
1
2 0
1
0 9 7 0
1
end_operator
begin_operator
unload-truck obj12 tru1 pos1
1
2 1
1
0 9 7 3
1
end_operator
begin_operator
unload-truck obj12 tru2 apt2
1
1 0
1
0 9 8 1
1
end_operator
begin_operator
unload-truck obj12 tru2 pos2
1
1 1
1
0 9 8 4
1
end_operator
begin_operator
unload-truck obj12 tru3 apt3
1
0 0
1
0 9 9 2
1
end_operator
begin_operator
unload-truck obj12 tru3 pos3
1
0 1
1
0 9 9 5
1
end_operator
begin_operator
unload-truck obj13 tru1 apt1
1
2 0
1
0 8 7 0
1
end_operator
begin_operator
unload-truck obj13 tru1 pos1
1
2 1
1
0 8 7 3
1
end_operator
begin_operator
unload-truck obj13 tru2 apt2
1
1 0
1
0 8 8 1
1
end_operator
begin_operator
unload-truck obj13 tru2 pos2
1
1 1
1
0 8 8 4
1
end_operator
begin_operator
unload-truck obj13 tru3 apt3
1
0 0
1
0 8 9 2
1
end_operator
begin_operator
unload-truck obj13 tru3 pos3
1
0 1
1
0 8 9 5
1
end_operator
begin_operator
unload-truck obj21 tru1 apt1
1
2 0
1
0 7 7 0
1
end_operator
begin_operator
unload-truck obj21 tru1 pos1
1
2 1
1
0 7 7 3
1
end_operator
begin_operator
unload-truck obj21 tru2 apt2
1
1 0
1
0 7 8 1
1
end_operator
begin_operator
unload-truck obj21 tru2 pos2
1
1 1
1
0 7 8 4
1
end_operator
begin_operator
unload-truck obj21 tru3 apt3
1
0 0
1
0 7 9 2
1
end_operator
begin_operator
unload-truck obj21 tru3 pos3
1
0 1
1
0 7 9 5
1
end_operator
begin_operator
unload-truck obj23 tru1 apt1
1
2 0
1
0 6 7 0
1
end_operator
begin_operator
unload-truck obj23 tru1 pos1
1
2 1
1
0 6 7 3
1
end_operator
begin_operator
unload-truck obj23 tru2 apt2
1
1 0
1
0 6 8 1
1
end_operator
begin_operator
unload-truck obj23 tru2 pos2
1
1 1
1
0 6 8 4
1
end_operator
begin_operator
unload-truck obj23 tru3 apt3
1
0 0
1
0 6 9 2
1
end_operator
begin_operator
unload-truck obj23 tru3 pos3
1
0 1
1
0 6 9 5
1
end_operator
begin_operator
unload-truck obj32 tru1 apt1
1
2 0
1
0 5 7 0
1
end_operator
begin_operator
unload-truck obj32 tru1 pos1
1
2 1
1
0 5 7 3
1
end_operator
begin_operator
unload-truck obj32 tru2 apt2
1
1 0
1
0 5 8 1
1
end_operator
begin_operator
unload-truck obj32 tru2 pos2
1
1 1
1
0 5 8 4
1
end_operator
begin_operator
unload-truck obj32 tru3 apt3
1
0 0
1
0 5 9 2
1
end_operator
begin_operator
unload-truck obj32 tru3 pos3
1
0 1
1
0 5 9 5
1
end_operator
begin_operator
unload-truck obj33 tru1 apt1
1
2 0
1
0 4 7 0
1
end_operator
begin_operator
unload-truck obj33 tru1 pos1
1
2 1
1
0 4 7 3
1
end_operator
begin_operator
unload-truck obj33 tru2 apt2
1
1 0
1
0 4 8 1
1
end_operator
begin_operator
unload-truck obj33 tru2 pos2
1
1 1
1
0 4 8 4
1
end_operator
begin_operator
unload-truck obj33 tru3 apt3
1
0 0
1
0 4 9 2
1
end_operator
begin_operator
unload-truck obj33 tru3 pos3
1
0 1
1
0 4 9 5
1
end_operator
0

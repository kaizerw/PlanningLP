begin_version
3
end_version
begin_metric
0
end_metric
22
begin_variable
var0
-1
2
Atom home(club0)
<none of those>
end_variable
begin_variable
var1
-1
2
Atom home(heart0)
<none of those>
end_variable
begin_variable
var2
-1
2
Atom home(diamond0)
<none of those>
end_variable
begin_variable
var3
-1
2
Atom home(spade0)
<none of those>
end_variable
begin_variable
var4
-1
2
Atom bottomcol(diamond2)
NegatedAtom bottomcol(diamond2)
end_variable
begin_variable
var5
-1
2
Atom bottomcol(spade2)
NegatedAtom bottomcol(spade2)
end_variable
begin_variable
var6
-1
2
Atom bottomcol(heart2)
NegatedAtom bottomcol(heart2)
end_variable
begin_variable
var7
-1
2
Atom bottomcol(cluba)
NegatedAtom bottomcol(cluba)
end_variable
begin_variable
var8
-1
5
Atom clear(cluba)
Atom home(cluba)
Atom incell(cluba)
Atom on(heart2, cluba)
<none of those>
end_variable
begin_variable
var9
-1
2
Atom clear(diamonda)
NegatedAtom clear(diamonda)
end_variable
begin_variable
var10
-1
2
Atom clear(spadea)
NegatedAtom clear(spadea)
end_variable
begin_variable
var11
-1
6
Atom bottomcol(diamonda)
Atom home(diamonda)
Atom incell(diamonda)
Atom on(diamonda, club2)
Atom on(diamonda, hearta)
<none of those>
end_variable
begin_variable
var12
-1
2
Atom clear(hearta)
NegatedAtom clear(hearta)
end_variable
begin_variable
var13
-1
5
Atom bottomcol(hearta)
Atom home(hearta)
Atom incell(hearta)
Atom on(hearta, club2)
<none of those>
end_variable
begin_variable
var14
-1
2
Atom clear(club2)
NegatedAtom clear(club2)
end_variable
begin_variable
var15
-1
4
Atom bottomcol(spadea)
Atom home(spadea)
Atom incell(spadea)
<none of those>
end_variable
begin_variable
var16
-1
5
Atom cellspace(n0)
Atom cellspace(n1)
Atom cellspace(n2)
Atom cellspace(n3)
Atom cellspace(n4)
end_variable
begin_variable
var17
-1
5
Atom colspace(n0)
Atom colspace(n1)
Atom colspace(n2)
Atom colspace(n3)
Atom colspace(n4)
end_variable
begin_variable
var18
-1
4
Atom bottomcol(club2)
Atom home(club2)
Atom incell(club2)
<none of those>
end_variable
begin_variable
var19
-1
5
Atom clear(heart2)
Atom home(heart2)
Atom incell(heart2)
Atom on(cluba, heart2)
Atom on(spadea, heart2)
end_variable
begin_variable
var20
-1
6
Atom clear(diamond2)
Atom home(diamond2)
Atom incell(diamond2)
Atom on(club2, diamond2)
Atom on(cluba, diamond2)
Atom on(spadea, diamond2)
end_variable
begin_variable
var21
-1
6
Atom clear(spade2)
Atom home(spade2)
Atom incell(spade2)
Atom on(diamonda, spade2)
Atom on(hearta, spade2)
Atom on(spadea, spade2)
end_variable
24
begin_mutex_group
4
18 0
18 1
18 2
20 3
end_mutex_group
begin_mutex_group
3
18 0
18 2
20 3
end_mutex_group
begin_mutex_group
5
7 0
8 1
8 2
20 4
19 3
end_mutex_group
begin_mutex_group
4
7 0
8 2
20 4
19 3
end_mutex_group
begin_mutex_group
3
4 0
20 1
20 2
end_mutex_group
begin_mutex_group
2
4 0
20 2
end_mutex_group
begin_mutex_group
6
11 0
11 1
11 2
11 3
11 4
21 3
end_mutex_group
begin_mutex_group
5
11 0
11 2
11 3
11 4
21 3
end_mutex_group
begin_mutex_group
4
6 0
8 3
19 1
19 2
end_mutex_group
begin_mutex_group
3
6 0
8 3
19 2
end_mutex_group
begin_mutex_group
5
13 0
13 1
13 2
13 3
21 4
end_mutex_group
begin_mutex_group
4
13 0
13 2
13 3
21 4
end_mutex_group
begin_mutex_group
3
5 0
21 1
21 2
end_mutex_group
begin_mutex_group
2
5 0
21 2
end_mutex_group
begin_mutex_group
6
15 0
15 1
15 2
20 5
19 4
21 5
end_mutex_group
begin_mutex_group
5
15 0
15 2
20 5
19 4
21 5
end_mutex_group
begin_mutex_group
5
18 1
18 2
11 3
13 3
14 0
end_mutex_group
begin_mutex_group
4
18 2
11 3
13 3
14 0
end_mutex_group
begin_mutex_group
3
11 1
11 2
9 0
end_mutex_group
begin_mutex_group
2
11 2
9 0
end_mutex_group
begin_mutex_group
4
11 4
13 1
13 2
12 0
end_mutex_group
begin_mutex_group
3
11 4
13 2
12 0
end_mutex_group
begin_mutex_group
3
15 1
15 2
10 0
end_mutex_group
begin_mutex_group
2
15 2
10 0
end_mutex_group
begin_state
0
0
0
0
0
0
1
0
3
0
0
4
1
0
0
3
2
0
3
0
3
5
end_state
begin_goal
4
18 1
19 1
20 1
21 1
end_goal
504
begin_operator
colfromfreecell cluba diamond2 n0 n1
0
3
0 16 0 1
0 8 2 0
0 20 0 4
1
end_operator
begin_operator
colfromfreecell cluba diamond2 n1 n2
0
3
0 16 1 2
0 8 2 0
0 20 0 4
1
end_operator
begin_operator
colfromfreecell cluba diamond2 n2 n3
0
3
0 16 2 3
0 8 2 0
0 20 0 4
1
end_operator
begin_operator
colfromfreecell cluba diamond2 n3 n4
0
3
0 16 3 4
0 8 2 0
0 20 0 4
1
end_operator
begin_operator
colfromfreecell cluba heart2 n0 n1
0
3
0 16 0 1
0 8 2 0
0 19 0 3
1
end_operator
begin_operator
colfromfreecell cluba heart2 n1 n2
0
3
0 16 1 2
0 8 2 0
0 19 0 3
1
end_operator
begin_operator
colfromfreecell cluba heart2 n2 n3
0
3
0 16 2 3
0 8 2 0
0 19 0 3
1
end_operator
begin_operator
colfromfreecell cluba heart2 n3 n4
0
3
0 16 3 4
0 8 2 0
0 19 0 3
1
end_operator
begin_operator
colfromfreecell diamonda club2 n0 n1
0
4
0 11 2 3
0 16 0 1
0 14 0 1
0 9 -1 0
1
end_operator
begin_operator
colfromfreecell diamonda club2 n1 n2
0
4
0 11 2 3
0 16 1 2
0 14 0 1
0 9 -1 0
1
end_operator
begin_operator
colfromfreecell diamonda club2 n2 n3
0
4
0 11 2 3
0 16 2 3
0 14 0 1
0 9 -1 0
1
end_operator
begin_operator
colfromfreecell diamonda club2 n3 n4
0
4
0 11 2 3
0 16 3 4
0 14 0 1
0 9 -1 0
1
end_operator
begin_operator
colfromfreecell diamonda spade2 n0 n1
0
4
0 11 2 5
0 16 0 1
0 9 -1 0
0 21 0 3
1
end_operator
begin_operator
colfromfreecell diamonda spade2 n1 n2
0
4
0 11 2 5
0 16 1 2
0 9 -1 0
0 21 0 3
1
end_operator
begin_operator
colfromfreecell diamonda spade2 n2 n3
0
4
0 11 2 5
0 16 2 3
0 9 -1 0
0 21 0 3
1
end_operator
begin_operator
colfromfreecell diamonda spade2 n3 n4
0
4
0 11 2 5
0 16 3 4
0 9 -1 0
0 21 0 3
1
end_operator
begin_operator
colfromfreecell hearta club2 n0 n1
0
4
0 13 2 3
0 16 0 1
0 14 0 1
0 12 -1 0
1
end_operator
begin_operator
colfromfreecell hearta club2 n1 n2
0
4
0 13 2 3
0 16 1 2
0 14 0 1
0 12 -1 0
1
end_operator
begin_operator
colfromfreecell hearta club2 n2 n3
0
4
0 13 2 3
0 16 2 3
0 14 0 1
0 12 -1 0
1
end_operator
begin_operator
colfromfreecell hearta club2 n3 n4
0
4
0 13 2 3
0 16 3 4
0 14 0 1
0 12 -1 0
1
end_operator
begin_operator
colfromfreecell hearta spade2 n0 n1
0
4
0 13 2 4
0 16 0 1
0 12 -1 0
0 21 0 4
1
end_operator
begin_operator
colfromfreecell hearta spade2 n1 n2
0
4
0 13 2 4
0 16 1 2
0 12 -1 0
0 21 0 4
1
end_operator
begin_operator
colfromfreecell hearta spade2 n2 n3
0
4
0 13 2 4
0 16 2 3
0 12 -1 0
0 21 0 4
1
end_operator
begin_operator
colfromfreecell hearta spade2 n3 n4
0
4
0 13 2 4
0 16 3 4
0 12 -1 0
0 21 0 4
1
end_operator
begin_operator
colfromfreecell spadea diamond2 n0 n1
0
4
0 15 2 3
0 16 0 1
0 20 0 5
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea diamond2 n1 n2
0
4
0 15 2 3
0 16 1 2
0 20 0 5
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea diamond2 n2 n3
0
4
0 15 2 3
0 16 2 3
0 20 0 5
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea diamond2 n3 n4
0
4
0 15 2 3
0 16 3 4
0 20 0 5
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea heart2 n0 n1
0
4
0 15 2 3
0 16 0 1
0 19 0 4
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea heart2 n1 n2
0
4
0 15 2 3
0 16 1 2
0 19 0 4
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea heart2 n2 n3
0
4
0 15 2 3
0 16 2 3
0 19 0 4
0 10 -1 0
1
end_operator
begin_operator
colfromfreecell spadea heart2 n3 n4
0
4
0 15 2 3
0 16 3 4
0 19 0 4
0 10 -1 0
1
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n0 n1
0
3
0 18 2 1
0 16 0 1
0 8 1 4
1
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n1 n2
0
3
0 18 2 1
0 16 1 2
0 8 1 4
1
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n2 n3
0
3
0 18 2 1
0 16 2 3
0 8 1 4
1
end_operator
begin_operator
homefromfreecell club2 club n2 cluba n1 n3 n4
0
3
0 18 2 1
0 16 3 4
0 8 1 4
1
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n0 n1
0
3
0 16 0 1
0 0 0 1
0 8 2 1
1
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n1 n2
0
3
0 16 1 2
0 0 0 1
0 8 2 1
1
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n2 n3
0
3
0 16 2 3
0 0 0 1
0 8 2 1
1
end_operator
begin_operator
homefromfreecell cluba club n1 club0 n0 n3 n4
0
3
0 16 3 4
0 0 0 1
0 8 2 1
1
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n0 n1
0
3
0 11 1 5
0 16 0 1
0 20 2 1
1
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n1 n2
0
3
0 11 1 5
0 16 1 2
0 20 2 1
1
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n2 n3
0
3
0 11 1 5
0 16 2 3
0 20 2 1
1
end_operator
begin_operator
homefromfreecell diamond2 diamond n2 diamonda n1 n3 n4
0
3
0 11 1 5
0 16 3 4
0 20 2 1
1
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n0 n1
0
3
0 11 2 1
0 16 0 1
0 2 0 1
1
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n1 n2
0
3
0 11 2 1
0 16 1 2
0 2 0 1
1
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n2 n3
0
3
0 11 2 1
0 16 2 3
0 2 0 1
1
end_operator
begin_operator
homefromfreecell diamonda diamond n1 diamond0 n0 n3 n4
0
3
0 11 2 1
0 16 3 4
0 2 0 1
1
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n0 n1
0
3
0 13 1 4
0 16 0 1
0 19 2 1
1
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n1 n2
0
3
0 13 1 4
0 16 1 2
0 19 2 1
1
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n2 n3
0
3
0 13 1 4
0 16 2 3
0 19 2 1
1
end_operator
begin_operator
homefromfreecell heart2 heart n2 hearta n1 n3 n4
0
3
0 13 1 4
0 16 3 4
0 19 2 1
1
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n0 n1
0
3
0 13 2 1
0 16 0 1
0 1 0 1
1
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n1 n2
0
3
0 13 2 1
0 16 1 2
0 1 0 1
1
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n2 n3
0
3
0 13 2 1
0 16 2 3
0 1 0 1
1
end_operator
begin_operator
homefromfreecell hearta heart n1 heart0 n0 n3 n4
0
3
0 13 2 1
0 16 3 4
0 1 0 1
1
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n0 n1
0
3
0 15 1 3
0 16 0 1
0 21 2 1
1
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n1 n2
0
3
0 15 1 3
0 16 1 2
0 21 2 1
1
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n2 n3
0
3
0 15 1 3
0 16 2 3
0 21 2 1
1
end_operator
begin_operator
homefromfreecell spade2 spade n2 spadea n1 n3 n4
0
3
0 15 1 3
0 16 3 4
0 21 2 1
1
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n0 n1
0
3
0 15 2 1
0 16 0 1
0 3 0 1
1
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n1 n2
0
3
0 15 2 1
0 16 1 2
0 3 0 1
1
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n2 n3
0
3
0 15 2 1
0 16 2 3
0 3 0 1
1
end_operator
begin_operator
homefromfreecell spadea spade n1 spade0 n0 n3 n4
0
3
0 15 2 1
0 16 3 4
0 3 0 1
1
end_operator
begin_operator
move cluba diamond2 heart2
1
8 0
2
0 20 4 0
0 19 0 3
1
end_operator
begin_operator
move cluba heart2 diamond2
1
8 0
2
0 20 0 4
0 19 3 0
1
end_operator
begin_operator
move diamonda club2 spade2
1
9 0
3
0 11 3 5
0 14 -1 0
0 21 0 3
1
end_operator
begin_operator
move diamonda hearta club2
1
9 0
3
0 11 4 3
0 14 0 1
0 12 -1 0
1
end_operator
begin_operator
move diamonda hearta spade2
1
9 0
3
0 11 4 5
0 12 -1 0
0 21 0 3
1
end_operator
begin_operator
move diamonda spade2 club2
1
9 0
3
0 11 -1 3
0 14 0 1
0 21 3 0
1
end_operator
begin_operator
move hearta club2 spade2
1
12 0
3
0 13 3 4
0 14 -1 0
0 21 0 4
1
end_operator
begin_operator
move hearta spade2 club2
1
12 0
3
0 13 -1 3
0 14 0 1
0 21 4 0
1
end_operator
begin_operator
move spadea diamond2 heart2
1
10 0
2
0 20 5 0
0 19 0 4
1
end_operator
begin_operator
move spadea heart2 diamond2
1
10 0
2
0 20 0 5
0 19 4 0
1
end_operator
begin_operator
move spadea spade2 diamond2
1
10 0
2
0 20 0 5
0 21 5 0
1
end_operator
begin_operator
move spadea spade2 heart2
1
10 0
2
0 19 0 4
0 21 5 0
1
end_operator
begin_operator
move-b cluba diamond2 n0 n1
1
8 0
3
0 7 0 1
0 20 0 4
0 17 0 1
1
end_operator
begin_operator
move-b cluba diamond2 n1 n2
1
8 0
3
0 7 0 1
0 20 0 4
0 17 1 2
1
end_operator
begin_operator
move-b cluba diamond2 n2 n3
1
8 0
3
0 7 0 1
0 20 0 4
0 17 2 3
1
end_operator
begin_operator
move-b cluba diamond2 n3 n4
1
8 0
3
0 7 0 1
0 20 0 4
0 17 3 4
1
end_operator
begin_operator
move-b cluba heart2 n0 n1
1
8 0
3
0 7 0 1
0 19 0 3
0 17 0 1
1
end_operator
begin_operator
move-b cluba heart2 n1 n2
1
8 0
3
0 7 0 1
0 19 0 3
0 17 1 2
1
end_operator
begin_operator
move-b cluba heart2 n2 n3
1
8 0
3
0 7 0 1
0 19 0 3
0 17 2 3
1
end_operator
begin_operator
move-b cluba heart2 n3 n4
1
8 0
3
0 7 0 1
0 19 0 3
0 17 3 4
1
end_operator
begin_operator
move-b diamonda club2 n0 n1
1
9 0
3
0 11 0 3
0 14 0 1
0 17 0 1
1
end_operator
begin_operator
move-b diamonda club2 n1 n2
1
9 0
3
0 11 0 3
0 14 0 1
0 17 1 2
1
end_operator
begin_operator
move-b diamonda club2 n2 n3
1
9 0
3
0 11 0 3
0 14 0 1
0 17 2 3
1
end_operator
begin_operator
move-b diamonda club2 n3 n4
1
9 0
3
0 11 0 3
0 14 0 1
0 17 3 4
1
end_operator
begin_operator
move-b diamonda spade2 n0 n1
1
9 0
3
0 11 0 5
0 21 0 3
0 17 0 1
1
end_operator
begin_operator
move-b diamonda spade2 n1 n2
1
9 0
3
0 11 0 5
0 21 0 3
0 17 1 2
1
end_operator
begin_operator
move-b diamonda spade2 n2 n3
1
9 0
3
0 11 0 5
0 21 0 3
0 17 2 3
1
end_operator
begin_operator
move-b diamonda spade2 n3 n4
1
9 0
3
0 11 0 5
0 21 0 3
0 17 3 4
1
end_operator
begin_operator
move-b hearta club2 n0 n1
1
12 0
3
0 13 0 3
0 14 0 1
0 17 0 1
1
end_operator
begin_operator
move-b hearta club2 n1 n2
1
12 0
3
0 13 0 3
0 14 0 1
0 17 1 2
1
end_operator
begin_operator
move-b hearta club2 n2 n3
1
12 0
3
0 13 0 3
0 14 0 1
0 17 2 3
1
end_operator
begin_operator
move-b hearta club2 n3 n4
1
12 0
3
0 13 0 3
0 14 0 1
0 17 3 4
1
end_operator
begin_operator
move-b hearta spade2 n0 n1
1
12 0
3
0 13 0 4
0 21 0 4
0 17 0 1
1
end_operator
begin_operator
move-b hearta spade2 n1 n2
1
12 0
3
0 13 0 4
0 21 0 4
0 17 1 2
1
end_operator
begin_operator
move-b hearta spade2 n2 n3
1
12 0
3
0 13 0 4
0 21 0 4
0 17 2 3
1
end_operator
begin_operator
move-b hearta spade2 n3 n4
1
12 0
3
0 13 0 4
0 21 0 4
0 17 3 4
1
end_operator
begin_operator
move-b spadea diamond2 n0 n1
1
10 0
3
0 15 0 3
0 20 0 5
0 17 0 1
1
end_operator
begin_operator
move-b spadea diamond2 n1 n2
1
10 0
3
0 15 0 3
0 20 0 5
0 17 1 2
1
end_operator
begin_operator
move-b spadea diamond2 n2 n3
1
10 0
3
0 15 0 3
0 20 0 5
0 17 2 3
1
end_operator
begin_operator
move-b spadea diamond2 n3 n4
1
10 0
3
0 15 0 3
0 20 0 5
0 17 3 4
1
end_operator
begin_operator
move-b spadea heart2 n0 n1
1
10 0
3
0 15 0 3
0 19 0 4
0 17 0 1
1
end_operator
begin_operator
move-b spadea heart2 n1 n2
1
10 0
3
0 15 0 3
0 19 0 4
0 17 1 2
1
end_operator
begin_operator
move-b spadea heart2 n2 n3
1
10 0
3
0 15 0 3
0 19 0 4
0 17 2 3
1
end_operator
begin_operator
move-b spadea heart2 n3 n4
1
10 0
3
0 15 0 3
0 19 0 4
0 17 3 4
1
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n0 n1
0
4
0 18 2 0
0 16 0 1
0 14 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n1 n2
0
4
0 18 2 0
0 16 1 2
0 14 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n2 n3
0
4
0 18 2 0
0 16 2 3
0 14 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell club2 n1 n0 n3 n4
0
4
0 18 2 0
0 16 3 4
0 14 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n0 n1
0
4
0 18 2 0
0 16 0 1
0 14 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n1 n2
0
4
0 18 2 0
0 16 1 2
0 14 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n2 n3
0
4
0 18 2 0
0 16 2 3
0 14 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell club2 n2 n1 n3 n4
0
4
0 18 2 0
0 16 3 4
0 14 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n0 n1
0
4
0 18 2 0
0 16 0 1
0 14 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n1 n2
0
4
0 18 2 0
0 16 1 2
0 14 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n2 n3
0
4
0 18 2 0
0 16 2 3
0 14 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell club2 n3 n2 n3 n4
0
4
0 18 2 0
0 16 3 4
0 14 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n0 n1
0
4
0 18 2 0
0 16 0 1
0 14 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n1 n2
0
4
0 18 2 0
0 16 1 2
0 14 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n2 n3
0
4
0 18 2 0
0 16 2 3
0 14 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell club2 n4 n3 n3 n4
0
4
0 18 2 0
0 16 3 4
0 14 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n0 n1
0
4
0 7 -1 0
0 16 0 1
0 8 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n1 n2
0
4
0 7 -1 0
0 16 1 2
0 8 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n2 n3
0
4
0 7 -1 0
0 16 2 3
0 8 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell cluba n1 n0 n3 n4
0
4
0 7 -1 0
0 16 3 4
0 8 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n0 n1
0
4
0 7 -1 0
0 16 0 1
0 8 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n1 n2
0
4
0 7 -1 0
0 16 1 2
0 8 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n2 n3
0
4
0 7 -1 0
0 16 2 3
0 8 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell cluba n2 n1 n3 n4
0
4
0 7 -1 0
0 16 3 4
0 8 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n0 n1
0
4
0 7 -1 0
0 16 0 1
0 8 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n1 n2
0
4
0 7 -1 0
0 16 1 2
0 8 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n2 n3
0
4
0 7 -1 0
0 16 2 3
0 8 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell cluba n3 n2 n3 n4
0
4
0 7 -1 0
0 16 3 4
0 8 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n0 n1
0
4
0 7 -1 0
0 16 0 1
0 8 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n1 n2
0
4
0 7 -1 0
0 16 1 2
0 8 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n2 n3
0
4
0 7 -1 0
0 16 2 3
0 8 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell cluba n4 n3 n3 n4
0
4
0 7 -1 0
0 16 3 4
0 8 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n0 n1
0
4
0 4 -1 0
0 16 0 1
0 20 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n1 n2
0
4
0 4 -1 0
0 16 1 2
0 20 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n2 n3
0
4
0 4 -1 0
0 16 2 3
0 20 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamond2 n1 n0 n3 n4
0
4
0 4 -1 0
0 16 3 4
0 20 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n0 n1
0
4
0 4 -1 0
0 16 0 1
0 20 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n1 n2
0
4
0 4 -1 0
0 16 1 2
0 20 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n2 n3
0
4
0 4 -1 0
0 16 2 3
0 20 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamond2 n2 n1 n3 n4
0
4
0 4 -1 0
0 16 3 4
0 20 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n0 n1
0
4
0 4 -1 0
0 16 0 1
0 20 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n1 n2
0
4
0 4 -1 0
0 16 1 2
0 20 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n2 n3
0
4
0 4 -1 0
0 16 2 3
0 20 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamond2 n3 n2 n3 n4
0
4
0 4 -1 0
0 16 3 4
0 20 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n0 n1
0
4
0 4 -1 0
0 16 0 1
0 20 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n1 n2
0
4
0 4 -1 0
0 16 1 2
0 20 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n2 n3
0
4
0 4 -1 0
0 16 2 3
0 20 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamond2 n4 n3 n3 n4
0
4
0 4 -1 0
0 16 3 4
0 20 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n0 n1
0
4
0 11 2 0
0 16 0 1
0 9 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n1 n2
0
4
0 11 2 0
0 16 1 2
0 9 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n2 n3
0
4
0 11 2 0
0 16 2 3
0 9 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamonda n1 n0 n3 n4
0
4
0 11 2 0
0 16 3 4
0 9 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n0 n1
0
4
0 11 2 0
0 16 0 1
0 9 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n1 n2
0
4
0 11 2 0
0 16 1 2
0 9 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n2 n3
0
4
0 11 2 0
0 16 2 3
0 9 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamonda n2 n1 n3 n4
0
4
0 11 2 0
0 16 3 4
0 9 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n0 n1
0
4
0 11 2 0
0 16 0 1
0 9 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n1 n2
0
4
0 11 2 0
0 16 1 2
0 9 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n2 n3
0
4
0 11 2 0
0 16 2 3
0 9 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamonda n3 n2 n3 n4
0
4
0 11 2 0
0 16 3 4
0 9 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n0 n1
0
4
0 11 2 0
0 16 0 1
0 9 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n1 n2
0
4
0 11 2 0
0 16 1 2
0 9 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n2 n3
0
4
0 11 2 0
0 16 2 3
0 9 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell diamonda n4 n3 n3 n4
0
4
0 11 2 0
0 16 3 4
0 9 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n0 n1
0
4
0 6 -1 0
0 16 0 1
0 19 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n1 n2
0
4
0 6 -1 0
0 16 1 2
0 19 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n2 n3
0
4
0 6 -1 0
0 16 2 3
0 19 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell heart2 n1 n0 n3 n4
0
4
0 6 -1 0
0 16 3 4
0 19 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n0 n1
0
4
0 6 -1 0
0 16 0 1
0 19 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n1 n2
0
4
0 6 -1 0
0 16 1 2
0 19 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n2 n3
0
4
0 6 -1 0
0 16 2 3
0 19 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell heart2 n2 n1 n3 n4
0
4
0 6 -1 0
0 16 3 4
0 19 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n0 n1
0
4
0 6 -1 0
0 16 0 1
0 19 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n1 n2
0
4
0 6 -1 0
0 16 1 2
0 19 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n2 n3
0
4
0 6 -1 0
0 16 2 3
0 19 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell heart2 n3 n2 n3 n4
0
4
0 6 -1 0
0 16 3 4
0 19 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n0 n1
0
4
0 6 -1 0
0 16 0 1
0 19 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n1 n2
0
4
0 6 -1 0
0 16 1 2
0 19 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n2 n3
0
4
0 6 -1 0
0 16 2 3
0 19 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell heart2 n4 n3 n3 n4
0
4
0 6 -1 0
0 16 3 4
0 19 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n0 n1
0
4
0 13 2 0
0 16 0 1
0 12 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n1 n2
0
4
0 13 2 0
0 16 1 2
0 12 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n2 n3
0
4
0 13 2 0
0 16 2 3
0 12 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell hearta n1 n0 n3 n4
0
4
0 13 2 0
0 16 3 4
0 12 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n0 n1
0
4
0 13 2 0
0 16 0 1
0 12 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n1 n2
0
4
0 13 2 0
0 16 1 2
0 12 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n2 n3
0
4
0 13 2 0
0 16 2 3
0 12 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell hearta n2 n1 n3 n4
0
4
0 13 2 0
0 16 3 4
0 12 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n0 n1
0
4
0 13 2 0
0 16 0 1
0 12 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n1 n2
0
4
0 13 2 0
0 16 1 2
0 12 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n2 n3
0
4
0 13 2 0
0 16 2 3
0 12 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell hearta n3 n2 n3 n4
0
4
0 13 2 0
0 16 3 4
0 12 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n0 n1
0
4
0 13 2 0
0 16 0 1
0 12 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n1 n2
0
4
0 13 2 0
0 16 1 2
0 12 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n2 n3
0
4
0 13 2 0
0 16 2 3
0 12 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell hearta n4 n3 n3 n4
0
4
0 13 2 0
0 16 3 4
0 12 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n0 n1
0
4
0 5 -1 0
0 16 0 1
0 21 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n1 n2
0
4
0 5 -1 0
0 16 1 2
0 21 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n2 n3
0
4
0 5 -1 0
0 16 2 3
0 21 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spade2 n1 n0 n3 n4
0
4
0 5 -1 0
0 16 3 4
0 21 2 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n0 n1
0
4
0 5 -1 0
0 16 0 1
0 21 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n1 n2
0
4
0 5 -1 0
0 16 1 2
0 21 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n2 n3
0
4
0 5 -1 0
0 16 2 3
0 21 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spade2 n2 n1 n3 n4
0
4
0 5 -1 0
0 16 3 4
0 21 2 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n0 n1
0
4
0 5 -1 0
0 16 0 1
0 21 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n1 n2
0
4
0 5 -1 0
0 16 1 2
0 21 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n2 n3
0
4
0 5 -1 0
0 16 2 3
0 21 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spade2 n3 n2 n3 n4
0
4
0 5 -1 0
0 16 3 4
0 21 2 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n0 n1
0
4
0 5 -1 0
0 16 0 1
0 21 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n1 n2
0
4
0 5 -1 0
0 16 1 2
0 21 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n2 n3
0
4
0 5 -1 0
0 16 2 3
0 21 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spade2 n4 n3 n3 n4
0
4
0 5 -1 0
0 16 3 4
0 21 2 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n0 n1
0
4
0 15 2 0
0 16 0 1
0 10 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n1 n2
0
4
0 15 2 0
0 16 1 2
0 10 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n2 n3
0
4
0 15 2 0
0 16 2 3
0 10 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spadea n1 n0 n3 n4
0
4
0 15 2 0
0 16 3 4
0 10 -1 0
0 17 1 0
1
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n0 n1
0
4
0 15 2 0
0 16 0 1
0 10 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n1 n2
0
4
0 15 2 0
0 16 1 2
0 10 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n2 n3
0
4
0 15 2 0
0 16 2 3
0 10 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spadea n2 n1 n3 n4
0
4
0 15 2 0
0 16 3 4
0 10 -1 0
0 17 2 1
1
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n0 n1
0
4
0 15 2 0
0 16 0 1
0 10 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n1 n2
0
4
0 15 2 0
0 16 1 2
0 10 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n2 n3
0
4
0 15 2 0
0 16 2 3
0 10 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spadea n3 n2 n3 n4
0
4
0 15 2 0
0 16 3 4
0 10 -1 0
0 17 3 2
1
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n0 n1
0
4
0 15 2 0
0 16 0 1
0 10 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n1 n2
0
4
0 15 2 0
0 16 1 2
0 10 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n2 n3
0
4
0 15 2 0
0 16 2 3
0 10 -1 0
0 17 4 3
1
end_operator
begin_operator
newcolfromfreecell spadea n4 n3 n3 n4
0
4
0 15 2 0
0 16 3 4
0 10 -1 0
0 17 4 3
1
end_operator
begin_operator
sendtofree club2 diamond2 n1 n0
0
4
0 18 -1 2
0 16 1 0
0 14 0 1
0 20 3 0
1
end_operator
begin_operator
sendtofree club2 diamond2 n2 n1
0
4
0 18 -1 2
0 16 2 1
0 14 0 1
0 20 3 0
1
end_operator
begin_operator
sendtofree club2 diamond2 n3 n2
0
4
0 18 -1 2
0 16 3 2
0 14 0 1
0 20 3 0
1
end_operator
begin_operator
sendtofree club2 diamond2 n4 n3
0
4
0 18 -1 2
0 16 4 3
0 14 0 1
0 20 3 0
1
end_operator
begin_operator
sendtofree cluba diamond2 n1 n0
0
3
0 16 1 0
0 8 0 2
0 20 4 0
1
end_operator
begin_operator
sendtofree cluba diamond2 n2 n1
0
3
0 16 2 1
0 8 0 2
0 20 4 0
1
end_operator
begin_operator
sendtofree cluba diamond2 n3 n2
0
3
0 16 3 2
0 8 0 2
0 20 4 0
1
end_operator
begin_operator
sendtofree cluba diamond2 n4 n3
0
3
0 16 4 3
0 8 0 2
0 20 4 0
1
end_operator
begin_operator
sendtofree cluba heart2 n1 n0
0
3
0 16 1 0
0 8 0 2
0 19 3 0
1
end_operator
begin_operator
sendtofree cluba heart2 n2 n1
0
3
0 16 2 1
0 8 0 2
0 19 3 0
1
end_operator
begin_operator
sendtofree cluba heart2 n3 n2
0
3
0 16 3 2
0 8 0 2
0 19 3 0
1
end_operator
begin_operator
sendtofree cluba heart2 n4 n3
0
3
0 16 4 3
0 8 0 2
0 19 3 0
1
end_operator
begin_operator
sendtofree diamonda club2 n1 n0
0
4
0 11 3 2
0 16 1 0
0 14 -1 0
0 9 0 1
1
end_operator
begin_operator
sendtofree diamonda club2 n2 n1
0
4
0 11 3 2
0 16 2 1
0 14 -1 0
0 9 0 1
1
end_operator
begin_operator
sendtofree diamonda club2 n3 n2
0
4
0 11 3 2
0 16 3 2
0 14 -1 0
0 9 0 1
1
end_operator
begin_operator
sendtofree diamonda club2 n4 n3
0
4
0 11 3 2
0 16 4 3
0 14 -1 0
0 9 0 1
1
end_operator
begin_operator
sendtofree diamonda hearta n1 n0
0
4
0 11 4 2
0 16 1 0
0 9 0 1
0 12 -1 0
1
end_operator
begin_operator
sendtofree diamonda hearta n2 n1
0
4
0 11 4 2
0 16 2 1
0 9 0 1
0 12 -1 0
1
end_operator
begin_operator
sendtofree diamonda hearta n3 n2
0
4
0 11 4 2
0 16 3 2
0 9 0 1
0 12 -1 0
1
end_operator
begin_operator
sendtofree diamonda hearta n4 n3
0
4
0 11 4 2
0 16 4 3
0 9 0 1
0 12 -1 0
1
end_operator
begin_operator
sendtofree diamonda spade2 n1 n0
0
4
0 11 -1 2
0 16 1 0
0 9 0 1
0 21 3 0
1
end_operator
begin_operator
sendtofree diamonda spade2 n2 n1
0
4
0 11 -1 2
0 16 2 1
0 9 0 1
0 21 3 0
1
end_operator
begin_operator
sendtofree diamonda spade2 n3 n2
0
4
0 11 -1 2
0 16 3 2
0 9 0 1
0 21 3 0
1
end_operator
begin_operator
sendtofree diamonda spade2 n4 n3
0
4
0 11 -1 2
0 16 4 3
0 9 0 1
0 21 3 0
1
end_operator
begin_operator
sendtofree heart2 cluba n1 n0
0
3
0 16 1 0
0 8 3 0
0 19 0 2
1
end_operator
begin_operator
sendtofree heart2 cluba n2 n1
0
3
0 16 2 1
0 8 3 0
0 19 0 2
1
end_operator
begin_operator
sendtofree heart2 cluba n3 n2
0
3
0 16 3 2
0 8 3 0
0 19 0 2
1
end_operator
begin_operator
sendtofree heart2 cluba n4 n3
0
3
0 16 4 3
0 8 3 0
0 19 0 2
1
end_operator
begin_operator
sendtofree hearta club2 n1 n0
0
4
0 13 3 2
0 16 1 0
0 14 -1 0
0 12 0 1
1
end_operator
begin_operator
sendtofree hearta club2 n2 n1
0
4
0 13 3 2
0 16 2 1
0 14 -1 0
0 12 0 1
1
end_operator
begin_operator
sendtofree hearta club2 n3 n2
0
4
0 13 3 2
0 16 3 2
0 14 -1 0
0 12 0 1
1
end_operator
begin_operator
sendtofree hearta club2 n4 n3
0
4
0 13 3 2
0 16 4 3
0 14 -1 0
0 12 0 1
1
end_operator
begin_operator
sendtofree hearta spade2 n1 n0
0
4
0 13 -1 2
0 16 1 0
0 12 0 1
0 21 4 0
1
end_operator
begin_operator
sendtofree hearta spade2 n2 n1
0
4
0 13 -1 2
0 16 2 1
0 12 0 1
0 21 4 0
1
end_operator
begin_operator
sendtofree hearta spade2 n3 n2
0
4
0 13 -1 2
0 16 3 2
0 12 0 1
0 21 4 0
1
end_operator
begin_operator
sendtofree hearta spade2 n4 n3
0
4
0 13 -1 2
0 16 4 3
0 12 0 1
0 21 4 0
1
end_operator
begin_operator
sendtofree spadea diamond2 n1 n0
0
4
0 15 -1 2
0 16 1 0
0 20 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea diamond2 n2 n1
0
4
0 15 -1 2
0 16 2 1
0 20 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea diamond2 n3 n2
0
4
0 15 -1 2
0 16 3 2
0 20 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea diamond2 n4 n3
0
4
0 15 -1 2
0 16 4 3
0 20 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea heart2 n1 n0
0
4
0 15 -1 2
0 16 1 0
0 19 4 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea heart2 n2 n1
0
4
0 15 -1 2
0 16 2 1
0 19 4 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea heart2 n3 n2
0
4
0 15 -1 2
0 16 3 2
0 19 4 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea heart2 n4 n3
0
4
0 15 -1 2
0 16 4 3
0 19 4 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea spade2 n1 n0
0
4
0 15 -1 2
0 16 1 0
0 21 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea spade2 n2 n1
0
4
0 15 -1 2
0 16 2 1
0 21 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea spade2 n3 n2
0
4
0 15 -1 2
0 16 3 2
0 21 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree spadea spade2 n4 n3
0
4
0 15 -1 2
0 16 4 3
0 21 5 0
0 10 0 1
1
end_operator
begin_operator
sendtofree-b club2 n1 n0 n0 n1
0
4
0 18 0 2
0 16 1 0
0 14 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b club2 n1 n0 n1 n2
0
4
0 18 0 2
0 16 1 0
0 14 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b club2 n1 n0 n2 n3
0
4
0 18 0 2
0 16 1 0
0 14 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b club2 n1 n0 n3 n4
0
4
0 18 0 2
0 16 1 0
0 14 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b club2 n2 n1 n0 n1
0
4
0 18 0 2
0 16 2 1
0 14 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b club2 n2 n1 n1 n2
0
4
0 18 0 2
0 16 2 1
0 14 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b club2 n2 n1 n2 n3
0
4
0 18 0 2
0 16 2 1
0 14 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b club2 n2 n1 n3 n4
0
4
0 18 0 2
0 16 2 1
0 14 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b club2 n3 n2 n0 n1
0
4
0 18 0 2
0 16 3 2
0 14 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b club2 n3 n2 n1 n2
0
4
0 18 0 2
0 16 3 2
0 14 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b club2 n3 n2 n2 n3
0
4
0 18 0 2
0 16 3 2
0 14 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b club2 n3 n2 n3 n4
0
4
0 18 0 2
0 16 3 2
0 14 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b club2 n4 n3 n0 n1
0
4
0 18 0 2
0 16 4 3
0 14 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b club2 n4 n3 n1 n2
0
4
0 18 0 2
0 16 4 3
0 14 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b club2 n4 n3 n2 n3
0
4
0 18 0 2
0 16 4 3
0 14 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b club2 n4 n3 n3 n4
0
4
0 18 0 2
0 16 4 3
0 14 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b cluba n1 n0 n0 n1
0
4
0 7 0 1
0 16 1 0
0 8 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b cluba n1 n0 n1 n2
0
4
0 7 0 1
0 16 1 0
0 8 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b cluba n1 n0 n2 n3
0
4
0 7 0 1
0 16 1 0
0 8 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b cluba n1 n0 n3 n4
0
4
0 7 0 1
0 16 1 0
0 8 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b cluba n2 n1 n0 n1
0
4
0 7 0 1
0 16 2 1
0 8 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b cluba n2 n1 n1 n2
0
4
0 7 0 1
0 16 2 1
0 8 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b cluba n2 n1 n2 n3
0
4
0 7 0 1
0 16 2 1
0 8 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b cluba n2 n1 n3 n4
0
4
0 7 0 1
0 16 2 1
0 8 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b cluba n3 n2 n0 n1
0
4
0 7 0 1
0 16 3 2
0 8 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b cluba n3 n2 n1 n2
0
4
0 7 0 1
0 16 3 2
0 8 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b cluba n3 n2 n2 n3
0
4
0 7 0 1
0 16 3 2
0 8 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b cluba n3 n2 n3 n4
0
4
0 7 0 1
0 16 3 2
0 8 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b cluba n4 n3 n0 n1
0
4
0 7 0 1
0 16 4 3
0 8 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b cluba n4 n3 n1 n2
0
4
0 7 0 1
0 16 4 3
0 8 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b cluba n4 n3 n2 n3
0
4
0 7 0 1
0 16 4 3
0 8 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b cluba n4 n3 n3 n4
0
4
0 7 0 1
0 16 4 3
0 8 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n0 n1
0
4
0 4 0 1
0 16 1 0
0 20 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n1 n2
0
4
0 4 0 1
0 16 1 0
0 20 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n2 n3
0
4
0 4 0 1
0 16 1 0
0 20 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamond2 n1 n0 n3 n4
0
4
0 4 0 1
0 16 1 0
0 20 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n0 n1
0
4
0 4 0 1
0 16 2 1
0 20 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n1 n2
0
4
0 4 0 1
0 16 2 1
0 20 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n2 n3
0
4
0 4 0 1
0 16 2 1
0 20 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamond2 n2 n1 n3 n4
0
4
0 4 0 1
0 16 2 1
0 20 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n0 n1
0
4
0 4 0 1
0 16 3 2
0 20 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n1 n2
0
4
0 4 0 1
0 16 3 2
0 20 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n2 n3
0
4
0 4 0 1
0 16 3 2
0 20 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamond2 n3 n2 n3 n4
0
4
0 4 0 1
0 16 3 2
0 20 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n0 n1
0
4
0 4 0 1
0 16 4 3
0 20 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n1 n2
0
4
0 4 0 1
0 16 4 3
0 20 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n2 n3
0
4
0 4 0 1
0 16 4 3
0 20 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamond2 n4 n3 n3 n4
0
4
0 4 0 1
0 16 4 3
0 20 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n0 n1
0
4
0 11 0 2
0 16 1 0
0 9 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n1 n2
0
4
0 11 0 2
0 16 1 0
0 9 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n2 n3
0
4
0 11 0 2
0 16 1 0
0 9 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamonda n1 n0 n3 n4
0
4
0 11 0 2
0 16 1 0
0 9 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n0 n1
0
4
0 11 0 2
0 16 2 1
0 9 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n1 n2
0
4
0 11 0 2
0 16 2 1
0 9 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n2 n3
0
4
0 11 0 2
0 16 2 1
0 9 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamonda n2 n1 n3 n4
0
4
0 11 0 2
0 16 2 1
0 9 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n0 n1
0
4
0 11 0 2
0 16 3 2
0 9 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n1 n2
0
4
0 11 0 2
0 16 3 2
0 9 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n2 n3
0
4
0 11 0 2
0 16 3 2
0 9 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamonda n3 n2 n3 n4
0
4
0 11 0 2
0 16 3 2
0 9 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n0 n1
0
4
0 11 0 2
0 16 4 3
0 9 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n1 n2
0
4
0 11 0 2
0 16 4 3
0 9 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n2 n3
0
4
0 11 0 2
0 16 4 3
0 9 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b diamonda n4 n3 n3 n4
0
4
0 11 0 2
0 16 4 3
0 9 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n0 n1
0
4
0 6 0 1
0 16 1 0
0 19 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n1 n2
0
4
0 6 0 1
0 16 1 0
0 19 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n2 n3
0
4
0 6 0 1
0 16 1 0
0 19 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b heart2 n1 n0 n3 n4
0
4
0 6 0 1
0 16 1 0
0 19 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n0 n1
0
4
0 6 0 1
0 16 2 1
0 19 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n1 n2
0
4
0 6 0 1
0 16 2 1
0 19 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n2 n3
0
4
0 6 0 1
0 16 2 1
0 19 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b heart2 n2 n1 n3 n4
0
4
0 6 0 1
0 16 2 1
0 19 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n0 n1
0
4
0 6 0 1
0 16 3 2
0 19 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n1 n2
0
4
0 6 0 1
0 16 3 2
0 19 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n2 n3
0
4
0 6 0 1
0 16 3 2
0 19 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b heart2 n3 n2 n3 n4
0
4
0 6 0 1
0 16 3 2
0 19 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n0 n1
0
4
0 6 0 1
0 16 4 3
0 19 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n1 n2
0
4
0 6 0 1
0 16 4 3
0 19 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n2 n3
0
4
0 6 0 1
0 16 4 3
0 19 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b heart2 n4 n3 n3 n4
0
4
0 6 0 1
0 16 4 3
0 19 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b hearta n1 n0 n0 n1
0
4
0 13 0 2
0 16 1 0
0 12 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b hearta n1 n0 n1 n2
0
4
0 13 0 2
0 16 1 0
0 12 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b hearta n1 n0 n2 n3
0
4
0 13 0 2
0 16 1 0
0 12 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b hearta n1 n0 n3 n4
0
4
0 13 0 2
0 16 1 0
0 12 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b hearta n2 n1 n0 n1
0
4
0 13 0 2
0 16 2 1
0 12 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b hearta n2 n1 n1 n2
0
4
0 13 0 2
0 16 2 1
0 12 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b hearta n2 n1 n2 n3
0
4
0 13 0 2
0 16 2 1
0 12 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b hearta n2 n1 n3 n4
0
4
0 13 0 2
0 16 2 1
0 12 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b hearta n3 n2 n0 n1
0
4
0 13 0 2
0 16 3 2
0 12 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b hearta n3 n2 n1 n2
0
4
0 13 0 2
0 16 3 2
0 12 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b hearta n3 n2 n2 n3
0
4
0 13 0 2
0 16 3 2
0 12 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b hearta n3 n2 n3 n4
0
4
0 13 0 2
0 16 3 2
0 12 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b hearta n4 n3 n0 n1
0
4
0 13 0 2
0 16 4 3
0 12 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b hearta n4 n3 n1 n2
0
4
0 13 0 2
0 16 4 3
0 12 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b hearta n4 n3 n2 n3
0
4
0 13 0 2
0 16 4 3
0 12 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b hearta n4 n3 n3 n4
0
4
0 13 0 2
0 16 4 3
0 12 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n0 n1
0
4
0 5 0 1
0 16 1 0
0 21 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n1 n2
0
4
0 5 0 1
0 16 1 0
0 21 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n2 n3
0
4
0 5 0 1
0 16 1 0
0 21 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spade2 n1 n0 n3 n4
0
4
0 5 0 1
0 16 1 0
0 21 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n0 n1
0
4
0 5 0 1
0 16 2 1
0 21 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n1 n2
0
4
0 5 0 1
0 16 2 1
0 21 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n2 n3
0
4
0 5 0 1
0 16 2 1
0 21 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spade2 n2 n1 n3 n4
0
4
0 5 0 1
0 16 2 1
0 21 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n0 n1
0
4
0 5 0 1
0 16 3 2
0 21 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n1 n2
0
4
0 5 0 1
0 16 3 2
0 21 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n2 n3
0
4
0 5 0 1
0 16 3 2
0 21 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spade2 n3 n2 n3 n4
0
4
0 5 0 1
0 16 3 2
0 21 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n0 n1
0
4
0 5 0 1
0 16 4 3
0 21 0 2
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n1 n2
0
4
0 5 0 1
0 16 4 3
0 21 0 2
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n2 n3
0
4
0 5 0 1
0 16 4 3
0 21 0 2
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spade2 n4 n3 n3 n4
0
4
0 5 0 1
0 16 4 3
0 21 0 2
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spadea n1 n0 n0 n1
0
4
0 15 0 2
0 16 1 0
0 10 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spadea n1 n0 n1 n2
0
4
0 15 0 2
0 16 1 0
0 10 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spadea n1 n0 n2 n3
0
4
0 15 0 2
0 16 1 0
0 10 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spadea n1 n0 n3 n4
0
4
0 15 0 2
0 16 1 0
0 10 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spadea n2 n1 n0 n1
0
4
0 15 0 2
0 16 2 1
0 10 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spadea n2 n1 n1 n2
0
4
0 15 0 2
0 16 2 1
0 10 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spadea n2 n1 n2 n3
0
4
0 15 0 2
0 16 2 1
0 10 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spadea n2 n1 n3 n4
0
4
0 15 0 2
0 16 2 1
0 10 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spadea n3 n2 n0 n1
0
4
0 15 0 2
0 16 3 2
0 10 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spadea n3 n2 n1 n2
0
4
0 15 0 2
0 16 3 2
0 10 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spadea n3 n2 n2 n3
0
4
0 15 0 2
0 16 3 2
0 10 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spadea n3 n2 n3 n4
0
4
0 15 0 2
0 16 3 2
0 10 0 1
0 17 3 4
1
end_operator
begin_operator
sendtofree-b spadea n4 n3 n0 n1
0
4
0 15 0 2
0 16 4 3
0 10 0 1
0 17 0 1
1
end_operator
begin_operator
sendtofree-b spadea n4 n3 n1 n2
0
4
0 15 0 2
0 16 4 3
0 10 0 1
0 17 1 2
1
end_operator
begin_operator
sendtofree-b spadea n4 n3 n2 n3
0
4
0 15 0 2
0 16 4 3
0 10 0 1
0 17 2 3
1
end_operator
begin_operator
sendtofree-b spadea n4 n3 n3 n4
0
4
0 15 0 2
0 16 4 3
0 10 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome club2 diamond2 club n2 cluba n1
0
4
0 18 -1 1
0 14 0 1
0 8 1 4
0 20 3 0
1
end_operator
begin_operator
sendtohome cluba diamond2 club n1 club0 n0
0
3
0 0 0 1
0 8 0 1
0 20 4 0
1
end_operator
begin_operator
sendtohome cluba heart2 club n1 club0 n0
0
3
0 0 0 1
0 8 0 1
0 19 3 0
1
end_operator
begin_operator
sendtohome diamonda club2 diamond n1 diamond0 n0
0
4
0 11 3 1
0 14 -1 0
0 2 0 1
0 9 0 1
1
end_operator
begin_operator
sendtohome diamonda hearta diamond n1 diamond0 n0
0
4
0 11 4 1
0 2 0 1
0 9 0 1
0 12 -1 0
1
end_operator
begin_operator
sendtohome diamonda spade2 diamond n1 diamond0 n0
0
4
0 11 -1 1
0 2 0 1
0 9 0 1
0 21 3 0
1
end_operator
begin_operator
sendtohome heart2 cluba heart n2 hearta n1
0
3
0 13 1 4
0 8 3 0
0 19 0 1
1
end_operator
begin_operator
sendtohome hearta club2 heart n1 heart0 n0
0
4
0 13 3 1
0 14 -1 0
0 1 0 1
0 12 0 1
1
end_operator
begin_operator
sendtohome hearta spade2 heart n1 heart0 n0
0
4
0 13 -1 1
0 1 0 1
0 12 0 1
0 21 4 0
1
end_operator
begin_operator
sendtohome spadea diamond2 spade n1 spade0 n0
0
4
0 15 -1 1
0 20 5 0
0 3 0 1
0 10 0 1
1
end_operator
begin_operator
sendtohome spadea heart2 spade n1 spade0 n0
0
4
0 15 -1 1
0 19 4 0
0 3 0 1
0 10 0 1
1
end_operator
begin_operator
sendtohome spadea spade2 spade n1 spade0 n0
0
4
0 15 -1 1
0 3 0 1
0 21 5 0
0 10 0 1
1
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n0 n1
0
4
0 18 0 1
0 14 0 1
0 8 1 4
0 17 0 1
1
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n1 n2
0
4
0 18 0 1
0 14 0 1
0 8 1 4
0 17 1 2
1
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n2 n3
0
4
0 18 0 1
0 14 0 1
0 8 1 4
0 17 2 3
1
end_operator
begin_operator
sendtohome-b club2 club n2 cluba n1 n3 n4
0
4
0 18 0 1
0 14 0 1
0 8 1 4
0 17 3 4
1
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n0 n1
0
4
0 7 0 1
0 0 0 1
0 8 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n1 n2
0
4
0 7 0 1
0 0 0 1
0 8 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n2 n3
0
4
0 7 0 1
0 0 0 1
0 8 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b cluba club n1 club0 n0 n3 n4
0
4
0 7 0 1
0 0 0 1
0 8 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n0 n1
0
4
0 4 0 1
0 11 1 5
0 20 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n1 n2
0
4
0 4 0 1
0 11 1 5
0 20 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n2 n3
0
4
0 4 0 1
0 11 1 5
0 20 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b diamond2 diamond n2 diamonda n1 n3 n4
0
4
0 4 0 1
0 11 1 5
0 20 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n0 n1
0
4
0 11 0 1
0 2 0 1
0 9 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n1 n2
0
4
0 11 0 1
0 2 0 1
0 9 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n2 n3
0
4
0 11 0 1
0 2 0 1
0 9 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b diamonda diamond n1 diamond0 n0 n3 n4
0
4
0 11 0 1
0 2 0 1
0 9 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n0 n1
0
4
0 6 0 1
0 13 1 4
0 19 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n1 n2
0
4
0 6 0 1
0 13 1 4
0 19 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n2 n3
0
4
0 6 0 1
0 13 1 4
0 19 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b heart2 heart n2 hearta n1 n3 n4
0
4
0 6 0 1
0 13 1 4
0 19 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n0 n1
0
4
0 13 0 1
0 1 0 1
0 12 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n1 n2
0
4
0 13 0 1
0 1 0 1
0 12 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n2 n3
0
4
0 13 0 1
0 1 0 1
0 12 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b hearta heart n1 heart0 n0 n3 n4
0
4
0 13 0 1
0 1 0 1
0 12 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n0 n1
0
4
0 5 0 1
0 15 1 3
0 21 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n1 n2
0
4
0 5 0 1
0 15 1 3
0 21 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n2 n3
0
4
0 5 0 1
0 15 1 3
0 21 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b spade2 spade n2 spadea n1 n3 n4
0
4
0 5 0 1
0 15 1 3
0 21 0 1
0 17 3 4
1
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n0 n1
0
4
0 15 0 1
0 3 0 1
0 10 0 1
0 17 0 1
1
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n1 n2
0
4
0 15 0 1
0 3 0 1
0 10 0 1
0 17 1 2
1
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n2 n3
0
4
0 15 0 1
0 3 0 1
0 10 0 1
0 17 2 3
1
end_operator
begin_operator
sendtohome-b spadea spade n1 spade0 n0 n3 n4
0
4
0 15 0 1
0 3 0 1
0 10 0 1
0 17 3 4
1
end_operator
begin_operator
sendtonewcol club2 diamond2 n1 n0
1
14 0
3
0 18 -1 0
0 20 3 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol club2 diamond2 n2 n1
1
14 0
3
0 18 -1 0
0 20 3 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol club2 diamond2 n3 n2
1
14 0
3
0 18 -1 0
0 20 3 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol club2 diamond2 n4 n3
1
14 0
3
0 18 -1 0
0 20 3 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol cluba diamond2 n1 n0
1
8 0
3
0 7 -1 0
0 20 4 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol cluba diamond2 n2 n1
1
8 0
3
0 7 -1 0
0 20 4 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol cluba diamond2 n3 n2
1
8 0
3
0 7 -1 0
0 20 4 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol cluba diamond2 n4 n3
1
8 0
3
0 7 -1 0
0 20 4 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol cluba heart2 n1 n0
1
8 0
3
0 7 -1 0
0 19 3 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol cluba heart2 n2 n1
1
8 0
3
0 7 -1 0
0 19 3 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol cluba heart2 n3 n2
1
8 0
3
0 7 -1 0
0 19 3 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol cluba heart2 n4 n3
1
8 0
3
0 7 -1 0
0 19 3 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol diamonda club2 n1 n0
1
9 0
3
0 11 3 0
0 14 -1 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol diamonda club2 n2 n1
1
9 0
3
0 11 3 0
0 14 -1 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol diamonda club2 n3 n2
1
9 0
3
0 11 3 0
0 14 -1 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol diamonda club2 n4 n3
1
9 0
3
0 11 3 0
0 14 -1 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol diamonda hearta n1 n0
1
9 0
3
0 11 4 0
0 12 -1 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol diamonda hearta n2 n1
1
9 0
3
0 11 4 0
0 12 -1 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol diamonda hearta n3 n2
1
9 0
3
0 11 4 0
0 12 -1 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol diamonda hearta n4 n3
1
9 0
3
0 11 4 0
0 12 -1 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol diamonda spade2 n1 n0
1
9 0
3
0 11 -1 0
0 21 3 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol diamonda spade2 n2 n1
1
9 0
3
0 11 -1 0
0 21 3 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol diamonda spade2 n3 n2
1
9 0
3
0 11 -1 0
0 21 3 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol diamonda spade2 n4 n3
1
9 0
3
0 11 -1 0
0 21 3 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol heart2 cluba n1 n0
1
19 0
3
0 6 -1 0
0 8 3 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol heart2 cluba n2 n1
1
19 0
3
0 6 -1 0
0 8 3 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol heart2 cluba n3 n2
1
19 0
3
0 6 -1 0
0 8 3 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol heart2 cluba n4 n3
1
19 0
3
0 6 -1 0
0 8 3 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol hearta club2 n1 n0
1
12 0
3
0 13 3 0
0 14 -1 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol hearta club2 n2 n1
1
12 0
3
0 13 3 0
0 14 -1 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol hearta club2 n3 n2
1
12 0
3
0 13 3 0
0 14 -1 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol hearta club2 n4 n3
1
12 0
3
0 13 3 0
0 14 -1 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol hearta spade2 n1 n0
1
12 0
3
0 13 -1 0
0 21 4 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol hearta spade2 n2 n1
1
12 0
3
0 13 -1 0
0 21 4 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol hearta spade2 n3 n2
1
12 0
3
0 13 -1 0
0 21 4 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol hearta spade2 n4 n3
1
12 0
3
0 13 -1 0
0 21 4 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol spadea diamond2 n1 n0
1
10 0
3
0 15 -1 0
0 20 5 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol spadea diamond2 n2 n1
1
10 0
3
0 15 -1 0
0 20 5 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol spadea diamond2 n3 n2
1
10 0
3
0 15 -1 0
0 20 5 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol spadea diamond2 n4 n3
1
10 0
3
0 15 -1 0
0 20 5 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol spadea heart2 n1 n0
1
10 0
3
0 15 -1 0
0 19 4 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol spadea heart2 n2 n1
1
10 0
3
0 15 -1 0
0 19 4 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol spadea heart2 n3 n2
1
10 0
3
0 15 -1 0
0 19 4 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol spadea heart2 n4 n3
1
10 0
3
0 15 -1 0
0 19 4 0
0 17 4 3
1
end_operator
begin_operator
sendtonewcol spadea spade2 n1 n0
1
10 0
3
0 15 -1 0
0 21 5 0
0 17 1 0
1
end_operator
begin_operator
sendtonewcol spadea spade2 n2 n1
1
10 0
3
0 15 -1 0
0 21 5 0
0 17 2 1
1
end_operator
begin_operator
sendtonewcol spadea spade2 n3 n2
1
10 0
3
0 15 -1 0
0 21 5 0
0 17 3 2
1
end_operator
begin_operator
sendtonewcol spadea spade2 n4 n3
1
10 0
3
0 15 -1 0
0 21 5 0
0 17 4 3
1
end_operator
0

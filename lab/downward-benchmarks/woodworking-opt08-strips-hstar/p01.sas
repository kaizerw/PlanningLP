begin_version
3
end_version
begin_metric
1
end_metric
22
begin_variable
var0
-1
2
Atom colour(p2, green)
NegatedAtom colour(p2, green)
end_variable
begin_variable
var1
-1
2
Atom surface-condition(p2, smooth)
Atom surface-condition(p2, verysmooth)
end_variable
begin_variable
var2
-1
4
Atom treatment(p2, colourfragments)
Atom treatment(p2, glazed)
Atom treatment(p2, untreated)
Atom treatment(p2, varnished)
end_variable
begin_variable
var3
-1
2
Atom colour(p2, natural)
NegatedAtom colour(p2, natural)
end_variable
begin_variable
var4
-1
2
Atom colour(p2, mauve)
NegatedAtom colour(p2, mauve)
end_variable
begin_variable
var5
-1
2
Atom available(b0)
<none of those>
end_variable
begin_variable
var6
-1
3
Atom empty(highspeed-saw0)
Atom in-highspeed-saw(b0, highspeed-saw0)
Atom in-highspeed-saw(b1, highspeed-saw0)
end_variable
begin_variable
var7
-1
2
Atom available(b1)
<none of those>
end_variable
begin_variable
var8
-1
2
Atom colour(p1, mauve)
NegatedAtom colour(p1, mauve)
end_variable
begin_variable
var9
-1
2
Atom colour(p1, natural)
NegatedAtom colour(p1, natural)
end_variable
begin_variable
var10
-1
2
Atom available(p1)
NegatedAtom available(p1)
end_variable
begin_variable
var11
-1
2
Atom colour(p1, green)
NegatedAtom colour(p1, green)
end_variable
begin_variable
var12
-1
4
Atom surface-condition(p1, rough)
Atom surface-condition(p1, smooth)
Atom surface-condition(p1, verysmooth)
<none of those>
end_variable
begin_variable
var13
-1
5
Atom treatment(p1, colourfragments)
Atom treatment(p1, glazed)
Atom treatment(p1, untreated)
Atom treatment(p1, varnished)
Atom unused(p1)
end_variable
begin_variable
var14
-1
3
Atom wood(p1, beech)
Atom wood(p1, cherry)
<none of those>
end_variable
begin_variable
var15
-1
2
Atom colour(p0, green)
NegatedAtom colour(p0, green)
end_variable
begin_variable
var16
-1
2
Atom colour(p0, natural)
NegatedAtom colour(p0, natural)
end_variable
begin_variable
var17
-1
2
Atom available(p0)
NegatedAtom available(p0)
end_variable
begin_variable
var18
-1
2
Atom colour(p0, mauve)
NegatedAtom colour(p0, mauve)
end_variable
begin_variable
var19
-1
4
Atom surface-condition(p0, rough)
Atom surface-condition(p0, smooth)
Atom surface-condition(p0, verysmooth)
<none of those>
end_variable
begin_variable
var20
-1
5
Atom treatment(p0, colourfragments)
Atom treatment(p0, glazed)
Atom treatment(p0, untreated)
Atom treatment(p0, varnished)
Atom unused(p0)
end_variable
begin_variable
var21
-1
3
Atom wood(p0, beech)
Atom wood(p0, cherry)
<none of those>
end_variable
8
begin_mutex_group
2
5 0
6 1
end_mutex_group
begin_mutex_group
2
7 0
6 2
end_mutex_group
begin_mutex_group
2
17 0
20 4
end_mutex_group
begin_mutex_group
2
10 0
13 4
end_mutex_group
begin_mutex_group
4
19 0
19 1
19 2
20 4
end_mutex_group
begin_mutex_group
4
12 0
12 1
12 2
13 4
end_mutex_group
begin_mutex_group
3
20 4
21 0
21 1
end_mutex_group
begin_mutex_group
3
13 4
14 0
14 1
end_mutex_group
begin_state
1
1
0
0
1
0
0
0
1
1
1
1
3
4
2
1
1
1
1
3
4
2
end_state
begin_goal
11
4 0
10 0
11 0
12 1
13 1
14 1
17 0
18 0
19 2
20 3
21 0
end_goal
192
begin_operator
cut-board-medium b0 p0 highspeed-saw0 beech rough s3 s2 s1
1
6 1
5
0 17 -1 0
0 16 -1 0
0 19 -1 0
0 20 4 2
0 21 -1 0
10
end_operator
begin_operator
cut-board-medium b0 p1 highspeed-saw0 beech rough s3 s2 s1
1
6 1
5
0 10 -1 0
0 9 -1 0
0 12 -1 0
0 13 4 2
0 14 -1 0
10
end_operator
begin_operator
cut-board-medium b1 p0 highspeed-saw0 cherry rough s3 s2 s1
1
6 2
5
0 17 -1 0
0 16 -1 0
0 19 -1 0
0 20 4 2
0 21 -1 1
10
end_operator
begin_operator
cut-board-medium b1 p1 highspeed-saw0 cherry rough s3 s2 s1
1
6 2
5
0 10 -1 0
0 9 -1 0
0 12 -1 0
0 13 4 2
0 14 -1 1
10
end_operator
begin_operator
do-glaze p0 glazer0 green
1
17 0
3
0 15 -1 0
0 16 -1 1
0 20 2 1
15
end_operator
begin_operator
do-glaze p0 glazer0 mauve
1
17 0
3
0 18 -1 0
0 16 -1 1
0 20 2 1
15
end_operator
begin_operator
do-glaze p1 glazer0 green
1
10 0
3
0 11 -1 0
0 9 -1 1
0 13 2 1
15
end_operator
begin_operator
do-glaze p1 glazer0 mauve
1
10 0
3
0 8 -1 0
0 9 -1 1
0 13 2 1
15
end_operator
begin_operator
do-glaze p2 glazer0 green
0
3
0 0 -1 0
0 3 -1 1
0 2 2 1
10
end_operator
begin_operator
do-glaze p2 glazer0 mauve
0
3
0 4 -1 0
0 3 -1 1
0 2 2 1
10
end_operator
begin_operator
do-grind p0 grinder0 smooth green colourfragments untreated
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 1 2
0 20 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth green glazed untreated
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 1 2
0 20 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth green untreated untreated
2
17 0
20 2
3
0 15 0 1
0 16 -1 0
0 19 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth green varnished colourfragments
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 1 2
0 20 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve colourfragments untreated
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 1 2
0 20 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve glazed untreated
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 1 2
0 20 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve untreated untreated
2
17 0
20 2
3
0 18 0 1
0 16 -1 0
0 19 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve varnished colourfragments
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 1 2
0 20 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural colourfragments untreated
2
17 0
16 0
2
0 19 1 2
0 20 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural glazed untreated
2
17 0
16 0
2
0 19 1 2
0 20 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural untreated untreated
3
17 0
16 0
20 2
1
0 19 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural varnished colourfragments
2
17 0
16 0
2
0 19 1 2
0 20 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth green colourfragments untreated
2
17 0
19 2
3
0 15 0 1
0 16 -1 0
0 20 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth green glazed untreated
2
17 0
19 2
3
0 15 0 1
0 16 -1 0
0 20 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth green untreated untreated
3
17 0
19 2
20 2
2
0 15 0 1
0 16 -1 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth green varnished colourfragments
2
17 0
19 2
3
0 15 0 1
0 16 -1 0
0 20 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve colourfragments untreated
2
17 0
19 2
3
0 18 0 1
0 16 -1 0
0 20 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve glazed untreated
2
17 0
19 2
3
0 18 0 1
0 16 -1 0
0 20 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve untreated untreated
3
17 0
19 2
20 2
2
0 18 0 1
0 16 -1 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve varnished colourfragments
2
17 0
19 2
3
0 18 0 1
0 16 -1 0
0 20 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural colourfragments untreated
3
17 0
16 0
19 2
1
0 20 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural glazed untreated
3
17 0
16 0
19 2
1
0 20 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural varnished colourfragments
3
17 0
16 0
19 2
1
0 20 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 smooth green colourfragments untreated
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 1 2
0 13 0 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth green glazed untreated
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 1 2
0 13 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth green untreated untreated
2
10 0
13 2
3
0 11 0 1
0 9 -1 0
0 12 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth green varnished colourfragments
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 1 2
0 13 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve colourfragments untreated
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 1 2
0 13 0 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve glazed untreated
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 1 2
0 13 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve untreated untreated
2
10 0
13 2
3
0 8 0 1
0 9 -1 0
0 12 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve varnished colourfragments
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 1 2
0 13 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 smooth natural colourfragments untreated
2
10 0
9 0
2
0 12 1 2
0 13 0 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth natural glazed untreated
2
10 0
9 0
2
0 12 1 2
0 13 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth natural untreated untreated
3
10 0
9 0
13 2
1
0 12 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 smooth natural varnished colourfragments
2
10 0
9 0
2
0 12 1 2
0 13 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green colourfragments untreated
2
10 0
12 2
3
0 11 0 1
0 9 -1 0
0 13 0 2
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green glazed untreated
2
10 0
12 2
3
0 11 0 1
0 9 -1 0
0 13 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green untreated untreated
3
10 0
12 2
13 2
2
0 11 0 1
0 9 -1 0
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green varnished colourfragments
2
10 0
12 2
3
0 11 0 1
0 9 -1 0
0 13 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve colourfragments untreated
2
10 0
12 2
3
0 8 0 1
0 9 -1 0
0 13 0 2
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve glazed untreated
2
10 0
12 2
3
0 8 0 1
0 9 -1 0
0 13 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve untreated untreated
3
10 0
12 2
13 2
2
0 8 0 1
0 9 -1 0
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve varnished colourfragments
2
10 0
12 2
3
0 8 0 1
0 9 -1 0
0 13 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural colourfragments untreated
3
10 0
9 0
12 2
1
0 13 0 2
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural glazed untreated
3
10 0
9 0
12 2
1
0 13 1 2
30
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural varnished colourfragments
3
10 0
9 0
12 2
1
0 13 3 0
30
end_operator
begin_operator
do-grind p2 grinder0 smooth green colourfragments untreated
0
4
0 0 0 1
0 3 -1 0
0 1 0 1
0 2 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth green glazed untreated
0
4
0 0 0 1
0 3 -1 0
0 1 0 1
0 2 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth green untreated untreated
1
2 2
3
0 0 0 1
0 3 -1 0
0 1 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 smooth green varnished colourfragments
0
4
0 0 0 1
0 3 -1 0
0 1 0 1
0 2 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve colourfragments untreated
0
4
0 4 0 1
0 3 -1 0
0 1 0 1
0 2 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve glazed untreated
0
4
0 4 0 1
0 3 -1 0
0 1 0 1
0 2 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve untreated untreated
1
2 2
3
0 4 0 1
0 3 -1 0
0 1 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve varnished colourfragments
0
4
0 4 0 1
0 3 -1 0
0 1 0 1
0 2 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural colourfragments untreated
1
3 0
2
0 1 0 1
0 2 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural glazed untreated
1
3 0
2
0 1 0 1
0 2 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural untreated untreated
2
3 0
2 2
1
0 1 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural varnished colourfragments
1
3 0
2
0 1 0 1
0 2 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth green colourfragments untreated
1
1 1
3
0 0 0 1
0 3 -1 0
0 2 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth green glazed untreated
1
1 1
3
0 0 0 1
0 3 -1 0
0 2 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth green untreated untreated
2
1 1
2 2
2
0 0 0 1
0 3 -1 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth green varnished colourfragments
1
1 1
3
0 0 0 1
0 3 -1 0
0 2 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve colourfragments untreated
1
1 1
3
0 4 0 1
0 3 -1 0
0 2 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve glazed untreated
1
1 1
3
0 4 0 1
0 3 -1 0
0 2 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve untreated untreated
2
1 1
2 2
2
0 4 0 1
0 3 -1 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve varnished colourfragments
1
1 1
3
0 4 0 1
0 3 -1 0
0 2 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural colourfragments untreated
2
3 0
1 1
1
0 2 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural glazed untreated
2
3 0
1 1
1
0 2 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural varnished colourfragments
2
3 0
1 1
1
0 2 3 0
15
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 mauve smooth
2
17 0
19 1
3
0 18 -1 0
0 16 -1 1
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 mauve verysmooth
2
17 0
19 2
3
0 18 -1 0
0 16 -1 1
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 mauve smooth
2
10 0
12 1
3
0 8 -1 0
0 9 -1 1
0 13 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 mauve verysmooth
2
10 0
12 2
3
0 8 -1 0
0 9 -1 1
0 13 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 mauve smooth
1
1 0
3
0 4 -1 0
0 3 -1 1
0 2 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 mauve verysmooth
1
1 1
3
0 4 -1 0
0 3 -1 1
0 2 2 3
10
end_operator
begin_operator
do-plane p0 planer0 rough green colourfragments
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 0 1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 rough green glazed
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 0 1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 rough green untreated
2
17 0
20 2
3
0 15 0 1
0 16 -1 0
0 19 0 1
20
end_operator
begin_operator
do-plane p0 planer0 rough green varnished
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 0 1
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve colourfragments
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 0 1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve glazed
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 0 1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve untreated
2
17 0
20 2
3
0 18 0 1
0 16 -1 0
0 19 0 1
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve varnished
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 0 1
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 rough natural colourfragments
2
17 0
16 0
2
0 19 0 1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 rough natural glazed
2
17 0
16 0
2
0 19 0 1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 rough natural untreated
3
17 0
16 0
20 2
1
0 19 0 1
20
end_operator
begin_operator
do-plane p0 planer0 rough natural varnished
2
17 0
16 0
2
0 19 0 1
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth green colourfragments
2
17 0
19 1
3
0 15 0 1
0 16 -1 0
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth green glazed
2
17 0
19 1
3
0 15 0 1
0 16 -1 0
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth green untreated
3
17 0
19 1
20 2
2
0 15 0 1
0 16 -1 0
20
end_operator
begin_operator
do-plane p0 planer0 smooth green varnished
2
17 0
19 1
3
0 15 0 1
0 16 -1 0
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve colourfragments
2
17 0
19 1
3
0 18 0 1
0 16 -1 0
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve glazed
2
17 0
19 1
3
0 18 0 1
0 16 -1 0
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve untreated
3
17 0
19 1
20 2
2
0 18 0 1
0 16 -1 0
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve varnished
2
17 0
19 1
3
0 18 0 1
0 16 -1 0
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth natural colourfragments
3
17 0
16 0
19 1
1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth natural glazed
3
17 0
16 0
19 1
1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth natural varnished
3
17 0
16 0
19 1
1
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth green colourfragments
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 2 1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth green glazed
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 2 1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth green untreated
2
17 0
20 2
3
0 15 0 1
0 16 -1 0
0 19 2 1
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth green varnished
1
17 0
4
0 15 0 1
0 16 -1 0
0 19 2 1
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve colourfragments
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 2 1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve glazed
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 2 1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve untreated
2
17 0
20 2
3
0 18 0 1
0 16 -1 0
0 19 2 1
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve varnished
1
17 0
4
0 18 0 1
0 16 -1 0
0 19 2 1
0 20 3 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural colourfragments
2
17 0
16 0
2
0 19 2 1
0 20 0 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural glazed
2
17 0
16 0
2
0 19 2 1
0 20 1 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural untreated
3
17 0
16 0
20 2
1
0 19 2 1
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural varnished
2
17 0
16 0
2
0 19 2 1
0 20 3 2
20
end_operator
begin_operator
do-plane p1 planer0 rough green colourfragments
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 0 1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 rough green glazed
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 0 1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 rough green untreated
2
10 0
13 2
3
0 11 0 1
0 9 -1 0
0 12 0 1
20
end_operator
begin_operator
do-plane p1 planer0 rough green varnished
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 0 1
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 rough mauve colourfragments
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 0 1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 rough mauve glazed
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 0 1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 rough mauve untreated
2
10 0
13 2
3
0 8 0 1
0 9 -1 0
0 12 0 1
20
end_operator
begin_operator
do-plane p1 planer0 rough mauve varnished
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 0 1
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 rough natural colourfragments
2
10 0
9 0
2
0 12 0 1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 rough natural glazed
2
10 0
9 0
2
0 12 0 1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 rough natural untreated
3
10 0
9 0
13 2
1
0 12 0 1
20
end_operator
begin_operator
do-plane p1 planer0 rough natural varnished
2
10 0
9 0
2
0 12 0 1
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth green colourfragments
2
10 0
12 1
3
0 11 0 1
0 9 -1 0
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth green glazed
2
10 0
12 1
3
0 11 0 1
0 9 -1 0
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth green untreated
3
10 0
12 1
13 2
2
0 11 0 1
0 9 -1 0
20
end_operator
begin_operator
do-plane p1 planer0 smooth green varnished
2
10 0
12 1
3
0 11 0 1
0 9 -1 0
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth mauve colourfragments
2
10 0
12 1
3
0 8 0 1
0 9 -1 0
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth mauve glazed
2
10 0
12 1
3
0 8 0 1
0 9 -1 0
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth mauve untreated
3
10 0
12 1
13 2
2
0 8 0 1
0 9 -1 0
20
end_operator
begin_operator
do-plane p1 planer0 smooth mauve varnished
2
10 0
12 1
3
0 8 0 1
0 9 -1 0
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth natural colourfragments
3
10 0
9 0
12 1
1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth natural glazed
3
10 0
9 0
12 1
1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 smooth natural varnished
3
10 0
9 0
12 1
1
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth green colourfragments
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 2 1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth green glazed
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 2 1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth green untreated
2
10 0
13 2
3
0 11 0 1
0 9 -1 0
0 12 2 1
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth green varnished
1
10 0
4
0 11 0 1
0 9 -1 0
0 12 2 1
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve colourfragments
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 2 1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve glazed
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 2 1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve untreated
2
10 0
13 2
3
0 8 0 1
0 9 -1 0
0 12 2 1
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve varnished
1
10 0
4
0 8 0 1
0 9 -1 0
0 12 2 1
0 13 3 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural colourfragments
2
10 0
9 0
2
0 12 2 1
0 13 0 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural glazed
2
10 0
9 0
2
0 12 2 1
0 13 1 2
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural untreated
3
10 0
9 0
13 2
1
0 12 2 1
20
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural varnished
2
10 0
9 0
2
0 12 2 1
0 13 3 2
20
end_operator
begin_operator
do-plane p2 planer0 smooth green colourfragments
1
1 0
3
0 0 0 1
0 3 -1 0
0 2 0 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth green glazed
1
1 0
3
0 0 0 1
0 3 -1 0
0 2 1 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth green untreated
2
1 0
2 2
2
0 0 0 1
0 3 -1 0
10
end_operator
begin_operator
do-plane p2 planer0 smooth green varnished
1
1 0
3
0 0 0 1
0 3 -1 0
0 2 3 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve colourfragments
1
1 0
3
0 4 0 1
0 3 -1 0
0 2 0 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve glazed
1
1 0
3
0 4 0 1
0 3 -1 0
0 2 1 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve untreated
2
1 0
2 2
2
0 4 0 1
0 3 -1 0
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve varnished
1
1 0
3
0 4 0 1
0 3 -1 0
0 2 3 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth natural colourfragments
2
3 0
1 0
1
0 2 0 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth natural glazed
2
3 0
1 0
1
0 2 1 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth natural varnished
2
3 0
1 0
1
0 2 3 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth green colourfragments
0
4
0 0 0 1
0 3 -1 0
0 1 1 0
0 2 0 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth green glazed
0
4
0 0 0 1
0 3 -1 0
0 1 1 0
0 2 1 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth green untreated
1
2 2
3
0 0 0 1
0 3 -1 0
0 1 1 0
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth green varnished
0
4
0 0 0 1
0 3 -1 0
0 1 1 0
0 2 3 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve colourfragments
0
4
0 4 0 1
0 3 -1 0
0 1 1 0
0 2 0 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve glazed
0
4
0 4 0 1
0 3 -1 0
0 1 1 0
0 2 1 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve untreated
1
2 2
3
0 4 0 1
0 3 -1 0
0 1 1 0
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve varnished
0
4
0 4 0 1
0 3 -1 0
0 1 1 0
0 2 3 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural colourfragments
1
3 0
2
0 1 1 0
0 2 0 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural glazed
1
3 0
2
0 1 1 0
0 2 1 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural untreated
2
3 0
2 2
1
0 1 1 0
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural varnished
1
3 0
2
0 1 1 0
0 2 3 2
10
end_operator
begin_operator
do-saw-medium b0 p0 saw0 beech rough s3 s2 s1
1
5 0
5
0 17 -1 0
0 16 -1 0
0 19 -1 0
0 20 4 2
0 21 -1 0
30
end_operator
begin_operator
do-saw-medium b0 p1 saw0 beech rough s3 s2 s1
1
5 0
5
0 10 -1 0
0 9 -1 0
0 12 -1 0
0 13 4 2
0 14 -1 0
30
end_operator
begin_operator
do-saw-medium b1 p0 saw0 cherry rough s3 s2 s1
1
7 0
5
0 17 -1 0
0 16 -1 0
0 19 -1 0
0 20 4 2
0 21 -1 1
30
end_operator
begin_operator
do-saw-medium b1 p1 saw0 cherry rough s3 s2 s1
1
7 0
5
0 10 -1 0
0 9 -1 0
0 12 -1 0
0 13 4 2
0 14 -1 1
30
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 mauve smooth
2
17 0
19 1
3
0 18 -1 0
0 16 -1 1
0 20 2 3
10
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 mauve verysmooth
2
17 0
19 2
3
0 18 -1 0
0 16 -1 1
0 20 2 3
10
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 mauve smooth
2
10 0
12 1
3
0 8 -1 0
0 9 -1 1
0 13 2 3
10
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 mauve verysmooth
2
10 0
12 2
3
0 8 -1 0
0 9 -1 1
0 13 2 3
10
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 mauve smooth
1
1 0
3
0 4 -1 0
0 3 -1 1
0 2 2 3
5
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 mauve verysmooth
1
1 1
3
0 4 -1 0
0 3 -1 1
0 2 2 3
5
end_operator
begin_operator
load-highspeed-saw b0 highspeed-saw0
0
2
0 5 0 1
0 6 0 1
30
end_operator
begin_operator
load-highspeed-saw b1 highspeed-saw0
0
2
0 7 0 1
0 6 0 2
30
end_operator
begin_operator
unload-highspeed-saw b0 highspeed-saw0
0
2
0 5 -1 0
0 6 1 0
10
end_operator
begin_operator
unload-highspeed-saw b1 highspeed-saw0
0
2
0 7 -1 0
0 6 2 0
10
end_operator
0

begin_version
3
end_version
begin_metric
1
end_metric
21
begin_variable
var0
-1
2
Atom colour(p1, blue)
NegatedAtom colour(p1, blue)
end_variable
begin_variable
var1
-1
2
Atom colour(p1, red)
NegatedAtom colour(p1, red)
end_variable
begin_variable
var2
-1
4
Atom treatment(p1, colourfragments)
Atom treatment(p1, glazed)
Atom treatment(p1, untreated)
Atom treatment(p1, varnished)
end_variable
begin_variable
var3
-1
2
Atom colour(p1, natural)
NegatedAtom colour(p1, natural)
end_variable
begin_variable
var4
-1
3
Atom surface-condition(p1, rough)
Atom surface-condition(p1, smooth)
Atom surface-condition(p1, verysmooth)
end_variable
begin_variable
var5
-1
2
Atom available(b0)
Atom in-highspeed-saw(b0, highspeed-saw0)
end_variable
begin_variable
var6
-1
2
Atom empty(highspeed-saw0)
NegatedAtom empty(highspeed-saw0)
end_variable
begin_variable
var7
-1
2
Atom boardsize(b0, s3)
NegatedAtom boardsize(b0, s3)
end_variable
begin_variable
var8
-1
2
Atom boardsize(b0, s2)
NegatedAtom boardsize(b0, s2)
end_variable
begin_variable
var9
-1
2
Atom boardsize(b0, s1)
NegatedAtom boardsize(b0, s1)
end_variable
begin_variable
var10
-1
3
Atom surface-condition(p0, smooth)
Atom surface-condition(p0, verysmooth)
<none of those>
end_variable
begin_variable
var11
-1
2
Atom colour(p0, red)
NegatedAtom colour(p0, red)
end_variable
begin_variable
var12
-1
2
Atom colour(p2, natural)
NegatedAtom colour(p2, natural)
end_variable
begin_variable
var13
-1
2
Atom available(p2)
NegatedAtom available(p2)
end_variable
begin_variable
var14
-1
2
Atom colour(p2, red)
NegatedAtom colour(p2, red)
end_variable
begin_variable
var15
-1
2
Atom available(p0)
NegatedAtom available(p0)
end_variable
begin_variable
var16
-1
3
Atom surface-condition(p2, smooth)
Atom surface-condition(p2, verysmooth)
<none of those>
end_variable
begin_variable
var17
-1
5
Atom treatment(p2, colourfragments)
Atom treatment(p2, glazed)
Atom treatment(p2, untreated)
Atom treatment(p2, varnished)
Atom unused(p2)
end_variable
begin_variable
var18
-1
5
Atom treatment(p0, colourfragments)
Atom treatment(p0, glazed)
Atom treatment(p0, untreated)
Atom treatment(p0, varnished)
Atom unused(p0)
end_variable
begin_variable
var19
-1
2
Atom colour(p0, natural)
NegatedAtom colour(p0, natural)
end_variable
begin_variable
var20
-1
2
Atom wood(p2, oak)
NegatedAtom wood(p2, oak)
end_variable
6
begin_mutex_group
2
15 0
18 4
end_mutex_group
begin_mutex_group
2
13 0
17 4
end_mutex_group
begin_mutex_group
2
5 1
6 0
end_mutex_group
begin_mutex_group
3
10 0
10 1
18 4
end_mutex_group
begin_mutex_group
3
16 0
16 1
17 4
end_mutex_group
begin_mutex_group
2
17 4
20 0
end_mutex_group
begin_state
0
1
3
1
0
0
0
1
1
1
2
1
1
1
1
1
2
4
4
1
1
end_state
begin_goal
9
4 1
13 0
14 0
15 0
16 0
17 3
18 3
19 0
20 0
end_goal
159
begin_operator
cut-board-large b0 p2 highspeed-saw0 oak smooth s3 s1 s2 s0
2
5 1
7 0
5
0 13 -1 0
0 12 -1 0
0 16 -1 0
0 17 4 2
0 20 -1 0
10
end_operator
begin_operator
cut-board-large b0 p2 highspeed-saw0 oak smooth s4 s2 s3 s1
1
5 1
6
0 13 -1 0
0 9 -1 0
0 12 -1 0
0 16 -1 0
0 17 4 2
0 20 -1 0
10
end_operator
begin_operator
cut-board-small b0 p0 highspeed-saw0 oak smooth s1 s0
2
5 1
9 0
4
0 15 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
10
end_operator
begin_operator
cut-board-small b0 p0 highspeed-saw0 oak smooth s2 s1
2
5 1
8 0
5
0 15 -1 0
0 9 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
10
end_operator
begin_operator
cut-board-small b0 p0 highspeed-saw0 oak smooth s3 s2
2
5 1
7 0
5
0 15 -1 0
0 8 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
10
end_operator
begin_operator
cut-board-small b0 p0 highspeed-saw0 oak smooth s4 s3
1
5 1
5
0 15 -1 0
0 7 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
10
end_operator
begin_operator
do-glaze p0 glazer0 red
1
15 0
3
0 19 -1 1
0 11 -1 0
0 18 2 1
10
end_operator
begin_operator
do-glaze p1 glazer0 red
0
3
0 3 -1 1
0 1 -1 0
0 2 2 1
20
end_operator
begin_operator
do-glaze p2 glazer0 red
1
13 0
3
0 12 -1 1
0 14 -1 0
0 17 2 1
20
end_operator
begin_operator
do-grind p0 grinder0 smooth natural colourfragments untreated
2
15 0
19 0
2
0 10 0 1
0 18 0 2
15
end_operator
begin_operator
do-grind p0 grinder0 smooth natural glazed untreated
2
15 0
19 0
2
0 10 0 1
0 18 1 2
15
end_operator
begin_operator
do-grind p0 grinder0 smooth natural untreated untreated
3
15 0
19 0
18 2
1
0 10 0 1
15
end_operator
begin_operator
do-grind p0 grinder0 smooth natural varnished colourfragments
2
15 0
19 0
2
0 10 0 1
0 18 3 0
15
end_operator
begin_operator
do-grind p0 grinder0 smooth red colourfragments untreated
1
15 0
4
0 19 -1 0
0 11 0 1
0 10 0 1
0 18 0 2
15
end_operator
begin_operator
do-grind p0 grinder0 smooth red glazed untreated
1
15 0
4
0 19 -1 0
0 11 0 1
0 10 0 1
0 18 1 2
15
end_operator
begin_operator
do-grind p0 grinder0 smooth red untreated untreated
2
15 0
18 2
3
0 19 -1 0
0 11 0 1
0 10 0 1
15
end_operator
begin_operator
do-grind p0 grinder0 smooth red varnished colourfragments
1
15 0
4
0 19 -1 0
0 11 0 1
0 10 0 1
0 18 3 0
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural colourfragments untreated
3
15 0
19 0
10 1
1
0 18 0 2
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural glazed untreated
3
15 0
19 0
10 1
1
0 18 1 2
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural varnished colourfragments
3
15 0
19 0
10 1
1
0 18 3 0
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth red colourfragments untreated
2
15 0
10 1
3
0 19 -1 0
0 11 0 1
0 18 0 2
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth red glazed untreated
2
15 0
10 1
3
0 19 -1 0
0 11 0 1
0 18 1 2
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth red untreated untreated
3
15 0
10 1
18 2
2
0 19 -1 0
0 11 0 1
15
end_operator
begin_operator
do-grind p0 grinder0 verysmooth red varnished colourfragments
2
15 0
10 1
3
0 19 -1 0
0 11 0 1
0 18 3 0
15
end_operator
begin_operator
do-grind p1 grinder0 smooth blue colourfragments untreated
0
4
0 0 0 1
0 3 -1 0
0 4 1 2
0 2 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth blue glazed untreated
0
4
0 0 0 1
0 3 -1 0
0 4 1 2
0 2 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth blue untreated untreated
1
2 2
3
0 0 0 1
0 3 -1 0
0 4 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth blue varnished colourfragments
0
4
0 0 0 1
0 3 -1 0
0 4 1 2
0 2 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural colourfragments untreated
1
3 0
2
0 4 1 2
0 2 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural glazed untreated
1
3 0
2
0 4 1 2
0 2 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural untreated untreated
2
3 0
2 2
1
0 4 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural varnished colourfragments
1
3 0
2
0 4 1 2
0 2 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 smooth red colourfragments untreated
0
4
0 3 -1 0
0 1 0 1
0 4 1 2
0 2 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth red glazed untreated
0
4
0 3 -1 0
0 1 0 1
0 4 1 2
0 2 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth red untreated untreated
1
2 2
3
0 3 -1 0
0 1 0 1
0 4 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth red varnished colourfragments
0
4
0 3 -1 0
0 1 0 1
0 4 1 2
0 2 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth blue colourfragments untreated
1
4 2
3
0 0 0 1
0 3 -1 0
0 2 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth blue glazed untreated
1
4 2
3
0 0 0 1
0 3 -1 0
0 2 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth blue untreated untreated
2
4 2
2 2
2
0 0 0 1
0 3 -1 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth blue varnished colourfragments
1
4 2
3
0 0 0 1
0 3 -1 0
0 2 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural colourfragments untreated
2
3 0
4 2
1
0 2 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural glazed untreated
2
3 0
4 2
1
0 2 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural varnished colourfragments
2
3 0
4 2
1
0 2 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth red colourfragments untreated
1
4 2
3
0 3 -1 0
0 1 0 1
0 2 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth red glazed untreated
1
4 2
3
0 3 -1 0
0 1 0 1
0 2 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth red untreated untreated
2
4 2
2 2
2
0 3 -1 0
0 1 0 1
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth red varnished colourfragments
1
4 2
3
0 3 -1 0
0 1 0 1
0 2 3 0
45
end_operator
begin_operator
do-grind p2 grinder0 smooth natural colourfragments untreated
2
13 0
12 0
2
0 16 0 1
0 17 0 2
45
end_operator
begin_operator
do-grind p2 grinder0 smooth natural glazed untreated
2
13 0
12 0
2
0 16 0 1
0 17 1 2
45
end_operator
begin_operator
do-grind p2 grinder0 smooth natural untreated untreated
3
13 0
12 0
17 2
1
0 16 0 1
45
end_operator
begin_operator
do-grind p2 grinder0 smooth natural varnished colourfragments
2
13 0
12 0
2
0 16 0 1
0 17 3 0
45
end_operator
begin_operator
do-grind p2 grinder0 smooth red colourfragments untreated
1
13 0
4
0 12 -1 0
0 14 0 1
0 16 0 1
0 17 0 2
45
end_operator
begin_operator
do-grind p2 grinder0 smooth red glazed untreated
1
13 0
4
0 12 -1 0
0 14 0 1
0 16 0 1
0 17 1 2
45
end_operator
begin_operator
do-grind p2 grinder0 smooth red untreated untreated
2
13 0
17 2
3
0 12 -1 0
0 14 0 1
0 16 0 1
45
end_operator
begin_operator
do-grind p2 grinder0 smooth red varnished colourfragments
1
13 0
4
0 12 -1 0
0 14 0 1
0 16 0 1
0 17 3 0
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural colourfragments untreated
3
13 0
12 0
16 1
1
0 17 0 2
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural glazed untreated
3
13 0
12 0
16 1
1
0 17 1 2
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural varnished colourfragments
3
13 0
12 0
16 1
1
0 17 3 0
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth red colourfragments untreated
2
13 0
16 1
3
0 12 -1 0
0 14 0 1
0 17 0 2
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth red glazed untreated
2
13 0
16 1
3
0 12 -1 0
0 14 0 1
0 17 1 2
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth red untreated untreated
3
13 0
16 1
17 2
2
0 12 -1 0
0 14 0 1
45
end_operator
begin_operator
do-grind p2 grinder0 verysmooth red varnished colourfragments
2
13 0
16 1
3
0 12 -1 0
0 14 0 1
0 17 3 0
45
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 natural smooth
2
15 0
10 0
2
0 19 -1 0
0 18 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 natural verysmooth
2
15 0
10 1
2
0 19 -1 0
0 18 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 red smooth
2
15 0
10 0
3
0 19 -1 1
0 11 -1 0
0 18 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 red verysmooth
2
15 0
10 1
3
0 19 -1 1
0 11 -1 0
0 18 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 natural smooth
1
4 1
2
0 3 -1 0
0 2 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 natural verysmooth
1
4 2
2
0 3 -1 0
0 2 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 red smooth
1
4 1
3
0 3 -1 1
0 1 -1 0
0 2 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 red verysmooth
1
4 2
3
0 3 -1 1
0 1 -1 0
0 2 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 natural smooth
2
13 0
16 0
2
0 12 -1 0
0 17 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 natural verysmooth
2
13 0
16 1
2
0 12 -1 0
0 17 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 red smooth
2
13 0
16 0
3
0 12 -1 1
0 14 -1 0
0 17 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 red verysmooth
2
13 0
16 1
3
0 12 -1 1
0 14 -1 0
0 17 2 3
10
end_operator
begin_operator
do-plane p0 planer0 smooth natural colourfragments
3
15 0
19 0
10 0
1
0 18 0 2
10
end_operator
begin_operator
do-plane p0 planer0 smooth natural glazed
3
15 0
19 0
10 0
1
0 18 1 2
10
end_operator
begin_operator
do-plane p0 planer0 smooth natural varnished
3
15 0
19 0
10 0
1
0 18 3 2
10
end_operator
begin_operator
do-plane p0 planer0 smooth red colourfragments
2
15 0
10 0
3
0 19 -1 0
0 11 0 1
0 18 0 2
10
end_operator
begin_operator
do-plane p0 planer0 smooth red glazed
2
15 0
10 0
3
0 19 -1 0
0 11 0 1
0 18 1 2
10
end_operator
begin_operator
do-plane p0 planer0 smooth red untreated
3
15 0
10 0
18 2
2
0 19 -1 0
0 11 0 1
10
end_operator
begin_operator
do-plane p0 planer0 smooth red varnished
2
15 0
10 0
3
0 19 -1 0
0 11 0 1
0 18 3 2
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural colourfragments
2
15 0
19 0
2
0 10 1 0
0 18 0 2
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural glazed
2
15 0
19 0
2
0 10 1 0
0 18 1 2
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural untreated
3
15 0
19 0
18 2
1
0 10 1 0
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural varnished
2
15 0
19 0
2
0 10 1 0
0 18 3 2
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth red colourfragments
1
15 0
4
0 19 -1 0
0 11 0 1
0 10 1 0
0 18 0 2
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth red glazed
1
15 0
4
0 19 -1 0
0 11 0 1
0 10 1 0
0 18 1 2
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth red untreated
2
15 0
18 2
3
0 19 -1 0
0 11 0 1
0 10 1 0
10
end_operator
begin_operator
do-plane p0 planer0 verysmooth red varnished
1
15 0
4
0 19 -1 0
0 11 0 1
0 10 1 0
0 18 3 2
10
end_operator
begin_operator
do-plane p1 planer0 rough blue colourfragments
0
4
0 0 0 1
0 3 -1 0
0 4 0 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough blue glazed
0
4
0 0 0 1
0 3 -1 0
0 4 0 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough blue untreated
1
2 2
3
0 0 0 1
0 3 -1 0
0 4 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough blue varnished
0
4
0 0 0 1
0 3 -1 0
0 4 0 1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 rough natural colourfragments
1
3 0
2
0 4 0 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough natural glazed
1
3 0
2
0 4 0 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough natural untreated
2
3 0
2 2
1
0 4 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough natural varnished
1
3 0
2
0 4 0 1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 rough red colourfragments
0
4
0 3 -1 0
0 1 0 1
0 4 0 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough red glazed
0
4
0 3 -1 0
0 1 0 1
0 4 0 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough red untreated
1
2 2
3
0 3 -1 0
0 1 0 1
0 4 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough red varnished
0
4
0 3 -1 0
0 1 0 1
0 4 0 1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth blue colourfragments
1
4 1
3
0 0 0 1
0 3 -1 0
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth blue glazed
1
4 1
3
0 0 0 1
0 3 -1 0
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth blue untreated
2
4 1
2 2
2
0 0 0 1
0 3 -1 0
30
end_operator
begin_operator
do-plane p1 planer0 smooth blue varnished
1
4 1
3
0 0 0 1
0 3 -1 0
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth natural colourfragments
2
3 0
4 1
1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth natural glazed
2
3 0
4 1
1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth natural varnished
2
3 0
4 1
1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth red colourfragments
1
4 1
3
0 3 -1 0
0 1 0 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth red glazed
1
4 1
3
0 3 -1 0
0 1 0 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth red untreated
2
4 1
2 2
2
0 3 -1 0
0 1 0 1
30
end_operator
begin_operator
do-plane p1 planer0 smooth red varnished
1
4 1
3
0 3 -1 0
0 1 0 1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth blue colourfragments
0
4
0 0 0 1
0 3 -1 0
0 4 2 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth blue glazed
0
4
0 0 0 1
0 3 -1 0
0 4 2 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth blue untreated
1
2 2
3
0 0 0 1
0 3 -1 0
0 4 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth blue varnished
0
4
0 0 0 1
0 3 -1 0
0 4 2 1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural colourfragments
1
3 0
2
0 4 2 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural glazed
1
3 0
2
0 4 2 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural untreated
2
3 0
2 2
1
0 4 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural varnished
1
3 0
2
0 4 2 1
0 2 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth red colourfragments
0
4
0 3 -1 0
0 1 0 1
0 4 2 1
0 2 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth red glazed
0
4
0 3 -1 0
0 1 0 1
0 4 2 1
0 2 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth red untreated
1
2 2
3
0 3 -1 0
0 1 0 1
0 4 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth red varnished
0
4
0 3 -1 0
0 1 0 1
0 4 2 1
0 2 3 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth natural colourfragments
3
13 0
12 0
16 0
1
0 17 0 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth natural glazed
3
13 0
12 0
16 0
1
0 17 1 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth natural varnished
3
13 0
12 0
16 0
1
0 17 3 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth red colourfragments
2
13 0
16 0
3
0 12 -1 0
0 14 0 1
0 17 0 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth red glazed
2
13 0
16 0
3
0 12 -1 0
0 14 0 1
0 17 1 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth red untreated
3
13 0
16 0
17 2
2
0 12 -1 0
0 14 0 1
30
end_operator
begin_operator
do-plane p2 planer0 smooth red varnished
2
13 0
16 0
3
0 12 -1 0
0 14 0 1
0 17 3 2
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural colourfragments
2
13 0
12 0
2
0 16 1 0
0 17 0 2
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural glazed
2
13 0
12 0
2
0 16 1 0
0 17 1 2
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural untreated
3
13 0
12 0
17 2
1
0 16 1 0
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural varnished
2
13 0
12 0
2
0 16 1 0
0 17 3 2
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth red colourfragments
1
13 0
4
0 12 -1 0
0 14 0 1
0 16 1 0
0 17 0 2
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth red glazed
1
13 0
4
0 12 -1 0
0 14 0 1
0 16 1 0
0 17 1 2
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth red untreated
2
13 0
17 2
3
0 12 -1 0
0 14 0 1
0 16 1 0
30
end_operator
begin_operator
do-plane p2 planer0 verysmooth red varnished
1
13 0
4
0 12 -1 0
0 14 0 1
0 16 1 0
0 17 3 2
30
end_operator
begin_operator
do-saw-large b0 p2 saw0 oak smooth s3 s1 s2 s0
2
5 0
7 0
5
0 13 -1 0
0 12 -1 0
0 16 -1 0
0 17 4 2
0 20 -1 0
30
end_operator
begin_operator
do-saw-large b0 p2 saw0 oak smooth s4 s2 s3 s1
1
5 0
6
0 13 -1 0
0 9 -1 0
0 12 -1 0
0 16 -1 0
0 17 4 2
0 20 -1 0
30
end_operator
begin_operator
do-saw-small b0 p0 saw0 oak smooth s1 s0
2
5 0
9 0
4
0 15 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
30
end_operator
begin_operator
do-saw-small b0 p0 saw0 oak smooth s2 s1
2
5 0
8 0
5
0 15 -1 0
0 9 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
30
end_operator
begin_operator
do-saw-small b0 p0 saw0 oak smooth s3 s2
2
5 0
7 0
5
0 15 -1 0
0 8 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
30
end_operator
begin_operator
do-saw-small b0 p0 saw0 oak smooth s4 s3
1
5 0
5
0 15 -1 0
0 7 -1 0
0 19 -1 0
0 10 -1 0
0 18 4 2
30
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 natural smooth
2
15 0
10 0
2
0 19 -1 0
0 18 2 3
5
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 natural verysmooth
2
15 0
10 1
2
0 19 -1 0
0 18 2 3
5
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 red smooth
2
15 0
10 0
3
0 19 -1 1
0 11 -1 0
0 18 2 3
5
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 red verysmooth
2
15 0
10 1
3
0 19 -1 1
0 11 -1 0
0 18 2 3
5
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 natural smooth
1
4 1
2
0 3 -1 0
0 2 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 natural verysmooth
1
4 2
2
0 3 -1 0
0 2 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 red smooth
1
4 1
3
0 3 -1 1
0 1 -1 0
0 2 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 red verysmooth
1
4 2
3
0 3 -1 1
0 1 -1 0
0 2 2 3
15
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 natural smooth
2
13 0
16 0
2
0 12 -1 0
0 17 2 3
15
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 natural verysmooth
2
13 0
16 1
2
0 12 -1 0
0 17 2 3
15
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 red smooth
2
13 0
16 0
3
0 12 -1 1
0 14 -1 0
0 17 2 3
15
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 red verysmooth
2
13 0
16 1
3
0 12 -1 1
0 14 -1 0
0 17 2 3
15
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
unload-highspeed-saw b0 highspeed-saw0
0
2
0 5 1 0
0 6 -1 0
10
end_operator
0

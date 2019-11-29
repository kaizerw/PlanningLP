begin_version
3
end_version
begin_metric
1
end_metric
25
begin_variable
var0
-1
2
Atom colour(p2, white)
NegatedAtom colour(p2, white)
end_variable
begin_variable
var1
-1
4
Atom treatment(p2, colourfragments)
Atom treatment(p2, glazed)
Atom treatment(p2, untreated)
Atom treatment(p2, varnished)
end_variable
begin_variable
var2
-1
2
Atom colour(p2, natural)
NegatedAtom colour(p2, natural)
end_variable
begin_variable
var3
-1
2
Atom colour(p2, mauve)
NegatedAtom colour(p2, mauve)
end_variable
begin_variable
var4
-1
2
Atom surface-condition(p2, smooth)
Atom surface-condition(p2, verysmooth)
end_variable
begin_variable
var5
-1
2
Atom colour(p1, green)
NegatedAtom colour(p1, green)
end_variable
begin_variable
var6
-1
2
Atom colour(p1, mauve)
NegatedAtom colour(p1, mauve)
end_variable
begin_variable
var7
-1
2
Atom colour(p1, white)
NegatedAtom colour(p1, white)
end_variable
begin_variable
var8
-1
3
Atom surface-condition(p1, rough)
Atom surface-condition(p1, smooth)
Atom surface-condition(p1, verysmooth)
end_variable
begin_variable
var9
-1
4
Atom treatment(p1, colourfragments)
Atom treatment(p1, glazed)
Atom treatment(p1, untreated)
Atom treatment(p1, varnished)
end_variable
begin_variable
var10
-1
2
Atom colour(p1, natural)
NegatedAtom colour(p1, natural)
end_variable
begin_variable
var11
-1
2
Atom colour(p0, white)
NegatedAtom colour(p0, white)
end_variable
begin_variable
var12
-1
2
Atom colour(p0, natural)
NegatedAtom colour(p0, natural)
end_variable
begin_variable
var13
-1
2
Atom colour(p0, mauve)
NegatedAtom colour(p0, mauve)
end_variable
begin_variable
var14
-1
3
Atom surface-condition(p0, rough)
Atom surface-condition(p0, smooth)
Atom surface-condition(p0, verysmooth)
end_variable
begin_variable
var15
-1
4
Atom treatment(p0, colourfragments)
Atom treatment(p0, glazed)
Atom treatment(p0, untreated)
Atom treatment(p0, varnished)
end_variable
begin_variable
var16
-1
2
Atom available(b0)
Atom in-highspeed-saw(b0, highspeed-saw0)
end_variable
begin_variable
var17
-1
2
Atom empty(highspeed-saw0)
NegatedAtom empty(highspeed-saw0)
end_variable
begin_variable
var18
-1
2
Atom colour(p3, mauve)
NegatedAtom colour(p3, mauve)
end_variable
begin_variable
var19
-1
4
Atom surface-condition(p3, rough)
Atom surface-condition(p3, smooth)
Atom surface-condition(p3, verysmooth)
<none of those>
end_variable
begin_variable
var20
-1
5
Atom treatment(p3, colourfragments)
Atom treatment(p3, glazed)
Atom treatment(p3, untreated)
Atom treatment(p3, varnished)
Atom unused(p3)
end_variable
begin_variable
var21
-1
2
Atom colour(p3, natural)
NegatedAtom colour(p3, natural)
end_variable
begin_variable
var22
-1
2
Atom available(p3)
NegatedAtom available(p3)
end_variable
begin_variable
var23
-1
2
Atom colour(p3, white)
NegatedAtom colour(p3, white)
end_variable
begin_variable
var24
-1
2
Atom wood(p3, beech)
NegatedAtom wood(p3, beech)
end_variable
4
begin_mutex_group
2
22 0
20 4
end_mutex_group
begin_mutex_group
2
16 1
17 0
end_mutex_group
begin_mutex_group
4
19 0
19 1
19 2
20 4
end_mutex_group
begin_mutex_group
2
20 4
24 0
end_mutex_group
begin_state
0
1
1
1
1
0
1
1
0
0
1
1
0
1
0
3
0
0
1
3
4
1
1
1
1
end_state
begin_goal
11
3 0
4 0
8 2
9 3
10 0
13 0
14 1
15 1
22 0
23 0
24 0
end_goal
300
begin_operator
cut-board-large b0 p3 highspeed-saw0 beech rough s5 s3 s4 s2
1
16 1
5
0 22 -1 0
0 21 -1 0
0 19 -1 0
0 20 4 2
0 24 -1 0
10
end_operator
begin_operator
do-glaze p0 glazer0 mauve
0
3
0 13 -1 0
0 12 -1 1
0 15 2 1
15
end_operator
begin_operator
do-glaze p0 glazer0 white
0
3
0 12 -1 1
0 11 -1 0
0 15 2 1
15
end_operator
begin_operator
do-glaze p1 glazer0 mauve
0
3
0 6 -1 0
0 10 -1 1
0 9 2 1
20
end_operator
begin_operator
do-glaze p1 glazer0 white
0
3
0 10 -1 1
0 7 -1 0
0 9 2 1
20
end_operator
begin_operator
do-glaze p2 glazer0 mauve
0
3
0 3 -1 0
0 2 -1 1
0 1 2 1
10
end_operator
begin_operator
do-glaze p2 glazer0 white
0
3
0 2 -1 1
0 0 -1 0
0 1 2 1
10
end_operator
begin_operator
do-glaze p3 glazer0 mauve
1
22 0
3
0 18 -1 0
0 21 -1 1
0 20 2 1
20
end_operator
begin_operator
do-glaze p3 glazer0 white
1
22 0
3
0 21 -1 1
0 23 -1 0
0 20 2 1
20
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve colourfragments untreated
0
4
0 13 0 1
0 12 -1 0
0 14 1 2
0 15 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve glazed untreated
0
4
0 13 0 1
0 12 -1 0
0 14 1 2
0 15 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve untreated untreated
1
15 2
3
0 13 0 1
0 12 -1 0
0 14 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth mauve varnished colourfragments
0
4
0 13 0 1
0 12 -1 0
0 14 1 2
0 15 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural colourfragments untreated
1
12 0
2
0 14 1 2
0 15 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural glazed untreated
1
12 0
2
0 14 1 2
0 15 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural untreated untreated
2
12 0
15 2
1
0 14 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth natural varnished colourfragments
1
12 0
2
0 14 1 2
0 15 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 smooth white colourfragments untreated
0
4
0 12 -1 0
0 11 0 1
0 14 1 2
0 15 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth white glazed untreated
0
4
0 12 -1 0
0 11 0 1
0 14 1 2
0 15 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth white untreated untreated
1
15 2
3
0 12 -1 0
0 11 0 1
0 14 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 smooth white varnished colourfragments
0
4
0 12 -1 0
0 11 0 1
0 14 1 2
0 15 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve colourfragments untreated
1
14 2
3
0 13 0 1
0 12 -1 0
0 15 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve glazed untreated
1
14 2
3
0 13 0 1
0 12 -1 0
0 15 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve untreated untreated
2
14 2
15 2
2
0 13 0 1
0 12 -1 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth mauve varnished colourfragments
1
14 2
3
0 13 0 1
0 12 -1 0
0 15 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural colourfragments untreated
2
12 0
14 2
1
0 15 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural glazed untreated
2
12 0
14 2
1
0 15 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth natural varnished colourfragments
2
12 0
14 2
1
0 15 3 0
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth white colourfragments untreated
1
14 2
3
0 12 -1 0
0 11 0 1
0 15 0 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth white glazed untreated
1
14 2
3
0 12 -1 0
0 11 0 1
0 15 1 2
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth white untreated untreated
2
14 2
15 2
2
0 12 -1 0
0 11 0 1
30
end_operator
begin_operator
do-grind p0 grinder0 verysmooth white varnished colourfragments
1
14 2
3
0 12 -1 0
0 11 0 1
0 15 3 0
30
end_operator
begin_operator
do-grind p1 grinder0 smooth green colourfragments untreated
0
4
0 5 0 1
0 10 -1 0
0 8 1 2
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth green glazed untreated
0
4
0 5 0 1
0 10 -1 0
0 8 1 2
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth green untreated untreated
1
9 2
3
0 5 0 1
0 10 -1 0
0 8 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth green varnished colourfragments
0
4
0 5 0 1
0 10 -1 0
0 8 1 2
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve colourfragments untreated
0
4
0 6 0 1
0 10 -1 0
0 8 1 2
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve glazed untreated
0
4
0 6 0 1
0 10 -1 0
0 8 1 2
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve untreated untreated
1
9 2
3
0 6 0 1
0 10 -1 0
0 8 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth mauve varnished colourfragments
0
4
0 6 0 1
0 10 -1 0
0 8 1 2
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural colourfragments untreated
1
10 0
2
0 8 1 2
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural glazed untreated
1
10 0
2
0 8 1 2
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural untreated untreated
2
10 0
9 2
1
0 8 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth natural varnished colourfragments
1
10 0
2
0 8 1 2
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 smooth white colourfragments untreated
0
4
0 10 -1 0
0 7 0 1
0 8 1 2
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth white glazed untreated
0
4
0 10 -1 0
0 7 0 1
0 8 1 2
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth white untreated untreated
1
9 2
3
0 10 -1 0
0 7 0 1
0 8 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 smooth white varnished colourfragments
0
4
0 10 -1 0
0 7 0 1
0 8 1 2
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green colourfragments untreated
1
8 2
3
0 5 0 1
0 10 -1 0
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green glazed untreated
1
8 2
3
0 5 0 1
0 10 -1 0
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green untreated untreated
2
8 2
9 2
2
0 5 0 1
0 10 -1 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth green varnished colourfragments
1
8 2
3
0 5 0 1
0 10 -1 0
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve colourfragments untreated
1
8 2
3
0 6 0 1
0 10 -1 0
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve glazed untreated
1
8 2
3
0 6 0 1
0 10 -1 0
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve untreated untreated
2
8 2
9 2
2
0 6 0 1
0 10 -1 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth mauve varnished colourfragments
1
8 2
3
0 6 0 1
0 10 -1 0
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural colourfragments untreated
2
10 0
8 2
1
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural glazed untreated
2
10 0
8 2
1
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth natural varnished colourfragments
2
10 0
8 2
1
0 9 3 0
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth white colourfragments untreated
1
8 2
3
0 10 -1 0
0 7 0 1
0 9 0 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth white glazed untreated
1
8 2
3
0 10 -1 0
0 7 0 1
0 9 1 2
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth white untreated untreated
2
8 2
9 2
2
0 10 -1 0
0 7 0 1
45
end_operator
begin_operator
do-grind p1 grinder0 verysmooth white varnished colourfragments
1
8 2
3
0 10 -1 0
0 7 0 1
0 9 3 0
45
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve colourfragments untreated
0
4
0 3 0 1
0 2 -1 0
0 4 0 1
0 1 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve glazed untreated
0
4
0 3 0 1
0 2 -1 0
0 4 0 1
0 1 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve untreated untreated
1
1 2
3
0 3 0 1
0 2 -1 0
0 4 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 smooth mauve varnished colourfragments
0
4
0 3 0 1
0 2 -1 0
0 4 0 1
0 1 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural colourfragments untreated
1
2 0
2
0 4 0 1
0 1 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural glazed untreated
1
2 0
2
0 4 0 1
0 1 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural untreated untreated
2
2 0
1 2
1
0 4 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 smooth natural varnished colourfragments
1
2 0
2
0 4 0 1
0 1 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 smooth white colourfragments untreated
0
4
0 2 -1 0
0 0 0 1
0 4 0 1
0 1 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth white glazed untreated
0
4
0 2 -1 0
0 0 0 1
0 4 0 1
0 1 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 smooth white untreated untreated
1
1 2
3
0 2 -1 0
0 0 0 1
0 4 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 smooth white varnished colourfragments
0
4
0 2 -1 0
0 0 0 1
0 4 0 1
0 1 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve colourfragments untreated
1
4 1
3
0 3 0 1
0 2 -1 0
0 1 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve glazed untreated
1
4 1
3
0 3 0 1
0 2 -1 0
0 1 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve untreated untreated
2
4 1
1 2
2
0 3 0 1
0 2 -1 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth mauve varnished colourfragments
1
4 1
3
0 3 0 1
0 2 -1 0
0 1 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural colourfragments untreated
2
2 0
4 1
1
0 1 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural glazed untreated
2
2 0
4 1
1
0 1 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth natural varnished colourfragments
2
2 0
4 1
1
0 1 3 0
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth white colourfragments untreated
1
4 1
3
0 2 -1 0
0 0 0 1
0 1 0 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth white glazed untreated
1
4 1
3
0 2 -1 0
0 0 0 1
0 1 1 2
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth white untreated untreated
2
4 1
1 2
2
0 2 -1 0
0 0 0 1
15
end_operator
begin_operator
do-grind p2 grinder0 verysmooth white varnished colourfragments
1
4 1
3
0 2 -1 0
0 0 0 1
0 1 3 0
15
end_operator
begin_operator
do-grind p3 grinder0 smooth mauve colourfragments untreated
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 1 2
0 20 0 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth mauve glazed untreated
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 1 2
0 20 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth mauve untreated untreated
2
22 0
20 2
3
0 18 0 1
0 21 -1 0
0 19 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth mauve varnished colourfragments
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 1 2
0 20 3 0
45
end_operator
begin_operator
do-grind p3 grinder0 smooth natural colourfragments untreated
2
22 0
21 0
2
0 19 1 2
0 20 0 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth natural glazed untreated
2
22 0
21 0
2
0 19 1 2
0 20 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth natural untreated untreated
3
22 0
21 0
20 2
1
0 19 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth natural varnished colourfragments
2
22 0
21 0
2
0 19 1 2
0 20 3 0
45
end_operator
begin_operator
do-grind p3 grinder0 smooth white colourfragments untreated
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 1 2
0 20 0 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth white glazed untreated
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 1 2
0 20 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth white untreated untreated
2
22 0
20 2
3
0 21 -1 0
0 23 0 1
0 19 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 smooth white varnished colourfragments
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 1 2
0 20 3 0
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth mauve colourfragments untreated
2
22 0
19 2
3
0 18 0 1
0 21 -1 0
0 20 0 2
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth mauve glazed untreated
2
22 0
19 2
3
0 18 0 1
0 21 -1 0
0 20 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth mauve untreated untreated
3
22 0
19 2
20 2
2
0 18 0 1
0 21 -1 0
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth mauve varnished colourfragments
2
22 0
19 2
3
0 18 0 1
0 21 -1 0
0 20 3 0
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth natural colourfragments untreated
3
22 0
21 0
19 2
1
0 20 0 2
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth natural glazed untreated
3
22 0
21 0
19 2
1
0 20 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth natural varnished colourfragments
3
22 0
21 0
19 2
1
0 20 3 0
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth white colourfragments untreated
2
22 0
19 2
3
0 21 -1 0
0 23 0 1
0 20 0 2
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth white glazed untreated
2
22 0
19 2
3
0 21 -1 0
0 23 0 1
0 20 1 2
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth white untreated untreated
3
22 0
19 2
20 2
2
0 21 -1 0
0 23 0 1
45
end_operator
begin_operator
do-grind p3 grinder0 verysmooth white varnished colourfragments
2
22 0
19 2
3
0 21 -1 0
0 23 0 1
0 20 3 0
45
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 mauve smooth
1
14 1
3
0 13 -1 0
0 12 -1 1
0 15 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 mauve verysmooth
1
14 2
3
0 13 -1 0
0 12 -1 1
0 15 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 natural smooth
1
14 1
2
0 12 -1 0
0 15 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 natural verysmooth
1
14 2
2
0 12 -1 0
0 15 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 white smooth
1
14 1
3
0 12 -1 1
0 11 -1 0
0 15 2 3
10
end_operator
begin_operator
do-immersion-varnish p0 immersion-varnisher0 white verysmooth
1
14 2
3
0 12 -1 1
0 11 -1 0
0 15 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 mauve smooth
1
8 1
3
0 6 -1 0
0 10 -1 1
0 9 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 mauve verysmooth
1
8 2
3
0 6 -1 0
0 10 -1 1
0 9 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 natural smooth
1
8 1
2
0 10 -1 0
0 9 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 natural verysmooth
1
8 2
2
0 10 -1 0
0 9 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 white smooth
1
8 1
3
0 10 -1 1
0 7 -1 0
0 9 2 3
10
end_operator
begin_operator
do-immersion-varnish p1 immersion-varnisher0 white verysmooth
1
8 2
3
0 10 -1 1
0 7 -1 0
0 9 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 mauve smooth
1
4 0
3
0 3 -1 0
0 2 -1 1
0 1 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 mauve verysmooth
1
4 1
3
0 3 -1 0
0 2 -1 1
0 1 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 natural smooth
1
4 0
2
0 2 -1 0
0 1 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 natural verysmooth
1
4 1
2
0 2 -1 0
0 1 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 white smooth
1
4 0
3
0 2 -1 1
0 0 -1 0
0 1 2 3
10
end_operator
begin_operator
do-immersion-varnish p2 immersion-varnisher0 white verysmooth
1
4 1
3
0 2 -1 1
0 0 -1 0
0 1 2 3
10
end_operator
begin_operator
do-immersion-varnish p3 immersion-varnisher0 mauve smooth
2
22 0
19 1
3
0 18 -1 0
0 21 -1 1
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p3 immersion-varnisher0 mauve verysmooth
2
22 0
19 2
3
0 18 -1 0
0 21 -1 1
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p3 immersion-varnisher0 natural smooth
2
22 0
19 1
2
0 21 -1 0
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p3 immersion-varnisher0 natural verysmooth
2
22 0
19 2
2
0 21 -1 0
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p3 immersion-varnisher0 white smooth
2
22 0
19 1
3
0 21 -1 1
0 23 -1 0
0 20 2 3
10
end_operator
begin_operator
do-immersion-varnish p3 immersion-varnisher0 white verysmooth
2
22 0
19 2
3
0 21 -1 1
0 23 -1 0
0 20 2 3
10
end_operator
begin_operator
do-plane p0 planer0 rough mauve colourfragments
0
4
0 13 0 1
0 12 -1 0
0 14 0 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve glazed
0
4
0 13 0 1
0 12 -1 0
0 14 0 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve untreated
1
15 2
3
0 13 0 1
0 12 -1 0
0 14 0 1
20
end_operator
begin_operator
do-plane p0 planer0 rough mauve varnished
0
4
0 13 0 1
0 12 -1 0
0 14 0 1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 rough natural colourfragments
1
12 0
2
0 14 0 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 rough natural glazed
1
12 0
2
0 14 0 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 rough natural untreated
2
12 0
15 2
1
0 14 0 1
20
end_operator
begin_operator
do-plane p0 planer0 rough natural varnished
1
12 0
2
0 14 0 1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 rough white colourfragments
0
4
0 12 -1 0
0 11 0 1
0 14 0 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 rough white glazed
0
4
0 12 -1 0
0 11 0 1
0 14 0 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 rough white untreated
1
15 2
3
0 12 -1 0
0 11 0 1
0 14 0 1
20
end_operator
begin_operator
do-plane p0 planer0 rough white varnished
0
4
0 12 -1 0
0 11 0 1
0 14 0 1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve colourfragments
1
14 1
3
0 13 0 1
0 12 -1 0
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve glazed
1
14 1
3
0 13 0 1
0 12 -1 0
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve untreated
2
14 1
15 2
2
0 13 0 1
0 12 -1 0
20
end_operator
begin_operator
do-plane p0 planer0 smooth mauve varnished
1
14 1
3
0 13 0 1
0 12 -1 0
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth natural colourfragments
2
12 0
14 1
1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth natural glazed
2
12 0
14 1
1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth natural varnished
2
12 0
14 1
1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth white colourfragments
1
14 1
3
0 12 -1 0
0 11 0 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth white glazed
1
14 1
3
0 12 -1 0
0 11 0 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 smooth white untreated
2
14 1
15 2
2
0 12 -1 0
0 11 0 1
20
end_operator
begin_operator
do-plane p0 planer0 smooth white varnished
1
14 1
3
0 12 -1 0
0 11 0 1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve colourfragments
0
4
0 13 0 1
0 12 -1 0
0 14 2 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve glazed
0
4
0 13 0 1
0 12 -1 0
0 14 2 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve untreated
1
15 2
3
0 13 0 1
0 12 -1 0
0 14 2 1
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth mauve varnished
0
4
0 13 0 1
0 12 -1 0
0 14 2 1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural colourfragments
1
12 0
2
0 14 2 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural glazed
1
12 0
2
0 14 2 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural untreated
2
12 0
15 2
1
0 14 2 1
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth natural varnished
1
12 0
2
0 14 2 1
0 15 3 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth white colourfragments
0
4
0 12 -1 0
0 11 0 1
0 14 2 1
0 15 0 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth white glazed
0
4
0 12 -1 0
0 11 0 1
0 14 2 1
0 15 1 2
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth white untreated
1
15 2
3
0 12 -1 0
0 11 0 1
0 14 2 1
20
end_operator
begin_operator
do-plane p0 planer0 verysmooth white varnished
0
4
0 12 -1 0
0 11 0 1
0 14 2 1
0 15 3 2
20
end_operator
begin_operator
do-plane p1 planer0 rough green colourfragments
0
4
0 5 0 1
0 10 -1 0
0 8 0 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough green glazed
0
4
0 5 0 1
0 10 -1 0
0 8 0 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough green untreated
1
9 2
3
0 5 0 1
0 10 -1 0
0 8 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough green varnished
0
4
0 5 0 1
0 10 -1 0
0 8 0 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 rough mauve colourfragments
0
4
0 6 0 1
0 10 -1 0
0 8 0 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough mauve glazed
0
4
0 6 0 1
0 10 -1 0
0 8 0 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough mauve untreated
1
9 2
3
0 6 0 1
0 10 -1 0
0 8 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough mauve varnished
0
4
0 6 0 1
0 10 -1 0
0 8 0 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 rough natural colourfragments
1
10 0
2
0 8 0 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough natural glazed
1
10 0
2
0 8 0 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough natural untreated
2
10 0
9 2
1
0 8 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough natural varnished
1
10 0
2
0 8 0 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 rough white colourfragments
0
4
0 10 -1 0
0 7 0 1
0 8 0 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 rough white glazed
0
4
0 10 -1 0
0 7 0 1
0 8 0 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 rough white untreated
1
9 2
3
0 10 -1 0
0 7 0 1
0 8 0 1
30
end_operator
begin_operator
do-plane p1 planer0 rough white varnished
0
4
0 10 -1 0
0 7 0 1
0 8 0 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth green colourfragments
1
8 1
3
0 5 0 1
0 10 -1 0
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth green glazed
1
8 1
3
0 5 0 1
0 10 -1 0
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth green untreated
2
8 1
9 2
2
0 5 0 1
0 10 -1 0
30
end_operator
begin_operator
do-plane p1 planer0 smooth green varnished
1
8 1
3
0 5 0 1
0 10 -1 0
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth mauve colourfragments
1
8 1
3
0 6 0 1
0 10 -1 0
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth mauve glazed
1
8 1
3
0 6 0 1
0 10 -1 0
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth mauve untreated
2
8 1
9 2
2
0 6 0 1
0 10 -1 0
30
end_operator
begin_operator
do-plane p1 planer0 smooth mauve varnished
1
8 1
3
0 6 0 1
0 10 -1 0
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth natural colourfragments
2
10 0
8 1
1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth natural glazed
2
10 0
8 1
1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth natural varnished
2
10 0
8 1
1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth white colourfragments
1
8 1
3
0 10 -1 0
0 7 0 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth white glazed
1
8 1
3
0 10 -1 0
0 7 0 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 smooth white untreated
2
8 1
9 2
2
0 10 -1 0
0 7 0 1
30
end_operator
begin_operator
do-plane p1 planer0 smooth white varnished
1
8 1
3
0 10 -1 0
0 7 0 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth green colourfragments
0
4
0 5 0 1
0 10 -1 0
0 8 2 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth green glazed
0
4
0 5 0 1
0 10 -1 0
0 8 2 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth green untreated
1
9 2
3
0 5 0 1
0 10 -1 0
0 8 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth green varnished
0
4
0 5 0 1
0 10 -1 0
0 8 2 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve colourfragments
0
4
0 6 0 1
0 10 -1 0
0 8 2 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve glazed
0
4
0 6 0 1
0 10 -1 0
0 8 2 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve untreated
1
9 2
3
0 6 0 1
0 10 -1 0
0 8 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth mauve varnished
0
4
0 6 0 1
0 10 -1 0
0 8 2 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural colourfragments
1
10 0
2
0 8 2 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural glazed
1
10 0
2
0 8 2 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural untreated
2
10 0
9 2
1
0 8 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth natural varnished
1
10 0
2
0 8 2 1
0 9 3 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth white colourfragments
0
4
0 10 -1 0
0 7 0 1
0 8 2 1
0 9 0 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth white glazed
0
4
0 10 -1 0
0 7 0 1
0 8 2 1
0 9 1 2
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth white untreated
1
9 2
3
0 10 -1 0
0 7 0 1
0 8 2 1
30
end_operator
begin_operator
do-plane p1 planer0 verysmooth white varnished
0
4
0 10 -1 0
0 7 0 1
0 8 2 1
0 9 3 2
30
end_operator
begin_operator
do-plane p2 planer0 smooth mauve colourfragments
1
4 0
3
0 3 0 1
0 2 -1 0
0 1 0 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve glazed
1
4 0
3
0 3 0 1
0 2 -1 0
0 1 1 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve untreated
2
4 0
1 2
2
0 3 0 1
0 2 -1 0
10
end_operator
begin_operator
do-plane p2 planer0 smooth mauve varnished
1
4 0
3
0 3 0 1
0 2 -1 0
0 1 3 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth natural colourfragments
2
2 0
4 0
1
0 1 0 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth natural glazed
2
2 0
4 0
1
0 1 1 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth natural varnished
2
2 0
4 0
1
0 1 3 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth white colourfragments
1
4 0
3
0 2 -1 0
0 0 0 1
0 1 0 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth white glazed
1
4 0
3
0 2 -1 0
0 0 0 1
0 1 1 2
10
end_operator
begin_operator
do-plane p2 planer0 smooth white untreated
2
4 0
1 2
2
0 2 -1 0
0 0 0 1
10
end_operator
begin_operator
do-plane p2 planer0 smooth white varnished
1
4 0
3
0 2 -1 0
0 0 0 1
0 1 3 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve colourfragments
0
4
0 3 0 1
0 2 -1 0
0 4 1 0
0 1 0 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve glazed
0
4
0 3 0 1
0 2 -1 0
0 4 1 0
0 1 1 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve untreated
1
1 2
3
0 3 0 1
0 2 -1 0
0 4 1 0
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth mauve varnished
0
4
0 3 0 1
0 2 -1 0
0 4 1 0
0 1 3 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural colourfragments
1
2 0
2
0 4 1 0
0 1 0 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural glazed
1
2 0
2
0 4 1 0
0 1 1 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural untreated
2
2 0
1 2
1
0 4 1 0
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth natural varnished
1
2 0
2
0 4 1 0
0 1 3 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth white colourfragments
0
4
0 2 -1 0
0 0 0 1
0 4 1 0
0 1 0 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth white glazed
0
4
0 2 -1 0
0 0 0 1
0 4 1 0
0 1 1 2
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth white untreated
1
1 2
3
0 2 -1 0
0 0 0 1
0 4 1 0
10
end_operator
begin_operator
do-plane p2 planer0 verysmooth white varnished
0
4
0 2 -1 0
0 0 0 1
0 4 1 0
0 1 3 2
10
end_operator
begin_operator
do-plane p3 planer0 rough mauve colourfragments
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 0 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 rough mauve glazed
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 0 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 rough mauve untreated
2
22 0
20 2
3
0 18 0 1
0 21 -1 0
0 19 0 1
30
end_operator
begin_operator
do-plane p3 planer0 rough mauve varnished
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 0 1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 rough natural colourfragments
2
22 0
21 0
2
0 19 0 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 rough natural glazed
2
22 0
21 0
2
0 19 0 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 rough natural untreated
3
22 0
21 0
20 2
1
0 19 0 1
30
end_operator
begin_operator
do-plane p3 planer0 rough natural varnished
2
22 0
21 0
2
0 19 0 1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 rough white colourfragments
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 0 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 rough white glazed
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 0 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 rough white untreated
2
22 0
20 2
3
0 21 -1 0
0 23 0 1
0 19 0 1
30
end_operator
begin_operator
do-plane p3 planer0 rough white varnished
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 0 1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth mauve colourfragments
2
22 0
19 1
3
0 18 0 1
0 21 -1 0
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth mauve glazed
2
22 0
19 1
3
0 18 0 1
0 21 -1 0
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth mauve untreated
3
22 0
19 1
20 2
2
0 18 0 1
0 21 -1 0
30
end_operator
begin_operator
do-plane p3 planer0 smooth mauve varnished
2
22 0
19 1
3
0 18 0 1
0 21 -1 0
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth natural colourfragments
3
22 0
21 0
19 1
1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth natural glazed
3
22 0
21 0
19 1
1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth natural varnished
3
22 0
21 0
19 1
1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth white colourfragments
2
22 0
19 1
3
0 21 -1 0
0 23 0 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth white glazed
2
22 0
19 1
3
0 21 -1 0
0 23 0 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 smooth white untreated
3
22 0
19 1
20 2
2
0 21 -1 0
0 23 0 1
30
end_operator
begin_operator
do-plane p3 planer0 smooth white varnished
2
22 0
19 1
3
0 21 -1 0
0 23 0 1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth mauve colourfragments
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 2 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth mauve glazed
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 2 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth mauve untreated
2
22 0
20 2
3
0 18 0 1
0 21 -1 0
0 19 2 1
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth mauve varnished
1
22 0
4
0 18 0 1
0 21 -1 0
0 19 2 1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth natural colourfragments
2
22 0
21 0
2
0 19 2 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth natural glazed
2
22 0
21 0
2
0 19 2 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth natural untreated
3
22 0
21 0
20 2
1
0 19 2 1
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth natural varnished
2
22 0
21 0
2
0 19 2 1
0 20 3 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth white colourfragments
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 2 1
0 20 0 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth white glazed
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 2 1
0 20 1 2
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth white untreated
2
22 0
20 2
3
0 21 -1 0
0 23 0 1
0 19 2 1
30
end_operator
begin_operator
do-plane p3 planer0 verysmooth white varnished
1
22 0
4
0 21 -1 0
0 23 0 1
0 19 2 1
0 20 3 2
30
end_operator
begin_operator
do-saw-large b0 p3 saw0 beech rough s5 s3 s4 s2
1
16 0
5
0 22 -1 0
0 21 -1 0
0 19 -1 0
0 20 4 2
0 24 -1 0
30
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 mauve smooth
1
14 1
3
0 13 -1 0
0 12 -1 1
0 15 2 3
10
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 mauve verysmooth
1
14 2
3
0 13 -1 0
0 12 -1 1
0 15 2 3
10
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 natural smooth
1
14 1
2
0 12 -1 0
0 15 2 3
10
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 natural verysmooth
1
14 2
2
0 12 -1 0
0 15 2 3
10
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 white smooth
1
14 1
3
0 12 -1 1
0 11 -1 0
0 15 2 3
10
end_operator
begin_operator
do-spray-varnish p0 spray-varnisher0 white verysmooth
1
14 2
3
0 12 -1 1
0 11 -1 0
0 15 2 3
10
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 mauve smooth
1
8 1
3
0 6 -1 0
0 10 -1 1
0 9 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 mauve verysmooth
1
8 2
3
0 6 -1 0
0 10 -1 1
0 9 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 natural smooth
1
8 1
2
0 10 -1 0
0 9 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 natural verysmooth
1
8 2
2
0 10 -1 0
0 9 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 white smooth
1
8 1
3
0 10 -1 1
0 7 -1 0
0 9 2 3
15
end_operator
begin_operator
do-spray-varnish p1 spray-varnisher0 white verysmooth
1
8 2
3
0 10 -1 1
0 7 -1 0
0 9 2 3
15
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 mauve smooth
1
4 0
3
0 3 -1 0
0 2 -1 1
0 1 2 3
5
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 mauve verysmooth
1
4 1
3
0 3 -1 0
0 2 -1 1
0 1 2 3
5
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 natural smooth
1
4 0
2
0 2 -1 0
0 1 2 3
5
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 natural verysmooth
1
4 1
2
0 2 -1 0
0 1 2 3
5
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 white smooth
1
4 0
3
0 2 -1 1
0 0 -1 0
0 1 2 3
5
end_operator
begin_operator
do-spray-varnish p2 spray-varnisher0 white verysmooth
1
4 1
3
0 2 -1 1
0 0 -1 0
0 1 2 3
5
end_operator
begin_operator
do-spray-varnish p3 spray-varnisher0 mauve smooth
2
22 0
19 1
3
0 18 -1 0
0 21 -1 1
0 20 2 3
15
end_operator
begin_operator
do-spray-varnish p3 spray-varnisher0 mauve verysmooth
2
22 0
19 2
3
0 18 -1 0
0 21 -1 1
0 20 2 3
15
end_operator
begin_operator
do-spray-varnish p3 spray-varnisher0 natural smooth
2
22 0
19 1
2
0 21 -1 0
0 20 2 3
15
end_operator
begin_operator
do-spray-varnish p3 spray-varnisher0 natural verysmooth
2
22 0
19 2
2
0 21 -1 0
0 20 2 3
15
end_operator
begin_operator
do-spray-varnish p3 spray-varnisher0 white smooth
2
22 0
19 1
3
0 21 -1 1
0 23 -1 0
0 20 2 3
15
end_operator
begin_operator
do-spray-varnish p3 spray-varnisher0 white verysmooth
2
22 0
19 2
3
0 21 -1 1
0 23 -1 0
0 20 2 3
15
end_operator
begin_operator
load-highspeed-saw b0 highspeed-saw0
0
2
0 16 0 1
0 17 0 1
30
end_operator
begin_operator
unload-highspeed-saw b0 highspeed-saw0
0
2
0 16 1 0
0 17 -1 0
10
end_operator
0

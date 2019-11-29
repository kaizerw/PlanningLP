begin_version
3
end_version
begin_metric
0
end_metric
23
begin_variable
var0
-1
2
Atom not-occupied(ta2-1-rat-a)
Atom occupied(ta2-1-rat-a)
end_variable
begin_variable
var1
-1
2
Atom not-occupied(ta3-1-rat-a)
Atom occupied(ta3-1-rat-a)
end_variable
begin_variable
var2
-1
2
Atom not-occupied(ta2-1-oc1b)
Atom occupied(ta2-1-oc1b)
end_variable
begin_variable
var3
-1
2
Atom not-occupied(ta2-1-oca1)
Atom occupied(ta2-1-oca1)
end_variable
begin_variable
var4
-1
2
Atom not-occupied(ta3-1-oc1b)
Atom occupied(ta3-1-oc1b)
end_variable
begin_variable
var5
-1
2
Atom not-occupied(ta3-1-oca1)
Atom occupied(ta3-1-oca1)
end_variable
begin_variable
var6
-1
2
Atom not-occupied(ta2-1-gasoleo)
Atom occupied(ta2-1-gasoleo)
end_variable
begin_variable
var7
-1
2
Atom not-occupied(ta3-1-gasoleo)
Atom occupied(ta3-1-gasoleo)
end_variable
begin_variable
var8
-1
2
Atom not-occupied(ta1-1-rat-a)
Atom occupied(ta1-1-rat-a)
end_variable
begin_variable
var9
-1
2
Atom not-occupied(ta1-1-oc1b)
Atom occupied(ta1-1-oc1b)
end_variable
begin_variable
var10
-1
2
Atom not-occupied(ta1-1-oca1)
Atom occupied(ta1-1-oca1)
end_variable
begin_variable
var11
-1
2
Atom not-occupied(ta1-1-gasoleo)
Atom occupied(ta1-1-gasoleo)
end_variable
begin_variable
var12
-1
2
Atom not-occupied(ta2-1-lco)
Atom occupied(ta2-1-lco)
end_variable
begin_variable
var13
-1
2
Atom not-occupied(ta3-1-lco)
Atom occupied(ta3-1-lco)
end_variable
begin_variable
var14
-1
4
Atom on(b3, a1)
Atom on(b3, a2)
Atom on(b3, a3)
<none of those>
end_variable
begin_variable
var15
-1
6
Atom first(b0, s12)
Atom first(b1, s12)
Atom first(b2, s12)
Atom first(b3, s12)
Atom first(b4, s12)
Atom first(b5, s12)
end_variable
begin_variable
var16
-1
2
Atom not-occupied(ta1-1-lco)
Atom occupied(ta1-1-lco)
end_variable
begin_variable
var17
-1
4
Atom on(b1, a1)
Atom on(b1, a2)
Atom on(b1, a3)
<none of those>
end_variable
begin_variable
var18
-1
6
Atom first(b0, s13)
Atom first(b1, s13)
Atom first(b2, s13)
Atom first(b3, s13)
Atom first(b4, s13)
Atom first(b5, s13)
end_variable
begin_variable
var19
-1
4
Atom on(b0, a1)
Atom on(b0, a2)
Atom on(b0, a3)
<none of those>
end_variable
begin_variable
var20
-1
4
Atom on(b5, a1)
Atom on(b5, a2)
Atom on(b5, a3)
<none of those>
end_variable
begin_variable
var21
-1
4
Atom on(b2, a1)
Atom on(b2, a2)
Atom on(b2, a3)
<none of those>
end_variable
begin_variable
var22
-1
4
Atom on(b4, a1)
Atom on(b4, a2)
Atom on(b4, a3)
<none of those>
end_variable
6
begin_mutex_group
5
15 0
18 0
19 0
19 1
19 2
end_mutex_group
begin_mutex_group
5
15 1
18 1
17 0
17 1
17 2
end_mutex_group
begin_mutex_group
5
15 2
18 2
21 0
21 1
21 2
end_mutex_group
begin_mutex_group
5
15 3
18 3
14 0
14 1
14 2
end_mutex_group
begin_mutex_group
5
15 4
18 4
22 0
22 1
22 2
end_mutex_group
begin_mutex_group
5
15 5
18 5
20 0
20 1
20 2
end_mutex_group
begin_state
0
0
0
0
0
0
0
0
1
1
0
1
0
1
0
4
0
2
5
0
3
0
3
end_state
begin_goal
4
19 1
20 1
21 2
22 0
end_goal
104
begin_operator
pop-unitarypipe s12 b0 a1 a2 b1 oc1b lco ta1-1-lco ta2-1-oc1b
0
5
0 15 1 0
0 16 0 1
0 2 1 0
0 19 1 3
0 17 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b0 a1 a2 b2 oc1b gasoleo ta1-1-gasoleo ta2-1-oc1b
0
5
0 15 2 0
0 11 0 1
0 2 1 0
0 19 1 3
0 21 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b0 a1 a2 b4 oc1b lco ta1-1-lco ta2-1-oc1b
0
5
0 15 4 0
0 16 0 1
0 2 1 0
0 19 1 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b0 a1 a2 b5 oc1b oca1 ta1-1-oca1 ta2-1-oc1b
0
5
0 15 5 0
0 10 0 1
0 2 1 0
0 19 1 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b1 a1 a2 b0 lco oc1b ta1-1-oc1b ta2-1-lco
0
5
0 15 0 1
0 9 0 1
0 12 1 0
0 19 -1 0
0 17 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b1 a1 a2 b2 lco gasoleo ta1-1-gasoleo ta2-1-lco
0
5
0 15 2 1
0 11 0 1
0 12 1 0
0 17 1 3
0 21 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b1 a1 a2 b3 lco rat-a ta1-1-rat-a ta2-1-lco
0
5
0 15 3 1
0 8 0 1
0 12 1 0
0 17 1 3
0 14 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b1 a1 a2 b4 lco lco ta1-1-lco ta2-1-lco
0
5
0 15 4 1
0 16 0 1
0 12 1 0
0 17 1 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b1 a1 a2 b5 lco oca1 ta1-1-oca1 ta2-1-lco
0
5
0 15 5 1
0 10 0 1
0 12 1 0
0 17 1 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b2 a1 a2 b0 gasoleo oc1b ta1-1-oc1b ta2-1-gasoleo
0
5
0 15 0 2
0 9 0 1
0 6 1 0
0 19 -1 0
0 21 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b2 a1 a2 b1 gasoleo lco ta1-1-lco ta2-1-gasoleo
0
5
0 15 1 2
0 16 0 1
0 6 1 0
0 17 -1 0
0 21 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b2 a1 a2 b3 gasoleo rat-a ta1-1-rat-a ta2-1-gasoleo
0
5
0 15 3 2
0 8 0 1
0 6 1 0
0 21 1 3
0 14 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b2 a1 a2 b4 gasoleo lco ta1-1-lco ta2-1-gasoleo
0
5
0 15 4 2
0 16 0 1
0 6 1 0
0 21 1 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b2 a1 a2 b5 gasoleo oca1 ta1-1-oca1 ta2-1-gasoleo
0
5
0 15 5 2
0 10 0 1
0 6 1 0
0 21 1 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b3 a1 a2 b1 rat-a lco ta1-1-lco ta2-1-rat-a
0
5
0 15 1 3
0 16 0 1
0 0 1 0
0 17 -1 0
0 14 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b3 a1 a2 b2 rat-a gasoleo ta1-1-gasoleo ta2-1-rat-a
0
5
0 15 2 3
0 11 0 1
0 0 1 0
0 21 -1 0
0 14 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b3 a1 a2 b4 rat-a lco ta1-1-lco ta2-1-rat-a
0
5
0 15 4 3
0 16 0 1
0 0 1 0
0 14 1 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b4 a1 a2 b0 lco oc1b ta1-1-oc1b ta2-1-lco
0
5
0 15 0 4
0 9 0 1
0 12 1 0
0 19 -1 0
0 22 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b4 a1 a2 b1 lco lco ta1-1-lco ta2-1-lco
0
5
0 15 1 4
0 16 0 1
0 12 1 0
0 17 -1 0
0 22 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b4 a1 a2 b2 lco gasoleo ta1-1-gasoleo ta2-1-lco
0
5
0 15 2 4
0 11 0 1
0 12 1 0
0 21 -1 0
0 22 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b4 a1 a2 b3 lco rat-a ta1-1-rat-a ta2-1-lco
0
5
0 15 3 4
0 8 0 1
0 12 1 0
0 14 -1 0
0 22 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b4 a1 a2 b5 lco oca1 ta1-1-oca1 ta2-1-lco
0
5
0 15 5 4
0 10 0 1
0 12 1 0
0 22 1 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s12 b5 a1 a2 b0 oca1 oc1b ta1-1-oc1b ta2-1-oca1
0
5
0 15 0 5
0 9 0 1
0 3 1 0
0 19 -1 0
0 20 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b5 a1 a2 b1 oca1 lco ta1-1-lco ta2-1-oca1
0
5
0 15 1 5
0 16 0 1
0 3 1 0
0 17 -1 0
0 20 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b5 a1 a2 b2 oca1 gasoleo ta1-1-gasoleo ta2-1-oca1
0
5
0 15 2 5
0 11 0 1
0 3 1 0
0 21 -1 0
0 20 1 3
1
end_operator
begin_operator
pop-unitarypipe s12 b5 a1 a2 b4 oca1 lco ta1-1-lco ta2-1-oca1
0
5
0 15 4 5
0 16 0 1
0 3 1 0
0 22 -1 0
0 20 1 3
1
end_operator
begin_operator
pop-unitarypipe s13 b0 a1 a3 b1 oc1b lco ta1-1-lco ta3-1-oc1b
0
5
0 18 1 0
0 16 0 1
0 4 1 0
0 19 2 3
0 17 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b0 a1 a3 b2 oc1b gasoleo ta1-1-gasoleo ta3-1-oc1b
0
5
0 18 2 0
0 11 0 1
0 4 1 0
0 19 2 3
0 21 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b0 a1 a3 b4 oc1b lco ta1-1-lco ta3-1-oc1b
0
5
0 18 4 0
0 16 0 1
0 4 1 0
0 19 2 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b0 a1 a3 b5 oc1b oca1 ta1-1-oca1 ta3-1-oc1b
0
5
0 18 5 0
0 10 0 1
0 4 1 0
0 19 2 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b1 a1 a3 b0 lco oc1b ta1-1-oc1b ta3-1-lco
0
5
0 18 0 1
0 9 0 1
0 13 1 0
0 19 -1 0
0 17 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b1 a1 a3 b2 lco gasoleo ta1-1-gasoleo ta3-1-lco
0
5
0 18 2 1
0 11 0 1
0 13 1 0
0 17 2 3
0 21 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b1 a1 a3 b3 lco rat-a ta1-1-rat-a ta3-1-lco
0
5
0 18 3 1
0 8 0 1
0 13 1 0
0 17 2 3
0 14 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b1 a1 a3 b4 lco lco ta1-1-lco ta3-1-lco
0
5
0 18 4 1
0 16 0 1
0 13 1 0
0 17 2 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b1 a1 a3 b5 lco oca1 ta1-1-oca1 ta3-1-lco
0
5
0 18 5 1
0 10 0 1
0 13 1 0
0 17 2 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b2 a1 a3 b0 gasoleo oc1b ta1-1-oc1b ta3-1-gasoleo
0
5
0 18 0 2
0 9 0 1
0 7 1 0
0 19 -1 0
0 21 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b2 a1 a3 b1 gasoleo lco ta1-1-lco ta3-1-gasoleo
0
5
0 18 1 2
0 16 0 1
0 7 1 0
0 17 -1 0
0 21 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b2 a1 a3 b3 gasoleo rat-a ta1-1-rat-a ta3-1-gasoleo
0
5
0 18 3 2
0 8 0 1
0 7 1 0
0 21 2 3
0 14 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b2 a1 a3 b4 gasoleo lco ta1-1-lco ta3-1-gasoleo
0
5
0 18 4 2
0 16 0 1
0 7 1 0
0 21 2 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b2 a1 a3 b5 gasoleo oca1 ta1-1-oca1 ta3-1-gasoleo
0
5
0 18 5 2
0 10 0 1
0 7 1 0
0 21 2 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b3 a1 a3 b1 rat-a lco ta1-1-lco ta3-1-rat-a
0
5
0 18 1 3
0 16 0 1
0 1 1 0
0 17 -1 0
0 14 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b3 a1 a3 b2 rat-a gasoleo ta1-1-gasoleo ta3-1-rat-a
0
5
0 18 2 3
0 11 0 1
0 1 1 0
0 21 -1 0
0 14 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b3 a1 a3 b4 rat-a lco ta1-1-lco ta3-1-rat-a
0
5
0 18 4 3
0 16 0 1
0 1 1 0
0 14 2 3
0 22 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b4 a1 a3 b0 lco oc1b ta1-1-oc1b ta3-1-lco
0
5
0 18 0 4
0 9 0 1
0 13 1 0
0 19 -1 0
0 22 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b4 a1 a3 b1 lco lco ta1-1-lco ta3-1-lco
0
5
0 18 1 4
0 16 0 1
0 13 1 0
0 17 -1 0
0 22 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b4 a1 a3 b2 lco gasoleo ta1-1-gasoleo ta3-1-lco
0
5
0 18 2 4
0 11 0 1
0 13 1 0
0 21 -1 0
0 22 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b4 a1 a3 b3 lco rat-a ta1-1-rat-a ta3-1-lco
0
5
0 18 3 4
0 8 0 1
0 13 1 0
0 14 -1 0
0 22 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b4 a1 a3 b5 lco oca1 ta1-1-oca1 ta3-1-lco
0
5
0 18 5 4
0 10 0 1
0 13 1 0
0 22 2 3
0 20 -1 0
1
end_operator
begin_operator
pop-unitarypipe s13 b5 a1 a3 b0 oca1 oc1b ta1-1-oc1b ta3-1-oca1
0
5
0 18 0 5
0 9 0 1
0 5 1 0
0 19 -1 0
0 20 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b5 a1 a3 b1 oca1 lco ta1-1-lco ta3-1-oca1
0
5
0 18 1 5
0 16 0 1
0 5 1 0
0 17 -1 0
0 20 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b5 a1 a3 b2 oca1 gasoleo ta1-1-gasoleo ta3-1-oca1
0
5
0 18 2 5
0 11 0 1
0 5 1 0
0 21 -1 0
0 20 2 3
1
end_operator
begin_operator
pop-unitarypipe s13 b5 a1 a3 b4 oca1 lco ta1-1-lco ta3-1-oca1
0
5
0 18 4 5
0 16 0 1
0 5 1 0
0 22 -1 0
0 20 2 3
1
end_operator
begin_operator
push-unitarypipe s12 b0 a1 a2 b1 oc1b lco ta1-1-oc1b ta2-1-lco
0
5
0 15 1 0
0 9 1 0
0 12 0 1
0 19 0 3
0 17 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b0 a1 a2 b2 oc1b gasoleo ta1-1-oc1b ta2-1-gasoleo
0
5
0 15 2 0
0 9 1 0
0 6 0 1
0 19 0 3
0 21 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b0 a1 a2 b4 oc1b lco ta1-1-oc1b ta2-1-lco
0
5
0 15 4 0
0 9 1 0
0 12 0 1
0 19 0 3
0 22 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b0 a1 a2 b5 oc1b oca1 ta1-1-oc1b ta2-1-oca1
0
5
0 15 5 0
0 9 1 0
0 3 0 1
0 19 0 3
0 20 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b1 a1 a2 b0 lco oc1b ta1-1-lco ta2-1-oc1b
0
5
0 15 0 1
0 16 1 0
0 2 0 1
0 19 -1 1
0 17 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b1 a1 a2 b2 lco gasoleo ta1-1-lco ta2-1-gasoleo
0
5
0 15 2 1
0 16 1 0
0 6 0 1
0 17 0 3
0 21 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b1 a1 a2 b3 lco rat-a ta1-1-lco ta2-1-rat-a
0
5
0 15 3 1
0 16 1 0
0 0 0 1
0 17 0 3
0 14 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b1 a1 a2 b4 lco lco ta1-1-lco ta2-1-lco
0
5
0 15 4 1
0 16 1 0
0 12 0 1
0 17 0 3
0 22 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b1 a1 a2 b5 lco oca1 ta1-1-lco ta2-1-oca1
0
5
0 15 5 1
0 16 1 0
0 3 0 1
0 17 0 3
0 20 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b2 a1 a2 b0 gasoleo oc1b ta1-1-gasoleo ta2-1-oc1b
0
5
0 15 0 2
0 11 1 0
0 2 0 1
0 19 -1 1
0 21 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b2 a1 a2 b1 gasoleo lco ta1-1-gasoleo ta2-1-lco
0
5
0 15 1 2
0 11 1 0
0 12 0 1
0 17 -1 1
0 21 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b2 a1 a2 b3 gasoleo rat-a ta1-1-gasoleo ta2-1-rat-a
0
5
0 15 3 2
0 11 1 0
0 0 0 1
0 21 0 3
0 14 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b2 a1 a2 b4 gasoleo lco ta1-1-gasoleo ta2-1-lco
0
5
0 15 4 2
0 11 1 0
0 12 0 1
0 21 0 3
0 22 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b2 a1 a2 b5 gasoleo oca1 ta1-1-gasoleo ta2-1-oca1
0
5
0 15 5 2
0 11 1 0
0 3 0 1
0 21 0 3
0 20 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b3 a1 a2 b1 rat-a lco ta1-1-rat-a ta2-1-lco
0
5
0 15 1 3
0 8 1 0
0 12 0 1
0 17 -1 1
0 14 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b3 a1 a2 b2 rat-a gasoleo ta1-1-rat-a ta2-1-gasoleo
0
5
0 15 2 3
0 8 1 0
0 6 0 1
0 21 -1 1
0 14 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b3 a1 a2 b4 rat-a lco ta1-1-rat-a ta2-1-lco
0
5
0 15 4 3
0 8 1 0
0 12 0 1
0 14 0 3
0 22 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b4 a1 a2 b0 lco oc1b ta1-1-lco ta2-1-oc1b
0
5
0 15 0 4
0 16 1 0
0 2 0 1
0 19 -1 1
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b4 a1 a2 b1 lco lco ta1-1-lco ta2-1-lco
0
5
0 15 1 4
0 16 1 0
0 12 0 1
0 17 -1 1
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b4 a1 a2 b2 lco gasoleo ta1-1-lco ta2-1-gasoleo
0
5
0 15 2 4
0 16 1 0
0 6 0 1
0 21 -1 1
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b4 a1 a2 b3 lco rat-a ta1-1-lco ta2-1-rat-a
0
5
0 15 3 4
0 16 1 0
0 0 0 1
0 14 -1 1
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b4 a1 a2 b5 lco oca1 ta1-1-lco ta2-1-oca1
0
5
0 15 5 4
0 16 1 0
0 3 0 1
0 22 0 3
0 20 -1 1
1
end_operator
begin_operator
push-unitarypipe s12 b5 a1 a2 b0 oca1 oc1b ta1-1-oca1 ta2-1-oc1b
0
5
0 15 0 5
0 10 1 0
0 2 0 1
0 19 -1 1
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b5 a1 a2 b1 oca1 lco ta1-1-oca1 ta2-1-lco
0
5
0 15 1 5
0 10 1 0
0 12 0 1
0 17 -1 1
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b5 a1 a2 b2 oca1 gasoleo ta1-1-oca1 ta2-1-gasoleo
0
5
0 15 2 5
0 10 1 0
0 6 0 1
0 21 -1 1
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s12 b5 a1 a2 b4 oca1 lco ta1-1-oca1 ta2-1-lco
0
5
0 15 4 5
0 10 1 0
0 12 0 1
0 22 -1 1
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b0 a1 a3 b1 oc1b lco ta1-1-oc1b ta3-1-lco
0
5
0 18 1 0
0 9 1 0
0 13 0 1
0 19 0 3
0 17 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b0 a1 a3 b2 oc1b gasoleo ta1-1-oc1b ta3-1-gasoleo
0
5
0 18 2 0
0 9 1 0
0 7 0 1
0 19 0 3
0 21 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b0 a1 a3 b4 oc1b lco ta1-1-oc1b ta3-1-lco
0
5
0 18 4 0
0 9 1 0
0 13 0 1
0 19 0 3
0 22 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b0 a1 a3 b5 oc1b oca1 ta1-1-oc1b ta3-1-oca1
0
5
0 18 5 0
0 9 1 0
0 5 0 1
0 19 0 3
0 20 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b1 a1 a3 b0 lco oc1b ta1-1-lco ta3-1-oc1b
0
5
0 18 0 1
0 16 1 0
0 4 0 1
0 19 -1 2
0 17 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b1 a1 a3 b2 lco gasoleo ta1-1-lco ta3-1-gasoleo
0
5
0 18 2 1
0 16 1 0
0 7 0 1
0 17 0 3
0 21 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b1 a1 a3 b3 lco rat-a ta1-1-lco ta3-1-rat-a
0
5
0 18 3 1
0 16 1 0
0 1 0 1
0 17 0 3
0 14 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b1 a1 a3 b4 lco lco ta1-1-lco ta3-1-lco
0
5
0 18 4 1
0 16 1 0
0 13 0 1
0 17 0 3
0 22 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b1 a1 a3 b5 lco oca1 ta1-1-lco ta3-1-oca1
0
5
0 18 5 1
0 16 1 0
0 5 0 1
0 17 0 3
0 20 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b2 a1 a3 b0 gasoleo oc1b ta1-1-gasoleo ta3-1-oc1b
0
5
0 18 0 2
0 11 1 0
0 4 0 1
0 19 -1 2
0 21 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b2 a1 a3 b1 gasoleo lco ta1-1-gasoleo ta3-1-lco
0
5
0 18 1 2
0 11 1 0
0 13 0 1
0 17 -1 2
0 21 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b2 a1 a3 b3 gasoleo rat-a ta1-1-gasoleo ta3-1-rat-a
0
5
0 18 3 2
0 11 1 0
0 1 0 1
0 21 0 3
0 14 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b2 a1 a3 b4 gasoleo lco ta1-1-gasoleo ta3-1-lco
0
5
0 18 4 2
0 11 1 0
0 13 0 1
0 21 0 3
0 22 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b2 a1 a3 b5 gasoleo oca1 ta1-1-gasoleo ta3-1-oca1
0
5
0 18 5 2
0 11 1 0
0 5 0 1
0 21 0 3
0 20 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b3 a1 a3 b1 rat-a lco ta1-1-rat-a ta3-1-lco
0
5
0 18 1 3
0 8 1 0
0 13 0 1
0 17 -1 2
0 14 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b3 a1 a3 b2 rat-a gasoleo ta1-1-rat-a ta3-1-gasoleo
0
5
0 18 2 3
0 8 1 0
0 7 0 1
0 21 -1 2
0 14 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b3 a1 a3 b4 rat-a lco ta1-1-rat-a ta3-1-lco
0
5
0 18 4 3
0 8 1 0
0 13 0 1
0 14 0 3
0 22 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b4 a1 a3 b0 lco oc1b ta1-1-lco ta3-1-oc1b
0
5
0 18 0 4
0 16 1 0
0 4 0 1
0 19 -1 2
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b4 a1 a3 b1 lco lco ta1-1-lco ta3-1-lco
0
5
0 18 1 4
0 16 1 0
0 13 0 1
0 17 -1 2
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b4 a1 a3 b2 lco gasoleo ta1-1-lco ta3-1-gasoleo
0
5
0 18 2 4
0 16 1 0
0 7 0 1
0 21 -1 2
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b4 a1 a3 b3 lco rat-a ta1-1-lco ta3-1-rat-a
0
5
0 18 3 4
0 16 1 0
0 1 0 1
0 14 -1 2
0 22 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b4 a1 a3 b5 lco oca1 ta1-1-lco ta3-1-oca1
0
5
0 18 5 4
0 16 1 0
0 5 0 1
0 22 0 3
0 20 -1 2
1
end_operator
begin_operator
push-unitarypipe s13 b5 a1 a3 b0 oca1 oc1b ta1-1-oca1 ta3-1-oc1b
0
5
0 18 0 5
0 10 1 0
0 4 0 1
0 19 -1 2
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b5 a1 a3 b1 oca1 lco ta1-1-oca1 ta3-1-lco
0
5
0 18 1 5
0 10 1 0
0 13 0 1
0 17 -1 2
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b5 a1 a3 b2 oca1 gasoleo ta1-1-oca1 ta3-1-gasoleo
0
5
0 18 2 5
0 10 1 0
0 7 0 1
0 21 -1 2
0 20 0 3
1
end_operator
begin_operator
push-unitarypipe s13 b5 a1 a3 b4 oca1 lco ta1-1-oca1 ta3-1-lco
0
5
0 18 4 5
0 10 1 0
0 13 0 1
0 22 -1 2
0 20 0 3
1
end_operator
0

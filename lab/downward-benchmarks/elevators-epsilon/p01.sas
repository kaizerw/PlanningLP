begin_version
3
end_version
begin_metric
1
end_metric
9
begin_variable
var0
-1
7
Atom lift-at(slow1-0, n10)
Atom lift-at(slow1-0, n11)
Atom lift-at(slow1-0, n12)
Atom lift-at(slow1-0, n6)
Atom lift-at(slow1-0, n7)
Atom lift-at(slow1-0, n8)
Atom lift-at(slow1-0, n9)
end_variable
begin_variable
var1
-1
7
Atom lift-at(slow0-0, n0)
Atom lift-at(slow0-0, n1)
Atom lift-at(slow0-0, n2)
Atom lift-at(slow0-0, n3)
Atom lift-at(slow0-0, n4)
Atom lift-at(slow0-0, n5)
Atom lift-at(slow0-0, n6)
end_variable
begin_variable
var2
-1
5
Atom lift-at(fast0, n0)
Atom lift-at(fast0, n12)
Atom lift-at(fast0, n3)
Atom lift-at(fast0, n6)
Atom lift-at(fast0, n9)
end_variable
begin_variable
var3
-1
3
Atom passengers(slow0-0, n0)
Atom passengers(slow0-0, n1)
Atom passengers(slow0-0, n2)
end_variable
begin_variable
var4
-1
3
Atom passengers(slow1-0, n0)
Atom passengers(slow1-0, n1)
Atom passengers(slow1-0, n2)
end_variable
begin_variable
var5
-1
4
Atom passengers(fast0, n0)
Atom passengers(fast0, n1)
Atom passengers(fast0, n2)
Atom passengers(fast0, n3)
end_variable
begin_variable
var6
-1
16
Atom boarded(p0, fast0)
Atom boarded(p0, slow0-0)
Atom boarded(p0, slow1-0)
Atom passenger-at(p0, n0)
Atom passenger-at(p0, n1)
Atom passenger-at(p0, n10)
Atom passenger-at(p0, n11)
Atom passenger-at(p0, n12)
Atom passenger-at(p0, n2)
Atom passenger-at(p0, n3)
Atom passenger-at(p0, n4)
Atom passenger-at(p0, n5)
Atom passenger-at(p0, n6)
Atom passenger-at(p0, n7)
Atom passenger-at(p0, n8)
Atom passenger-at(p0, n9)
end_variable
begin_variable
var7
-1
16
Atom boarded(p1, fast0)
Atom boarded(p1, slow0-0)
Atom boarded(p1, slow1-0)
Atom passenger-at(p1, n0)
Atom passenger-at(p1, n1)
Atom passenger-at(p1, n10)
Atom passenger-at(p1, n11)
Atom passenger-at(p1, n12)
Atom passenger-at(p1, n2)
Atom passenger-at(p1, n3)
Atom passenger-at(p1, n4)
Atom passenger-at(p1, n5)
Atom passenger-at(p1, n6)
Atom passenger-at(p1, n7)
Atom passenger-at(p1, n8)
Atom passenger-at(p1, n9)
end_variable
begin_variable
var8
-1
16
Atom boarded(p2, fast0)
Atom boarded(p2, slow0-0)
Atom boarded(p2, slow1-0)
Atom passenger-at(p2, n0)
Atom passenger-at(p2, n1)
Atom passenger-at(p2, n10)
Atom passenger-at(p2, n11)
Atom passenger-at(p2, n12)
Atom passenger-at(p2, n2)
Atom passenger-at(p2, n3)
Atom passenger-at(p2, n4)
Atom passenger-at(p2, n5)
Atom passenger-at(p2, n6)
Atom passenger-at(p2, n7)
Atom passenger-at(p2, n8)
Atom passenger-at(p2, n9)
end_variable
0
begin_state
5
6
3
0
0
0
3
3
8
end_state
begin_goal
3
6 9
7 6
8 13
end_goal
362
begin_operator
board p0 fast0 n0 n0 n1
1
2 0
2
0 6 3 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n0 n1 n2
1
2 0
2
0 6 3 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n0 n2 n3
1
2 0
2
0 6 3 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n12 n0 n1
1
2 1
2
0 6 7 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n12 n1 n2
1
2 1
2
0 6 7 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n12 n2 n3
1
2 1
2
0 6 7 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n3 n0 n1
1
2 2
2
0 6 9 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n3 n1 n2
1
2 2
2
0 6 9 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n3 n2 n3
1
2 2
2
0 6 9 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n6 n0 n1
1
2 3
2
0 6 12 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n6 n1 n2
1
2 3
2
0 6 12 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n6 n2 n3
1
2 3
2
0 6 12 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n9 n0 n1
1
2 4
2
0 6 15 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n9 n1 n2
1
2 4
2
0 6 15 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n9 n2 n3
1
2 4
2
0 6 15 0
0 5 2 3
0
end_operator
begin_operator
board p0 slow0-0 n0 n0 n1
1
1 0
2
0 6 3 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n0 n1 n2
1
1 0
2
0 6 3 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n1 n0 n1
1
1 1
2
0 6 4 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n1 n1 n2
1
1 1
2
0 6 4 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n2 n0 n1
1
1 2
2
0 6 8 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n2 n1 n2
1
1 2
2
0 6 8 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n3 n0 n1
1
1 3
2
0 6 9 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n3 n1 n2
1
1 3
2
0 6 9 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n4 n0 n1
1
1 4
2
0 6 10 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n4 n1 n2
1
1 4
2
0 6 10 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n5 n0 n1
1
1 5
2
0 6 11 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n5 n1 n2
1
1 5
2
0 6 11 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n6 n0 n1
1
1 6
2
0 6 12 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n6 n1 n2
1
1 6
2
0 6 12 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow1-0 n10 n0 n1
1
0 0
2
0 6 5 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n10 n1 n2
1
0 0
2
0 6 5 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n11 n0 n1
1
0 1
2
0 6 6 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n11 n1 n2
1
0 1
2
0 6 6 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n12 n0 n1
1
0 2
2
0 6 7 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n12 n1 n2
1
0 2
2
0 6 7 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n6 n0 n1
1
0 3
2
0 6 12 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n6 n1 n2
1
0 3
2
0 6 12 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n7 n0 n1
1
0 4
2
0 6 13 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n7 n1 n2
1
0 4
2
0 6 13 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n8 n0 n1
1
0 5
2
0 6 14 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n8 n1 n2
1
0 5
2
0 6 14 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n9 n0 n1
1
0 6
2
0 6 15 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n9 n1 n2
1
0 6
2
0 6 15 2
0 4 1 2
0
end_operator
begin_operator
board p1 fast0 n0 n0 n1
1
2 0
2
0 7 3 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n0 n1 n2
1
2 0
2
0 7 3 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n0 n2 n3
1
2 0
2
0 7 3 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n12 n0 n1
1
2 1
2
0 7 7 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n12 n1 n2
1
2 1
2
0 7 7 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n12 n2 n3
1
2 1
2
0 7 7 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n3 n0 n1
1
2 2
2
0 7 9 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n3 n1 n2
1
2 2
2
0 7 9 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n3 n2 n3
1
2 2
2
0 7 9 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n6 n0 n1
1
2 3
2
0 7 12 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n6 n1 n2
1
2 3
2
0 7 12 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n6 n2 n3
1
2 3
2
0 7 12 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n9 n0 n1
1
2 4
2
0 7 15 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n9 n1 n2
1
2 4
2
0 7 15 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n9 n2 n3
1
2 4
2
0 7 15 0
0 5 2 3
0
end_operator
begin_operator
board p1 slow0-0 n0 n0 n1
1
1 0
2
0 7 3 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n0 n1 n2
1
1 0
2
0 7 3 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n1 n0 n1
1
1 1
2
0 7 4 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n1 n1 n2
1
1 1
2
0 7 4 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n2 n0 n1
1
1 2
2
0 7 8 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n2 n1 n2
1
1 2
2
0 7 8 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n3 n0 n1
1
1 3
2
0 7 9 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n3 n1 n2
1
1 3
2
0 7 9 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n4 n0 n1
1
1 4
2
0 7 10 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n4 n1 n2
1
1 4
2
0 7 10 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n5 n0 n1
1
1 5
2
0 7 11 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n5 n1 n2
1
1 5
2
0 7 11 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n6 n0 n1
1
1 6
2
0 7 12 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n6 n1 n2
1
1 6
2
0 7 12 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow1-0 n10 n0 n1
1
0 0
2
0 7 5 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n10 n1 n2
1
0 0
2
0 7 5 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n11 n0 n1
1
0 1
2
0 7 6 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n11 n1 n2
1
0 1
2
0 7 6 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n12 n0 n1
1
0 2
2
0 7 7 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n12 n1 n2
1
0 2
2
0 7 7 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n6 n0 n1
1
0 3
2
0 7 12 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n6 n1 n2
1
0 3
2
0 7 12 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n7 n0 n1
1
0 4
2
0 7 13 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n7 n1 n2
1
0 4
2
0 7 13 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n8 n0 n1
1
0 5
2
0 7 14 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n8 n1 n2
1
0 5
2
0 7 14 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n9 n0 n1
1
0 6
2
0 7 15 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n9 n1 n2
1
0 6
2
0 7 15 2
0 4 1 2
0
end_operator
begin_operator
board p2 fast0 n0 n0 n1
1
2 0
2
0 8 3 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n0 n1 n2
1
2 0
2
0 8 3 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n0 n2 n3
1
2 0
2
0 8 3 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n12 n0 n1
1
2 1
2
0 8 7 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n12 n1 n2
1
2 1
2
0 8 7 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n12 n2 n3
1
2 1
2
0 8 7 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n3 n0 n1
1
2 2
2
0 8 9 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n3 n1 n2
1
2 2
2
0 8 9 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n3 n2 n3
1
2 2
2
0 8 9 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n6 n0 n1
1
2 3
2
0 8 12 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n6 n1 n2
1
2 3
2
0 8 12 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n6 n2 n3
1
2 3
2
0 8 12 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n9 n0 n1
1
2 4
2
0 8 15 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n9 n1 n2
1
2 4
2
0 8 15 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n9 n2 n3
1
2 4
2
0 8 15 0
0 5 2 3
0
end_operator
begin_operator
board p2 slow0-0 n0 n0 n1
1
1 0
2
0 8 3 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n0 n1 n2
1
1 0
2
0 8 3 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n1 n0 n1
1
1 1
2
0 8 4 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n1 n1 n2
1
1 1
2
0 8 4 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n2 n0 n1
1
1 2
2
0 8 8 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n2 n1 n2
1
1 2
2
0 8 8 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n3 n0 n1
1
1 3
2
0 8 9 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n3 n1 n2
1
1 3
2
0 8 9 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n4 n0 n1
1
1 4
2
0 8 10 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n4 n1 n2
1
1 4
2
0 8 10 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n5 n0 n1
1
1 5
2
0 8 11 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n5 n1 n2
1
1 5
2
0 8 11 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n6 n0 n1
1
1 6
2
0 8 12 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n6 n1 n2
1
1 6
2
0 8 12 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow1-0 n10 n0 n1
1
0 0
2
0 8 5 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n10 n1 n2
1
0 0
2
0 8 5 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n11 n0 n1
1
0 1
2
0 8 6 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n11 n1 n2
1
0 1
2
0 8 6 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n12 n0 n1
1
0 2
2
0 8 7 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n12 n1 n2
1
0 2
2
0 8 7 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n6 n0 n1
1
0 3
2
0 8 12 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n6 n1 n2
1
0 3
2
0 8 12 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n7 n0 n1
1
0 4
2
0 8 13 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n7 n1 n2
1
0 4
2
0 8 13 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n8 n0 n1
1
0 5
2
0 8 14 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n8 n1 n2
1
0 5
2
0 8 14 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n9 n0 n1
1
0 6
2
0 8 15 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n9 n1 n2
1
0 6
2
0 8 15 2
0 4 1 2
0
end_operator
begin_operator
leave p0 fast0 n0 n1 n0
1
2 0
2
0 6 0 3
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n0 n2 n1
1
2 0
2
0 6 0 3
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n0 n3 n2
1
2 0
2
0 6 0 3
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n12 n1 n0
1
2 1
2
0 6 0 7
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n12 n2 n1
1
2 1
2
0 6 0 7
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n12 n3 n2
1
2 1
2
0 6 0 7
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n3 n1 n0
1
2 2
2
0 6 0 9
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n3 n2 n1
1
2 2
2
0 6 0 9
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n3 n3 n2
1
2 2
2
0 6 0 9
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n6 n1 n0
1
2 3
2
0 6 0 12
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n6 n2 n1
1
2 3
2
0 6 0 12
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n6 n3 n2
1
2 3
2
0 6 0 12
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n9 n1 n0
1
2 4
2
0 6 0 15
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n9 n2 n1
1
2 4
2
0 6 0 15
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n9 n3 n2
1
2 4
2
0 6 0 15
0 5 3 2
0
end_operator
begin_operator
leave p0 slow0-0 n0 n1 n0
1
1 0
2
0 6 1 3
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n0 n2 n1
1
1 0
2
0 6 1 3
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n1 n1 n0
1
1 1
2
0 6 1 4
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n1 n2 n1
1
1 1
2
0 6 1 4
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n2 n1 n0
1
1 2
2
0 6 1 8
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n2 n2 n1
1
1 2
2
0 6 1 8
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n3 n1 n0
1
1 3
2
0 6 1 9
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n3 n2 n1
1
1 3
2
0 6 1 9
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n4 n1 n0
1
1 4
2
0 6 1 10
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n4 n2 n1
1
1 4
2
0 6 1 10
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n5 n1 n0
1
1 5
2
0 6 1 11
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n5 n2 n1
1
1 5
2
0 6 1 11
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n6 n1 n0
1
1 6
2
0 6 1 12
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n6 n2 n1
1
1 6
2
0 6 1 12
0 3 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n10 n1 n0
1
0 0
2
0 6 2 5
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n10 n2 n1
1
0 0
2
0 6 2 5
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n11 n1 n0
1
0 1
2
0 6 2 6
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n11 n2 n1
1
0 1
2
0 6 2 6
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n12 n1 n0
1
0 2
2
0 6 2 7
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n12 n2 n1
1
0 2
2
0 6 2 7
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n6 n1 n0
1
0 3
2
0 6 2 12
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n6 n2 n1
1
0 3
2
0 6 2 12
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n7 n1 n0
1
0 4
2
0 6 2 13
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n7 n2 n1
1
0 4
2
0 6 2 13
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n8 n1 n0
1
0 5
2
0 6 2 14
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n8 n2 n1
1
0 5
2
0 6 2 14
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n9 n1 n0
1
0 6
2
0 6 2 15
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n9 n2 n1
1
0 6
2
0 6 2 15
0 4 2 1
0
end_operator
begin_operator
leave p1 fast0 n0 n1 n0
1
2 0
2
0 7 0 3
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n0 n2 n1
1
2 0
2
0 7 0 3
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n0 n3 n2
1
2 0
2
0 7 0 3
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n12 n1 n0
1
2 1
2
0 7 0 7
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n12 n2 n1
1
2 1
2
0 7 0 7
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n12 n3 n2
1
2 1
2
0 7 0 7
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n3 n1 n0
1
2 2
2
0 7 0 9
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n3 n2 n1
1
2 2
2
0 7 0 9
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n3 n3 n2
1
2 2
2
0 7 0 9
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n6 n1 n0
1
2 3
2
0 7 0 12
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n6 n2 n1
1
2 3
2
0 7 0 12
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n6 n3 n2
1
2 3
2
0 7 0 12
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n9 n1 n0
1
2 4
2
0 7 0 15
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n9 n2 n1
1
2 4
2
0 7 0 15
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n9 n3 n2
1
2 4
2
0 7 0 15
0 5 3 2
0
end_operator
begin_operator
leave p1 slow0-0 n0 n1 n0
1
1 0
2
0 7 1 3
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n0 n2 n1
1
1 0
2
0 7 1 3
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n1 n1 n0
1
1 1
2
0 7 1 4
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n1 n2 n1
1
1 1
2
0 7 1 4
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n2 n1 n0
1
1 2
2
0 7 1 8
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n2 n2 n1
1
1 2
2
0 7 1 8
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n3 n1 n0
1
1 3
2
0 7 1 9
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n3 n2 n1
1
1 3
2
0 7 1 9
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n4 n1 n0
1
1 4
2
0 7 1 10
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n4 n2 n1
1
1 4
2
0 7 1 10
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n5 n1 n0
1
1 5
2
0 7 1 11
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n5 n2 n1
1
1 5
2
0 7 1 11
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n6 n1 n0
1
1 6
2
0 7 1 12
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n6 n2 n1
1
1 6
2
0 7 1 12
0 3 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n10 n1 n0
1
0 0
2
0 7 2 5
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n10 n2 n1
1
0 0
2
0 7 2 5
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n11 n1 n0
1
0 1
2
0 7 2 6
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n11 n2 n1
1
0 1
2
0 7 2 6
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n12 n1 n0
1
0 2
2
0 7 2 7
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n12 n2 n1
1
0 2
2
0 7 2 7
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n6 n1 n0
1
0 3
2
0 7 2 12
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n6 n2 n1
1
0 3
2
0 7 2 12
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n7 n1 n0
1
0 4
2
0 7 2 13
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n7 n2 n1
1
0 4
2
0 7 2 13
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n8 n1 n0
1
0 5
2
0 7 2 14
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n8 n2 n1
1
0 5
2
0 7 2 14
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n9 n1 n0
1
0 6
2
0 7 2 15
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n9 n2 n1
1
0 6
2
0 7 2 15
0 4 2 1
0
end_operator
begin_operator
leave p2 fast0 n0 n1 n0
1
2 0
2
0 8 0 3
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n0 n2 n1
1
2 0
2
0 8 0 3
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n0 n3 n2
1
2 0
2
0 8 0 3
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n12 n1 n0
1
2 1
2
0 8 0 7
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n12 n2 n1
1
2 1
2
0 8 0 7
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n12 n3 n2
1
2 1
2
0 8 0 7
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n3 n1 n0
1
2 2
2
0 8 0 9
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n3 n2 n1
1
2 2
2
0 8 0 9
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n3 n3 n2
1
2 2
2
0 8 0 9
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n6 n1 n0
1
2 3
2
0 8 0 12
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n6 n2 n1
1
2 3
2
0 8 0 12
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n6 n3 n2
1
2 3
2
0 8 0 12
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n9 n1 n0
1
2 4
2
0 8 0 15
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n9 n2 n1
1
2 4
2
0 8 0 15
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n9 n3 n2
1
2 4
2
0 8 0 15
0 5 3 2
0
end_operator
begin_operator
leave p2 slow0-0 n0 n1 n0
1
1 0
2
0 8 1 3
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n0 n2 n1
1
1 0
2
0 8 1 3
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n1 n1 n0
1
1 1
2
0 8 1 4
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n1 n2 n1
1
1 1
2
0 8 1 4
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n2 n1 n0
1
1 2
2
0 8 1 8
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n2 n2 n1
1
1 2
2
0 8 1 8
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n3 n1 n0
1
1 3
2
0 8 1 9
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n3 n2 n1
1
1 3
2
0 8 1 9
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n4 n1 n0
1
1 4
2
0 8 1 10
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n4 n2 n1
1
1 4
2
0 8 1 10
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n5 n1 n0
1
1 5
2
0 8 1 11
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n5 n2 n1
1
1 5
2
0 8 1 11
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n6 n1 n0
1
1 6
2
0 8 1 12
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n6 n2 n1
1
1 6
2
0 8 1 12
0 3 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n10 n1 n0
1
0 0
2
0 8 2 5
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n10 n2 n1
1
0 0
2
0 8 2 5
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n11 n1 n0
1
0 1
2
0 8 2 6
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n11 n2 n1
1
0 1
2
0 8 2 6
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n12 n1 n0
1
0 2
2
0 8 2 7
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n12 n2 n1
1
0 2
2
0 8 2 7
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n6 n1 n0
1
0 3
2
0 8 2 12
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n6 n2 n1
1
0 3
2
0 8 2 12
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n7 n1 n0
1
0 4
2
0 8 2 13
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n7 n2 n1
1
0 4
2
0 8 2 13
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n8 n1 n0
1
0 5
2
0 8 2 14
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n8 n2 n1
1
0 5
2
0 8 2 14
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n9 n1 n0
1
0 6
2
0 8 2 15
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n9 n2 n1
1
0 6
2
0 8 2 15
0 4 2 1
0
end_operator
begin_operator
move-down-fast fast0 n12 n0
0
1
0 2 1 0
3700000
end_operator
begin_operator
move-down-fast fast0 n12 n3
0
1
0 2 1 2
2800000
end_operator
begin_operator
move-down-fast fast0 n12 n6
0
1
0 2 1 3
1900000
end_operator
begin_operator
move-down-fast fast0 n12 n9
0
1
0 2 1 4
10
end_operator
begin_operator
move-down-fast fast0 n3 n0
0
1
0 2 2 0
10
end_operator
begin_operator
move-down-fast fast0 n6 n0
0
1
0 2 3 0
1900000
end_operator
begin_operator
move-down-fast fast0 n6 n3
0
1
0 2 3 2
10
end_operator
begin_operator
move-down-fast fast0 n9 n0
0
1
0 2 4 0
2800000
end_operator
begin_operator
move-down-fast fast0 n9 n3
0
1
0 2 4 2
1900000
end_operator
begin_operator
move-down-fast fast0 n9 n6
0
1
0 2 4 3
10
end_operator
begin_operator
move-down-slow slow0-0 n1 n0
0
1
0 1 1 0
600000
end_operator
begin_operator
move-down-slow slow0-0 n2 n0
0
1
0 1 2 0
700000
end_operator
begin_operator
move-down-slow slow0-0 n2 n1
0
1
0 1 2 1
600000
end_operator
begin_operator
move-down-slow slow0-0 n3 n0
0
1
0 1 3 0
800000
end_operator
begin_operator
move-down-slow slow0-0 n3 n1
0
1
0 1 3 1
700000
end_operator
begin_operator
move-down-slow slow0-0 n3 n2
0
1
0 1 3 2
600000
end_operator
begin_operator
move-down-slow slow0-0 n4 n0
0
1
0 1 4 0
900000
end_operator
begin_operator
move-down-slow slow0-0 n4 n1
0
1
0 1 4 1
800000
end_operator
begin_operator
move-down-slow slow0-0 n4 n2
0
1
0 1 4 2
700000
end_operator
begin_operator
move-down-slow slow0-0 n4 n3
0
1
0 1 4 3
600000
end_operator
begin_operator
move-down-slow slow0-0 n5 n0
0
1
0 1 5 0
10
end_operator
begin_operator
move-down-slow slow0-0 n5 n1
0
1
0 1 5 1
900000
end_operator
begin_operator
move-down-slow slow0-0 n5 n2
0
1
0 1 5 2
800000
end_operator
begin_operator
move-down-slow slow0-0 n5 n3
0
1
0 1 5 3
700000
end_operator
begin_operator
move-down-slow slow0-0 n5 n4
0
1
0 1 5 4
600000
end_operator
begin_operator
move-down-slow slow0-0 n6 n0
0
1
0 1 6 0
1100000
end_operator
begin_operator
move-down-slow slow0-0 n6 n1
0
1
0 1 6 1
10
end_operator
begin_operator
move-down-slow slow0-0 n6 n2
0
1
0 1 6 2
900000
end_operator
begin_operator
move-down-slow slow0-0 n6 n3
0
1
0 1 6 3
800000
end_operator
begin_operator
move-down-slow slow0-0 n6 n4
0
1
0 1 6 4
700000
end_operator
begin_operator
move-down-slow slow0-0 n6 n5
0
1
0 1 6 5
600000
end_operator
begin_operator
move-down-slow slow1-0 n10 n6
0
1
0 0 0 3
900000
end_operator
begin_operator
move-down-slow slow1-0 n10 n7
0
1
0 0 0 4
800000
end_operator
begin_operator
move-down-slow slow1-0 n10 n8
0
1
0 0 0 5
700000
end_operator
begin_operator
move-down-slow slow1-0 n10 n9
0
1
0 0 0 6
600000
end_operator
begin_operator
move-down-slow slow1-0 n11 n10
0
1
0 0 1 0
600000
end_operator
begin_operator
move-down-slow slow1-0 n11 n6
0
1
0 0 1 3
10
end_operator
begin_operator
move-down-slow slow1-0 n11 n7
0
1
0 0 1 4
900000
end_operator
begin_operator
move-down-slow slow1-0 n11 n8
0
1
0 0 1 5
800000
end_operator
begin_operator
move-down-slow slow1-0 n11 n9
0
1
0 0 1 6
700000
end_operator
begin_operator
move-down-slow slow1-0 n12 n10
0
1
0 0 2 0
700000
end_operator
begin_operator
move-down-slow slow1-0 n12 n11
0
1
0 0 2 1
600000
end_operator
begin_operator
move-down-slow slow1-0 n12 n6
0
1
0 0 2 3
1100000
end_operator
begin_operator
move-down-slow slow1-0 n12 n7
0
1
0 0 2 4
10
end_operator
begin_operator
move-down-slow slow1-0 n12 n8
0
1
0 0 2 5
900000
end_operator
begin_operator
move-down-slow slow1-0 n12 n9
0
1
0 0 2 6
800000
end_operator
begin_operator
move-down-slow slow1-0 n7 n6
0
1
0 0 4 3
600000
end_operator
begin_operator
move-down-slow slow1-0 n8 n6
0
1
0 0 5 3
700000
end_operator
begin_operator
move-down-slow slow1-0 n8 n7
0
1
0 0 5 4
600000
end_operator
begin_operator
move-down-slow slow1-0 n9 n6
0
1
0 0 6 3
800000
end_operator
begin_operator
move-down-slow slow1-0 n9 n7
0
1
0 0 6 4
700000
end_operator
begin_operator
move-down-slow slow1-0 n9 n8
0
1
0 0 6 5
600000
end_operator
begin_operator
move-up-fast fast0 n0 n12
0
1
0 2 0 1
3700000
end_operator
begin_operator
move-up-fast fast0 n0 n3
0
1
0 2 0 2
10
end_operator
begin_operator
move-up-fast fast0 n0 n6
0
1
0 2 0 3
1900000
end_operator
begin_operator
move-up-fast fast0 n0 n9
0
1
0 2 0 4
2800000
end_operator
begin_operator
move-up-fast fast0 n3 n12
0
1
0 2 2 1
2800000
end_operator
begin_operator
move-up-fast fast0 n3 n6
0
1
0 2 2 3
10
end_operator
begin_operator
move-up-fast fast0 n3 n9
0
1
0 2 2 4
1900000
end_operator
begin_operator
move-up-fast fast0 n6 n12
0
1
0 2 3 1
1900000
end_operator
begin_operator
move-up-fast fast0 n6 n9
0
1
0 2 3 4
10
end_operator
begin_operator
move-up-fast fast0 n9 n12
0
1
0 2 4 1
10
end_operator
begin_operator
move-up-slow slow0-0 n0 n1
0
1
0 1 0 1
600000
end_operator
begin_operator
move-up-slow slow0-0 n0 n2
0
1
0 1 0 2
700000
end_operator
begin_operator
move-up-slow slow0-0 n0 n3
0
1
0 1 0 3
800000
end_operator
begin_operator
move-up-slow slow0-0 n0 n4
0
1
0 1 0 4
900000
end_operator
begin_operator
move-up-slow slow0-0 n0 n5
0
1
0 1 0 5
10
end_operator
begin_operator
move-up-slow slow0-0 n0 n6
0
1
0 1 0 6
1100000
end_operator
begin_operator
move-up-slow slow0-0 n1 n2
0
1
0 1 1 2
600000
end_operator
begin_operator
move-up-slow slow0-0 n1 n3
0
1
0 1 1 3
700000
end_operator
begin_operator
move-up-slow slow0-0 n1 n4
0
1
0 1 1 4
800000
end_operator
begin_operator
move-up-slow slow0-0 n1 n5
0
1
0 1 1 5
900000
end_operator
begin_operator
move-up-slow slow0-0 n1 n6
0
1
0 1 1 6
10
end_operator
begin_operator
move-up-slow slow0-0 n2 n3
0
1
0 1 2 3
600000
end_operator
begin_operator
move-up-slow slow0-0 n2 n4
0
1
0 1 2 4
700000
end_operator
begin_operator
move-up-slow slow0-0 n2 n5
0
1
0 1 2 5
800000
end_operator
begin_operator
move-up-slow slow0-0 n2 n6
0
1
0 1 2 6
900000
end_operator
begin_operator
move-up-slow slow0-0 n3 n4
0
1
0 1 3 4
600000
end_operator
begin_operator
move-up-slow slow0-0 n3 n5
0
1
0 1 3 5
700000
end_operator
begin_operator
move-up-slow slow0-0 n3 n6
0
1
0 1 3 6
800000
end_operator
begin_operator
move-up-slow slow0-0 n4 n5
0
1
0 1 4 5
600000
end_operator
begin_operator
move-up-slow slow0-0 n4 n6
0
1
0 1 4 6
700000
end_operator
begin_operator
move-up-slow slow0-0 n5 n6
0
1
0 1 5 6
600000
end_operator
begin_operator
move-up-slow slow1-0 n10 n11
0
1
0 0 0 1
600000
end_operator
begin_operator
move-up-slow slow1-0 n10 n12
0
1
0 0 0 2
700000
end_operator
begin_operator
move-up-slow slow1-0 n11 n12
0
1
0 0 1 2
600000
end_operator
begin_operator
move-up-slow slow1-0 n6 n10
0
1
0 0 3 0
900000
end_operator
begin_operator
move-up-slow slow1-0 n6 n11
0
1
0 0 3 1
10
end_operator
begin_operator
move-up-slow slow1-0 n6 n12
0
1
0 0 3 2
1100000
end_operator
begin_operator
move-up-slow slow1-0 n6 n7
0
1
0 0 3 4
600000
end_operator
begin_operator
move-up-slow slow1-0 n6 n8
0
1
0 0 3 5
700000
end_operator
begin_operator
move-up-slow slow1-0 n6 n9
0
1
0 0 3 6
800000
end_operator
begin_operator
move-up-slow slow1-0 n7 n10
0
1
0 0 4 0
800000
end_operator
begin_operator
move-up-slow slow1-0 n7 n11
0
1
0 0 4 1
900000
end_operator
begin_operator
move-up-slow slow1-0 n7 n12
0
1
0 0 4 2
10
end_operator
begin_operator
move-up-slow slow1-0 n7 n8
0
1
0 0 4 5
600000
end_operator
begin_operator
move-up-slow slow1-0 n7 n9
0
1
0 0 4 6
700000
end_operator
begin_operator
move-up-slow slow1-0 n8 n10
0
1
0 0 5 0
700000
end_operator
begin_operator
move-up-slow slow1-0 n8 n11
0
1
0 0 5 1
800000
end_operator
begin_operator
move-up-slow slow1-0 n8 n12
0
1
0 0 5 2
900000
end_operator
begin_operator
move-up-slow slow1-0 n8 n9
0
1
0 0 5 6
600000
end_operator
begin_operator
move-up-slow slow1-0 n9 n10
0
1
0 0 6 0
600000
end_operator
begin_operator
move-up-slow slow1-0 n9 n11
0
1
0 0 6 1
700000
end_operator
begin_operator
move-up-slow slow1-0 n9 n12
0
1
0 0 6 2
800000
end_operator
0

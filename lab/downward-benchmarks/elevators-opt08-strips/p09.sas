begin_version
3
end_version
begin_metric
1
end_metric
13
begin_variable
var0
-1
5
Atom lift-at(slow1-0, n4)
Atom lift-at(slow1-0, n5)
Atom lift-at(slow1-0, n6)
Atom lift-at(slow1-0, n7)
Atom lift-at(slow1-0, n8)
end_variable
begin_variable
var1
-1
5
Atom lift-at(slow0-0, n0)
Atom lift-at(slow0-0, n1)
Atom lift-at(slow0-0, n2)
Atom lift-at(slow0-0, n3)
Atom lift-at(slow0-0, n4)
end_variable
begin_variable
var2
-1
5
Atom lift-at(fast0, n0)
Atom lift-at(fast0, n2)
Atom lift-at(fast0, n4)
Atom lift-at(fast0, n6)
Atom lift-at(fast0, n8)
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
12
Atom boarded(p0, fast0)
Atom boarded(p0, slow0-0)
Atom boarded(p0, slow1-0)
Atom passenger-at(p0, n0)
Atom passenger-at(p0, n1)
Atom passenger-at(p0, n2)
Atom passenger-at(p0, n3)
Atom passenger-at(p0, n4)
Atom passenger-at(p0, n5)
Atom passenger-at(p0, n6)
Atom passenger-at(p0, n7)
Atom passenger-at(p0, n8)
end_variable
begin_variable
var7
-1
12
Atom boarded(p1, fast0)
Atom boarded(p1, slow0-0)
Atom boarded(p1, slow1-0)
Atom passenger-at(p1, n0)
Atom passenger-at(p1, n1)
Atom passenger-at(p1, n2)
Atom passenger-at(p1, n3)
Atom passenger-at(p1, n4)
Atom passenger-at(p1, n5)
Atom passenger-at(p1, n6)
Atom passenger-at(p1, n7)
Atom passenger-at(p1, n8)
end_variable
begin_variable
var8
-1
12
Atom boarded(p2, fast0)
Atom boarded(p2, slow0-0)
Atom boarded(p2, slow1-0)
Atom passenger-at(p2, n0)
Atom passenger-at(p2, n1)
Atom passenger-at(p2, n2)
Atom passenger-at(p2, n3)
Atom passenger-at(p2, n4)
Atom passenger-at(p2, n5)
Atom passenger-at(p2, n6)
Atom passenger-at(p2, n7)
Atom passenger-at(p2, n8)
end_variable
begin_variable
var9
-1
12
Atom boarded(p3, fast0)
Atom boarded(p3, slow0-0)
Atom boarded(p3, slow1-0)
Atom passenger-at(p3, n0)
Atom passenger-at(p3, n1)
Atom passenger-at(p3, n2)
Atom passenger-at(p3, n3)
Atom passenger-at(p3, n4)
Atom passenger-at(p3, n5)
Atom passenger-at(p3, n6)
Atom passenger-at(p3, n7)
Atom passenger-at(p3, n8)
end_variable
begin_variable
var10
-1
12
Atom boarded(p4, fast0)
Atom boarded(p4, slow0-0)
Atom boarded(p4, slow1-0)
Atom passenger-at(p4, n0)
Atom passenger-at(p4, n1)
Atom passenger-at(p4, n2)
Atom passenger-at(p4, n3)
Atom passenger-at(p4, n4)
Atom passenger-at(p4, n5)
Atom passenger-at(p4, n6)
Atom passenger-at(p4, n7)
Atom passenger-at(p4, n8)
end_variable
begin_variable
var11
-1
12
Atom boarded(p5, fast0)
Atom boarded(p5, slow0-0)
Atom boarded(p5, slow1-0)
Atom passenger-at(p5, n0)
Atom passenger-at(p5, n1)
Atom passenger-at(p5, n2)
Atom passenger-at(p5, n3)
Atom passenger-at(p5, n4)
Atom passenger-at(p5, n5)
Atom passenger-at(p5, n6)
Atom passenger-at(p5, n7)
Atom passenger-at(p5, n8)
end_variable
begin_variable
var12
-1
12
Atom boarded(p6, fast0)
Atom boarded(p6, slow0-0)
Atom boarded(p6, slow1-0)
Atom passenger-at(p6, n0)
Atom passenger-at(p6, n1)
Atom passenger-at(p6, n2)
Atom passenger-at(p6, n3)
Atom passenger-at(p6, n4)
Atom passenger-at(p6, n5)
Atom passenger-at(p6, n6)
Atom passenger-at(p6, n7)
Atom passenger-at(p6, n8)
end_variable
0
begin_state
0
1
2
0
0
0
3
6
9
11
3
3
4
end_state
begin_goal
7
6 9
7 11
8 5
9 10
10 8
11 7
12 11
end_goal
550
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
board p0 fast0 n2 n0 n1
1
2 1
2
0 6 5 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n2 n1 n2
1
2 1
2
0 6 5 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n2 n2 n3
1
2 1
2
0 6 5 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n4 n0 n1
1
2 2
2
0 6 7 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n4 n1 n2
1
2 2
2
0 6 7 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n4 n2 n3
1
2 2
2
0 6 7 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n6 n0 n1
1
2 3
2
0 6 9 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n6 n1 n2
1
2 3
2
0 6 9 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n6 n2 n3
1
2 3
2
0 6 9 0
0 5 2 3
0
end_operator
begin_operator
board p0 fast0 n8 n0 n1
1
2 4
2
0 6 11 0
0 5 0 1
0
end_operator
begin_operator
board p0 fast0 n8 n1 n2
1
2 4
2
0 6 11 0
0 5 1 2
0
end_operator
begin_operator
board p0 fast0 n8 n2 n3
1
2 4
2
0 6 11 0
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
0 6 5 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n2 n1 n2
1
1 2
2
0 6 5 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n3 n0 n1
1
1 3
2
0 6 6 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n3 n1 n2
1
1 3
2
0 6 6 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow0-0 n4 n0 n1
1
1 4
2
0 6 7 1
0 3 0 1
0
end_operator
begin_operator
board p0 slow0-0 n4 n1 n2
1
1 4
2
0 6 7 1
0 3 1 2
0
end_operator
begin_operator
board p0 slow1-0 n4 n0 n1
1
0 0
2
0 6 7 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n4 n1 n2
1
0 0
2
0 6 7 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n5 n0 n1
1
0 1
2
0 6 8 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n5 n1 n2
1
0 1
2
0 6 8 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n6 n0 n1
1
0 2
2
0 6 9 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n6 n1 n2
1
0 2
2
0 6 9 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n7 n0 n1
1
0 3
2
0 6 10 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n7 n1 n2
1
0 3
2
0 6 10 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n8 n0 n1
1
0 4
2
0 6 11 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow1-0 n8 n1 n2
1
0 4
2
0 6 11 2
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
board p1 fast0 n2 n0 n1
1
2 1
2
0 7 5 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n2 n1 n2
1
2 1
2
0 7 5 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n2 n2 n3
1
2 1
2
0 7 5 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n4 n0 n1
1
2 2
2
0 7 7 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n4 n1 n2
1
2 2
2
0 7 7 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n4 n2 n3
1
2 2
2
0 7 7 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n6 n0 n1
1
2 3
2
0 7 9 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n6 n1 n2
1
2 3
2
0 7 9 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n6 n2 n3
1
2 3
2
0 7 9 0
0 5 2 3
0
end_operator
begin_operator
board p1 fast0 n8 n0 n1
1
2 4
2
0 7 11 0
0 5 0 1
0
end_operator
begin_operator
board p1 fast0 n8 n1 n2
1
2 4
2
0 7 11 0
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n8 n2 n3
1
2 4
2
0 7 11 0
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
0 7 5 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n2 n1 n2
1
1 2
2
0 7 5 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n3 n0 n1
1
1 3
2
0 7 6 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n3 n1 n2
1
1 3
2
0 7 6 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow0-0 n4 n0 n1
1
1 4
2
0 7 7 1
0 3 0 1
0
end_operator
begin_operator
board p1 slow0-0 n4 n1 n2
1
1 4
2
0 7 7 1
0 3 1 2
0
end_operator
begin_operator
board p1 slow1-0 n4 n0 n1
1
0 0
2
0 7 7 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n4 n1 n2
1
0 0
2
0 7 7 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n5 n0 n1
1
0 1
2
0 7 8 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n5 n1 n2
1
0 1
2
0 7 8 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n6 n0 n1
1
0 2
2
0 7 9 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n6 n1 n2
1
0 2
2
0 7 9 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n7 n0 n1
1
0 3
2
0 7 10 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n7 n1 n2
1
0 3
2
0 7 10 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n8 n0 n1
1
0 4
2
0 7 11 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow1-0 n8 n1 n2
1
0 4
2
0 7 11 2
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
board p2 fast0 n2 n0 n1
1
2 1
2
0 8 5 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n2 n1 n2
1
2 1
2
0 8 5 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n2 n2 n3
1
2 1
2
0 8 5 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n4 n0 n1
1
2 2
2
0 8 7 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n4 n1 n2
1
2 2
2
0 8 7 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n4 n2 n3
1
2 2
2
0 8 7 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n6 n0 n1
1
2 3
2
0 8 9 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n6 n1 n2
1
2 3
2
0 8 9 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n6 n2 n3
1
2 3
2
0 8 9 0
0 5 2 3
0
end_operator
begin_operator
board p2 fast0 n8 n0 n1
1
2 4
2
0 8 11 0
0 5 0 1
0
end_operator
begin_operator
board p2 fast0 n8 n1 n2
1
2 4
2
0 8 11 0
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n8 n2 n3
1
2 4
2
0 8 11 0
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
0 8 5 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n2 n1 n2
1
1 2
2
0 8 5 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n3 n0 n1
1
1 3
2
0 8 6 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n3 n1 n2
1
1 3
2
0 8 6 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow0-0 n4 n0 n1
1
1 4
2
0 8 7 1
0 3 0 1
0
end_operator
begin_operator
board p2 slow0-0 n4 n1 n2
1
1 4
2
0 8 7 1
0 3 1 2
0
end_operator
begin_operator
board p2 slow1-0 n4 n0 n1
1
0 0
2
0 8 7 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n4 n1 n2
1
0 0
2
0 8 7 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n5 n0 n1
1
0 1
2
0 8 8 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n5 n1 n2
1
0 1
2
0 8 8 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n6 n0 n1
1
0 2
2
0 8 9 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n6 n1 n2
1
0 2
2
0 8 9 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n7 n0 n1
1
0 3
2
0 8 10 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n7 n1 n2
1
0 3
2
0 8 10 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n8 n0 n1
1
0 4
2
0 8 11 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow1-0 n8 n1 n2
1
0 4
2
0 8 11 2
0 4 1 2
0
end_operator
begin_operator
board p3 fast0 n0 n0 n1
1
2 0
2
0 9 3 0
0 5 0 1
0
end_operator
begin_operator
board p3 fast0 n0 n1 n2
1
2 0
2
0 9 3 0
0 5 1 2
0
end_operator
begin_operator
board p3 fast0 n0 n2 n3
1
2 0
2
0 9 3 0
0 5 2 3
0
end_operator
begin_operator
board p3 fast0 n2 n0 n1
1
2 1
2
0 9 5 0
0 5 0 1
0
end_operator
begin_operator
board p3 fast0 n2 n1 n2
1
2 1
2
0 9 5 0
0 5 1 2
0
end_operator
begin_operator
board p3 fast0 n2 n2 n3
1
2 1
2
0 9 5 0
0 5 2 3
0
end_operator
begin_operator
board p3 fast0 n4 n0 n1
1
2 2
2
0 9 7 0
0 5 0 1
0
end_operator
begin_operator
board p3 fast0 n4 n1 n2
1
2 2
2
0 9 7 0
0 5 1 2
0
end_operator
begin_operator
board p3 fast0 n4 n2 n3
1
2 2
2
0 9 7 0
0 5 2 3
0
end_operator
begin_operator
board p3 fast0 n6 n0 n1
1
2 3
2
0 9 9 0
0 5 0 1
0
end_operator
begin_operator
board p3 fast0 n6 n1 n2
1
2 3
2
0 9 9 0
0 5 1 2
0
end_operator
begin_operator
board p3 fast0 n6 n2 n3
1
2 3
2
0 9 9 0
0 5 2 3
0
end_operator
begin_operator
board p3 fast0 n8 n0 n1
1
2 4
2
0 9 11 0
0 5 0 1
0
end_operator
begin_operator
board p3 fast0 n8 n1 n2
1
2 4
2
0 9 11 0
0 5 1 2
0
end_operator
begin_operator
board p3 fast0 n8 n2 n3
1
2 4
2
0 9 11 0
0 5 2 3
0
end_operator
begin_operator
board p3 slow0-0 n0 n0 n1
1
1 0
2
0 9 3 1
0 3 0 1
0
end_operator
begin_operator
board p3 slow0-0 n0 n1 n2
1
1 0
2
0 9 3 1
0 3 1 2
0
end_operator
begin_operator
board p3 slow0-0 n1 n0 n1
1
1 1
2
0 9 4 1
0 3 0 1
0
end_operator
begin_operator
board p3 slow0-0 n1 n1 n2
1
1 1
2
0 9 4 1
0 3 1 2
0
end_operator
begin_operator
board p3 slow0-0 n2 n0 n1
1
1 2
2
0 9 5 1
0 3 0 1
0
end_operator
begin_operator
board p3 slow0-0 n2 n1 n2
1
1 2
2
0 9 5 1
0 3 1 2
0
end_operator
begin_operator
board p3 slow0-0 n3 n0 n1
1
1 3
2
0 9 6 1
0 3 0 1
0
end_operator
begin_operator
board p3 slow0-0 n3 n1 n2
1
1 3
2
0 9 6 1
0 3 1 2
0
end_operator
begin_operator
board p3 slow0-0 n4 n0 n1
1
1 4
2
0 9 7 1
0 3 0 1
0
end_operator
begin_operator
board p3 slow0-0 n4 n1 n2
1
1 4
2
0 9 7 1
0 3 1 2
0
end_operator
begin_operator
board p3 slow1-0 n4 n0 n1
1
0 0
2
0 9 7 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow1-0 n4 n1 n2
1
0 0
2
0 9 7 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow1-0 n5 n0 n1
1
0 1
2
0 9 8 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow1-0 n5 n1 n2
1
0 1
2
0 9 8 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow1-0 n6 n0 n1
1
0 2
2
0 9 9 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow1-0 n6 n1 n2
1
0 2
2
0 9 9 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow1-0 n7 n0 n1
1
0 3
2
0 9 10 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow1-0 n7 n1 n2
1
0 3
2
0 9 10 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow1-0 n8 n0 n1
1
0 4
2
0 9 11 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow1-0 n8 n1 n2
1
0 4
2
0 9 11 2
0 4 1 2
0
end_operator
begin_operator
board p4 fast0 n0 n0 n1
1
2 0
2
0 10 3 0
0 5 0 1
0
end_operator
begin_operator
board p4 fast0 n0 n1 n2
1
2 0
2
0 10 3 0
0 5 1 2
0
end_operator
begin_operator
board p4 fast0 n0 n2 n3
1
2 0
2
0 10 3 0
0 5 2 3
0
end_operator
begin_operator
board p4 fast0 n2 n0 n1
1
2 1
2
0 10 5 0
0 5 0 1
0
end_operator
begin_operator
board p4 fast0 n2 n1 n2
1
2 1
2
0 10 5 0
0 5 1 2
0
end_operator
begin_operator
board p4 fast0 n2 n2 n3
1
2 1
2
0 10 5 0
0 5 2 3
0
end_operator
begin_operator
board p4 fast0 n4 n0 n1
1
2 2
2
0 10 7 0
0 5 0 1
0
end_operator
begin_operator
board p4 fast0 n4 n1 n2
1
2 2
2
0 10 7 0
0 5 1 2
0
end_operator
begin_operator
board p4 fast0 n4 n2 n3
1
2 2
2
0 10 7 0
0 5 2 3
0
end_operator
begin_operator
board p4 fast0 n6 n0 n1
1
2 3
2
0 10 9 0
0 5 0 1
0
end_operator
begin_operator
board p4 fast0 n6 n1 n2
1
2 3
2
0 10 9 0
0 5 1 2
0
end_operator
begin_operator
board p4 fast0 n6 n2 n3
1
2 3
2
0 10 9 0
0 5 2 3
0
end_operator
begin_operator
board p4 fast0 n8 n0 n1
1
2 4
2
0 10 11 0
0 5 0 1
0
end_operator
begin_operator
board p4 fast0 n8 n1 n2
1
2 4
2
0 10 11 0
0 5 1 2
0
end_operator
begin_operator
board p4 fast0 n8 n2 n3
1
2 4
2
0 10 11 0
0 5 2 3
0
end_operator
begin_operator
board p4 slow0-0 n0 n0 n1
1
1 0
2
0 10 3 1
0 3 0 1
0
end_operator
begin_operator
board p4 slow0-0 n0 n1 n2
1
1 0
2
0 10 3 1
0 3 1 2
0
end_operator
begin_operator
board p4 slow0-0 n1 n0 n1
1
1 1
2
0 10 4 1
0 3 0 1
0
end_operator
begin_operator
board p4 slow0-0 n1 n1 n2
1
1 1
2
0 10 4 1
0 3 1 2
0
end_operator
begin_operator
board p4 slow0-0 n2 n0 n1
1
1 2
2
0 10 5 1
0 3 0 1
0
end_operator
begin_operator
board p4 slow0-0 n2 n1 n2
1
1 2
2
0 10 5 1
0 3 1 2
0
end_operator
begin_operator
board p4 slow0-0 n3 n0 n1
1
1 3
2
0 10 6 1
0 3 0 1
0
end_operator
begin_operator
board p4 slow0-0 n3 n1 n2
1
1 3
2
0 10 6 1
0 3 1 2
0
end_operator
begin_operator
board p4 slow0-0 n4 n0 n1
1
1 4
2
0 10 7 1
0 3 0 1
0
end_operator
begin_operator
board p4 slow0-0 n4 n1 n2
1
1 4
2
0 10 7 1
0 3 1 2
0
end_operator
begin_operator
board p4 slow1-0 n4 n0 n1
1
0 0
2
0 10 7 2
0 4 0 1
0
end_operator
begin_operator
board p4 slow1-0 n4 n1 n2
1
0 0
2
0 10 7 2
0 4 1 2
0
end_operator
begin_operator
board p4 slow1-0 n5 n0 n1
1
0 1
2
0 10 8 2
0 4 0 1
0
end_operator
begin_operator
board p4 slow1-0 n5 n1 n2
1
0 1
2
0 10 8 2
0 4 1 2
0
end_operator
begin_operator
board p4 slow1-0 n6 n0 n1
1
0 2
2
0 10 9 2
0 4 0 1
0
end_operator
begin_operator
board p4 slow1-0 n6 n1 n2
1
0 2
2
0 10 9 2
0 4 1 2
0
end_operator
begin_operator
board p4 slow1-0 n7 n0 n1
1
0 3
2
0 10 10 2
0 4 0 1
0
end_operator
begin_operator
board p4 slow1-0 n7 n1 n2
1
0 3
2
0 10 10 2
0 4 1 2
0
end_operator
begin_operator
board p4 slow1-0 n8 n0 n1
1
0 4
2
0 10 11 2
0 4 0 1
0
end_operator
begin_operator
board p4 slow1-0 n8 n1 n2
1
0 4
2
0 10 11 2
0 4 1 2
0
end_operator
begin_operator
board p5 fast0 n0 n0 n1
1
2 0
2
0 11 3 0
0 5 0 1
0
end_operator
begin_operator
board p5 fast0 n0 n1 n2
1
2 0
2
0 11 3 0
0 5 1 2
0
end_operator
begin_operator
board p5 fast0 n0 n2 n3
1
2 0
2
0 11 3 0
0 5 2 3
0
end_operator
begin_operator
board p5 fast0 n2 n0 n1
1
2 1
2
0 11 5 0
0 5 0 1
0
end_operator
begin_operator
board p5 fast0 n2 n1 n2
1
2 1
2
0 11 5 0
0 5 1 2
0
end_operator
begin_operator
board p5 fast0 n2 n2 n3
1
2 1
2
0 11 5 0
0 5 2 3
0
end_operator
begin_operator
board p5 fast0 n4 n0 n1
1
2 2
2
0 11 7 0
0 5 0 1
0
end_operator
begin_operator
board p5 fast0 n4 n1 n2
1
2 2
2
0 11 7 0
0 5 1 2
0
end_operator
begin_operator
board p5 fast0 n4 n2 n3
1
2 2
2
0 11 7 0
0 5 2 3
0
end_operator
begin_operator
board p5 fast0 n6 n0 n1
1
2 3
2
0 11 9 0
0 5 0 1
0
end_operator
begin_operator
board p5 fast0 n6 n1 n2
1
2 3
2
0 11 9 0
0 5 1 2
0
end_operator
begin_operator
board p5 fast0 n6 n2 n3
1
2 3
2
0 11 9 0
0 5 2 3
0
end_operator
begin_operator
board p5 fast0 n8 n0 n1
1
2 4
2
0 11 11 0
0 5 0 1
0
end_operator
begin_operator
board p5 fast0 n8 n1 n2
1
2 4
2
0 11 11 0
0 5 1 2
0
end_operator
begin_operator
board p5 fast0 n8 n2 n3
1
2 4
2
0 11 11 0
0 5 2 3
0
end_operator
begin_operator
board p5 slow0-0 n0 n0 n1
1
1 0
2
0 11 3 1
0 3 0 1
0
end_operator
begin_operator
board p5 slow0-0 n0 n1 n2
1
1 0
2
0 11 3 1
0 3 1 2
0
end_operator
begin_operator
board p5 slow0-0 n1 n0 n1
1
1 1
2
0 11 4 1
0 3 0 1
0
end_operator
begin_operator
board p5 slow0-0 n1 n1 n2
1
1 1
2
0 11 4 1
0 3 1 2
0
end_operator
begin_operator
board p5 slow0-0 n2 n0 n1
1
1 2
2
0 11 5 1
0 3 0 1
0
end_operator
begin_operator
board p5 slow0-0 n2 n1 n2
1
1 2
2
0 11 5 1
0 3 1 2
0
end_operator
begin_operator
board p5 slow0-0 n3 n0 n1
1
1 3
2
0 11 6 1
0 3 0 1
0
end_operator
begin_operator
board p5 slow0-0 n3 n1 n2
1
1 3
2
0 11 6 1
0 3 1 2
0
end_operator
begin_operator
board p5 slow0-0 n4 n0 n1
1
1 4
2
0 11 7 1
0 3 0 1
0
end_operator
begin_operator
board p5 slow0-0 n4 n1 n2
1
1 4
2
0 11 7 1
0 3 1 2
0
end_operator
begin_operator
board p5 slow1-0 n4 n0 n1
1
0 0
2
0 11 7 2
0 4 0 1
0
end_operator
begin_operator
board p5 slow1-0 n4 n1 n2
1
0 0
2
0 11 7 2
0 4 1 2
0
end_operator
begin_operator
board p5 slow1-0 n5 n0 n1
1
0 1
2
0 11 8 2
0 4 0 1
0
end_operator
begin_operator
board p5 slow1-0 n5 n1 n2
1
0 1
2
0 11 8 2
0 4 1 2
0
end_operator
begin_operator
board p5 slow1-0 n6 n0 n1
1
0 2
2
0 11 9 2
0 4 0 1
0
end_operator
begin_operator
board p5 slow1-0 n6 n1 n2
1
0 2
2
0 11 9 2
0 4 1 2
0
end_operator
begin_operator
board p5 slow1-0 n7 n0 n1
1
0 3
2
0 11 10 2
0 4 0 1
0
end_operator
begin_operator
board p5 slow1-0 n7 n1 n2
1
0 3
2
0 11 10 2
0 4 1 2
0
end_operator
begin_operator
board p5 slow1-0 n8 n0 n1
1
0 4
2
0 11 11 2
0 4 0 1
0
end_operator
begin_operator
board p5 slow1-0 n8 n1 n2
1
0 4
2
0 11 11 2
0 4 1 2
0
end_operator
begin_operator
board p6 fast0 n0 n0 n1
1
2 0
2
0 12 3 0
0 5 0 1
0
end_operator
begin_operator
board p6 fast0 n0 n1 n2
1
2 0
2
0 12 3 0
0 5 1 2
0
end_operator
begin_operator
board p6 fast0 n0 n2 n3
1
2 0
2
0 12 3 0
0 5 2 3
0
end_operator
begin_operator
board p6 fast0 n2 n0 n1
1
2 1
2
0 12 5 0
0 5 0 1
0
end_operator
begin_operator
board p6 fast0 n2 n1 n2
1
2 1
2
0 12 5 0
0 5 1 2
0
end_operator
begin_operator
board p6 fast0 n2 n2 n3
1
2 1
2
0 12 5 0
0 5 2 3
0
end_operator
begin_operator
board p6 fast0 n4 n0 n1
1
2 2
2
0 12 7 0
0 5 0 1
0
end_operator
begin_operator
board p6 fast0 n4 n1 n2
1
2 2
2
0 12 7 0
0 5 1 2
0
end_operator
begin_operator
board p6 fast0 n4 n2 n3
1
2 2
2
0 12 7 0
0 5 2 3
0
end_operator
begin_operator
board p6 fast0 n6 n0 n1
1
2 3
2
0 12 9 0
0 5 0 1
0
end_operator
begin_operator
board p6 fast0 n6 n1 n2
1
2 3
2
0 12 9 0
0 5 1 2
0
end_operator
begin_operator
board p6 fast0 n6 n2 n3
1
2 3
2
0 12 9 0
0 5 2 3
0
end_operator
begin_operator
board p6 fast0 n8 n0 n1
1
2 4
2
0 12 11 0
0 5 0 1
0
end_operator
begin_operator
board p6 fast0 n8 n1 n2
1
2 4
2
0 12 11 0
0 5 1 2
0
end_operator
begin_operator
board p6 fast0 n8 n2 n3
1
2 4
2
0 12 11 0
0 5 2 3
0
end_operator
begin_operator
board p6 slow0-0 n0 n0 n1
1
1 0
2
0 12 3 1
0 3 0 1
0
end_operator
begin_operator
board p6 slow0-0 n0 n1 n2
1
1 0
2
0 12 3 1
0 3 1 2
0
end_operator
begin_operator
board p6 slow0-0 n1 n0 n1
1
1 1
2
0 12 4 1
0 3 0 1
0
end_operator
begin_operator
board p6 slow0-0 n1 n1 n2
1
1 1
2
0 12 4 1
0 3 1 2
0
end_operator
begin_operator
board p6 slow0-0 n2 n0 n1
1
1 2
2
0 12 5 1
0 3 0 1
0
end_operator
begin_operator
board p6 slow0-0 n2 n1 n2
1
1 2
2
0 12 5 1
0 3 1 2
0
end_operator
begin_operator
board p6 slow0-0 n3 n0 n1
1
1 3
2
0 12 6 1
0 3 0 1
0
end_operator
begin_operator
board p6 slow0-0 n3 n1 n2
1
1 3
2
0 12 6 1
0 3 1 2
0
end_operator
begin_operator
board p6 slow0-0 n4 n0 n1
1
1 4
2
0 12 7 1
0 3 0 1
0
end_operator
begin_operator
board p6 slow0-0 n4 n1 n2
1
1 4
2
0 12 7 1
0 3 1 2
0
end_operator
begin_operator
board p6 slow1-0 n4 n0 n1
1
0 0
2
0 12 7 2
0 4 0 1
0
end_operator
begin_operator
board p6 slow1-0 n4 n1 n2
1
0 0
2
0 12 7 2
0 4 1 2
0
end_operator
begin_operator
board p6 slow1-0 n5 n0 n1
1
0 1
2
0 12 8 2
0 4 0 1
0
end_operator
begin_operator
board p6 slow1-0 n5 n1 n2
1
0 1
2
0 12 8 2
0 4 1 2
0
end_operator
begin_operator
board p6 slow1-0 n6 n0 n1
1
0 2
2
0 12 9 2
0 4 0 1
0
end_operator
begin_operator
board p6 slow1-0 n6 n1 n2
1
0 2
2
0 12 9 2
0 4 1 2
0
end_operator
begin_operator
board p6 slow1-0 n7 n0 n1
1
0 3
2
0 12 10 2
0 4 0 1
0
end_operator
begin_operator
board p6 slow1-0 n7 n1 n2
1
0 3
2
0 12 10 2
0 4 1 2
0
end_operator
begin_operator
board p6 slow1-0 n8 n0 n1
1
0 4
2
0 12 11 2
0 4 0 1
0
end_operator
begin_operator
board p6 slow1-0 n8 n1 n2
1
0 4
2
0 12 11 2
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
leave p0 fast0 n2 n1 n0
1
2 1
2
0 6 0 5
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n2 n2 n1
1
2 1
2
0 6 0 5
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n2 n3 n2
1
2 1
2
0 6 0 5
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n4 n1 n0
1
2 2
2
0 6 0 7
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n4 n2 n1
1
2 2
2
0 6 0 7
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n4 n3 n2
1
2 2
2
0 6 0 7
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n6 n1 n0
1
2 3
2
0 6 0 9
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n6 n2 n1
1
2 3
2
0 6 0 9
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n6 n3 n2
1
2 3
2
0 6 0 9
0 5 3 2
0
end_operator
begin_operator
leave p0 fast0 n8 n1 n0
1
2 4
2
0 6 0 11
0 5 1 0
0
end_operator
begin_operator
leave p0 fast0 n8 n2 n1
1
2 4
2
0 6 0 11
0 5 2 1
0
end_operator
begin_operator
leave p0 fast0 n8 n3 n2
1
2 4
2
0 6 0 11
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
0 6 1 5
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n2 n2 n1
1
1 2
2
0 6 1 5
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n3 n1 n0
1
1 3
2
0 6 1 6
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n3 n2 n1
1
1 3
2
0 6 1 6
0 3 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n4 n1 n0
1
1 4
2
0 6 1 7
0 3 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n4 n2 n1
1
1 4
2
0 6 1 7
0 3 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n4 n1 n0
1
0 0
2
0 6 2 7
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n4 n2 n1
1
0 0
2
0 6 2 7
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n5 n1 n0
1
0 1
2
0 6 2 8
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n5 n2 n1
1
0 1
2
0 6 2 8
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n6 n1 n0
1
0 2
2
0 6 2 9
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n6 n2 n1
1
0 2
2
0 6 2 9
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n7 n1 n0
1
0 3
2
0 6 2 10
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n7 n2 n1
1
0 3
2
0 6 2 10
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n8 n1 n0
1
0 4
2
0 6 2 11
0 4 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n8 n2 n1
1
0 4
2
0 6 2 11
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
leave p1 fast0 n2 n1 n0
1
2 1
2
0 7 0 5
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n2 n2 n1
1
2 1
2
0 7 0 5
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n2 n3 n2
1
2 1
2
0 7 0 5
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n4 n1 n0
1
2 2
2
0 7 0 7
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n4 n2 n1
1
2 2
2
0 7 0 7
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n4 n3 n2
1
2 2
2
0 7 0 7
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n6 n1 n0
1
2 3
2
0 7 0 9
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n6 n2 n1
1
2 3
2
0 7 0 9
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n6 n3 n2
1
2 3
2
0 7 0 9
0 5 3 2
0
end_operator
begin_operator
leave p1 fast0 n8 n1 n0
1
2 4
2
0 7 0 11
0 5 1 0
0
end_operator
begin_operator
leave p1 fast0 n8 n2 n1
1
2 4
2
0 7 0 11
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n8 n3 n2
1
2 4
2
0 7 0 11
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
0 7 1 5
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n2 n2 n1
1
1 2
2
0 7 1 5
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n3 n1 n0
1
1 3
2
0 7 1 6
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n3 n2 n1
1
1 3
2
0 7 1 6
0 3 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n4 n1 n0
1
1 4
2
0 7 1 7
0 3 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n4 n2 n1
1
1 4
2
0 7 1 7
0 3 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n4 n1 n0
1
0 0
2
0 7 2 7
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n4 n2 n1
1
0 0
2
0 7 2 7
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n5 n1 n0
1
0 1
2
0 7 2 8
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n5 n2 n1
1
0 1
2
0 7 2 8
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n6 n1 n0
1
0 2
2
0 7 2 9
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n6 n2 n1
1
0 2
2
0 7 2 9
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n7 n1 n0
1
0 3
2
0 7 2 10
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n7 n2 n1
1
0 3
2
0 7 2 10
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n8 n1 n0
1
0 4
2
0 7 2 11
0 4 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n8 n2 n1
1
0 4
2
0 7 2 11
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
leave p2 fast0 n2 n1 n0
1
2 1
2
0 8 0 5
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n2 n2 n1
1
2 1
2
0 8 0 5
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n2 n3 n2
1
2 1
2
0 8 0 5
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n4 n1 n0
1
2 2
2
0 8 0 7
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n4 n2 n1
1
2 2
2
0 8 0 7
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n4 n3 n2
1
2 2
2
0 8 0 7
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n6 n1 n0
1
2 3
2
0 8 0 9
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n6 n2 n1
1
2 3
2
0 8 0 9
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n6 n3 n2
1
2 3
2
0 8 0 9
0 5 3 2
0
end_operator
begin_operator
leave p2 fast0 n8 n1 n0
1
2 4
2
0 8 0 11
0 5 1 0
0
end_operator
begin_operator
leave p2 fast0 n8 n2 n1
1
2 4
2
0 8 0 11
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n8 n3 n2
1
2 4
2
0 8 0 11
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
0 8 1 5
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n2 n2 n1
1
1 2
2
0 8 1 5
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n3 n1 n0
1
1 3
2
0 8 1 6
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n3 n2 n1
1
1 3
2
0 8 1 6
0 3 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n4 n1 n0
1
1 4
2
0 8 1 7
0 3 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n4 n2 n1
1
1 4
2
0 8 1 7
0 3 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n4 n1 n0
1
0 0
2
0 8 2 7
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n4 n2 n1
1
0 0
2
0 8 2 7
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n5 n1 n0
1
0 1
2
0 8 2 8
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n5 n2 n1
1
0 1
2
0 8 2 8
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n6 n1 n0
1
0 2
2
0 8 2 9
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n6 n2 n1
1
0 2
2
0 8 2 9
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n7 n1 n0
1
0 3
2
0 8 2 10
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n7 n2 n1
1
0 3
2
0 8 2 10
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n8 n1 n0
1
0 4
2
0 8 2 11
0 4 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n8 n2 n1
1
0 4
2
0 8 2 11
0 4 2 1
0
end_operator
begin_operator
leave p3 fast0 n0 n1 n0
1
2 0
2
0 9 0 3
0 5 1 0
0
end_operator
begin_operator
leave p3 fast0 n0 n2 n1
1
2 0
2
0 9 0 3
0 5 2 1
0
end_operator
begin_operator
leave p3 fast0 n0 n3 n2
1
2 0
2
0 9 0 3
0 5 3 2
0
end_operator
begin_operator
leave p3 fast0 n2 n1 n0
1
2 1
2
0 9 0 5
0 5 1 0
0
end_operator
begin_operator
leave p3 fast0 n2 n2 n1
1
2 1
2
0 9 0 5
0 5 2 1
0
end_operator
begin_operator
leave p3 fast0 n2 n3 n2
1
2 1
2
0 9 0 5
0 5 3 2
0
end_operator
begin_operator
leave p3 fast0 n4 n1 n0
1
2 2
2
0 9 0 7
0 5 1 0
0
end_operator
begin_operator
leave p3 fast0 n4 n2 n1
1
2 2
2
0 9 0 7
0 5 2 1
0
end_operator
begin_operator
leave p3 fast0 n4 n3 n2
1
2 2
2
0 9 0 7
0 5 3 2
0
end_operator
begin_operator
leave p3 fast0 n6 n1 n0
1
2 3
2
0 9 0 9
0 5 1 0
0
end_operator
begin_operator
leave p3 fast0 n6 n2 n1
1
2 3
2
0 9 0 9
0 5 2 1
0
end_operator
begin_operator
leave p3 fast0 n6 n3 n2
1
2 3
2
0 9 0 9
0 5 3 2
0
end_operator
begin_operator
leave p3 fast0 n8 n1 n0
1
2 4
2
0 9 0 11
0 5 1 0
0
end_operator
begin_operator
leave p3 fast0 n8 n2 n1
1
2 4
2
0 9 0 11
0 5 2 1
0
end_operator
begin_operator
leave p3 fast0 n8 n3 n2
1
2 4
2
0 9 0 11
0 5 3 2
0
end_operator
begin_operator
leave p3 slow0-0 n0 n1 n0
1
1 0
2
0 9 1 3
0 3 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n0 n2 n1
1
1 0
2
0 9 1 3
0 3 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n1 n1 n0
1
1 1
2
0 9 1 4
0 3 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n1 n2 n1
1
1 1
2
0 9 1 4
0 3 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n2 n1 n0
1
1 2
2
0 9 1 5
0 3 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n2 n2 n1
1
1 2
2
0 9 1 5
0 3 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n3 n1 n0
1
1 3
2
0 9 1 6
0 3 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n3 n2 n1
1
1 3
2
0 9 1 6
0 3 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n4 n1 n0
1
1 4
2
0 9 1 7
0 3 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n4 n2 n1
1
1 4
2
0 9 1 7
0 3 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n4 n1 n0
1
0 0
2
0 9 2 7
0 4 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n4 n2 n1
1
0 0
2
0 9 2 7
0 4 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n5 n1 n0
1
0 1
2
0 9 2 8
0 4 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n5 n2 n1
1
0 1
2
0 9 2 8
0 4 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n6 n1 n0
1
0 2
2
0 9 2 9
0 4 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n6 n2 n1
1
0 2
2
0 9 2 9
0 4 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n7 n1 n0
1
0 3
2
0 9 2 10
0 4 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n7 n2 n1
1
0 3
2
0 9 2 10
0 4 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n8 n1 n0
1
0 4
2
0 9 2 11
0 4 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n8 n2 n1
1
0 4
2
0 9 2 11
0 4 2 1
0
end_operator
begin_operator
leave p4 fast0 n0 n1 n0
1
2 0
2
0 10 0 3
0 5 1 0
0
end_operator
begin_operator
leave p4 fast0 n0 n2 n1
1
2 0
2
0 10 0 3
0 5 2 1
0
end_operator
begin_operator
leave p4 fast0 n0 n3 n2
1
2 0
2
0 10 0 3
0 5 3 2
0
end_operator
begin_operator
leave p4 fast0 n2 n1 n0
1
2 1
2
0 10 0 5
0 5 1 0
0
end_operator
begin_operator
leave p4 fast0 n2 n2 n1
1
2 1
2
0 10 0 5
0 5 2 1
0
end_operator
begin_operator
leave p4 fast0 n2 n3 n2
1
2 1
2
0 10 0 5
0 5 3 2
0
end_operator
begin_operator
leave p4 fast0 n4 n1 n0
1
2 2
2
0 10 0 7
0 5 1 0
0
end_operator
begin_operator
leave p4 fast0 n4 n2 n1
1
2 2
2
0 10 0 7
0 5 2 1
0
end_operator
begin_operator
leave p4 fast0 n4 n3 n2
1
2 2
2
0 10 0 7
0 5 3 2
0
end_operator
begin_operator
leave p4 fast0 n6 n1 n0
1
2 3
2
0 10 0 9
0 5 1 0
0
end_operator
begin_operator
leave p4 fast0 n6 n2 n1
1
2 3
2
0 10 0 9
0 5 2 1
0
end_operator
begin_operator
leave p4 fast0 n6 n3 n2
1
2 3
2
0 10 0 9
0 5 3 2
0
end_operator
begin_operator
leave p4 fast0 n8 n1 n0
1
2 4
2
0 10 0 11
0 5 1 0
0
end_operator
begin_operator
leave p4 fast0 n8 n2 n1
1
2 4
2
0 10 0 11
0 5 2 1
0
end_operator
begin_operator
leave p4 fast0 n8 n3 n2
1
2 4
2
0 10 0 11
0 5 3 2
0
end_operator
begin_operator
leave p4 slow0-0 n0 n1 n0
1
1 0
2
0 10 1 3
0 3 1 0
0
end_operator
begin_operator
leave p4 slow0-0 n0 n2 n1
1
1 0
2
0 10 1 3
0 3 2 1
0
end_operator
begin_operator
leave p4 slow0-0 n1 n1 n0
1
1 1
2
0 10 1 4
0 3 1 0
0
end_operator
begin_operator
leave p4 slow0-0 n1 n2 n1
1
1 1
2
0 10 1 4
0 3 2 1
0
end_operator
begin_operator
leave p4 slow0-0 n2 n1 n0
1
1 2
2
0 10 1 5
0 3 1 0
0
end_operator
begin_operator
leave p4 slow0-0 n2 n2 n1
1
1 2
2
0 10 1 5
0 3 2 1
0
end_operator
begin_operator
leave p4 slow0-0 n3 n1 n0
1
1 3
2
0 10 1 6
0 3 1 0
0
end_operator
begin_operator
leave p4 slow0-0 n3 n2 n1
1
1 3
2
0 10 1 6
0 3 2 1
0
end_operator
begin_operator
leave p4 slow0-0 n4 n1 n0
1
1 4
2
0 10 1 7
0 3 1 0
0
end_operator
begin_operator
leave p4 slow0-0 n4 n2 n1
1
1 4
2
0 10 1 7
0 3 2 1
0
end_operator
begin_operator
leave p4 slow1-0 n4 n1 n0
1
0 0
2
0 10 2 7
0 4 1 0
0
end_operator
begin_operator
leave p4 slow1-0 n4 n2 n1
1
0 0
2
0 10 2 7
0 4 2 1
0
end_operator
begin_operator
leave p4 slow1-0 n5 n1 n0
1
0 1
2
0 10 2 8
0 4 1 0
0
end_operator
begin_operator
leave p4 slow1-0 n5 n2 n1
1
0 1
2
0 10 2 8
0 4 2 1
0
end_operator
begin_operator
leave p4 slow1-0 n6 n1 n0
1
0 2
2
0 10 2 9
0 4 1 0
0
end_operator
begin_operator
leave p4 slow1-0 n6 n2 n1
1
0 2
2
0 10 2 9
0 4 2 1
0
end_operator
begin_operator
leave p4 slow1-0 n7 n1 n0
1
0 3
2
0 10 2 10
0 4 1 0
0
end_operator
begin_operator
leave p4 slow1-0 n7 n2 n1
1
0 3
2
0 10 2 10
0 4 2 1
0
end_operator
begin_operator
leave p4 slow1-0 n8 n1 n0
1
0 4
2
0 10 2 11
0 4 1 0
0
end_operator
begin_operator
leave p4 slow1-0 n8 n2 n1
1
0 4
2
0 10 2 11
0 4 2 1
0
end_operator
begin_operator
leave p5 fast0 n0 n1 n0
1
2 0
2
0 11 0 3
0 5 1 0
0
end_operator
begin_operator
leave p5 fast0 n0 n2 n1
1
2 0
2
0 11 0 3
0 5 2 1
0
end_operator
begin_operator
leave p5 fast0 n0 n3 n2
1
2 0
2
0 11 0 3
0 5 3 2
0
end_operator
begin_operator
leave p5 fast0 n2 n1 n0
1
2 1
2
0 11 0 5
0 5 1 0
0
end_operator
begin_operator
leave p5 fast0 n2 n2 n1
1
2 1
2
0 11 0 5
0 5 2 1
0
end_operator
begin_operator
leave p5 fast0 n2 n3 n2
1
2 1
2
0 11 0 5
0 5 3 2
0
end_operator
begin_operator
leave p5 fast0 n4 n1 n0
1
2 2
2
0 11 0 7
0 5 1 0
0
end_operator
begin_operator
leave p5 fast0 n4 n2 n1
1
2 2
2
0 11 0 7
0 5 2 1
0
end_operator
begin_operator
leave p5 fast0 n4 n3 n2
1
2 2
2
0 11 0 7
0 5 3 2
0
end_operator
begin_operator
leave p5 fast0 n6 n1 n0
1
2 3
2
0 11 0 9
0 5 1 0
0
end_operator
begin_operator
leave p5 fast0 n6 n2 n1
1
2 3
2
0 11 0 9
0 5 2 1
0
end_operator
begin_operator
leave p5 fast0 n6 n3 n2
1
2 3
2
0 11 0 9
0 5 3 2
0
end_operator
begin_operator
leave p5 fast0 n8 n1 n0
1
2 4
2
0 11 0 11
0 5 1 0
0
end_operator
begin_operator
leave p5 fast0 n8 n2 n1
1
2 4
2
0 11 0 11
0 5 2 1
0
end_operator
begin_operator
leave p5 fast0 n8 n3 n2
1
2 4
2
0 11 0 11
0 5 3 2
0
end_operator
begin_operator
leave p5 slow0-0 n0 n1 n0
1
1 0
2
0 11 1 3
0 3 1 0
0
end_operator
begin_operator
leave p5 slow0-0 n0 n2 n1
1
1 0
2
0 11 1 3
0 3 2 1
0
end_operator
begin_operator
leave p5 slow0-0 n1 n1 n0
1
1 1
2
0 11 1 4
0 3 1 0
0
end_operator
begin_operator
leave p5 slow0-0 n1 n2 n1
1
1 1
2
0 11 1 4
0 3 2 1
0
end_operator
begin_operator
leave p5 slow0-0 n2 n1 n0
1
1 2
2
0 11 1 5
0 3 1 0
0
end_operator
begin_operator
leave p5 slow0-0 n2 n2 n1
1
1 2
2
0 11 1 5
0 3 2 1
0
end_operator
begin_operator
leave p5 slow0-0 n3 n1 n0
1
1 3
2
0 11 1 6
0 3 1 0
0
end_operator
begin_operator
leave p5 slow0-0 n3 n2 n1
1
1 3
2
0 11 1 6
0 3 2 1
0
end_operator
begin_operator
leave p5 slow0-0 n4 n1 n0
1
1 4
2
0 11 1 7
0 3 1 0
0
end_operator
begin_operator
leave p5 slow0-0 n4 n2 n1
1
1 4
2
0 11 1 7
0 3 2 1
0
end_operator
begin_operator
leave p5 slow1-0 n4 n1 n0
1
0 0
2
0 11 2 7
0 4 1 0
0
end_operator
begin_operator
leave p5 slow1-0 n4 n2 n1
1
0 0
2
0 11 2 7
0 4 2 1
0
end_operator
begin_operator
leave p5 slow1-0 n5 n1 n0
1
0 1
2
0 11 2 8
0 4 1 0
0
end_operator
begin_operator
leave p5 slow1-0 n5 n2 n1
1
0 1
2
0 11 2 8
0 4 2 1
0
end_operator
begin_operator
leave p5 slow1-0 n6 n1 n0
1
0 2
2
0 11 2 9
0 4 1 0
0
end_operator
begin_operator
leave p5 slow1-0 n6 n2 n1
1
0 2
2
0 11 2 9
0 4 2 1
0
end_operator
begin_operator
leave p5 slow1-0 n7 n1 n0
1
0 3
2
0 11 2 10
0 4 1 0
0
end_operator
begin_operator
leave p5 slow1-0 n7 n2 n1
1
0 3
2
0 11 2 10
0 4 2 1
0
end_operator
begin_operator
leave p5 slow1-0 n8 n1 n0
1
0 4
2
0 11 2 11
0 4 1 0
0
end_operator
begin_operator
leave p5 slow1-0 n8 n2 n1
1
0 4
2
0 11 2 11
0 4 2 1
0
end_operator
begin_operator
leave p6 fast0 n0 n1 n0
1
2 0
2
0 12 0 3
0 5 1 0
0
end_operator
begin_operator
leave p6 fast0 n0 n2 n1
1
2 0
2
0 12 0 3
0 5 2 1
0
end_operator
begin_operator
leave p6 fast0 n0 n3 n2
1
2 0
2
0 12 0 3
0 5 3 2
0
end_operator
begin_operator
leave p6 fast0 n2 n1 n0
1
2 1
2
0 12 0 5
0 5 1 0
0
end_operator
begin_operator
leave p6 fast0 n2 n2 n1
1
2 1
2
0 12 0 5
0 5 2 1
0
end_operator
begin_operator
leave p6 fast0 n2 n3 n2
1
2 1
2
0 12 0 5
0 5 3 2
0
end_operator
begin_operator
leave p6 fast0 n4 n1 n0
1
2 2
2
0 12 0 7
0 5 1 0
0
end_operator
begin_operator
leave p6 fast0 n4 n2 n1
1
2 2
2
0 12 0 7
0 5 2 1
0
end_operator
begin_operator
leave p6 fast0 n4 n3 n2
1
2 2
2
0 12 0 7
0 5 3 2
0
end_operator
begin_operator
leave p6 fast0 n6 n1 n0
1
2 3
2
0 12 0 9
0 5 1 0
0
end_operator
begin_operator
leave p6 fast0 n6 n2 n1
1
2 3
2
0 12 0 9
0 5 2 1
0
end_operator
begin_operator
leave p6 fast0 n6 n3 n2
1
2 3
2
0 12 0 9
0 5 3 2
0
end_operator
begin_operator
leave p6 fast0 n8 n1 n0
1
2 4
2
0 12 0 11
0 5 1 0
0
end_operator
begin_operator
leave p6 fast0 n8 n2 n1
1
2 4
2
0 12 0 11
0 5 2 1
0
end_operator
begin_operator
leave p6 fast0 n8 n3 n2
1
2 4
2
0 12 0 11
0 5 3 2
0
end_operator
begin_operator
leave p6 slow0-0 n0 n1 n0
1
1 0
2
0 12 1 3
0 3 1 0
0
end_operator
begin_operator
leave p6 slow0-0 n0 n2 n1
1
1 0
2
0 12 1 3
0 3 2 1
0
end_operator
begin_operator
leave p6 slow0-0 n1 n1 n0
1
1 1
2
0 12 1 4
0 3 1 0
0
end_operator
begin_operator
leave p6 slow0-0 n1 n2 n1
1
1 1
2
0 12 1 4
0 3 2 1
0
end_operator
begin_operator
leave p6 slow0-0 n2 n1 n0
1
1 2
2
0 12 1 5
0 3 1 0
0
end_operator
begin_operator
leave p6 slow0-0 n2 n2 n1
1
1 2
2
0 12 1 5
0 3 2 1
0
end_operator
begin_operator
leave p6 slow0-0 n3 n1 n0
1
1 3
2
0 12 1 6
0 3 1 0
0
end_operator
begin_operator
leave p6 slow0-0 n3 n2 n1
1
1 3
2
0 12 1 6
0 3 2 1
0
end_operator
begin_operator
leave p6 slow0-0 n4 n1 n0
1
1 4
2
0 12 1 7
0 3 1 0
0
end_operator
begin_operator
leave p6 slow0-0 n4 n2 n1
1
1 4
2
0 12 1 7
0 3 2 1
0
end_operator
begin_operator
leave p6 slow1-0 n4 n1 n0
1
0 0
2
0 12 2 7
0 4 1 0
0
end_operator
begin_operator
leave p6 slow1-0 n4 n2 n1
1
0 0
2
0 12 2 7
0 4 2 1
0
end_operator
begin_operator
leave p6 slow1-0 n5 n1 n0
1
0 1
2
0 12 2 8
0 4 1 0
0
end_operator
begin_operator
leave p6 slow1-0 n5 n2 n1
1
0 1
2
0 12 2 8
0 4 2 1
0
end_operator
begin_operator
leave p6 slow1-0 n6 n1 n0
1
0 2
2
0 12 2 9
0 4 1 0
0
end_operator
begin_operator
leave p6 slow1-0 n6 n2 n1
1
0 2
2
0 12 2 9
0 4 2 1
0
end_operator
begin_operator
leave p6 slow1-0 n7 n1 n0
1
0 3
2
0 12 2 10
0 4 1 0
0
end_operator
begin_operator
leave p6 slow1-0 n7 n2 n1
1
0 3
2
0 12 2 10
0 4 2 1
0
end_operator
begin_operator
leave p6 slow1-0 n8 n1 n0
1
0 4
2
0 12 2 11
0 4 1 0
0
end_operator
begin_operator
leave p6 slow1-0 n8 n2 n1
1
0 4
2
0 12 2 11
0 4 2 1
0
end_operator
begin_operator
move-down-fast fast0 n2 n0
0
1
0 2 1 0
7
end_operator
begin_operator
move-down-fast fast0 n4 n0
0
1
0 2 2 0
13
end_operator
begin_operator
move-down-fast fast0 n4 n2
0
1
0 2 2 1
7
end_operator
begin_operator
move-down-fast fast0 n6 n0
0
1
0 2 3 0
19
end_operator
begin_operator
move-down-fast fast0 n6 n2
0
1
0 2 3 1
13
end_operator
begin_operator
move-down-fast fast0 n6 n4
0
1
0 2 3 2
7
end_operator
begin_operator
move-down-fast fast0 n8 n0
0
1
0 2 4 0
25
end_operator
begin_operator
move-down-fast fast0 n8 n2
0
1
0 2 4 1
19
end_operator
begin_operator
move-down-fast fast0 n8 n4
0
1
0 2 4 2
13
end_operator
begin_operator
move-down-fast fast0 n8 n6
0
1
0 2 4 3
7
end_operator
begin_operator
move-down-slow slow0-0 n1 n0
0
1
0 1 1 0
6
end_operator
begin_operator
move-down-slow slow0-0 n2 n0
0
1
0 1 2 0
7
end_operator
begin_operator
move-down-slow slow0-0 n2 n1
0
1
0 1 2 1
6
end_operator
begin_operator
move-down-slow slow0-0 n3 n0
0
1
0 1 3 0
8
end_operator
begin_operator
move-down-slow slow0-0 n3 n1
0
1
0 1 3 1
7
end_operator
begin_operator
move-down-slow slow0-0 n3 n2
0
1
0 1 3 2
6
end_operator
begin_operator
move-down-slow slow0-0 n4 n0
0
1
0 1 4 0
9
end_operator
begin_operator
move-down-slow slow0-0 n4 n1
0
1
0 1 4 1
8
end_operator
begin_operator
move-down-slow slow0-0 n4 n2
0
1
0 1 4 2
7
end_operator
begin_operator
move-down-slow slow0-0 n4 n3
0
1
0 1 4 3
6
end_operator
begin_operator
move-down-slow slow1-0 n5 n4
0
1
0 0 1 0
6
end_operator
begin_operator
move-down-slow slow1-0 n6 n4
0
1
0 0 2 0
7
end_operator
begin_operator
move-down-slow slow1-0 n6 n5
0
1
0 0 2 1
6
end_operator
begin_operator
move-down-slow slow1-0 n7 n4
0
1
0 0 3 0
8
end_operator
begin_operator
move-down-slow slow1-0 n7 n5
0
1
0 0 3 1
7
end_operator
begin_operator
move-down-slow slow1-0 n7 n6
0
1
0 0 3 2
6
end_operator
begin_operator
move-down-slow slow1-0 n8 n4
0
1
0 0 4 0
9
end_operator
begin_operator
move-down-slow slow1-0 n8 n5
0
1
0 0 4 1
8
end_operator
begin_operator
move-down-slow slow1-0 n8 n6
0
1
0 0 4 2
7
end_operator
begin_operator
move-down-slow slow1-0 n8 n7
0
1
0 0 4 3
6
end_operator
begin_operator
move-up-fast fast0 n0 n2
0
1
0 2 0 1
7
end_operator
begin_operator
move-up-fast fast0 n0 n4
0
1
0 2 0 2
13
end_operator
begin_operator
move-up-fast fast0 n0 n6
0
1
0 2 0 3
19
end_operator
begin_operator
move-up-fast fast0 n0 n8
0
1
0 2 0 4
25
end_operator
begin_operator
move-up-fast fast0 n2 n4
0
1
0 2 1 2
7
end_operator
begin_operator
move-up-fast fast0 n2 n6
0
1
0 2 1 3
13
end_operator
begin_operator
move-up-fast fast0 n2 n8
0
1
0 2 1 4
19
end_operator
begin_operator
move-up-fast fast0 n4 n6
0
1
0 2 2 3
7
end_operator
begin_operator
move-up-fast fast0 n4 n8
0
1
0 2 2 4
13
end_operator
begin_operator
move-up-fast fast0 n6 n8
0
1
0 2 3 4
7
end_operator
begin_operator
move-up-slow slow0-0 n0 n1
0
1
0 1 0 1
6
end_operator
begin_operator
move-up-slow slow0-0 n0 n2
0
1
0 1 0 2
7
end_operator
begin_operator
move-up-slow slow0-0 n0 n3
0
1
0 1 0 3
8
end_operator
begin_operator
move-up-slow slow0-0 n0 n4
0
1
0 1 0 4
9
end_operator
begin_operator
move-up-slow slow0-0 n1 n2
0
1
0 1 1 2
6
end_operator
begin_operator
move-up-slow slow0-0 n1 n3
0
1
0 1 1 3
7
end_operator
begin_operator
move-up-slow slow0-0 n1 n4
0
1
0 1 1 4
8
end_operator
begin_operator
move-up-slow slow0-0 n2 n3
0
1
0 1 2 3
6
end_operator
begin_operator
move-up-slow slow0-0 n2 n4
0
1
0 1 2 4
7
end_operator
begin_operator
move-up-slow slow0-0 n3 n4
0
1
0 1 3 4
6
end_operator
begin_operator
move-up-slow slow1-0 n4 n5
0
1
0 0 0 1
6
end_operator
begin_operator
move-up-slow slow1-0 n4 n6
0
1
0 0 0 2
7
end_operator
begin_operator
move-up-slow slow1-0 n4 n7
0
1
0 0 0 3
8
end_operator
begin_operator
move-up-slow slow1-0 n4 n8
0
1
0 0 0 4
9
end_operator
begin_operator
move-up-slow slow1-0 n5 n6
0
1
0 0 1 2
6
end_operator
begin_operator
move-up-slow slow1-0 n5 n7
0
1
0 0 1 3
7
end_operator
begin_operator
move-up-slow slow1-0 n5 n8
0
1
0 0 1 4
8
end_operator
begin_operator
move-up-slow slow1-0 n6 n7
0
1
0 0 2 3
6
end_operator
begin_operator
move-up-slow slow1-0 n6 n8
0
1
0 0 2 4
7
end_operator
begin_operator
move-up-slow slow1-0 n7 n8
0
1
0 0 3 4
6
end_operator
0

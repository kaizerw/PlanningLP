begin_version
3
end_version
begin_metric
1
end_metric
12
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
Atom lift-at(fast1, n0)
Atom lift-at(fast1, n2)
Atom lift-at(fast1, n4)
Atom lift-at(fast1, n6)
Atom lift-at(fast1, n8)
end_variable
begin_variable
var3
-1
5
Atom lift-at(fast0, n0)
Atom lift-at(fast0, n2)
Atom lift-at(fast0, n4)
Atom lift-at(fast0, n6)
Atom lift-at(fast0, n8)
end_variable
begin_variable
var4
-1
3
Atom passengers(slow0-0, n0)
Atom passengers(slow0-0, n1)
Atom passengers(slow0-0, n2)
end_variable
begin_variable
var5
-1
3
Atom passengers(slow1-0, n0)
Atom passengers(slow1-0, n1)
Atom passengers(slow1-0, n2)
end_variable
begin_variable
var6
-1
4
Atom passengers(fast0, n0)
Atom passengers(fast0, n1)
Atom passengers(fast0, n2)
Atom passengers(fast0, n3)
end_variable
begin_variable
var7
-1
4
Atom passengers(fast1, n0)
Atom passengers(fast1, n1)
Atom passengers(fast1, n2)
Atom passengers(fast1, n3)
end_variable
begin_variable
var8
-1
13
Atom boarded(p0, fast0)
Atom boarded(p0, fast1)
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
var9
-1
13
Atom boarded(p1, fast0)
Atom boarded(p1, fast1)
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
var10
-1
13
Atom boarded(p2, fast0)
Atom boarded(p2, fast1)
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
var11
-1
13
Atom boarded(p3, fast0)
Atom boarded(p3, fast1)
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
0
begin_state
3
4
3
0
0
0
0
0
10
10
9
10
end_state
begin_goal
4
8 5
9 7
10 8
11 6
end_goal
480
begin_operator
board p0 fast0 n0 n0 n1
1
3 0
2
0 8 4 0
0 6 0 1
0
end_operator
begin_operator
board p0 fast0 n0 n1 n2
1
3 0
2
0 8 4 0
0 6 1 2
0
end_operator
begin_operator
board p0 fast0 n0 n2 n3
1
3 0
2
0 8 4 0
0 6 2 3
0
end_operator
begin_operator
board p0 fast0 n2 n0 n1
1
3 1
2
0 8 6 0
0 6 0 1
0
end_operator
begin_operator
board p0 fast0 n2 n1 n2
1
3 1
2
0 8 6 0
0 6 1 2
0
end_operator
begin_operator
board p0 fast0 n2 n2 n3
1
3 1
2
0 8 6 0
0 6 2 3
0
end_operator
begin_operator
board p0 fast0 n4 n0 n1
1
3 2
2
0 8 8 0
0 6 0 1
0
end_operator
begin_operator
board p0 fast0 n4 n1 n2
1
3 2
2
0 8 8 0
0 6 1 2
0
end_operator
begin_operator
board p0 fast0 n4 n2 n3
1
3 2
2
0 8 8 0
0 6 2 3
0
end_operator
begin_operator
board p0 fast0 n6 n0 n1
1
3 3
2
0 8 10 0
0 6 0 1
0
end_operator
begin_operator
board p0 fast0 n6 n1 n2
1
3 3
2
0 8 10 0
0 6 1 2
0
end_operator
begin_operator
board p0 fast0 n6 n2 n3
1
3 3
2
0 8 10 0
0 6 2 3
0
end_operator
begin_operator
board p0 fast0 n8 n0 n1
1
3 4
2
0 8 12 0
0 6 0 1
0
end_operator
begin_operator
board p0 fast0 n8 n1 n2
1
3 4
2
0 8 12 0
0 6 1 2
0
end_operator
begin_operator
board p0 fast0 n8 n2 n3
1
3 4
2
0 8 12 0
0 6 2 3
0
end_operator
begin_operator
board p0 fast1 n0 n0 n1
1
2 0
2
0 8 4 1
0 7 0 1
0
end_operator
begin_operator
board p0 fast1 n0 n1 n2
1
2 0
2
0 8 4 1
0 7 1 2
0
end_operator
begin_operator
board p0 fast1 n0 n2 n3
1
2 0
2
0 8 4 1
0 7 2 3
0
end_operator
begin_operator
board p0 fast1 n2 n0 n1
1
2 1
2
0 8 6 1
0 7 0 1
0
end_operator
begin_operator
board p0 fast1 n2 n1 n2
1
2 1
2
0 8 6 1
0 7 1 2
0
end_operator
begin_operator
board p0 fast1 n2 n2 n3
1
2 1
2
0 8 6 1
0 7 2 3
0
end_operator
begin_operator
board p0 fast1 n4 n0 n1
1
2 2
2
0 8 8 1
0 7 0 1
0
end_operator
begin_operator
board p0 fast1 n4 n1 n2
1
2 2
2
0 8 8 1
0 7 1 2
0
end_operator
begin_operator
board p0 fast1 n4 n2 n3
1
2 2
2
0 8 8 1
0 7 2 3
0
end_operator
begin_operator
board p0 fast1 n6 n0 n1
1
2 3
2
0 8 10 1
0 7 0 1
0
end_operator
begin_operator
board p0 fast1 n6 n1 n2
1
2 3
2
0 8 10 1
0 7 1 2
0
end_operator
begin_operator
board p0 fast1 n6 n2 n3
1
2 3
2
0 8 10 1
0 7 2 3
0
end_operator
begin_operator
board p0 fast1 n8 n0 n1
1
2 4
2
0 8 12 1
0 7 0 1
0
end_operator
begin_operator
board p0 fast1 n8 n1 n2
1
2 4
2
0 8 12 1
0 7 1 2
0
end_operator
begin_operator
board p0 fast1 n8 n2 n3
1
2 4
2
0 8 12 1
0 7 2 3
0
end_operator
begin_operator
board p0 slow0-0 n0 n0 n1
1
1 0
2
0 8 4 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow0-0 n0 n1 n2
1
1 0
2
0 8 4 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow0-0 n1 n0 n1
1
1 1
2
0 8 5 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow0-0 n1 n1 n2
1
1 1
2
0 8 5 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow0-0 n2 n0 n1
1
1 2
2
0 8 6 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow0-0 n2 n1 n2
1
1 2
2
0 8 6 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow0-0 n3 n0 n1
1
1 3
2
0 8 7 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow0-0 n3 n1 n2
1
1 3
2
0 8 7 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow0-0 n4 n0 n1
1
1 4
2
0 8 8 2
0 4 0 1
0
end_operator
begin_operator
board p0 slow0-0 n4 n1 n2
1
1 4
2
0 8 8 2
0 4 1 2
0
end_operator
begin_operator
board p0 slow1-0 n4 n0 n1
1
0 0
2
0 8 8 3
0 5 0 1
0
end_operator
begin_operator
board p0 slow1-0 n4 n1 n2
1
0 0
2
0 8 8 3
0 5 1 2
0
end_operator
begin_operator
board p0 slow1-0 n5 n0 n1
1
0 1
2
0 8 9 3
0 5 0 1
0
end_operator
begin_operator
board p0 slow1-0 n5 n1 n2
1
0 1
2
0 8 9 3
0 5 1 2
0
end_operator
begin_operator
board p0 slow1-0 n6 n0 n1
1
0 2
2
0 8 10 3
0 5 0 1
0
end_operator
begin_operator
board p0 slow1-0 n6 n1 n2
1
0 2
2
0 8 10 3
0 5 1 2
0
end_operator
begin_operator
board p0 slow1-0 n7 n0 n1
1
0 3
2
0 8 11 3
0 5 0 1
0
end_operator
begin_operator
board p0 slow1-0 n7 n1 n2
1
0 3
2
0 8 11 3
0 5 1 2
0
end_operator
begin_operator
board p0 slow1-0 n8 n0 n1
1
0 4
2
0 8 12 3
0 5 0 1
0
end_operator
begin_operator
board p0 slow1-0 n8 n1 n2
1
0 4
2
0 8 12 3
0 5 1 2
0
end_operator
begin_operator
board p1 fast0 n0 n0 n1
1
3 0
2
0 9 4 0
0 6 0 1
0
end_operator
begin_operator
board p1 fast0 n0 n1 n2
1
3 0
2
0 9 4 0
0 6 1 2
0
end_operator
begin_operator
board p1 fast0 n0 n2 n3
1
3 0
2
0 9 4 0
0 6 2 3
0
end_operator
begin_operator
board p1 fast0 n2 n0 n1
1
3 1
2
0 9 6 0
0 6 0 1
0
end_operator
begin_operator
board p1 fast0 n2 n1 n2
1
3 1
2
0 9 6 0
0 6 1 2
0
end_operator
begin_operator
board p1 fast0 n2 n2 n3
1
3 1
2
0 9 6 0
0 6 2 3
0
end_operator
begin_operator
board p1 fast0 n4 n0 n1
1
3 2
2
0 9 8 0
0 6 0 1
0
end_operator
begin_operator
board p1 fast0 n4 n1 n2
1
3 2
2
0 9 8 0
0 6 1 2
0
end_operator
begin_operator
board p1 fast0 n4 n2 n3
1
3 2
2
0 9 8 0
0 6 2 3
0
end_operator
begin_operator
board p1 fast0 n6 n0 n1
1
3 3
2
0 9 10 0
0 6 0 1
0
end_operator
begin_operator
board p1 fast0 n6 n1 n2
1
3 3
2
0 9 10 0
0 6 1 2
0
end_operator
begin_operator
board p1 fast0 n6 n2 n3
1
3 3
2
0 9 10 0
0 6 2 3
0
end_operator
begin_operator
board p1 fast0 n8 n0 n1
1
3 4
2
0 9 12 0
0 6 0 1
0
end_operator
begin_operator
board p1 fast0 n8 n1 n2
1
3 4
2
0 9 12 0
0 6 1 2
0
end_operator
begin_operator
board p1 fast0 n8 n2 n3
1
3 4
2
0 9 12 0
0 6 2 3
0
end_operator
begin_operator
board p1 fast1 n0 n0 n1
1
2 0
2
0 9 4 1
0 7 0 1
0
end_operator
begin_operator
board p1 fast1 n0 n1 n2
1
2 0
2
0 9 4 1
0 7 1 2
0
end_operator
begin_operator
board p1 fast1 n0 n2 n3
1
2 0
2
0 9 4 1
0 7 2 3
0
end_operator
begin_operator
board p1 fast1 n2 n0 n1
1
2 1
2
0 9 6 1
0 7 0 1
0
end_operator
begin_operator
board p1 fast1 n2 n1 n2
1
2 1
2
0 9 6 1
0 7 1 2
0
end_operator
begin_operator
board p1 fast1 n2 n2 n3
1
2 1
2
0 9 6 1
0 7 2 3
0
end_operator
begin_operator
board p1 fast1 n4 n0 n1
1
2 2
2
0 9 8 1
0 7 0 1
0
end_operator
begin_operator
board p1 fast1 n4 n1 n2
1
2 2
2
0 9 8 1
0 7 1 2
0
end_operator
begin_operator
board p1 fast1 n4 n2 n3
1
2 2
2
0 9 8 1
0 7 2 3
0
end_operator
begin_operator
board p1 fast1 n6 n0 n1
1
2 3
2
0 9 10 1
0 7 0 1
0
end_operator
begin_operator
board p1 fast1 n6 n1 n2
1
2 3
2
0 9 10 1
0 7 1 2
0
end_operator
begin_operator
board p1 fast1 n6 n2 n3
1
2 3
2
0 9 10 1
0 7 2 3
0
end_operator
begin_operator
board p1 fast1 n8 n0 n1
1
2 4
2
0 9 12 1
0 7 0 1
0
end_operator
begin_operator
board p1 fast1 n8 n1 n2
1
2 4
2
0 9 12 1
0 7 1 2
0
end_operator
begin_operator
board p1 fast1 n8 n2 n3
1
2 4
2
0 9 12 1
0 7 2 3
0
end_operator
begin_operator
board p1 slow0-0 n0 n0 n1
1
1 0
2
0 9 4 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow0-0 n0 n1 n2
1
1 0
2
0 9 4 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow0-0 n1 n0 n1
1
1 1
2
0 9 5 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow0-0 n1 n1 n2
1
1 1
2
0 9 5 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow0-0 n2 n0 n1
1
1 2
2
0 9 6 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow0-0 n2 n1 n2
1
1 2
2
0 9 6 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow0-0 n3 n0 n1
1
1 3
2
0 9 7 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow0-0 n3 n1 n2
1
1 3
2
0 9 7 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow0-0 n4 n0 n1
1
1 4
2
0 9 8 2
0 4 0 1
0
end_operator
begin_operator
board p1 slow0-0 n4 n1 n2
1
1 4
2
0 9 8 2
0 4 1 2
0
end_operator
begin_operator
board p1 slow1-0 n4 n0 n1
1
0 0
2
0 9 8 3
0 5 0 1
0
end_operator
begin_operator
board p1 slow1-0 n4 n1 n2
1
0 0
2
0 9 8 3
0 5 1 2
0
end_operator
begin_operator
board p1 slow1-0 n5 n0 n1
1
0 1
2
0 9 9 3
0 5 0 1
0
end_operator
begin_operator
board p1 slow1-0 n5 n1 n2
1
0 1
2
0 9 9 3
0 5 1 2
0
end_operator
begin_operator
board p1 slow1-0 n6 n0 n1
1
0 2
2
0 9 10 3
0 5 0 1
0
end_operator
begin_operator
board p1 slow1-0 n6 n1 n2
1
0 2
2
0 9 10 3
0 5 1 2
0
end_operator
begin_operator
board p1 slow1-0 n7 n0 n1
1
0 3
2
0 9 11 3
0 5 0 1
0
end_operator
begin_operator
board p1 slow1-0 n7 n1 n2
1
0 3
2
0 9 11 3
0 5 1 2
0
end_operator
begin_operator
board p1 slow1-0 n8 n0 n1
1
0 4
2
0 9 12 3
0 5 0 1
0
end_operator
begin_operator
board p1 slow1-0 n8 n1 n2
1
0 4
2
0 9 12 3
0 5 1 2
0
end_operator
begin_operator
board p2 fast0 n0 n0 n1
1
3 0
2
0 10 4 0
0 6 0 1
0
end_operator
begin_operator
board p2 fast0 n0 n1 n2
1
3 0
2
0 10 4 0
0 6 1 2
0
end_operator
begin_operator
board p2 fast0 n0 n2 n3
1
3 0
2
0 10 4 0
0 6 2 3
0
end_operator
begin_operator
board p2 fast0 n2 n0 n1
1
3 1
2
0 10 6 0
0 6 0 1
0
end_operator
begin_operator
board p2 fast0 n2 n1 n2
1
3 1
2
0 10 6 0
0 6 1 2
0
end_operator
begin_operator
board p2 fast0 n2 n2 n3
1
3 1
2
0 10 6 0
0 6 2 3
0
end_operator
begin_operator
board p2 fast0 n4 n0 n1
1
3 2
2
0 10 8 0
0 6 0 1
0
end_operator
begin_operator
board p2 fast0 n4 n1 n2
1
3 2
2
0 10 8 0
0 6 1 2
0
end_operator
begin_operator
board p2 fast0 n4 n2 n3
1
3 2
2
0 10 8 0
0 6 2 3
0
end_operator
begin_operator
board p2 fast0 n6 n0 n1
1
3 3
2
0 10 10 0
0 6 0 1
0
end_operator
begin_operator
board p2 fast0 n6 n1 n2
1
3 3
2
0 10 10 0
0 6 1 2
0
end_operator
begin_operator
board p2 fast0 n6 n2 n3
1
3 3
2
0 10 10 0
0 6 2 3
0
end_operator
begin_operator
board p2 fast0 n8 n0 n1
1
3 4
2
0 10 12 0
0 6 0 1
0
end_operator
begin_operator
board p2 fast0 n8 n1 n2
1
3 4
2
0 10 12 0
0 6 1 2
0
end_operator
begin_operator
board p2 fast0 n8 n2 n3
1
3 4
2
0 10 12 0
0 6 2 3
0
end_operator
begin_operator
board p2 fast1 n0 n0 n1
1
2 0
2
0 10 4 1
0 7 0 1
0
end_operator
begin_operator
board p2 fast1 n0 n1 n2
1
2 0
2
0 10 4 1
0 7 1 2
0
end_operator
begin_operator
board p2 fast1 n0 n2 n3
1
2 0
2
0 10 4 1
0 7 2 3
0
end_operator
begin_operator
board p2 fast1 n2 n0 n1
1
2 1
2
0 10 6 1
0 7 0 1
0
end_operator
begin_operator
board p2 fast1 n2 n1 n2
1
2 1
2
0 10 6 1
0 7 1 2
0
end_operator
begin_operator
board p2 fast1 n2 n2 n3
1
2 1
2
0 10 6 1
0 7 2 3
0
end_operator
begin_operator
board p2 fast1 n4 n0 n1
1
2 2
2
0 10 8 1
0 7 0 1
0
end_operator
begin_operator
board p2 fast1 n4 n1 n2
1
2 2
2
0 10 8 1
0 7 1 2
0
end_operator
begin_operator
board p2 fast1 n4 n2 n3
1
2 2
2
0 10 8 1
0 7 2 3
0
end_operator
begin_operator
board p2 fast1 n6 n0 n1
1
2 3
2
0 10 10 1
0 7 0 1
0
end_operator
begin_operator
board p2 fast1 n6 n1 n2
1
2 3
2
0 10 10 1
0 7 1 2
0
end_operator
begin_operator
board p2 fast1 n6 n2 n3
1
2 3
2
0 10 10 1
0 7 2 3
0
end_operator
begin_operator
board p2 fast1 n8 n0 n1
1
2 4
2
0 10 12 1
0 7 0 1
0
end_operator
begin_operator
board p2 fast1 n8 n1 n2
1
2 4
2
0 10 12 1
0 7 1 2
0
end_operator
begin_operator
board p2 fast1 n8 n2 n3
1
2 4
2
0 10 12 1
0 7 2 3
0
end_operator
begin_operator
board p2 slow0-0 n0 n0 n1
1
1 0
2
0 10 4 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow0-0 n0 n1 n2
1
1 0
2
0 10 4 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow0-0 n1 n0 n1
1
1 1
2
0 10 5 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow0-0 n1 n1 n2
1
1 1
2
0 10 5 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow0-0 n2 n0 n1
1
1 2
2
0 10 6 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow0-0 n2 n1 n2
1
1 2
2
0 10 6 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow0-0 n3 n0 n1
1
1 3
2
0 10 7 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow0-0 n3 n1 n2
1
1 3
2
0 10 7 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow0-0 n4 n0 n1
1
1 4
2
0 10 8 2
0 4 0 1
0
end_operator
begin_operator
board p2 slow0-0 n4 n1 n2
1
1 4
2
0 10 8 2
0 4 1 2
0
end_operator
begin_operator
board p2 slow1-0 n4 n0 n1
1
0 0
2
0 10 8 3
0 5 0 1
0
end_operator
begin_operator
board p2 slow1-0 n4 n1 n2
1
0 0
2
0 10 8 3
0 5 1 2
0
end_operator
begin_operator
board p2 slow1-0 n5 n0 n1
1
0 1
2
0 10 9 3
0 5 0 1
0
end_operator
begin_operator
board p2 slow1-0 n5 n1 n2
1
0 1
2
0 10 9 3
0 5 1 2
0
end_operator
begin_operator
board p2 slow1-0 n6 n0 n1
1
0 2
2
0 10 10 3
0 5 0 1
0
end_operator
begin_operator
board p2 slow1-0 n6 n1 n2
1
0 2
2
0 10 10 3
0 5 1 2
0
end_operator
begin_operator
board p2 slow1-0 n7 n0 n1
1
0 3
2
0 10 11 3
0 5 0 1
0
end_operator
begin_operator
board p2 slow1-0 n7 n1 n2
1
0 3
2
0 10 11 3
0 5 1 2
0
end_operator
begin_operator
board p2 slow1-0 n8 n0 n1
1
0 4
2
0 10 12 3
0 5 0 1
0
end_operator
begin_operator
board p2 slow1-0 n8 n1 n2
1
0 4
2
0 10 12 3
0 5 1 2
0
end_operator
begin_operator
board p3 fast0 n0 n0 n1
1
3 0
2
0 11 4 0
0 6 0 1
0
end_operator
begin_operator
board p3 fast0 n0 n1 n2
1
3 0
2
0 11 4 0
0 6 1 2
0
end_operator
begin_operator
board p3 fast0 n0 n2 n3
1
3 0
2
0 11 4 0
0 6 2 3
0
end_operator
begin_operator
board p3 fast0 n2 n0 n1
1
3 1
2
0 11 6 0
0 6 0 1
0
end_operator
begin_operator
board p3 fast0 n2 n1 n2
1
3 1
2
0 11 6 0
0 6 1 2
0
end_operator
begin_operator
board p3 fast0 n2 n2 n3
1
3 1
2
0 11 6 0
0 6 2 3
0
end_operator
begin_operator
board p3 fast0 n4 n0 n1
1
3 2
2
0 11 8 0
0 6 0 1
0
end_operator
begin_operator
board p3 fast0 n4 n1 n2
1
3 2
2
0 11 8 0
0 6 1 2
0
end_operator
begin_operator
board p3 fast0 n4 n2 n3
1
3 2
2
0 11 8 0
0 6 2 3
0
end_operator
begin_operator
board p3 fast0 n6 n0 n1
1
3 3
2
0 11 10 0
0 6 0 1
0
end_operator
begin_operator
board p3 fast0 n6 n1 n2
1
3 3
2
0 11 10 0
0 6 1 2
0
end_operator
begin_operator
board p3 fast0 n6 n2 n3
1
3 3
2
0 11 10 0
0 6 2 3
0
end_operator
begin_operator
board p3 fast0 n8 n0 n1
1
3 4
2
0 11 12 0
0 6 0 1
0
end_operator
begin_operator
board p3 fast0 n8 n1 n2
1
3 4
2
0 11 12 0
0 6 1 2
0
end_operator
begin_operator
board p3 fast0 n8 n2 n3
1
3 4
2
0 11 12 0
0 6 2 3
0
end_operator
begin_operator
board p3 fast1 n0 n0 n1
1
2 0
2
0 11 4 1
0 7 0 1
0
end_operator
begin_operator
board p3 fast1 n0 n1 n2
1
2 0
2
0 11 4 1
0 7 1 2
0
end_operator
begin_operator
board p3 fast1 n0 n2 n3
1
2 0
2
0 11 4 1
0 7 2 3
0
end_operator
begin_operator
board p3 fast1 n2 n0 n1
1
2 1
2
0 11 6 1
0 7 0 1
0
end_operator
begin_operator
board p3 fast1 n2 n1 n2
1
2 1
2
0 11 6 1
0 7 1 2
0
end_operator
begin_operator
board p3 fast1 n2 n2 n3
1
2 1
2
0 11 6 1
0 7 2 3
0
end_operator
begin_operator
board p3 fast1 n4 n0 n1
1
2 2
2
0 11 8 1
0 7 0 1
0
end_operator
begin_operator
board p3 fast1 n4 n1 n2
1
2 2
2
0 11 8 1
0 7 1 2
0
end_operator
begin_operator
board p3 fast1 n4 n2 n3
1
2 2
2
0 11 8 1
0 7 2 3
0
end_operator
begin_operator
board p3 fast1 n6 n0 n1
1
2 3
2
0 11 10 1
0 7 0 1
0
end_operator
begin_operator
board p3 fast1 n6 n1 n2
1
2 3
2
0 11 10 1
0 7 1 2
0
end_operator
begin_operator
board p3 fast1 n6 n2 n3
1
2 3
2
0 11 10 1
0 7 2 3
0
end_operator
begin_operator
board p3 fast1 n8 n0 n1
1
2 4
2
0 11 12 1
0 7 0 1
0
end_operator
begin_operator
board p3 fast1 n8 n1 n2
1
2 4
2
0 11 12 1
0 7 1 2
0
end_operator
begin_operator
board p3 fast1 n8 n2 n3
1
2 4
2
0 11 12 1
0 7 2 3
0
end_operator
begin_operator
board p3 slow0-0 n0 n0 n1
1
1 0
2
0 11 4 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow0-0 n0 n1 n2
1
1 0
2
0 11 4 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow0-0 n1 n0 n1
1
1 1
2
0 11 5 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow0-0 n1 n1 n2
1
1 1
2
0 11 5 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow0-0 n2 n0 n1
1
1 2
2
0 11 6 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow0-0 n2 n1 n2
1
1 2
2
0 11 6 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow0-0 n3 n0 n1
1
1 3
2
0 11 7 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow0-0 n3 n1 n2
1
1 3
2
0 11 7 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow0-0 n4 n0 n1
1
1 4
2
0 11 8 2
0 4 0 1
0
end_operator
begin_operator
board p3 slow0-0 n4 n1 n2
1
1 4
2
0 11 8 2
0 4 1 2
0
end_operator
begin_operator
board p3 slow1-0 n4 n0 n1
1
0 0
2
0 11 8 3
0 5 0 1
0
end_operator
begin_operator
board p3 slow1-0 n4 n1 n2
1
0 0
2
0 11 8 3
0 5 1 2
0
end_operator
begin_operator
board p3 slow1-0 n5 n0 n1
1
0 1
2
0 11 9 3
0 5 0 1
0
end_operator
begin_operator
board p3 slow1-0 n5 n1 n2
1
0 1
2
0 11 9 3
0 5 1 2
0
end_operator
begin_operator
board p3 slow1-0 n6 n0 n1
1
0 2
2
0 11 10 3
0 5 0 1
0
end_operator
begin_operator
board p3 slow1-0 n6 n1 n2
1
0 2
2
0 11 10 3
0 5 1 2
0
end_operator
begin_operator
board p3 slow1-0 n7 n0 n1
1
0 3
2
0 11 11 3
0 5 0 1
0
end_operator
begin_operator
board p3 slow1-0 n7 n1 n2
1
0 3
2
0 11 11 3
0 5 1 2
0
end_operator
begin_operator
board p3 slow1-0 n8 n0 n1
1
0 4
2
0 11 12 3
0 5 0 1
0
end_operator
begin_operator
board p3 slow1-0 n8 n1 n2
1
0 4
2
0 11 12 3
0 5 1 2
0
end_operator
begin_operator
leave p0 fast0 n0 n1 n0
1
3 0
2
0 8 0 4
0 6 1 0
0
end_operator
begin_operator
leave p0 fast0 n0 n2 n1
1
3 0
2
0 8 0 4
0 6 2 1
0
end_operator
begin_operator
leave p0 fast0 n0 n3 n2
1
3 0
2
0 8 0 4
0 6 3 2
0
end_operator
begin_operator
leave p0 fast0 n2 n1 n0
1
3 1
2
0 8 0 6
0 6 1 0
0
end_operator
begin_operator
leave p0 fast0 n2 n2 n1
1
3 1
2
0 8 0 6
0 6 2 1
0
end_operator
begin_operator
leave p0 fast0 n2 n3 n2
1
3 1
2
0 8 0 6
0 6 3 2
0
end_operator
begin_operator
leave p0 fast0 n4 n1 n0
1
3 2
2
0 8 0 8
0 6 1 0
0
end_operator
begin_operator
leave p0 fast0 n4 n2 n1
1
3 2
2
0 8 0 8
0 6 2 1
0
end_operator
begin_operator
leave p0 fast0 n4 n3 n2
1
3 2
2
0 8 0 8
0 6 3 2
0
end_operator
begin_operator
leave p0 fast0 n6 n1 n0
1
3 3
2
0 8 0 10
0 6 1 0
0
end_operator
begin_operator
leave p0 fast0 n6 n2 n1
1
3 3
2
0 8 0 10
0 6 2 1
0
end_operator
begin_operator
leave p0 fast0 n6 n3 n2
1
3 3
2
0 8 0 10
0 6 3 2
0
end_operator
begin_operator
leave p0 fast0 n8 n1 n0
1
3 4
2
0 8 0 12
0 6 1 0
0
end_operator
begin_operator
leave p0 fast0 n8 n2 n1
1
3 4
2
0 8 0 12
0 6 2 1
0
end_operator
begin_operator
leave p0 fast0 n8 n3 n2
1
3 4
2
0 8 0 12
0 6 3 2
0
end_operator
begin_operator
leave p0 fast1 n0 n1 n0
1
2 0
2
0 8 1 4
0 7 1 0
0
end_operator
begin_operator
leave p0 fast1 n0 n2 n1
1
2 0
2
0 8 1 4
0 7 2 1
0
end_operator
begin_operator
leave p0 fast1 n0 n3 n2
1
2 0
2
0 8 1 4
0 7 3 2
0
end_operator
begin_operator
leave p0 fast1 n2 n1 n0
1
2 1
2
0 8 1 6
0 7 1 0
0
end_operator
begin_operator
leave p0 fast1 n2 n2 n1
1
2 1
2
0 8 1 6
0 7 2 1
0
end_operator
begin_operator
leave p0 fast1 n2 n3 n2
1
2 1
2
0 8 1 6
0 7 3 2
0
end_operator
begin_operator
leave p0 fast1 n4 n1 n0
1
2 2
2
0 8 1 8
0 7 1 0
0
end_operator
begin_operator
leave p0 fast1 n4 n2 n1
1
2 2
2
0 8 1 8
0 7 2 1
0
end_operator
begin_operator
leave p0 fast1 n4 n3 n2
1
2 2
2
0 8 1 8
0 7 3 2
0
end_operator
begin_operator
leave p0 fast1 n6 n1 n0
1
2 3
2
0 8 1 10
0 7 1 0
0
end_operator
begin_operator
leave p0 fast1 n6 n2 n1
1
2 3
2
0 8 1 10
0 7 2 1
0
end_operator
begin_operator
leave p0 fast1 n6 n3 n2
1
2 3
2
0 8 1 10
0 7 3 2
0
end_operator
begin_operator
leave p0 fast1 n8 n1 n0
1
2 4
2
0 8 1 12
0 7 1 0
0
end_operator
begin_operator
leave p0 fast1 n8 n2 n1
1
2 4
2
0 8 1 12
0 7 2 1
0
end_operator
begin_operator
leave p0 fast1 n8 n3 n2
1
2 4
2
0 8 1 12
0 7 3 2
0
end_operator
begin_operator
leave p0 slow0-0 n0 n1 n0
1
1 0
2
0 8 2 4
0 4 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n0 n2 n1
1
1 0
2
0 8 2 4
0 4 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n1 n1 n0
1
1 1
2
0 8 2 5
0 4 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n1 n2 n1
1
1 1
2
0 8 2 5
0 4 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n2 n1 n0
1
1 2
2
0 8 2 6
0 4 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n2 n2 n1
1
1 2
2
0 8 2 6
0 4 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n3 n1 n0
1
1 3
2
0 8 2 7
0 4 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n3 n2 n1
1
1 3
2
0 8 2 7
0 4 2 1
0
end_operator
begin_operator
leave p0 slow0-0 n4 n1 n0
1
1 4
2
0 8 2 8
0 4 1 0
0
end_operator
begin_operator
leave p0 slow0-0 n4 n2 n1
1
1 4
2
0 8 2 8
0 4 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n4 n1 n0
1
0 0
2
0 8 3 8
0 5 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n4 n2 n1
1
0 0
2
0 8 3 8
0 5 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n5 n1 n0
1
0 1
2
0 8 3 9
0 5 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n5 n2 n1
1
0 1
2
0 8 3 9
0 5 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n6 n1 n0
1
0 2
2
0 8 3 10
0 5 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n6 n2 n1
1
0 2
2
0 8 3 10
0 5 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n7 n1 n0
1
0 3
2
0 8 3 11
0 5 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n7 n2 n1
1
0 3
2
0 8 3 11
0 5 2 1
0
end_operator
begin_operator
leave p0 slow1-0 n8 n1 n0
1
0 4
2
0 8 3 12
0 5 1 0
0
end_operator
begin_operator
leave p0 slow1-0 n8 n2 n1
1
0 4
2
0 8 3 12
0 5 2 1
0
end_operator
begin_operator
leave p1 fast0 n0 n1 n0
1
3 0
2
0 9 0 4
0 6 1 0
0
end_operator
begin_operator
leave p1 fast0 n0 n2 n1
1
3 0
2
0 9 0 4
0 6 2 1
0
end_operator
begin_operator
leave p1 fast0 n0 n3 n2
1
3 0
2
0 9 0 4
0 6 3 2
0
end_operator
begin_operator
leave p1 fast0 n2 n1 n0
1
3 1
2
0 9 0 6
0 6 1 0
0
end_operator
begin_operator
leave p1 fast0 n2 n2 n1
1
3 1
2
0 9 0 6
0 6 2 1
0
end_operator
begin_operator
leave p1 fast0 n2 n3 n2
1
3 1
2
0 9 0 6
0 6 3 2
0
end_operator
begin_operator
leave p1 fast0 n4 n1 n0
1
3 2
2
0 9 0 8
0 6 1 0
0
end_operator
begin_operator
leave p1 fast0 n4 n2 n1
1
3 2
2
0 9 0 8
0 6 2 1
0
end_operator
begin_operator
leave p1 fast0 n4 n3 n2
1
3 2
2
0 9 0 8
0 6 3 2
0
end_operator
begin_operator
leave p1 fast0 n6 n1 n0
1
3 3
2
0 9 0 10
0 6 1 0
0
end_operator
begin_operator
leave p1 fast0 n6 n2 n1
1
3 3
2
0 9 0 10
0 6 2 1
0
end_operator
begin_operator
leave p1 fast0 n6 n3 n2
1
3 3
2
0 9 0 10
0 6 3 2
0
end_operator
begin_operator
leave p1 fast0 n8 n1 n0
1
3 4
2
0 9 0 12
0 6 1 0
0
end_operator
begin_operator
leave p1 fast0 n8 n2 n1
1
3 4
2
0 9 0 12
0 6 2 1
0
end_operator
begin_operator
leave p1 fast0 n8 n3 n2
1
3 4
2
0 9 0 12
0 6 3 2
0
end_operator
begin_operator
leave p1 fast1 n0 n1 n0
1
2 0
2
0 9 1 4
0 7 1 0
0
end_operator
begin_operator
leave p1 fast1 n0 n2 n1
1
2 0
2
0 9 1 4
0 7 2 1
0
end_operator
begin_operator
leave p1 fast1 n0 n3 n2
1
2 0
2
0 9 1 4
0 7 3 2
0
end_operator
begin_operator
leave p1 fast1 n2 n1 n0
1
2 1
2
0 9 1 6
0 7 1 0
0
end_operator
begin_operator
leave p1 fast1 n2 n2 n1
1
2 1
2
0 9 1 6
0 7 2 1
0
end_operator
begin_operator
leave p1 fast1 n2 n3 n2
1
2 1
2
0 9 1 6
0 7 3 2
0
end_operator
begin_operator
leave p1 fast1 n4 n1 n0
1
2 2
2
0 9 1 8
0 7 1 0
0
end_operator
begin_operator
leave p1 fast1 n4 n2 n1
1
2 2
2
0 9 1 8
0 7 2 1
0
end_operator
begin_operator
leave p1 fast1 n4 n3 n2
1
2 2
2
0 9 1 8
0 7 3 2
0
end_operator
begin_operator
leave p1 fast1 n6 n1 n0
1
2 3
2
0 9 1 10
0 7 1 0
0
end_operator
begin_operator
leave p1 fast1 n6 n2 n1
1
2 3
2
0 9 1 10
0 7 2 1
0
end_operator
begin_operator
leave p1 fast1 n6 n3 n2
1
2 3
2
0 9 1 10
0 7 3 2
0
end_operator
begin_operator
leave p1 fast1 n8 n1 n0
1
2 4
2
0 9 1 12
0 7 1 0
0
end_operator
begin_operator
leave p1 fast1 n8 n2 n1
1
2 4
2
0 9 1 12
0 7 2 1
0
end_operator
begin_operator
leave p1 fast1 n8 n3 n2
1
2 4
2
0 9 1 12
0 7 3 2
0
end_operator
begin_operator
leave p1 slow0-0 n0 n1 n0
1
1 0
2
0 9 2 4
0 4 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n0 n2 n1
1
1 0
2
0 9 2 4
0 4 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n1 n1 n0
1
1 1
2
0 9 2 5
0 4 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n1 n2 n1
1
1 1
2
0 9 2 5
0 4 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n2 n1 n0
1
1 2
2
0 9 2 6
0 4 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n2 n2 n1
1
1 2
2
0 9 2 6
0 4 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n3 n1 n0
1
1 3
2
0 9 2 7
0 4 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n3 n2 n1
1
1 3
2
0 9 2 7
0 4 2 1
0
end_operator
begin_operator
leave p1 slow0-0 n4 n1 n0
1
1 4
2
0 9 2 8
0 4 1 0
0
end_operator
begin_operator
leave p1 slow0-0 n4 n2 n1
1
1 4
2
0 9 2 8
0 4 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n4 n1 n0
1
0 0
2
0 9 3 8
0 5 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n4 n2 n1
1
0 0
2
0 9 3 8
0 5 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n5 n1 n0
1
0 1
2
0 9 3 9
0 5 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n5 n2 n1
1
0 1
2
0 9 3 9
0 5 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n6 n1 n0
1
0 2
2
0 9 3 10
0 5 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n6 n2 n1
1
0 2
2
0 9 3 10
0 5 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n7 n1 n0
1
0 3
2
0 9 3 11
0 5 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n7 n2 n1
1
0 3
2
0 9 3 11
0 5 2 1
0
end_operator
begin_operator
leave p1 slow1-0 n8 n1 n0
1
0 4
2
0 9 3 12
0 5 1 0
0
end_operator
begin_operator
leave p1 slow1-0 n8 n2 n1
1
0 4
2
0 9 3 12
0 5 2 1
0
end_operator
begin_operator
leave p2 fast0 n0 n1 n0
1
3 0
2
0 10 0 4
0 6 1 0
0
end_operator
begin_operator
leave p2 fast0 n0 n2 n1
1
3 0
2
0 10 0 4
0 6 2 1
0
end_operator
begin_operator
leave p2 fast0 n0 n3 n2
1
3 0
2
0 10 0 4
0 6 3 2
0
end_operator
begin_operator
leave p2 fast0 n2 n1 n0
1
3 1
2
0 10 0 6
0 6 1 0
0
end_operator
begin_operator
leave p2 fast0 n2 n2 n1
1
3 1
2
0 10 0 6
0 6 2 1
0
end_operator
begin_operator
leave p2 fast0 n2 n3 n2
1
3 1
2
0 10 0 6
0 6 3 2
0
end_operator
begin_operator
leave p2 fast0 n4 n1 n0
1
3 2
2
0 10 0 8
0 6 1 0
0
end_operator
begin_operator
leave p2 fast0 n4 n2 n1
1
3 2
2
0 10 0 8
0 6 2 1
0
end_operator
begin_operator
leave p2 fast0 n4 n3 n2
1
3 2
2
0 10 0 8
0 6 3 2
0
end_operator
begin_operator
leave p2 fast0 n6 n1 n0
1
3 3
2
0 10 0 10
0 6 1 0
0
end_operator
begin_operator
leave p2 fast0 n6 n2 n1
1
3 3
2
0 10 0 10
0 6 2 1
0
end_operator
begin_operator
leave p2 fast0 n6 n3 n2
1
3 3
2
0 10 0 10
0 6 3 2
0
end_operator
begin_operator
leave p2 fast0 n8 n1 n0
1
3 4
2
0 10 0 12
0 6 1 0
0
end_operator
begin_operator
leave p2 fast0 n8 n2 n1
1
3 4
2
0 10 0 12
0 6 2 1
0
end_operator
begin_operator
leave p2 fast0 n8 n3 n2
1
3 4
2
0 10 0 12
0 6 3 2
0
end_operator
begin_operator
leave p2 fast1 n0 n1 n0
1
2 0
2
0 10 1 4
0 7 1 0
0
end_operator
begin_operator
leave p2 fast1 n0 n2 n1
1
2 0
2
0 10 1 4
0 7 2 1
0
end_operator
begin_operator
leave p2 fast1 n0 n3 n2
1
2 0
2
0 10 1 4
0 7 3 2
0
end_operator
begin_operator
leave p2 fast1 n2 n1 n0
1
2 1
2
0 10 1 6
0 7 1 0
0
end_operator
begin_operator
leave p2 fast1 n2 n2 n1
1
2 1
2
0 10 1 6
0 7 2 1
0
end_operator
begin_operator
leave p2 fast1 n2 n3 n2
1
2 1
2
0 10 1 6
0 7 3 2
0
end_operator
begin_operator
leave p2 fast1 n4 n1 n0
1
2 2
2
0 10 1 8
0 7 1 0
0
end_operator
begin_operator
leave p2 fast1 n4 n2 n1
1
2 2
2
0 10 1 8
0 7 2 1
0
end_operator
begin_operator
leave p2 fast1 n4 n3 n2
1
2 2
2
0 10 1 8
0 7 3 2
0
end_operator
begin_operator
leave p2 fast1 n6 n1 n0
1
2 3
2
0 10 1 10
0 7 1 0
0
end_operator
begin_operator
leave p2 fast1 n6 n2 n1
1
2 3
2
0 10 1 10
0 7 2 1
0
end_operator
begin_operator
leave p2 fast1 n6 n3 n2
1
2 3
2
0 10 1 10
0 7 3 2
0
end_operator
begin_operator
leave p2 fast1 n8 n1 n0
1
2 4
2
0 10 1 12
0 7 1 0
0
end_operator
begin_operator
leave p2 fast1 n8 n2 n1
1
2 4
2
0 10 1 12
0 7 2 1
0
end_operator
begin_operator
leave p2 fast1 n8 n3 n2
1
2 4
2
0 10 1 12
0 7 3 2
0
end_operator
begin_operator
leave p2 slow0-0 n0 n1 n0
1
1 0
2
0 10 2 4
0 4 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n0 n2 n1
1
1 0
2
0 10 2 4
0 4 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n1 n1 n0
1
1 1
2
0 10 2 5
0 4 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n1 n2 n1
1
1 1
2
0 10 2 5
0 4 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n2 n1 n0
1
1 2
2
0 10 2 6
0 4 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n2 n2 n1
1
1 2
2
0 10 2 6
0 4 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n3 n1 n0
1
1 3
2
0 10 2 7
0 4 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n3 n2 n1
1
1 3
2
0 10 2 7
0 4 2 1
0
end_operator
begin_operator
leave p2 slow0-0 n4 n1 n0
1
1 4
2
0 10 2 8
0 4 1 0
0
end_operator
begin_operator
leave p2 slow0-0 n4 n2 n1
1
1 4
2
0 10 2 8
0 4 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n4 n1 n0
1
0 0
2
0 10 3 8
0 5 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n4 n2 n1
1
0 0
2
0 10 3 8
0 5 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n5 n1 n0
1
0 1
2
0 10 3 9
0 5 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n5 n2 n1
1
0 1
2
0 10 3 9
0 5 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n6 n1 n0
1
0 2
2
0 10 3 10
0 5 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n6 n2 n1
1
0 2
2
0 10 3 10
0 5 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n7 n1 n0
1
0 3
2
0 10 3 11
0 5 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n7 n2 n1
1
0 3
2
0 10 3 11
0 5 2 1
0
end_operator
begin_operator
leave p2 slow1-0 n8 n1 n0
1
0 4
2
0 10 3 12
0 5 1 0
0
end_operator
begin_operator
leave p2 slow1-0 n8 n2 n1
1
0 4
2
0 10 3 12
0 5 2 1
0
end_operator
begin_operator
leave p3 fast0 n0 n1 n0
1
3 0
2
0 11 0 4
0 6 1 0
0
end_operator
begin_operator
leave p3 fast0 n0 n2 n1
1
3 0
2
0 11 0 4
0 6 2 1
0
end_operator
begin_operator
leave p3 fast0 n0 n3 n2
1
3 0
2
0 11 0 4
0 6 3 2
0
end_operator
begin_operator
leave p3 fast0 n2 n1 n0
1
3 1
2
0 11 0 6
0 6 1 0
0
end_operator
begin_operator
leave p3 fast0 n2 n2 n1
1
3 1
2
0 11 0 6
0 6 2 1
0
end_operator
begin_operator
leave p3 fast0 n2 n3 n2
1
3 1
2
0 11 0 6
0 6 3 2
0
end_operator
begin_operator
leave p3 fast0 n4 n1 n0
1
3 2
2
0 11 0 8
0 6 1 0
0
end_operator
begin_operator
leave p3 fast0 n4 n2 n1
1
3 2
2
0 11 0 8
0 6 2 1
0
end_operator
begin_operator
leave p3 fast0 n4 n3 n2
1
3 2
2
0 11 0 8
0 6 3 2
0
end_operator
begin_operator
leave p3 fast0 n6 n1 n0
1
3 3
2
0 11 0 10
0 6 1 0
0
end_operator
begin_operator
leave p3 fast0 n6 n2 n1
1
3 3
2
0 11 0 10
0 6 2 1
0
end_operator
begin_operator
leave p3 fast0 n6 n3 n2
1
3 3
2
0 11 0 10
0 6 3 2
0
end_operator
begin_operator
leave p3 fast0 n8 n1 n0
1
3 4
2
0 11 0 12
0 6 1 0
0
end_operator
begin_operator
leave p3 fast0 n8 n2 n1
1
3 4
2
0 11 0 12
0 6 2 1
0
end_operator
begin_operator
leave p3 fast0 n8 n3 n2
1
3 4
2
0 11 0 12
0 6 3 2
0
end_operator
begin_operator
leave p3 fast1 n0 n1 n0
1
2 0
2
0 11 1 4
0 7 1 0
0
end_operator
begin_operator
leave p3 fast1 n0 n2 n1
1
2 0
2
0 11 1 4
0 7 2 1
0
end_operator
begin_operator
leave p3 fast1 n0 n3 n2
1
2 0
2
0 11 1 4
0 7 3 2
0
end_operator
begin_operator
leave p3 fast1 n2 n1 n0
1
2 1
2
0 11 1 6
0 7 1 0
0
end_operator
begin_operator
leave p3 fast1 n2 n2 n1
1
2 1
2
0 11 1 6
0 7 2 1
0
end_operator
begin_operator
leave p3 fast1 n2 n3 n2
1
2 1
2
0 11 1 6
0 7 3 2
0
end_operator
begin_operator
leave p3 fast1 n4 n1 n0
1
2 2
2
0 11 1 8
0 7 1 0
0
end_operator
begin_operator
leave p3 fast1 n4 n2 n1
1
2 2
2
0 11 1 8
0 7 2 1
0
end_operator
begin_operator
leave p3 fast1 n4 n3 n2
1
2 2
2
0 11 1 8
0 7 3 2
0
end_operator
begin_operator
leave p3 fast1 n6 n1 n0
1
2 3
2
0 11 1 10
0 7 1 0
0
end_operator
begin_operator
leave p3 fast1 n6 n2 n1
1
2 3
2
0 11 1 10
0 7 2 1
0
end_operator
begin_operator
leave p3 fast1 n6 n3 n2
1
2 3
2
0 11 1 10
0 7 3 2
0
end_operator
begin_operator
leave p3 fast1 n8 n1 n0
1
2 4
2
0 11 1 12
0 7 1 0
0
end_operator
begin_operator
leave p3 fast1 n8 n2 n1
1
2 4
2
0 11 1 12
0 7 2 1
0
end_operator
begin_operator
leave p3 fast1 n8 n3 n2
1
2 4
2
0 11 1 12
0 7 3 2
0
end_operator
begin_operator
leave p3 slow0-0 n0 n1 n0
1
1 0
2
0 11 2 4
0 4 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n0 n2 n1
1
1 0
2
0 11 2 4
0 4 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n1 n1 n0
1
1 1
2
0 11 2 5
0 4 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n1 n2 n1
1
1 1
2
0 11 2 5
0 4 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n2 n1 n0
1
1 2
2
0 11 2 6
0 4 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n2 n2 n1
1
1 2
2
0 11 2 6
0 4 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n3 n1 n0
1
1 3
2
0 11 2 7
0 4 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n3 n2 n1
1
1 3
2
0 11 2 7
0 4 2 1
0
end_operator
begin_operator
leave p3 slow0-0 n4 n1 n0
1
1 4
2
0 11 2 8
0 4 1 0
0
end_operator
begin_operator
leave p3 slow0-0 n4 n2 n1
1
1 4
2
0 11 2 8
0 4 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n4 n1 n0
1
0 0
2
0 11 3 8
0 5 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n4 n2 n1
1
0 0
2
0 11 3 8
0 5 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n5 n1 n0
1
0 1
2
0 11 3 9
0 5 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n5 n2 n1
1
0 1
2
0 11 3 9
0 5 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n6 n1 n0
1
0 2
2
0 11 3 10
0 5 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n6 n2 n1
1
0 2
2
0 11 3 10
0 5 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n7 n1 n0
1
0 3
2
0 11 3 11
0 5 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n7 n2 n1
1
0 3
2
0 11 3 11
0 5 2 1
0
end_operator
begin_operator
leave p3 slow1-0 n8 n1 n0
1
0 4
2
0 11 3 12
0 5 1 0
0
end_operator
begin_operator
leave p3 slow1-0 n8 n2 n1
1
0 4
2
0 11 3 12
0 5 2 1
0
end_operator
begin_operator
move-down-fast fast0 n2 n0
0
1
0 3 1 0
700000
end_operator
begin_operator
move-down-fast fast0 n4 n0
0
1
0 3 2 0
1300000
end_operator
begin_operator
move-down-fast fast0 n4 n2
0
1
0 3 2 1
700000
end_operator
begin_operator
move-down-fast fast0 n6 n0
0
1
0 3 3 0
1900000
end_operator
begin_operator
move-down-fast fast0 n6 n2
0
1
0 3 3 1
1300000
end_operator
begin_operator
move-down-fast fast0 n6 n4
0
1
0 3 3 2
700000
end_operator
begin_operator
move-down-fast fast0 n8 n0
0
1
0 3 4 0
2500000
end_operator
begin_operator
move-down-fast fast0 n8 n2
0
1
0 3 4 1
1900000
end_operator
begin_operator
move-down-fast fast0 n8 n4
0
1
0 3 4 2
1300000
end_operator
begin_operator
move-down-fast fast0 n8 n6
0
1
0 3 4 3
700000
end_operator
begin_operator
move-down-fast fast1 n2 n0
0
1
0 2 1 0
700000
end_operator
begin_operator
move-down-fast fast1 n4 n0
0
1
0 2 2 0
1300000
end_operator
begin_operator
move-down-fast fast1 n4 n2
0
1
0 2 2 1
700000
end_operator
begin_operator
move-down-fast fast1 n6 n0
0
1
0 2 3 0
1900000
end_operator
begin_operator
move-down-fast fast1 n6 n2
0
1
0 2 3 1
1300000
end_operator
begin_operator
move-down-fast fast1 n6 n4
0
1
0 2 3 2
700000
end_operator
begin_operator
move-down-fast fast1 n8 n0
0
1
0 2 4 0
2500000
end_operator
begin_operator
move-down-fast fast1 n8 n2
0
1
0 2 4 1
1900000
end_operator
begin_operator
move-down-fast fast1 n8 n4
0
1
0 2 4 2
1300000
end_operator
begin_operator
move-down-fast fast1 n8 n6
0
1
0 2 4 3
700000
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
move-down-slow slow1-0 n5 n4
0
1
0 0 1 0
600000
end_operator
begin_operator
move-down-slow slow1-0 n6 n4
0
1
0 0 2 0
700000
end_operator
begin_operator
move-down-slow slow1-0 n6 n5
0
1
0 0 2 1
600000
end_operator
begin_operator
move-down-slow slow1-0 n7 n4
0
1
0 0 3 0
800000
end_operator
begin_operator
move-down-slow slow1-0 n7 n5
0
1
0 0 3 1
700000
end_operator
begin_operator
move-down-slow slow1-0 n7 n6
0
1
0 0 3 2
600000
end_operator
begin_operator
move-down-slow slow1-0 n8 n4
0
1
0 0 4 0
900000
end_operator
begin_operator
move-down-slow slow1-0 n8 n5
0
1
0 0 4 1
800000
end_operator
begin_operator
move-down-slow slow1-0 n8 n6
0
1
0 0 4 2
700000
end_operator
begin_operator
move-down-slow slow1-0 n8 n7
0
1
0 0 4 3
600000
end_operator
begin_operator
move-up-fast fast0 n0 n2
0
1
0 3 0 1
700000
end_operator
begin_operator
move-up-fast fast0 n0 n4
0
1
0 3 0 2
1300000
end_operator
begin_operator
move-up-fast fast0 n0 n6
0
1
0 3 0 3
1900000
end_operator
begin_operator
move-up-fast fast0 n0 n8
0
1
0 3 0 4
2500000
end_operator
begin_operator
move-up-fast fast0 n2 n4
0
1
0 3 1 2
700000
end_operator
begin_operator
move-up-fast fast0 n2 n6
0
1
0 3 1 3
1300000
end_operator
begin_operator
move-up-fast fast0 n2 n8
0
1
0 3 1 4
1900000
end_operator
begin_operator
move-up-fast fast0 n4 n6
0
1
0 3 2 3
700000
end_operator
begin_operator
move-up-fast fast0 n4 n8
0
1
0 3 2 4
1300000
end_operator
begin_operator
move-up-fast fast0 n6 n8
0
1
0 3 3 4
700000
end_operator
begin_operator
move-up-fast fast1 n0 n2
0
1
0 2 0 1
700000
end_operator
begin_operator
move-up-fast fast1 n0 n4
0
1
0 2 0 2
1300000
end_operator
begin_operator
move-up-fast fast1 n0 n6
0
1
0 2 0 3
1900000
end_operator
begin_operator
move-up-fast fast1 n0 n8
0
1
0 2 0 4
2500000
end_operator
begin_operator
move-up-fast fast1 n2 n4
0
1
0 2 1 2
700000
end_operator
begin_operator
move-up-fast fast1 n2 n6
0
1
0 2 1 3
1300000
end_operator
begin_operator
move-up-fast fast1 n2 n8
0
1
0 2 1 4
1900000
end_operator
begin_operator
move-up-fast fast1 n4 n6
0
1
0 2 2 3
700000
end_operator
begin_operator
move-up-fast fast1 n4 n8
0
1
0 2 2 4
1300000
end_operator
begin_operator
move-up-fast fast1 n6 n8
0
1
0 2 3 4
700000
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
move-up-slow slow0-0 n3 n4
0
1
0 1 3 4
600000
end_operator
begin_operator
move-up-slow slow1-0 n4 n5
0
1
0 0 0 1
600000
end_operator
begin_operator
move-up-slow slow1-0 n4 n6
0
1
0 0 0 2
700000
end_operator
begin_operator
move-up-slow slow1-0 n4 n7
0
1
0 0 0 3
800000
end_operator
begin_operator
move-up-slow slow1-0 n4 n8
0
1
0 0 0 4
900000
end_operator
begin_operator
move-up-slow slow1-0 n5 n6
0
1
0 0 1 2
600000
end_operator
begin_operator
move-up-slow slow1-0 n5 n7
0
1
0 0 1 3
700000
end_operator
begin_operator
move-up-slow slow1-0 n5 n8
0
1
0 0 1 4
800000
end_operator
begin_operator
move-up-slow slow1-0 n6 n7
0
1
0 0 2 3
600000
end_operator
begin_operator
move-up-slow slow1-0 n6 n8
0
1
0 0 2 4
700000
end_operator
begin_operator
move-up-slow slow1-0 n7 n8
0
1
0 0 3 4
600000
end_operator
0

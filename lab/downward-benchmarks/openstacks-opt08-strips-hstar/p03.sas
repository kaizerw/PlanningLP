begin_version
3
end_version
begin_metric
1
end_metric
15
begin_variable
var0
-1
2
Atom made(p1)
Atom not-made(p1)
end_variable
begin_variable
var1
-1
2
Atom made(p3)
Atom not-made(p3)
end_variable
begin_variable
var2
-1
2
Atom made(p4)
Atom not-made(p4)
end_variable
begin_variable
var3
-1
2
Atom made(p5)
Atom not-made(p5)
end_variable
begin_variable
var4
-1
2
Atom made(p7)
Atom not-made(p7)
end_variable
begin_variable
var5
-1
2
Atom made(p6)
Atom not-made(p6)
end_variable
begin_variable
var6
-1
2
Atom made(p2)
Atom not-made(p2)
end_variable
begin_variable
var7
-1
8
Atom stacks-avail(n0)
Atom stacks-avail(n1)
Atom stacks-avail(n2)
Atom stacks-avail(n3)
Atom stacks-avail(n4)
Atom stacks-avail(n5)
Atom stacks-avail(n6)
Atom stacks-avail(n7)
end_variable
begin_variable
var8
-1
3
Atom shipped(o1)
Atom started(o1)
Atom waiting(o1)
end_variable
begin_variable
var9
-1
3
Atom shipped(o2)
Atom started(o2)
Atom waiting(o2)
end_variable
begin_variable
var10
-1
3
Atom shipped(o3)
Atom started(o3)
Atom waiting(o3)
end_variable
begin_variable
var11
-1
3
Atom shipped(o4)
Atom started(o4)
Atom waiting(o4)
end_variable
begin_variable
var12
-1
3
Atom shipped(o6)
Atom started(o6)
Atom waiting(o6)
end_variable
begin_variable
var13
-1
3
Atom shipped(o7)
Atom started(o7)
Atom waiting(o7)
end_variable
begin_variable
var14
-1
3
Atom shipped(o5)
Atom started(o5)
Atom waiting(o5)
end_variable
0
begin_state
1
1
1
1
1
1
1
0
2
2
2
2
2
2
2
end_state
begin_goal
7
8 0
9 0
10 0
11 0
12 0
13 0
14 0
end_goal
112
begin_operator
make-product-p1 
1
12 1
1
0 0 1 0
0
end_operator
begin_operator
make-product-p2 
2
8 1
9 1
1
0 6 1 0
0
end_operator
begin_operator
make-product-p3 
1
10 1
1
0 1 1 0
0
end_operator
begin_operator
make-product-p4 
1
11 1
1
0 2 1 0
0
end_operator
begin_operator
make-product-p5 
1
14 1
1
0 3 1 0
0
end_operator
begin_operator
make-product-p6 
1
13 1
1
0 5 1 0
0
end_operator
begin_operator
make-product-p7 
1
14 1
1
0 4 1 0
0
end_operator
begin_operator
open-new-stack n0 n1
0
1
0 7 0 1
1
end_operator
begin_operator
open-new-stack n1 n2
0
1
0 7 1 2
1
end_operator
begin_operator
open-new-stack n2 n3
0
1
0 7 2 3
1
end_operator
begin_operator
open-new-stack n3 n4
0
1
0 7 3 4
1
end_operator
begin_operator
open-new-stack n4 n5
0
1
0 7 4 5
1
end_operator
begin_operator
open-new-stack n5 n6
0
1
0 7 5 6
1
end_operator
begin_operator
open-new-stack n6 n7
0
1
0 7 6 7
1
end_operator
begin_operator
ship-order-o1 n0 n1
1
6 0
2
0 8 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o1 n1 n2
1
6 0
2
0 8 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o1 n2 n3
1
6 0
2
0 8 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o1 n3 n4
1
6 0
2
0 8 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o1 n4 n5
1
6 0
2
0 8 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o1 n5 n6
1
6 0
2
0 8 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o1 n6 n7
1
6 0
2
0 8 1 0
0 7 6 7
0
end_operator
begin_operator
ship-order-o2 n0 n1
1
6 0
2
0 9 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o2 n1 n2
1
6 0
2
0 9 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o2 n2 n3
1
6 0
2
0 9 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o2 n3 n4
1
6 0
2
0 9 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o2 n4 n5
1
6 0
2
0 9 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o2 n5 n6
1
6 0
2
0 9 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o2 n6 n7
1
6 0
2
0 9 1 0
0 7 6 7
0
end_operator
begin_operator
ship-order-o3 n0 n1
1
1 0
2
0 10 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o3 n1 n2
1
1 0
2
0 10 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o3 n2 n3
1
1 0
2
0 10 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o3 n3 n4
1
1 0
2
0 10 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o3 n4 n5
1
1 0
2
0 10 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o3 n5 n6
1
1 0
2
0 10 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o3 n6 n7
1
1 0
2
0 10 1 0
0 7 6 7
0
end_operator
begin_operator
ship-order-o4 n0 n1
1
2 0
2
0 11 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o4 n1 n2
1
2 0
2
0 11 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o4 n2 n3
1
2 0
2
0 11 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o4 n3 n4
1
2 0
2
0 11 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o4 n4 n5
1
2 0
2
0 11 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o4 n5 n6
1
2 0
2
0 11 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o4 n6 n7
1
2 0
2
0 11 1 0
0 7 6 7
0
end_operator
begin_operator
ship-order-o5 n0 n1
2
3 0
4 0
2
0 14 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o5 n1 n2
2
3 0
4 0
2
0 14 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o5 n2 n3
2
3 0
4 0
2
0 14 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o5 n3 n4
2
3 0
4 0
2
0 14 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o5 n4 n5
2
3 0
4 0
2
0 14 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o5 n5 n6
2
3 0
4 0
2
0 14 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o5 n6 n7
2
3 0
4 0
2
0 14 1 0
0 7 6 7
0
end_operator
begin_operator
ship-order-o6 n0 n1
1
0 0
2
0 12 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o6 n1 n2
1
0 0
2
0 12 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o6 n2 n3
1
0 0
2
0 12 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o6 n3 n4
1
0 0
2
0 12 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o6 n4 n5
1
0 0
2
0 12 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o6 n5 n6
1
0 0
2
0 12 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o6 n6 n7
1
0 0
2
0 12 1 0
0 7 6 7
0
end_operator
begin_operator
ship-order-o7 n0 n1
1
5 0
2
0 13 1 0
0 7 0 1
0
end_operator
begin_operator
ship-order-o7 n1 n2
1
5 0
2
0 13 1 0
0 7 1 2
0
end_operator
begin_operator
ship-order-o7 n2 n3
1
5 0
2
0 13 1 0
0 7 2 3
0
end_operator
begin_operator
ship-order-o7 n3 n4
1
5 0
2
0 13 1 0
0 7 3 4
0
end_operator
begin_operator
ship-order-o7 n4 n5
1
5 0
2
0 13 1 0
0 7 4 5
0
end_operator
begin_operator
ship-order-o7 n5 n6
1
5 0
2
0 13 1 0
0 7 5 6
0
end_operator
begin_operator
ship-order-o7 n6 n7
1
5 0
2
0 13 1 0
0 7 6 7
0
end_operator
begin_operator
start-order o1 n1 n0
0
2
0 8 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o1 n2 n1
0
2
0 8 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o1 n3 n2
0
2
0 8 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o1 n4 n3
0
2
0 8 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o1 n5 n4
0
2
0 8 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o1 n6 n5
0
2
0 8 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o1 n7 n6
0
2
0 8 2 1
0 7 7 6
0
end_operator
begin_operator
start-order o2 n1 n0
0
2
0 9 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o2 n2 n1
0
2
0 9 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o2 n3 n2
0
2
0 9 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o2 n4 n3
0
2
0 9 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o2 n5 n4
0
2
0 9 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o2 n6 n5
0
2
0 9 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o2 n7 n6
0
2
0 9 2 1
0 7 7 6
0
end_operator
begin_operator
start-order o3 n1 n0
0
2
0 10 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o3 n2 n1
0
2
0 10 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o3 n3 n2
0
2
0 10 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o3 n4 n3
0
2
0 10 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o3 n5 n4
0
2
0 10 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o3 n6 n5
0
2
0 10 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o3 n7 n6
0
2
0 10 2 1
0 7 7 6
0
end_operator
begin_operator
start-order o4 n1 n0
0
2
0 11 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o4 n2 n1
0
2
0 11 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o4 n3 n2
0
2
0 11 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o4 n4 n3
0
2
0 11 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o4 n5 n4
0
2
0 11 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o4 n6 n5
0
2
0 11 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o4 n7 n6
0
2
0 11 2 1
0 7 7 6
0
end_operator
begin_operator
start-order o5 n1 n0
0
2
0 14 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o5 n2 n1
0
2
0 14 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o5 n3 n2
0
2
0 14 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o5 n4 n3
0
2
0 14 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o5 n5 n4
0
2
0 14 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o5 n6 n5
0
2
0 14 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o5 n7 n6
0
2
0 14 2 1
0 7 7 6
0
end_operator
begin_operator
start-order o6 n1 n0
0
2
0 12 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o6 n2 n1
0
2
0 12 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o6 n3 n2
0
2
0 12 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o6 n4 n3
0
2
0 12 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o6 n5 n4
0
2
0 12 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o6 n6 n5
0
2
0 12 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o6 n7 n6
0
2
0 12 2 1
0 7 7 6
0
end_operator
begin_operator
start-order o7 n1 n0
0
2
0 13 2 1
0 7 1 0
0
end_operator
begin_operator
start-order o7 n2 n1
0
2
0 13 2 1
0 7 2 1
0
end_operator
begin_operator
start-order o7 n3 n2
0
2
0 13 2 1
0 7 3 2
0
end_operator
begin_operator
start-order o7 n4 n3
0
2
0 13 2 1
0 7 4 3
0
end_operator
begin_operator
start-order o7 n5 n4
0
2
0 13 2 1
0 7 5 4
0
end_operator
begin_operator
start-order o7 n6 n5
0
2
0 13 2 1
0 7 6 5
0
end_operator
begin_operator
start-order o7 n7 n6
0
2
0 13 2 1
0 7 7 6
0
end_operator
0

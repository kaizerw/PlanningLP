begin_version
3
end_version
begin_metric
0
end_metric
27
begin_variable
var0
-1
2
Atom chosen(ap2)
Atom not-chosen(ap2)
end_variable
begin_variable
var1
-1
2
Atom chosen(cdc25c)
Atom not-chosen(cdc25c)
end_variable
begin_variable
var2
-1
2
Atom chosen(cdk46p3-cycd)
Atom not-chosen(cdk46p3-cycd)
end_variable
begin_variable
var3
-1
2
Atom chosen(cdk46p3-cycdp1)
Atom not-chosen(cdk46p3-cycdp1)
end_variable
begin_variable
var4
-1
2
Atom chosen(cdk7)
Atom not-chosen(cdk7)
end_variable
begin_variable
var5
-1
2
Atom chosen(chk1)
Atom not-chosen(chk1)
end_variable
begin_variable
var6
-1
2
Atom chosen(dmp1)
Atom not-chosen(dmp1)
end_variable
begin_variable
var7
-1
2
Atom chosen(e2f13)
Atom not-chosen(e2f13)
end_variable
begin_variable
var8
-1
2
Atom chosen(p130-e2f5p1-dp12)
Atom not-chosen(p130-e2f5p1-dp12)
end_variable
begin_variable
var9
-1
2
Atom chosen(p16)
Atom not-chosen(p16)
end_variable
begin_variable
var10
-1
2
Atom chosen(p300)
Atom not-chosen(p300)
end_variable
begin_variable
var11
-1
2
Atom chosen(pcaf)
Atom not-chosen(pcaf)
end_variable
begin_variable
var12
-1
2
Atom chosen(prb-e2f4p1-dp12)
Atom not-chosen(prb-e2f4p1-dp12)
end_variable
begin_variable
var13
-1
2
Atom chosen(prbp2)
Atom not-chosen(prbp2)
end_variable
begin_variable
var14
-1
2
Atom chosen(raf1)
Atom not-chosen(raf1)
end_variable
begin_variable
var15
-1
2
Atom chosen(sp1)
Atom not-chosen(sp1)
end_variable
begin_variable
var16
-1
4
Atom num-subs(l0)
Atom num-subs(l1)
Atom num-subs(l2)
Atom num-subs(l3)
end_variable
begin_variable
var17
-1
2
Atom available(p300)
NegatedAtom available(p300)
end_variable
begin_variable
var18
-1
2
Atom available(pcaf)
NegatedAtom available(pcaf)
end_variable
begin_variable
var19
-1
2
Atom available(pcaf-p300)
NegatedAtom available(pcaf-p300)
end_variable
begin_variable
var20
-1
2
Atom available(cdk46p3-cycdp1)
NegatedAtom available(cdk46p3-cycdp1)
end_variable
begin_variable
var21
-1
2
Atom available(cdk46p3-cycd)
NegatedAtom available(cdk46p3-cycd)
end_variable
begin_variable
var22
-1
2
Atom available(prbp2)
NegatedAtom available(prbp2)
end_variable
begin_variable
var23
-1
2
Atom available(ap2)
NegatedAtom available(ap2)
end_variable
begin_variable
var24
-1
2
Atom available(prbp1p2)
NegatedAtom available(prbp1p2)
end_variable
begin_variable
var25
-1
2
Atom available(prbp1p2-ap2)
NegatedAtom available(prbp1p2-ap2)
end_variable
begin_variable
var26
-1
2
Atom goal1()
NegatedAtom goal1()
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
1
1
1
1
1
1
1
1
1
0
1
1
1
1
1
1
1
1
1
1
end_state
begin_goal
1
26 0
end_goal
61
begin_operator
associate pcaf p300 pcaf-p300
0
3
0 17 0 1
0 18 0 1
0 19 -1 0
1
end_operator
begin_operator
associate prbp1p2 ap2 prbp1p2-ap2
0
3
0 23 0 1
0 24 0 1
0 25 -1 0
1
end_operator
begin_operator
associate prbp2 ap2 prbp2-ap2
0
2
0 23 0 1
0 22 0 1
1
end_operator
begin_operator
associate-with-catalyze prbp2 cdk46p3-cycd prbp1p2
1
21 0
2
0 24 -1 0
0 22 0 1
1
end_operator
begin_operator
associate-with-catalyze prbp2 cdk46p3-cycdp1 prbp1p2
1
20 0
2
0 24 -1 0
0 22 0 1
1
end_operator
begin_operator
choose ap2 l1 l0
0
2
0 0 1 0
0 16 0 1
1
end_operator
begin_operator
choose ap2 l2 l1
0
2
0 0 1 0
0 16 1 2
1
end_operator
begin_operator
choose ap2 l3 l2
0
2
0 0 1 0
0 16 2 3
1
end_operator
begin_operator
choose cdc25c l1 l0
0
2
0 1 1 0
0 16 0 1
1
end_operator
begin_operator
choose cdc25c l2 l1
0
2
0 1 1 0
0 16 1 2
1
end_operator
begin_operator
choose cdc25c l3 l2
0
2
0 1 1 0
0 16 2 3
1
end_operator
begin_operator
choose cdk46p3-cycd l1 l0
0
2
0 2 1 0
0 16 0 1
1
end_operator
begin_operator
choose cdk46p3-cycd l2 l1
0
2
0 2 1 0
0 16 1 2
1
end_operator
begin_operator
choose cdk46p3-cycd l3 l2
0
2
0 2 1 0
0 16 2 3
1
end_operator
begin_operator
choose cdk46p3-cycdp1 l1 l0
0
2
0 3 1 0
0 16 0 1
1
end_operator
begin_operator
choose cdk46p3-cycdp1 l2 l1
0
2
0 3 1 0
0 16 1 2
1
end_operator
begin_operator
choose cdk46p3-cycdp1 l3 l2
0
2
0 3 1 0
0 16 2 3
1
end_operator
begin_operator
choose cdk7 l1 l0
0
2
0 4 1 0
0 16 0 1
1
end_operator
begin_operator
choose cdk7 l2 l1
0
2
0 4 1 0
0 16 1 2
1
end_operator
begin_operator
choose cdk7 l3 l2
0
2
0 4 1 0
0 16 2 3
1
end_operator
begin_operator
choose chk1 l1 l0
0
2
0 5 1 0
0 16 0 1
1
end_operator
begin_operator
choose chk1 l2 l1
0
2
0 5 1 0
0 16 1 2
1
end_operator
begin_operator
choose chk1 l3 l2
0
2
0 5 1 0
0 16 2 3
1
end_operator
begin_operator
choose dmp1 l1 l0
0
2
0 6 1 0
0 16 0 1
1
end_operator
begin_operator
choose dmp1 l2 l1
0
2
0 6 1 0
0 16 1 2
1
end_operator
begin_operator
choose dmp1 l3 l2
0
2
0 6 1 0
0 16 2 3
1
end_operator
begin_operator
choose e2f13 l1 l0
0
2
0 7 1 0
0 16 0 1
1
end_operator
begin_operator
choose e2f13 l2 l1
0
2
0 7 1 0
0 16 1 2
1
end_operator
begin_operator
choose e2f13 l3 l2
0
2
0 7 1 0
0 16 2 3
1
end_operator
begin_operator
choose p130-e2f5p1-dp12 l1 l0
0
2
0 8 1 0
0 16 0 1
1
end_operator
begin_operator
choose p130-e2f5p1-dp12 l2 l1
0
2
0 8 1 0
0 16 1 2
1
end_operator
begin_operator
choose p130-e2f5p1-dp12 l3 l2
0
2
0 8 1 0
0 16 2 3
1
end_operator
begin_operator
choose p16 l1 l0
0
2
0 9 1 0
0 16 0 1
1
end_operator
begin_operator
choose p16 l2 l1
0
2
0 9 1 0
0 16 1 2
1
end_operator
begin_operator
choose p16 l3 l2
0
2
0 9 1 0
0 16 2 3
1
end_operator
begin_operator
choose p300 l1 l0
0
2
0 10 1 0
0 16 0 1
1
end_operator
begin_operator
choose p300 l2 l1
0
2
0 10 1 0
0 16 1 2
1
end_operator
begin_operator
choose p300 l3 l2
0
2
0 10 1 0
0 16 2 3
1
end_operator
begin_operator
choose pcaf l1 l0
0
2
0 11 1 0
0 16 0 1
1
end_operator
begin_operator
choose pcaf l2 l1
0
2
0 11 1 0
0 16 1 2
1
end_operator
begin_operator
choose pcaf l3 l2
0
2
0 11 1 0
0 16 2 3
1
end_operator
begin_operator
choose prb-e2f4p1-dp12 l1 l0
0
2
0 12 1 0
0 16 0 1
1
end_operator
begin_operator
choose prb-e2f4p1-dp12 l2 l1
0
2
0 12 1 0
0 16 1 2
1
end_operator
begin_operator
choose prb-e2f4p1-dp12 l3 l2
0
2
0 12 1 0
0 16 2 3
1
end_operator
begin_operator
choose prbp2 l1 l0
0
2
0 13 1 0
0 16 0 1
1
end_operator
begin_operator
choose prbp2 l2 l1
0
2
0 13 1 0
0 16 1 2
1
end_operator
begin_operator
choose prbp2 l3 l2
0
2
0 13 1 0
0 16 2 3
1
end_operator
begin_operator
choose raf1 l1 l0
0
2
0 14 1 0
0 16 0 1
1
end_operator
begin_operator
choose raf1 l2 l1
0
2
0 14 1 0
0 16 1 2
1
end_operator
begin_operator
choose raf1 l3 l2
0
2
0 14 1 0
0 16 2 3
1
end_operator
begin_operator
choose sp1 l1 l0
0
2
0 15 1 0
0 16 0 1
1
end_operator
begin_operator
choose sp1 l2 l1
0
2
0 15 1 0
0 16 1 2
1
end_operator
begin_operator
choose sp1 l3 l2
0
2
0 15 1 0
0 16 2 3
1
end_operator
begin_operator
dummy-action-1 
1
19 0
1
0 26 -1 0
1
end_operator
begin_operator
dummy-action-1 
1
25 0
1
0 26 -1 0
1
end_operator
begin_operator
initialize ap2
1
0 0
1
0 23 -1 0
1
end_operator
begin_operator
initialize cdk46p3-cycd
1
2 0
1
0 21 -1 0
1
end_operator
begin_operator
initialize cdk46p3-cycdp1
1
3 0
1
0 20 -1 0
1
end_operator
begin_operator
initialize p300
1
10 0
1
0 17 -1 0
1
end_operator
begin_operator
initialize pcaf
1
11 0
1
0 18 -1 0
1
end_operator
begin_operator
initialize prbp2
1
13 0
1
0 22 -1 0
1
end_operator
0

begin_version
3
end_version
begin_metric
0
end_metric
35
begin_variable
var0
-1
2
Atom chosen(cdk1p1p2)
Atom not-chosen(cdk1p1p2)
end_variable
begin_variable
var1
-1
2
Atom chosen(e2f13p1-dp12)
Atom not-chosen(e2f13p1-dp12)
end_variable
begin_variable
var2
-1
2
Atom chosen(e2f4-dp12p1)
Atom not-chosen(e2f4-dp12p1)
end_variable
begin_variable
var3
-1
2
Atom chosen(e2f6-dp12p1)
Atom not-chosen(e2f6-dp12p1)
end_variable
begin_variable
var4
-1
2
Atom chosen(ge2)
Atom not-chosen(ge2)
end_variable
begin_variable
var5
-1
2
Atom chosen(hbp1)
Atom not-chosen(hbp1)
end_variable
begin_variable
var6
-1
2
Atom chosen(hdac1-p130-e2f4p1-dp12)
Atom not-chosen(hdac1-p130-e2f4p1-dp12)
end_variable
begin_variable
var7
-1
2
Atom chosen(hdac1-prbp1-e2f13-dp12)
Atom not-chosen(hdac1-prbp1-e2f13-dp12)
end_variable
begin_variable
var8
-1
2
Atom chosen(hdac1-prbp1-e2f4-dp12)
Atom not-chosen(hdac1-prbp1-e2f4-dp12)
end_variable
begin_variable
var9
-1
2
Atom chosen(max)
Atom not-chosen(max)
end_variable
begin_variable
var10
-1
2
Atom chosen(p130)
Atom not-chosen(p130)
end_variable
begin_variable
var11
-1
2
Atom chosen(p53p1)
Atom not-chosen(p53p1)
end_variable
begin_variable
var12
-1
4
Atom num-subs(l0)
Atom num-subs(l1)
Atom num-subs(l2)
Atom num-subs(l3)
end_variable
begin_variable
var13
-1
2
Atom available(p53p1)
NegatedAtom available(p53p1)
end_variable
begin_variable
var14
-1
2
Atom available(e2f6-dp12p1)
NegatedAtom available(e2f6-dp12p1)
end_variable
begin_variable
var15
-1
2
Atom available(hdac1-p130-e2f4p1-dp12)
NegatedAtom available(hdac1-p130-e2f4p1-dp12)
end_variable
begin_variable
var16
-1
2
Atom available(hdac1-prbp1-e2f13-dp12)
NegatedAtom available(hdac1-prbp1-e2f13-dp12)
end_variable
begin_variable
var17
-1
2
Atom available(hdac1-prbp1-e2f4-dp12)
NegatedAtom available(hdac1-prbp1-e2f4-dp12)
end_variable
begin_variable
var18
-1
2
Atom available(hbp1)
NegatedAtom available(hbp1)
end_variable
begin_variable
var19
-1
2
Atom available(mdm2)
NegatedAtom available(mdm2)
end_variable
begin_variable
var20
-1
2
Atom available(p130)
NegatedAtom available(p130)
end_variable
begin_variable
var21
-1
2
Atom available(e2f13p1-dp12)
NegatedAtom available(e2f13p1-dp12)
end_variable
begin_variable
var22
-1
2
Atom available(e2f4-dp12p1)
NegatedAtom available(e2f4-dp12p1)
end_variable
begin_variable
var23
-1
2
Atom available(e2f13p1-dp12-ge2)
NegatedAtom available(e2f13p1-dp12-ge2)
end_variable
begin_variable
var24
-1
2
Atom available(p107)
NegatedAtom available(p107)
end_variable
begin_variable
var25
-1
2
Atom available(p130-e2f4-dp12p1)
NegatedAtom available(p130-e2f4-dp12p1)
end_variable
begin_variable
var26
-1
2
Atom available(p107-e2f4-dp12p1)
NegatedAtom available(p107-e2f4-dp12p1)
end_variable
begin_variable
var27
-1
2
Atom available(ge2)
NegatedAtom available(ge2)
end_variable
begin_variable
var28
-1
2
Atom available(p107-e2f4-dp12p1-ge2)
NegatedAtom available(p107-e2f4-dp12p1-ge2)
end_variable
begin_variable
var29
-1
2
Atom goal1()
NegatedAtom goal1()
end_variable
begin_variable
var30
-1
2
Atom available(cycdp1)
NegatedAtom available(cycdp1)
end_variable
begin_variable
var31
-1
2
Atom available(c-myc)
NegatedAtom available(c-myc)
end_variable
begin_variable
var32
-1
2
Atom available(max)
NegatedAtom available(max)
end_variable
begin_variable
var33
-1
2
Atom available(c-myc-max)
NegatedAtom available(c-myc-max)
end_variable
begin_variable
var34
-1
2
Atom goal2()
NegatedAtom goal2()
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
end_state
begin_goal
2
29 0
34 0
end_goal
67
begin_operator
associate c-myc max c-myc-max
0
3
0 31 0 1
0 33 -1 0
0 32 0 1
1
end_operator
begin_operator
associate e2f13p1-dp12 ge2 e2f13p1-dp12-ge2
0
3
0 21 0 1
0 23 -1 0
0 27 0 1
1
end_operator
begin_operator
associate e2f6-dp12p1 ge2 e2f6-dp12p1-ge2
0
2
0 14 0 1
0 27 0 1
1
end_operator
begin_operator
associate hbp1 p130 hbp1-p130
0
2
0 18 0 1
0 20 0 1
1
end_operator
begin_operator
associate hdac1-p130-e2f4p1-dp12 ge2 hdac1-p130-e2f4p1-dp12-ge2
0
2
0 27 0 1
0 15 0 1
1
end_operator
begin_operator
associate hdac1-prbp1-e2f13-dp12 ge2 hdac1-prbp1-e2f13-dp12-ge2
0
2
0 27 0 1
0 16 0 1
1
end_operator
begin_operator
associate hdac1-prbp1-e2f4-dp12 ge2 hdac1-prbp1-e2f4-dp12-ge2
0
2
0 27 0 1
0 17 0 1
1
end_operator
begin_operator
associate mdm2 e2f13p1-dp12 mdm2-e2f13p1-dp12
0
2
0 21 0 1
0 19 0 1
1
end_operator
begin_operator
associate p107 e2f4-dp12p1 p107-e2f4-dp12p1
0
3
0 22 0 1
0 24 0 1
0 26 -1 0
1
end_operator
begin_operator
associate p107-e2f4-dp12p1 ge2 p107-e2f4-dp12p1-ge2
0
3
0 27 0 1
0 26 0 1
0 28 -1 0
1
end_operator
begin_operator
associate p130 e2f4-dp12p1 p130-e2f4-dp12p1
0
3
0 22 0 1
0 20 0 1
0 25 -1 0
1
end_operator
begin_operator
associate p130-e2f4-dp12p1 ge2 p130-e2f4-dp12p1-ge2
0
2
0 27 0 1
0 25 0 1
1
end_operator
begin_operator
choose cdk1p1p2 l1 l0
0
2
0 0 1 0
0 12 0 1
1
end_operator
begin_operator
choose cdk1p1p2 l2 l1
0
2
0 0 1 0
0 12 1 2
1
end_operator
begin_operator
choose cdk1p1p2 l3 l2
0
2
0 0 1 0
0 12 2 3
1
end_operator
begin_operator
choose e2f13p1-dp12 l1 l0
0
2
0 1 1 0
0 12 0 1
1
end_operator
begin_operator
choose e2f13p1-dp12 l2 l1
0
2
0 1 1 0
0 12 1 2
1
end_operator
begin_operator
choose e2f13p1-dp12 l3 l2
0
2
0 1 1 0
0 12 2 3
1
end_operator
begin_operator
choose e2f4-dp12p1 l1 l0
0
2
0 2 1 0
0 12 0 1
1
end_operator
begin_operator
choose e2f4-dp12p1 l2 l1
0
2
0 2 1 0
0 12 1 2
1
end_operator
begin_operator
choose e2f4-dp12p1 l3 l2
0
2
0 2 1 0
0 12 2 3
1
end_operator
begin_operator
choose e2f6-dp12p1 l1 l0
0
2
0 3 1 0
0 12 0 1
1
end_operator
begin_operator
choose e2f6-dp12p1 l2 l1
0
2
0 3 1 0
0 12 1 2
1
end_operator
begin_operator
choose e2f6-dp12p1 l3 l2
0
2
0 3 1 0
0 12 2 3
1
end_operator
begin_operator
choose ge2 l1 l0
0
2
0 4 1 0
0 12 0 1
1
end_operator
begin_operator
choose ge2 l2 l1
0
2
0 4 1 0
0 12 1 2
1
end_operator
begin_operator
choose ge2 l3 l2
0
2
0 4 1 0
0 12 2 3
1
end_operator
begin_operator
choose hbp1 l1 l0
0
2
0 5 1 0
0 12 0 1
1
end_operator
begin_operator
choose hbp1 l2 l1
0
2
0 5 1 0
0 12 1 2
1
end_operator
begin_operator
choose hbp1 l3 l2
0
2
0 5 1 0
0 12 2 3
1
end_operator
begin_operator
choose hdac1-p130-e2f4p1-dp12 l1 l0
0
2
0 6 1 0
0 12 0 1
1
end_operator
begin_operator
choose hdac1-p130-e2f4p1-dp12 l2 l1
0
2
0 6 1 0
0 12 1 2
1
end_operator
begin_operator
choose hdac1-p130-e2f4p1-dp12 l3 l2
0
2
0 6 1 0
0 12 2 3
1
end_operator
begin_operator
choose hdac1-prbp1-e2f13-dp12 l1 l0
0
2
0 7 1 0
0 12 0 1
1
end_operator
begin_operator
choose hdac1-prbp1-e2f13-dp12 l2 l1
0
2
0 7 1 0
0 12 1 2
1
end_operator
begin_operator
choose hdac1-prbp1-e2f13-dp12 l3 l2
0
2
0 7 1 0
0 12 2 3
1
end_operator
begin_operator
choose hdac1-prbp1-e2f4-dp12 l1 l0
0
2
0 8 1 0
0 12 0 1
1
end_operator
begin_operator
choose hdac1-prbp1-e2f4-dp12 l2 l1
0
2
0 8 1 0
0 12 1 2
1
end_operator
begin_operator
choose hdac1-prbp1-e2f4-dp12 l3 l2
0
2
0 8 1 0
0 12 2 3
1
end_operator
begin_operator
choose max l1 l0
0
2
0 9 1 0
0 12 0 1
1
end_operator
begin_operator
choose max l2 l1
0
2
0 9 1 0
0 12 1 2
1
end_operator
begin_operator
choose max l3 l2
0
2
0 9 1 0
0 12 2 3
1
end_operator
begin_operator
choose p130 l1 l0
0
2
0 10 1 0
0 12 0 1
1
end_operator
begin_operator
choose p130 l2 l1
0
2
0 10 1 0
0 12 1 2
1
end_operator
begin_operator
choose p130 l3 l2
0
2
0 10 1 0
0 12 2 3
1
end_operator
begin_operator
choose p53p1 l1 l0
0
2
0 11 1 0
0 12 0 1
1
end_operator
begin_operator
choose p53p1 l2 l1
0
2
0 11 1 0
0 12 1 2
1
end_operator
begin_operator
choose p53p1 l3 l2
0
2
0 11 1 0
0 12 2 3
1
end_operator
begin_operator
dummy-action-1 
1
26 0
1
0 29 -1 0
1
end_operator
begin_operator
dummy-action-1 
1
28 0
1
0 29 -1 0
1
end_operator
begin_operator
dummy-action-2 
1
33 0
1
0 34 -1 0
1
end_operator
begin_operator
dummy-action-2 
1
30 0
1
0 34 -1 0
1
end_operator
begin_operator
initialize e2f13p1-dp12
1
1 0
1
0 21 -1 0
1
end_operator
begin_operator
initialize e2f4-dp12p1
1
2 0
1
0 22 -1 0
1
end_operator
begin_operator
initialize e2f6-dp12p1
1
3 0
1
0 14 -1 0
1
end_operator
begin_operator
initialize ge2
1
4 0
1
0 27 -1 0
1
end_operator
begin_operator
initialize hbp1
1
5 0
1
0 18 -1 0
1
end_operator
begin_operator
initialize hdac1-p130-e2f4p1-dp12
1
6 0
1
0 15 -1 0
1
end_operator
begin_operator
initialize hdac1-prbp1-e2f13-dp12
1
7 0
1
0 16 -1 0
1
end_operator
begin_operator
initialize hdac1-prbp1-e2f4-dp12
1
8 0
1
0 17 -1 0
1
end_operator
begin_operator
initialize max
1
9 0
1
0 32 -1 0
1
end_operator
begin_operator
initialize p130
1
10 0
1
0 20 -1 0
1
end_operator
begin_operator
initialize p53p1
1
11 0
1
0 13 -1 0
1
end_operator
begin_operator
synthesize e2f13p1-dp12-ge2 c-myc
1
23 0
1
0 31 -1 0
1
end_operator
begin_operator
synthesize e2f13p1-dp12-ge2 cycdp1
1
23 0
1
0 30 -1 0
1
end_operator
begin_operator
synthesize e2f13p1-dp12-ge2 p107
1
23 0
1
0 24 -1 0
1
end_operator
begin_operator
synthesize p53p1 mdm2
1
13 0
1
0 19 -1 0
1
end_operator
0

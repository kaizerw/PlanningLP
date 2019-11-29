begin_version
3
end_version
begin_metric
0
end_metric
10
begin_variable
var0
-1
4
Atom craves(expectation, chicken)
Atom craves(expectation, pistachio)
Atom craves(expectation, tuna)
Atom craves(expectation, wurst)
end_variable
begin_variable
var1
-1
4
Atom craves(rest, chicken)
Atom craves(rest, pistachio)
Atom craves(rest, tuna)
Atom craves(rest, wurst)
end_variable
begin_variable
var2
-1
6
Atom locale(chicken, bavaria)
Atom locale(chicken, bosnia)
Atom locale(chicken, kentucky)
Atom locale(chicken, moravia)
Atom locale(chicken, pennsylvania)
Atom locale(chicken, surrey)
end_variable
begin_variable
var3
-1
6
Atom locale(pistachio, bavaria)
Atom locale(pistachio, bosnia)
Atom locale(pistachio, kentucky)
Atom locale(pistachio, moravia)
Atom locale(pistachio, pennsylvania)
Atom locale(pistachio, surrey)
end_variable
begin_variable
var4
-1
6
Atom locale(tuna, bavaria)
Atom locale(tuna, bosnia)
Atom locale(tuna, kentucky)
Atom locale(tuna, moravia)
Atom locale(tuna, pennsylvania)
Atom locale(tuna, surrey)
end_variable
begin_variable
var5
-1
6
Atom locale(wurst, bavaria)
Atom locale(wurst, bosnia)
Atom locale(wurst, kentucky)
Atom locale(wurst, moravia)
Atom locale(wurst, pennsylvania)
Atom locale(wurst, surrey)
end_variable
begin_variable
var6
-1
6
Atom craves(angina, chicken)
Atom craves(angina, pistachio)
Atom craves(angina, tuna)
Atom craves(angina, wurst)
Atom fears(angina, expectation)
Atom fears(angina, rest)
end_variable
begin_variable
var7
-1
4
Atom harmony(expectation, earth)
Atom harmony(expectation, jupiter)
Atom harmony(expectation, neptune)
Atom harmony(expectation, uranus)
end_variable
begin_variable
var8
-1
4
Atom harmony(rest, earth)
Atom harmony(rest, jupiter)
Atom harmony(rest, neptune)
Atom harmony(rest, uranus)
end_variable
begin_variable
var9
-1
6
Atom craves(depression, chicken)
Atom craves(depression, pistachio)
Atom craves(depression, tuna)
Atom craves(depression, wurst)
Atom fears(depression, expectation)
Atom fears(depression, rest)
end_variable
0
begin_state
2
1
0
3
0
0
0
3
0
3
end_state
begin_goal
1
9 0
end_goal
436
begin_operator
drink chicken pistachio bavaria kentucky bosnia bavaria pennsylvania
0
2
0 2 0 2
0 3 0 4
1
end_operator
begin_operator
drink chicken pistachio bavaria kentucky bosnia bosnia kentucky
0
2
0 2 0 2
0 3 1 2
1
end_operator
begin_operator
drink chicken pistachio bavaria kentucky bosnia kentucky bavaria
0
2
0 2 0 2
0 3 2 0
1
end_operator
begin_operator
drink chicken pistachio bavaria kentucky bosnia pennsylvania surrey
0
2
0 2 0 2
0 3 4 5
1
end_operator
begin_operator
drink chicken pistachio bavaria kentucky bosnia surrey moravia
0
2
0 2 0 2
0 3 5 3
1
end_operator
begin_operator
drink chicken pistachio moravia surrey pennsylvania bavaria pennsylvania
0
2
0 2 3 5
0 3 0 4
1
end_operator
begin_operator
drink chicken pistachio moravia surrey pennsylvania bosnia kentucky
0
2
0 2 3 5
0 3 1 2
1
end_operator
begin_operator
drink chicken pistachio moravia surrey pennsylvania kentucky bavaria
0
2
0 2 3 5
0 3 2 0
1
end_operator
begin_operator
drink chicken pistachio moravia surrey pennsylvania pennsylvania surrey
0
2
0 2 3 5
0 3 4 5
1
end_operator
begin_operator
drink chicken pistachio moravia surrey pennsylvania surrey moravia
0
2
0 2 3 5
0 3 5 3
1
end_operator
begin_operator
drink chicken pistachio pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 2 4 0
0 3 0 4
1
end_operator
begin_operator
drink chicken pistachio pennsylvania bavaria kentucky bosnia kentucky
0
2
0 2 4 0
0 3 1 2
1
end_operator
begin_operator
drink chicken pistachio pennsylvania bavaria kentucky kentucky bavaria
0
2
0 2 4 0
0 3 2 0
1
end_operator
begin_operator
drink chicken pistachio pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 2 4 0
0 3 4 5
1
end_operator
begin_operator
drink chicken pistachio pennsylvania bavaria kentucky surrey moravia
0
2
0 2 4 0
0 3 5 3
1
end_operator
begin_operator
drink chicken pistachio surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 2 5 4
0 3 0 4
1
end_operator
begin_operator
drink chicken pistachio surrey pennsylvania bavaria bosnia kentucky
0
2
0 2 5 4
0 3 1 2
1
end_operator
begin_operator
drink chicken pistachio surrey pennsylvania bavaria kentucky bavaria
0
2
0 2 5 4
0 3 2 0
1
end_operator
begin_operator
drink chicken pistachio surrey pennsylvania bavaria pennsylvania surrey
0
2
0 2 5 4
0 3 4 5
1
end_operator
begin_operator
drink chicken pistachio surrey pennsylvania bavaria surrey moravia
0
2
0 2 5 4
0 3 5 3
1
end_operator
begin_operator
drink chicken tuna bavaria kentucky bosnia bavaria pennsylvania
0
2
0 2 0 2
0 4 0 4
1
end_operator
begin_operator
drink chicken tuna bavaria kentucky bosnia bosnia kentucky
0
2
0 2 0 2
0 4 1 2
1
end_operator
begin_operator
drink chicken tuna bavaria kentucky bosnia kentucky bavaria
0
2
0 2 0 2
0 4 2 0
1
end_operator
begin_operator
drink chicken tuna bavaria kentucky bosnia pennsylvania surrey
0
2
0 2 0 2
0 4 4 5
1
end_operator
begin_operator
drink chicken tuna bavaria kentucky bosnia surrey moravia
0
2
0 2 0 2
0 4 5 3
1
end_operator
begin_operator
drink chicken tuna moravia surrey pennsylvania bavaria pennsylvania
0
2
0 2 3 5
0 4 0 4
1
end_operator
begin_operator
drink chicken tuna moravia surrey pennsylvania bosnia kentucky
0
2
0 2 3 5
0 4 1 2
1
end_operator
begin_operator
drink chicken tuna moravia surrey pennsylvania kentucky bavaria
0
2
0 2 3 5
0 4 2 0
1
end_operator
begin_operator
drink chicken tuna moravia surrey pennsylvania pennsylvania surrey
0
2
0 2 3 5
0 4 4 5
1
end_operator
begin_operator
drink chicken tuna moravia surrey pennsylvania surrey moravia
0
2
0 2 3 5
0 4 5 3
1
end_operator
begin_operator
drink chicken tuna pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 2 4 0
0 4 0 4
1
end_operator
begin_operator
drink chicken tuna pennsylvania bavaria kentucky bosnia kentucky
0
2
0 2 4 0
0 4 1 2
1
end_operator
begin_operator
drink chicken tuna pennsylvania bavaria kentucky kentucky bavaria
0
2
0 2 4 0
0 4 2 0
1
end_operator
begin_operator
drink chicken tuna pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 2 4 0
0 4 4 5
1
end_operator
begin_operator
drink chicken tuna pennsylvania bavaria kentucky surrey moravia
0
2
0 2 4 0
0 4 5 3
1
end_operator
begin_operator
drink chicken tuna surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 2 5 4
0 4 0 4
1
end_operator
begin_operator
drink chicken tuna surrey pennsylvania bavaria bosnia kentucky
0
2
0 2 5 4
0 4 1 2
1
end_operator
begin_operator
drink chicken tuna surrey pennsylvania bavaria kentucky bavaria
0
2
0 2 5 4
0 4 2 0
1
end_operator
begin_operator
drink chicken tuna surrey pennsylvania bavaria pennsylvania surrey
0
2
0 2 5 4
0 4 4 5
1
end_operator
begin_operator
drink chicken tuna surrey pennsylvania bavaria surrey moravia
0
2
0 2 5 4
0 4 5 3
1
end_operator
begin_operator
drink chicken wurst bavaria kentucky bosnia bavaria pennsylvania
0
2
0 2 0 2
0 5 0 4
1
end_operator
begin_operator
drink chicken wurst bavaria kentucky bosnia bosnia kentucky
0
2
0 2 0 2
0 5 1 2
1
end_operator
begin_operator
drink chicken wurst bavaria kentucky bosnia kentucky bavaria
0
2
0 2 0 2
0 5 2 0
1
end_operator
begin_operator
drink chicken wurst bavaria kentucky bosnia pennsylvania surrey
0
2
0 2 0 2
0 5 4 5
1
end_operator
begin_operator
drink chicken wurst bavaria kentucky bosnia surrey moravia
0
2
0 2 0 2
0 5 5 3
1
end_operator
begin_operator
drink chicken wurst moravia surrey pennsylvania bavaria pennsylvania
0
2
0 2 3 5
0 5 0 4
1
end_operator
begin_operator
drink chicken wurst moravia surrey pennsylvania bosnia kentucky
0
2
0 2 3 5
0 5 1 2
1
end_operator
begin_operator
drink chicken wurst moravia surrey pennsylvania kentucky bavaria
0
2
0 2 3 5
0 5 2 0
1
end_operator
begin_operator
drink chicken wurst moravia surrey pennsylvania pennsylvania surrey
0
2
0 2 3 5
0 5 4 5
1
end_operator
begin_operator
drink chicken wurst moravia surrey pennsylvania surrey moravia
0
2
0 2 3 5
0 5 5 3
1
end_operator
begin_operator
drink chicken wurst pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 2 4 0
0 5 0 4
1
end_operator
begin_operator
drink chicken wurst pennsylvania bavaria kentucky bosnia kentucky
0
2
0 2 4 0
0 5 1 2
1
end_operator
begin_operator
drink chicken wurst pennsylvania bavaria kentucky kentucky bavaria
0
2
0 2 4 0
0 5 2 0
1
end_operator
begin_operator
drink chicken wurst pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 2 4 0
0 5 4 5
1
end_operator
begin_operator
drink chicken wurst pennsylvania bavaria kentucky surrey moravia
0
2
0 2 4 0
0 5 5 3
1
end_operator
begin_operator
drink chicken wurst surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 2 5 4
0 5 0 4
1
end_operator
begin_operator
drink chicken wurst surrey pennsylvania bavaria bosnia kentucky
0
2
0 2 5 4
0 5 1 2
1
end_operator
begin_operator
drink chicken wurst surrey pennsylvania bavaria kentucky bavaria
0
2
0 2 5 4
0 5 2 0
1
end_operator
begin_operator
drink chicken wurst surrey pennsylvania bavaria pennsylvania surrey
0
2
0 2 5 4
0 5 4 5
1
end_operator
begin_operator
drink chicken wurst surrey pennsylvania bavaria surrey moravia
0
2
0 2 5 4
0 5 5 3
1
end_operator
begin_operator
drink pistachio chicken bavaria kentucky bosnia bavaria pennsylvania
0
2
0 2 0 4
0 3 0 2
1
end_operator
begin_operator
drink pistachio chicken bavaria kentucky bosnia bosnia kentucky
0
2
0 2 1 2
0 3 0 2
1
end_operator
begin_operator
drink pistachio chicken bavaria kentucky bosnia kentucky bavaria
0
2
0 2 2 0
0 3 0 2
1
end_operator
begin_operator
drink pistachio chicken bavaria kentucky bosnia pennsylvania surrey
0
2
0 2 4 5
0 3 0 2
1
end_operator
begin_operator
drink pistachio chicken bavaria kentucky bosnia surrey moravia
0
2
0 2 5 3
0 3 0 2
1
end_operator
begin_operator
drink pistachio chicken moravia surrey pennsylvania bavaria pennsylvania
0
2
0 2 0 4
0 3 3 5
1
end_operator
begin_operator
drink pistachio chicken moravia surrey pennsylvania bosnia kentucky
0
2
0 2 1 2
0 3 3 5
1
end_operator
begin_operator
drink pistachio chicken moravia surrey pennsylvania kentucky bavaria
0
2
0 2 2 0
0 3 3 5
1
end_operator
begin_operator
drink pistachio chicken moravia surrey pennsylvania pennsylvania surrey
0
2
0 2 4 5
0 3 3 5
1
end_operator
begin_operator
drink pistachio chicken moravia surrey pennsylvania surrey moravia
0
2
0 2 5 3
0 3 3 5
1
end_operator
begin_operator
drink pistachio chicken pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 2 0 4
0 3 4 0
1
end_operator
begin_operator
drink pistachio chicken pennsylvania bavaria kentucky bosnia kentucky
0
2
0 2 1 2
0 3 4 0
1
end_operator
begin_operator
drink pistachio chicken pennsylvania bavaria kentucky kentucky bavaria
0
2
0 2 2 0
0 3 4 0
1
end_operator
begin_operator
drink pistachio chicken pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 2 4 5
0 3 4 0
1
end_operator
begin_operator
drink pistachio chicken pennsylvania bavaria kentucky surrey moravia
0
2
0 2 5 3
0 3 4 0
1
end_operator
begin_operator
drink pistachio chicken surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 2 0 4
0 3 5 4
1
end_operator
begin_operator
drink pistachio chicken surrey pennsylvania bavaria bosnia kentucky
0
2
0 2 1 2
0 3 5 4
1
end_operator
begin_operator
drink pistachio chicken surrey pennsylvania bavaria kentucky bavaria
0
2
0 2 2 0
0 3 5 4
1
end_operator
begin_operator
drink pistachio chicken surrey pennsylvania bavaria pennsylvania surrey
0
2
0 2 4 5
0 3 5 4
1
end_operator
begin_operator
drink pistachio chicken surrey pennsylvania bavaria surrey moravia
0
2
0 2 5 3
0 3 5 4
1
end_operator
begin_operator
drink pistachio tuna bavaria kentucky bosnia bavaria pennsylvania
0
2
0 3 0 2
0 4 0 4
1
end_operator
begin_operator
drink pistachio tuna bavaria kentucky bosnia bosnia kentucky
0
2
0 3 0 2
0 4 1 2
1
end_operator
begin_operator
drink pistachio tuna bavaria kentucky bosnia kentucky bavaria
0
2
0 3 0 2
0 4 2 0
1
end_operator
begin_operator
drink pistachio tuna bavaria kentucky bosnia pennsylvania surrey
0
2
0 3 0 2
0 4 4 5
1
end_operator
begin_operator
drink pistachio tuna bavaria kentucky bosnia surrey moravia
0
2
0 3 0 2
0 4 5 3
1
end_operator
begin_operator
drink pistachio tuna moravia surrey pennsylvania bavaria pennsylvania
0
2
0 3 3 5
0 4 0 4
1
end_operator
begin_operator
drink pistachio tuna moravia surrey pennsylvania bosnia kentucky
0
2
0 3 3 5
0 4 1 2
1
end_operator
begin_operator
drink pistachio tuna moravia surrey pennsylvania kentucky bavaria
0
2
0 3 3 5
0 4 2 0
1
end_operator
begin_operator
drink pistachio tuna moravia surrey pennsylvania pennsylvania surrey
0
2
0 3 3 5
0 4 4 5
1
end_operator
begin_operator
drink pistachio tuna moravia surrey pennsylvania surrey moravia
0
2
0 3 3 5
0 4 5 3
1
end_operator
begin_operator
drink pistachio tuna pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 3 4 0
0 4 0 4
1
end_operator
begin_operator
drink pistachio tuna pennsylvania bavaria kentucky bosnia kentucky
0
2
0 3 4 0
0 4 1 2
1
end_operator
begin_operator
drink pistachio tuna pennsylvania bavaria kentucky kentucky bavaria
0
2
0 3 4 0
0 4 2 0
1
end_operator
begin_operator
drink pistachio tuna pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 3 4 0
0 4 4 5
1
end_operator
begin_operator
drink pistachio tuna pennsylvania bavaria kentucky surrey moravia
0
2
0 3 4 0
0 4 5 3
1
end_operator
begin_operator
drink pistachio tuna surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 3 5 4
0 4 0 4
1
end_operator
begin_operator
drink pistachio tuna surrey pennsylvania bavaria bosnia kentucky
0
2
0 3 5 4
0 4 1 2
1
end_operator
begin_operator
drink pistachio tuna surrey pennsylvania bavaria kentucky bavaria
0
2
0 3 5 4
0 4 2 0
1
end_operator
begin_operator
drink pistachio tuna surrey pennsylvania bavaria pennsylvania surrey
0
2
0 3 5 4
0 4 4 5
1
end_operator
begin_operator
drink pistachio tuna surrey pennsylvania bavaria surrey moravia
0
2
0 3 5 4
0 4 5 3
1
end_operator
begin_operator
drink pistachio wurst bavaria kentucky bosnia bavaria pennsylvania
0
2
0 3 0 2
0 5 0 4
1
end_operator
begin_operator
drink pistachio wurst bavaria kentucky bosnia bosnia kentucky
0
2
0 3 0 2
0 5 1 2
1
end_operator
begin_operator
drink pistachio wurst bavaria kentucky bosnia kentucky bavaria
0
2
0 3 0 2
0 5 2 0
1
end_operator
begin_operator
drink pistachio wurst bavaria kentucky bosnia pennsylvania surrey
0
2
0 3 0 2
0 5 4 5
1
end_operator
begin_operator
drink pistachio wurst bavaria kentucky bosnia surrey moravia
0
2
0 3 0 2
0 5 5 3
1
end_operator
begin_operator
drink pistachio wurst moravia surrey pennsylvania bavaria pennsylvania
0
2
0 3 3 5
0 5 0 4
1
end_operator
begin_operator
drink pistachio wurst moravia surrey pennsylvania bosnia kentucky
0
2
0 3 3 5
0 5 1 2
1
end_operator
begin_operator
drink pistachio wurst moravia surrey pennsylvania kentucky bavaria
0
2
0 3 3 5
0 5 2 0
1
end_operator
begin_operator
drink pistachio wurst moravia surrey pennsylvania pennsylvania surrey
0
2
0 3 3 5
0 5 4 5
1
end_operator
begin_operator
drink pistachio wurst moravia surrey pennsylvania surrey moravia
0
2
0 3 3 5
0 5 5 3
1
end_operator
begin_operator
drink pistachio wurst pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 3 4 0
0 5 0 4
1
end_operator
begin_operator
drink pistachio wurst pennsylvania bavaria kentucky bosnia kentucky
0
2
0 3 4 0
0 5 1 2
1
end_operator
begin_operator
drink pistachio wurst pennsylvania bavaria kentucky kentucky bavaria
0
2
0 3 4 0
0 5 2 0
1
end_operator
begin_operator
drink pistachio wurst pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 3 4 0
0 5 4 5
1
end_operator
begin_operator
drink pistachio wurst pennsylvania bavaria kentucky surrey moravia
0
2
0 3 4 0
0 5 5 3
1
end_operator
begin_operator
drink pistachio wurst surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 3 5 4
0 5 0 4
1
end_operator
begin_operator
drink pistachio wurst surrey pennsylvania bavaria bosnia kentucky
0
2
0 3 5 4
0 5 1 2
1
end_operator
begin_operator
drink pistachio wurst surrey pennsylvania bavaria kentucky bavaria
0
2
0 3 5 4
0 5 2 0
1
end_operator
begin_operator
drink pistachio wurst surrey pennsylvania bavaria pennsylvania surrey
0
2
0 3 5 4
0 5 4 5
1
end_operator
begin_operator
drink pistachio wurst surrey pennsylvania bavaria surrey moravia
0
2
0 3 5 4
0 5 5 3
1
end_operator
begin_operator
drink tuna chicken bavaria kentucky bosnia bavaria pennsylvania
0
2
0 2 0 4
0 4 0 2
1
end_operator
begin_operator
drink tuna chicken bavaria kentucky bosnia bosnia kentucky
0
2
0 2 1 2
0 4 0 2
1
end_operator
begin_operator
drink tuna chicken bavaria kentucky bosnia kentucky bavaria
0
2
0 2 2 0
0 4 0 2
1
end_operator
begin_operator
drink tuna chicken bavaria kentucky bosnia pennsylvania surrey
0
2
0 2 4 5
0 4 0 2
1
end_operator
begin_operator
drink tuna chicken bavaria kentucky bosnia surrey moravia
0
2
0 2 5 3
0 4 0 2
1
end_operator
begin_operator
drink tuna chicken moravia surrey pennsylvania bavaria pennsylvania
0
2
0 2 0 4
0 4 3 5
1
end_operator
begin_operator
drink tuna chicken moravia surrey pennsylvania bosnia kentucky
0
2
0 2 1 2
0 4 3 5
1
end_operator
begin_operator
drink tuna chicken moravia surrey pennsylvania kentucky bavaria
0
2
0 2 2 0
0 4 3 5
1
end_operator
begin_operator
drink tuna chicken moravia surrey pennsylvania pennsylvania surrey
0
2
0 2 4 5
0 4 3 5
1
end_operator
begin_operator
drink tuna chicken moravia surrey pennsylvania surrey moravia
0
2
0 2 5 3
0 4 3 5
1
end_operator
begin_operator
drink tuna chicken pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 2 0 4
0 4 4 0
1
end_operator
begin_operator
drink tuna chicken pennsylvania bavaria kentucky bosnia kentucky
0
2
0 2 1 2
0 4 4 0
1
end_operator
begin_operator
drink tuna chicken pennsylvania bavaria kentucky kentucky bavaria
0
2
0 2 2 0
0 4 4 0
1
end_operator
begin_operator
drink tuna chicken pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 2 4 5
0 4 4 0
1
end_operator
begin_operator
drink tuna chicken pennsylvania bavaria kentucky surrey moravia
0
2
0 2 5 3
0 4 4 0
1
end_operator
begin_operator
drink tuna chicken surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 2 0 4
0 4 5 4
1
end_operator
begin_operator
drink tuna chicken surrey pennsylvania bavaria bosnia kentucky
0
2
0 2 1 2
0 4 5 4
1
end_operator
begin_operator
drink tuna chicken surrey pennsylvania bavaria kentucky bavaria
0
2
0 2 2 0
0 4 5 4
1
end_operator
begin_operator
drink tuna chicken surrey pennsylvania bavaria pennsylvania surrey
0
2
0 2 4 5
0 4 5 4
1
end_operator
begin_operator
drink tuna chicken surrey pennsylvania bavaria surrey moravia
0
2
0 2 5 3
0 4 5 4
1
end_operator
begin_operator
drink tuna pistachio bavaria kentucky bosnia bavaria pennsylvania
0
2
0 3 0 4
0 4 0 2
1
end_operator
begin_operator
drink tuna pistachio bavaria kentucky bosnia bosnia kentucky
0
2
0 3 1 2
0 4 0 2
1
end_operator
begin_operator
drink tuna pistachio bavaria kentucky bosnia kentucky bavaria
0
2
0 3 2 0
0 4 0 2
1
end_operator
begin_operator
drink tuna pistachio bavaria kentucky bosnia pennsylvania surrey
0
2
0 3 4 5
0 4 0 2
1
end_operator
begin_operator
drink tuna pistachio bavaria kentucky bosnia surrey moravia
0
2
0 3 5 3
0 4 0 2
1
end_operator
begin_operator
drink tuna pistachio moravia surrey pennsylvania bavaria pennsylvania
0
2
0 3 0 4
0 4 3 5
1
end_operator
begin_operator
drink tuna pistachio moravia surrey pennsylvania bosnia kentucky
0
2
0 3 1 2
0 4 3 5
1
end_operator
begin_operator
drink tuna pistachio moravia surrey pennsylvania kentucky bavaria
0
2
0 3 2 0
0 4 3 5
1
end_operator
begin_operator
drink tuna pistachio moravia surrey pennsylvania pennsylvania surrey
0
2
0 3 4 5
0 4 3 5
1
end_operator
begin_operator
drink tuna pistachio moravia surrey pennsylvania surrey moravia
0
2
0 3 5 3
0 4 3 5
1
end_operator
begin_operator
drink tuna pistachio pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 3 0 4
0 4 4 0
1
end_operator
begin_operator
drink tuna pistachio pennsylvania bavaria kentucky bosnia kentucky
0
2
0 3 1 2
0 4 4 0
1
end_operator
begin_operator
drink tuna pistachio pennsylvania bavaria kentucky kentucky bavaria
0
2
0 3 2 0
0 4 4 0
1
end_operator
begin_operator
drink tuna pistachio pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 3 4 5
0 4 4 0
1
end_operator
begin_operator
drink tuna pistachio pennsylvania bavaria kentucky surrey moravia
0
2
0 3 5 3
0 4 4 0
1
end_operator
begin_operator
drink tuna pistachio surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 3 0 4
0 4 5 4
1
end_operator
begin_operator
drink tuna pistachio surrey pennsylvania bavaria bosnia kentucky
0
2
0 3 1 2
0 4 5 4
1
end_operator
begin_operator
drink tuna pistachio surrey pennsylvania bavaria kentucky bavaria
0
2
0 3 2 0
0 4 5 4
1
end_operator
begin_operator
drink tuna pistachio surrey pennsylvania bavaria pennsylvania surrey
0
2
0 3 4 5
0 4 5 4
1
end_operator
begin_operator
drink tuna pistachio surrey pennsylvania bavaria surrey moravia
0
2
0 3 5 3
0 4 5 4
1
end_operator
begin_operator
drink tuna wurst bavaria kentucky bosnia bavaria pennsylvania
0
2
0 4 0 2
0 5 0 4
1
end_operator
begin_operator
drink tuna wurst bavaria kentucky bosnia bosnia kentucky
0
2
0 4 0 2
0 5 1 2
1
end_operator
begin_operator
drink tuna wurst bavaria kentucky bosnia kentucky bavaria
0
2
0 4 0 2
0 5 2 0
1
end_operator
begin_operator
drink tuna wurst bavaria kentucky bosnia pennsylvania surrey
0
2
0 4 0 2
0 5 4 5
1
end_operator
begin_operator
drink tuna wurst bavaria kentucky bosnia surrey moravia
0
2
0 4 0 2
0 5 5 3
1
end_operator
begin_operator
drink tuna wurst moravia surrey pennsylvania bavaria pennsylvania
0
2
0 4 3 5
0 5 0 4
1
end_operator
begin_operator
drink tuna wurst moravia surrey pennsylvania bosnia kentucky
0
2
0 4 3 5
0 5 1 2
1
end_operator
begin_operator
drink tuna wurst moravia surrey pennsylvania kentucky bavaria
0
2
0 4 3 5
0 5 2 0
1
end_operator
begin_operator
drink tuna wurst moravia surrey pennsylvania pennsylvania surrey
0
2
0 4 3 5
0 5 4 5
1
end_operator
begin_operator
drink tuna wurst moravia surrey pennsylvania surrey moravia
0
2
0 4 3 5
0 5 5 3
1
end_operator
begin_operator
drink tuna wurst pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 4 4 0
0 5 0 4
1
end_operator
begin_operator
drink tuna wurst pennsylvania bavaria kentucky bosnia kentucky
0
2
0 4 4 0
0 5 1 2
1
end_operator
begin_operator
drink tuna wurst pennsylvania bavaria kentucky kentucky bavaria
0
2
0 4 4 0
0 5 2 0
1
end_operator
begin_operator
drink tuna wurst pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 4 4 0
0 5 4 5
1
end_operator
begin_operator
drink tuna wurst pennsylvania bavaria kentucky surrey moravia
0
2
0 4 4 0
0 5 5 3
1
end_operator
begin_operator
drink tuna wurst surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 4 5 4
0 5 0 4
1
end_operator
begin_operator
drink tuna wurst surrey pennsylvania bavaria bosnia kentucky
0
2
0 4 5 4
0 5 1 2
1
end_operator
begin_operator
drink tuna wurst surrey pennsylvania bavaria kentucky bavaria
0
2
0 4 5 4
0 5 2 0
1
end_operator
begin_operator
drink tuna wurst surrey pennsylvania bavaria pennsylvania surrey
0
2
0 4 5 4
0 5 4 5
1
end_operator
begin_operator
drink tuna wurst surrey pennsylvania bavaria surrey moravia
0
2
0 4 5 4
0 5 5 3
1
end_operator
begin_operator
drink wurst chicken bavaria kentucky bosnia bavaria pennsylvania
0
2
0 2 0 4
0 5 0 2
1
end_operator
begin_operator
drink wurst chicken bavaria kentucky bosnia bosnia kentucky
0
2
0 2 1 2
0 5 0 2
1
end_operator
begin_operator
drink wurst chicken bavaria kentucky bosnia kentucky bavaria
0
2
0 2 2 0
0 5 0 2
1
end_operator
begin_operator
drink wurst chicken bavaria kentucky bosnia pennsylvania surrey
0
2
0 2 4 5
0 5 0 2
1
end_operator
begin_operator
drink wurst chicken bavaria kentucky bosnia surrey moravia
0
2
0 2 5 3
0 5 0 2
1
end_operator
begin_operator
drink wurst chicken moravia surrey pennsylvania bavaria pennsylvania
0
2
0 2 0 4
0 5 3 5
1
end_operator
begin_operator
drink wurst chicken moravia surrey pennsylvania bosnia kentucky
0
2
0 2 1 2
0 5 3 5
1
end_operator
begin_operator
drink wurst chicken moravia surrey pennsylvania kentucky bavaria
0
2
0 2 2 0
0 5 3 5
1
end_operator
begin_operator
drink wurst chicken moravia surrey pennsylvania pennsylvania surrey
0
2
0 2 4 5
0 5 3 5
1
end_operator
begin_operator
drink wurst chicken moravia surrey pennsylvania surrey moravia
0
2
0 2 5 3
0 5 3 5
1
end_operator
begin_operator
drink wurst chicken pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 2 0 4
0 5 4 0
1
end_operator
begin_operator
drink wurst chicken pennsylvania bavaria kentucky bosnia kentucky
0
2
0 2 1 2
0 5 4 0
1
end_operator
begin_operator
drink wurst chicken pennsylvania bavaria kentucky kentucky bavaria
0
2
0 2 2 0
0 5 4 0
1
end_operator
begin_operator
drink wurst chicken pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 2 4 5
0 5 4 0
1
end_operator
begin_operator
drink wurst chicken pennsylvania bavaria kentucky surrey moravia
0
2
0 2 5 3
0 5 4 0
1
end_operator
begin_operator
drink wurst chicken surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 2 0 4
0 5 5 4
1
end_operator
begin_operator
drink wurst chicken surrey pennsylvania bavaria bosnia kentucky
0
2
0 2 1 2
0 5 5 4
1
end_operator
begin_operator
drink wurst chicken surrey pennsylvania bavaria kentucky bavaria
0
2
0 2 2 0
0 5 5 4
1
end_operator
begin_operator
drink wurst chicken surrey pennsylvania bavaria pennsylvania surrey
0
2
0 2 4 5
0 5 5 4
1
end_operator
begin_operator
drink wurst chicken surrey pennsylvania bavaria surrey moravia
0
2
0 2 5 3
0 5 5 4
1
end_operator
begin_operator
drink wurst pistachio bavaria kentucky bosnia bavaria pennsylvania
0
2
0 3 0 4
0 5 0 2
1
end_operator
begin_operator
drink wurst pistachio bavaria kentucky bosnia bosnia kentucky
0
2
0 3 1 2
0 5 0 2
1
end_operator
begin_operator
drink wurst pistachio bavaria kentucky bosnia kentucky bavaria
0
2
0 3 2 0
0 5 0 2
1
end_operator
begin_operator
drink wurst pistachio bavaria kentucky bosnia pennsylvania surrey
0
2
0 3 4 5
0 5 0 2
1
end_operator
begin_operator
drink wurst pistachio bavaria kentucky bosnia surrey moravia
0
2
0 3 5 3
0 5 0 2
1
end_operator
begin_operator
drink wurst pistachio moravia surrey pennsylvania bavaria pennsylvania
0
2
0 3 0 4
0 5 3 5
1
end_operator
begin_operator
drink wurst pistachio moravia surrey pennsylvania bosnia kentucky
0
2
0 3 1 2
0 5 3 5
1
end_operator
begin_operator
drink wurst pistachio moravia surrey pennsylvania kentucky bavaria
0
2
0 3 2 0
0 5 3 5
1
end_operator
begin_operator
drink wurst pistachio moravia surrey pennsylvania pennsylvania surrey
0
2
0 3 4 5
0 5 3 5
1
end_operator
begin_operator
drink wurst pistachio moravia surrey pennsylvania surrey moravia
0
2
0 3 5 3
0 5 3 5
1
end_operator
begin_operator
drink wurst pistachio pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 3 0 4
0 5 4 0
1
end_operator
begin_operator
drink wurst pistachio pennsylvania bavaria kentucky bosnia kentucky
0
2
0 3 1 2
0 5 4 0
1
end_operator
begin_operator
drink wurst pistachio pennsylvania bavaria kentucky kentucky bavaria
0
2
0 3 2 0
0 5 4 0
1
end_operator
begin_operator
drink wurst pistachio pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 3 4 5
0 5 4 0
1
end_operator
begin_operator
drink wurst pistachio pennsylvania bavaria kentucky surrey moravia
0
2
0 3 5 3
0 5 4 0
1
end_operator
begin_operator
drink wurst pistachio surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 3 0 4
0 5 5 4
1
end_operator
begin_operator
drink wurst pistachio surrey pennsylvania bavaria bosnia kentucky
0
2
0 3 1 2
0 5 5 4
1
end_operator
begin_operator
drink wurst pistachio surrey pennsylvania bavaria kentucky bavaria
0
2
0 3 2 0
0 5 5 4
1
end_operator
begin_operator
drink wurst pistachio surrey pennsylvania bavaria pennsylvania surrey
0
2
0 3 4 5
0 5 5 4
1
end_operator
begin_operator
drink wurst pistachio surrey pennsylvania bavaria surrey moravia
0
2
0 3 5 3
0 5 5 4
1
end_operator
begin_operator
drink wurst tuna bavaria kentucky bosnia bavaria pennsylvania
0
2
0 4 0 4
0 5 0 2
1
end_operator
begin_operator
drink wurst tuna bavaria kentucky bosnia bosnia kentucky
0
2
0 4 1 2
0 5 0 2
1
end_operator
begin_operator
drink wurst tuna bavaria kentucky bosnia kentucky bavaria
0
2
0 4 2 0
0 5 0 2
1
end_operator
begin_operator
drink wurst tuna bavaria kentucky bosnia pennsylvania surrey
0
2
0 4 4 5
0 5 0 2
1
end_operator
begin_operator
drink wurst tuna bavaria kentucky bosnia surrey moravia
0
2
0 4 5 3
0 5 0 2
1
end_operator
begin_operator
drink wurst tuna moravia surrey pennsylvania bavaria pennsylvania
0
2
0 4 0 4
0 5 3 5
1
end_operator
begin_operator
drink wurst tuna moravia surrey pennsylvania bosnia kentucky
0
2
0 4 1 2
0 5 3 5
1
end_operator
begin_operator
drink wurst tuna moravia surrey pennsylvania kentucky bavaria
0
2
0 4 2 0
0 5 3 5
1
end_operator
begin_operator
drink wurst tuna moravia surrey pennsylvania pennsylvania surrey
0
2
0 4 4 5
0 5 3 5
1
end_operator
begin_operator
drink wurst tuna moravia surrey pennsylvania surrey moravia
0
2
0 4 5 3
0 5 3 5
1
end_operator
begin_operator
drink wurst tuna pennsylvania bavaria kentucky bavaria pennsylvania
0
2
0 4 0 4
0 5 4 0
1
end_operator
begin_operator
drink wurst tuna pennsylvania bavaria kentucky bosnia kentucky
0
2
0 4 1 2
0 5 4 0
1
end_operator
begin_operator
drink wurst tuna pennsylvania bavaria kentucky kentucky bavaria
0
2
0 4 2 0
0 5 4 0
1
end_operator
begin_operator
drink wurst tuna pennsylvania bavaria kentucky pennsylvania surrey
0
2
0 4 4 5
0 5 4 0
1
end_operator
begin_operator
drink wurst tuna pennsylvania bavaria kentucky surrey moravia
0
2
0 4 5 3
0 5 4 0
1
end_operator
begin_operator
drink wurst tuna surrey pennsylvania bavaria bavaria pennsylvania
0
2
0 4 0 4
0 5 5 4
1
end_operator
begin_operator
drink wurst tuna surrey pennsylvania bavaria bosnia kentucky
0
2
0 4 1 2
0 5 5 4
1
end_operator
begin_operator
drink wurst tuna surrey pennsylvania bavaria kentucky bavaria
0
2
0 4 2 0
0 5 5 4
1
end_operator
begin_operator
drink wurst tuna surrey pennsylvania bavaria pennsylvania surrey
0
2
0 4 4 5
0 5 5 4
1
end_operator
begin_operator
drink wurst tuna surrey pennsylvania bavaria surrey moravia
0
2
0 4 5 3
0 5 5 4
1
end_operator
begin_operator
feast expectation chicken pistachio bavaria pennsylvania
0
2
0 0 0 1
0 2 4 0
1
end_operator
begin_operator
feast expectation chicken pistachio bosnia kentucky
0
2
0 0 0 1
0 2 2 1
1
end_operator
begin_operator
feast expectation chicken pistachio kentucky bavaria
0
2
0 0 0 1
0 2 0 2
1
end_operator
begin_operator
feast expectation chicken pistachio pennsylvania surrey
0
2
0 0 0 1
0 2 5 4
1
end_operator
begin_operator
feast expectation chicken pistachio surrey moravia
0
2
0 0 0 1
0 2 3 5
1
end_operator
begin_operator
feast expectation chicken wurst bavaria pennsylvania
0
2
0 0 0 3
0 2 4 0
1
end_operator
begin_operator
feast expectation chicken wurst bosnia kentucky
0
2
0 0 0 3
0 2 2 1
1
end_operator
begin_operator
feast expectation chicken wurst kentucky bavaria
0
2
0 0 0 3
0 2 0 2
1
end_operator
begin_operator
feast expectation chicken wurst pennsylvania surrey
0
2
0 0 0 3
0 2 5 4
1
end_operator
begin_operator
feast expectation chicken wurst surrey moravia
0
2
0 0 0 3
0 2 3 5
1
end_operator
begin_operator
feast expectation pistachio chicken bavaria pennsylvania
0
2
0 0 1 0
0 3 4 0
1
end_operator
begin_operator
feast expectation pistachio chicken bosnia kentucky
0
2
0 0 1 0
0 3 2 1
1
end_operator
begin_operator
feast expectation pistachio chicken kentucky bavaria
0
2
0 0 1 0
0 3 0 2
1
end_operator
begin_operator
feast expectation pistachio chicken pennsylvania surrey
0
2
0 0 1 0
0 3 5 4
1
end_operator
begin_operator
feast expectation pistachio chicken surrey moravia
0
2
0 0 1 0
0 3 3 5
1
end_operator
begin_operator
feast expectation pistachio tuna bavaria pennsylvania
0
2
0 0 1 2
0 3 4 0
1
end_operator
begin_operator
feast expectation pistachio tuna bosnia kentucky
0
2
0 0 1 2
0 3 2 1
1
end_operator
begin_operator
feast expectation pistachio tuna kentucky bavaria
0
2
0 0 1 2
0 3 0 2
1
end_operator
begin_operator
feast expectation pistachio tuna pennsylvania surrey
0
2
0 0 1 2
0 3 5 4
1
end_operator
begin_operator
feast expectation pistachio tuna surrey moravia
0
2
0 0 1 2
0 3 3 5
1
end_operator
begin_operator
feast expectation pistachio wurst bavaria pennsylvania
0
2
0 0 1 3
0 3 4 0
1
end_operator
begin_operator
feast expectation pistachio wurst bosnia kentucky
0
2
0 0 1 3
0 3 2 1
1
end_operator
begin_operator
feast expectation pistachio wurst kentucky bavaria
0
2
0 0 1 3
0 3 0 2
1
end_operator
begin_operator
feast expectation pistachio wurst pennsylvania surrey
0
2
0 0 1 3
0 3 5 4
1
end_operator
begin_operator
feast expectation pistachio wurst surrey moravia
0
2
0 0 1 3
0 3 3 5
1
end_operator
begin_operator
feast expectation tuna pistachio bavaria pennsylvania
0
2
0 0 2 1
0 4 4 0
1
end_operator
begin_operator
feast expectation tuna pistachio bosnia kentucky
0
2
0 0 2 1
0 4 2 1
1
end_operator
begin_operator
feast expectation tuna pistachio kentucky bavaria
0
2
0 0 2 1
0 4 0 2
1
end_operator
begin_operator
feast expectation tuna pistachio pennsylvania surrey
0
2
0 0 2 1
0 4 5 4
1
end_operator
begin_operator
feast expectation tuna pistachio surrey moravia
0
2
0 0 2 1
0 4 3 5
1
end_operator
begin_operator
feast expectation tuna wurst bavaria pennsylvania
0
2
0 0 2 3
0 4 4 0
1
end_operator
begin_operator
feast expectation tuna wurst bosnia kentucky
0
2
0 0 2 3
0 4 2 1
1
end_operator
begin_operator
feast expectation tuna wurst kentucky bavaria
0
2
0 0 2 3
0 4 0 2
1
end_operator
begin_operator
feast expectation tuna wurst pennsylvania surrey
0
2
0 0 2 3
0 4 5 4
1
end_operator
begin_operator
feast expectation tuna wurst surrey moravia
0
2
0 0 2 3
0 4 3 5
1
end_operator
begin_operator
feast expectation wurst chicken bavaria pennsylvania
0
2
0 0 3 0
0 5 4 0
1
end_operator
begin_operator
feast expectation wurst chicken bosnia kentucky
0
2
0 0 3 0
0 5 2 1
1
end_operator
begin_operator
feast expectation wurst chicken kentucky bavaria
0
2
0 0 3 0
0 5 0 2
1
end_operator
begin_operator
feast expectation wurst chicken pennsylvania surrey
0
2
0 0 3 0
0 5 5 4
1
end_operator
begin_operator
feast expectation wurst chicken surrey moravia
0
2
0 0 3 0
0 5 3 5
1
end_operator
begin_operator
feast expectation wurst pistachio bavaria pennsylvania
0
2
0 0 3 1
0 5 4 0
1
end_operator
begin_operator
feast expectation wurst pistachio bosnia kentucky
0
2
0 0 3 1
0 5 2 1
1
end_operator
begin_operator
feast expectation wurst pistachio kentucky bavaria
0
2
0 0 3 1
0 5 0 2
1
end_operator
begin_operator
feast expectation wurst pistachio pennsylvania surrey
0
2
0 0 3 1
0 5 5 4
1
end_operator
begin_operator
feast expectation wurst pistachio surrey moravia
0
2
0 0 3 1
0 5 3 5
1
end_operator
begin_operator
feast expectation wurst tuna bavaria pennsylvania
0
2
0 0 3 2
0 5 4 0
1
end_operator
begin_operator
feast expectation wurst tuna bosnia kentucky
0
2
0 0 3 2
0 5 2 1
1
end_operator
begin_operator
feast expectation wurst tuna kentucky bavaria
0
2
0 0 3 2
0 5 0 2
1
end_operator
begin_operator
feast expectation wurst tuna pennsylvania surrey
0
2
0 0 3 2
0 5 5 4
1
end_operator
begin_operator
feast expectation wurst tuna surrey moravia
0
2
0 0 3 2
0 5 3 5
1
end_operator
begin_operator
feast rest chicken pistachio bavaria pennsylvania
0
2
0 1 0 1
0 2 4 0
1
end_operator
begin_operator
feast rest chicken pistachio bosnia kentucky
0
2
0 1 0 1
0 2 2 1
1
end_operator
begin_operator
feast rest chicken pistachio kentucky bavaria
0
2
0 1 0 1
0 2 0 2
1
end_operator
begin_operator
feast rest chicken pistachio pennsylvania surrey
0
2
0 1 0 1
0 2 5 4
1
end_operator
begin_operator
feast rest chicken pistachio surrey moravia
0
2
0 1 0 1
0 2 3 5
1
end_operator
begin_operator
feast rest chicken wurst bavaria pennsylvania
0
2
0 1 0 3
0 2 4 0
1
end_operator
begin_operator
feast rest chicken wurst bosnia kentucky
0
2
0 1 0 3
0 2 2 1
1
end_operator
begin_operator
feast rest chicken wurst kentucky bavaria
0
2
0 1 0 3
0 2 0 2
1
end_operator
begin_operator
feast rest chicken wurst pennsylvania surrey
0
2
0 1 0 3
0 2 5 4
1
end_operator
begin_operator
feast rest chicken wurst surrey moravia
0
2
0 1 0 3
0 2 3 5
1
end_operator
begin_operator
feast rest pistachio chicken bavaria pennsylvania
0
2
0 1 1 0
0 3 4 0
1
end_operator
begin_operator
feast rest pistachio chicken bosnia kentucky
0
2
0 1 1 0
0 3 2 1
1
end_operator
begin_operator
feast rest pistachio chicken kentucky bavaria
0
2
0 1 1 0
0 3 0 2
1
end_operator
begin_operator
feast rest pistachio chicken pennsylvania surrey
0
2
0 1 1 0
0 3 5 4
1
end_operator
begin_operator
feast rest pistachio chicken surrey moravia
0
2
0 1 1 0
0 3 3 5
1
end_operator
begin_operator
feast rest pistachio tuna bavaria pennsylvania
0
2
0 1 1 2
0 3 4 0
1
end_operator
begin_operator
feast rest pistachio tuna bosnia kentucky
0
2
0 1 1 2
0 3 2 1
1
end_operator
begin_operator
feast rest pistachio tuna kentucky bavaria
0
2
0 1 1 2
0 3 0 2
1
end_operator
begin_operator
feast rest pistachio tuna pennsylvania surrey
0
2
0 1 1 2
0 3 5 4
1
end_operator
begin_operator
feast rest pistachio tuna surrey moravia
0
2
0 1 1 2
0 3 3 5
1
end_operator
begin_operator
feast rest pistachio wurst bavaria pennsylvania
0
2
0 1 1 3
0 3 4 0
1
end_operator
begin_operator
feast rest pistachio wurst bosnia kentucky
0
2
0 1 1 3
0 3 2 1
1
end_operator
begin_operator
feast rest pistachio wurst kentucky bavaria
0
2
0 1 1 3
0 3 0 2
1
end_operator
begin_operator
feast rest pistachio wurst pennsylvania surrey
0
2
0 1 1 3
0 3 5 4
1
end_operator
begin_operator
feast rest pistachio wurst surrey moravia
0
2
0 1 1 3
0 3 3 5
1
end_operator
begin_operator
feast rest tuna pistachio bavaria pennsylvania
0
2
0 1 2 1
0 4 4 0
1
end_operator
begin_operator
feast rest tuna pistachio bosnia kentucky
0
2
0 1 2 1
0 4 2 1
1
end_operator
begin_operator
feast rest tuna pistachio kentucky bavaria
0
2
0 1 2 1
0 4 0 2
1
end_operator
begin_operator
feast rest tuna pistachio pennsylvania surrey
0
2
0 1 2 1
0 4 5 4
1
end_operator
begin_operator
feast rest tuna pistachio surrey moravia
0
2
0 1 2 1
0 4 3 5
1
end_operator
begin_operator
feast rest tuna wurst bavaria pennsylvania
0
2
0 1 2 3
0 4 4 0
1
end_operator
begin_operator
feast rest tuna wurst bosnia kentucky
0
2
0 1 2 3
0 4 2 1
1
end_operator
begin_operator
feast rest tuna wurst kentucky bavaria
0
2
0 1 2 3
0 4 0 2
1
end_operator
begin_operator
feast rest tuna wurst pennsylvania surrey
0
2
0 1 2 3
0 4 5 4
1
end_operator
begin_operator
feast rest tuna wurst surrey moravia
0
2
0 1 2 3
0 4 3 5
1
end_operator
begin_operator
feast rest wurst chicken bavaria pennsylvania
0
2
0 1 3 0
0 5 4 0
1
end_operator
begin_operator
feast rest wurst chicken bosnia kentucky
0
2
0 1 3 0
0 5 2 1
1
end_operator
begin_operator
feast rest wurst chicken kentucky bavaria
0
2
0 1 3 0
0 5 0 2
1
end_operator
begin_operator
feast rest wurst chicken pennsylvania surrey
0
2
0 1 3 0
0 5 5 4
1
end_operator
begin_operator
feast rest wurst chicken surrey moravia
0
2
0 1 3 0
0 5 3 5
1
end_operator
begin_operator
feast rest wurst pistachio bavaria pennsylvania
0
2
0 1 3 1
0 5 4 0
1
end_operator
begin_operator
feast rest wurst pistachio bosnia kentucky
0
2
0 1 3 1
0 5 2 1
1
end_operator
begin_operator
feast rest wurst pistachio kentucky bavaria
0
2
0 1 3 1
0 5 0 2
1
end_operator
begin_operator
feast rest wurst pistachio pennsylvania surrey
0
2
0 1 3 1
0 5 5 4
1
end_operator
begin_operator
feast rest wurst pistachio surrey moravia
0
2
0 1 3 1
0 5 3 5
1
end_operator
begin_operator
feast rest wurst tuna bavaria pennsylvania
0
2
0 1 3 2
0 5 4 0
1
end_operator
begin_operator
feast rest wurst tuna bosnia kentucky
0
2
0 1 3 2
0 5 2 1
1
end_operator
begin_operator
feast rest wurst tuna kentucky bavaria
0
2
0 1 3 2
0 5 0 2
1
end_operator
begin_operator
feast rest wurst tuna pennsylvania surrey
0
2
0 1 3 2
0 5 5 4
1
end_operator
begin_operator
feast rest wurst tuna surrey moravia
0
2
0 1 3 2
0 5 3 5
1
end_operator
begin_operator
overcome angina expectation chicken jupiter uranus
1
0 0
2
0 6 0 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation chicken neptune earth
1
0 0
2
0 6 0 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation chicken uranus neptune
1
0 0
2
0 6 0 4
0 7 2 3
1
end_operator
begin_operator
overcome angina expectation pistachio jupiter uranus
1
0 1
2
0 6 1 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation pistachio neptune earth
1
0 1
2
0 6 1 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation pistachio uranus neptune
1
0 1
2
0 6 1 4
0 7 2 3
1
end_operator
begin_operator
overcome angina expectation tuna jupiter uranus
1
0 2
2
0 6 2 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation tuna neptune earth
1
0 2
2
0 6 2 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation tuna uranus neptune
1
0 2
2
0 6 2 4
0 7 2 3
1
end_operator
begin_operator
overcome angina expectation wurst jupiter uranus
1
0 3
2
0 6 3 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation wurst neptune earth
1
0 3
2
0 6 3 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation wurst uranus neptune
1
0 3
2
0 6 3 4
0 7 2 3
1
end_operator
begin_operator
overcome angina rest chicken jupiter uranus
1
1 0
2
0 6 0 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest chicken neptune earth
1
1 0
2
0 6 0 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest chicken uranus neptune
1
1 0
2
0 6 0 5
0 8 2 3
1
end_operator
begin_operator
overcome angina rest pistachio jupiter uranus
1
1 1
2
0 6 1 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest pistachio neptune earth
1
1 1
2
0 6 1 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest pistachio uranus neptune
1
1 1
2
0 6 1 5
0 8 2 3
1
end_operator
begin_operator
overcome angina rest tuna jupiter uranus
1
1 2
2
0 6 2 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest tuna neptune earth
1
1 2
2
0 6 2 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest tuna uranus neptune
1
1 2
2
0 6 2 5
0 8 2 3
1
end_operator
begin_operator
overcome angina rest wurst jupiter uranus
1
1 3
2
0 6 3 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest wurst neptune earth
1
1 3
2
0 6 3 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest wurst uranus neptune
1
1 3
2
0 6 3 5
0 8 2 3
1
end_operator
begin_operator
overcome depression expectation chicken jupiter uranus
1
0 0
2
0 9 0 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation chicken neptune earth
1
0 0
2
0 9 0 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation chicken uranus neptune
1
0 0
2
0 9 0 4
0 7 2 3
1
end_operator
begin_operator
overcome depression expectation pistachio jupiter uranus
1
0 1
2
0 9 1 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation pistachio neptune earth
1
0 1
2
0 9 1 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation pistachio uranus neptune
1
0 1
2
0 9 1 4
0 7 2 3
1
end_operator
begin_operator
overcome depression expectation tuna jupiter uranus
1
0 2
2
0 9 2 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation tuna neptune earth
1
0 2
2
0 9 2 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation tuna uranus neptune
1
0 2
2
0 9 2 4
0 7 2 3
1
end_operator
begin_operator
overcome depression expectation wurst jupiter uranus
1
0 3
2
0 9 3 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation wurst neptune earth
1
0 3
2
0 9 3 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation wurst uranus neptune
1
0 3
2
0 9 3 4
0 7 2 3
1
end_operator
begin_operator
overcome depression rest chicken jupiter uranus
1
1 0
2
0 9 0 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest chicken neptune earth
1
1 0
2
0 9 0 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest chicken uranus neptune
1
1 0
2
0 9 0 5
0 8 2 3
1
end_operator
begin_operator
overcome depression rest pistachio jupiter uranus
1
1 1
2
0 9 1 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest pistachio neptune earth
1
1 1
2
0 9 1 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest pistachio uranus neptune
1
1 1
2
0 9 1 5
0 8 2 3
1
end_operator
begin_operator
overcome depression rest tuna jupiter uranus
1
1 2
2
0 9 2 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest tuna neptune earth
1
1 2
2
0 9 2 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest tuna uranus neptune
1
1 2
2
0 9 2 5
0 8 2 3
1
end_operator
begin_operator
overcome depression rest wurst jupiter uranus
1
1 3
2
0 9 3 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest wurst neptune earth
1
1 3
2
0 9 3 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest wurst uranus neptune
1
1 3
2
0 9 3 5
0 8 2 3
1
end_operator
begin_operator
succumb angina expectation chicken jupiter uranus
1
0 0
2
0 6 4 0
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation chicken neptune earth
1
0 0
2
0 6 4 0
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation chicken uranus neptune
1
0 0
2
0 6 4 0
0 7 3 2
1
end_operator
begin_operator
succumb angina expectation pistachio jupiter uranus
1
0 1
2
0 6 4 1
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation pistachio neptune earth
1
0 1
2
0 6 4 1
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation pistachio uranus neptune
1
0 1
2
0 6 4 1
0 7 3 2
1
end_operator
begin_operator
succumb angina expectation tuna jupiter uranus
1
0 2
2
0 6 4 2
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation tuna neptune earth
1
0 2
2
0 6 4 2
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation tuna uranus neptune
1
0 2
2
0 6 4 2
0 7 3 2
1
end_operator
begin_operator
succumb angina expectation wurst jupiter uranus
1
0 3
2
0 6 4 3
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation wurst neptune earth
1
0 3
2
0 6 4 3
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation wurst uranus neptune
1
0 3
2
0 6 4 3
0 7 3 2
1
end_operator
begin_operator
succumb angina rest chicken jupiter uranus
1
1 0
2
0 6 5 0
0 8 1 3
1
end_operator
begin_operator
succumb angina rest chicken neptune earth
1
1 0
2
0 6 5 0
0 8 2 0
1
end_operator
begin_operator
succumb angina rest chicken uranus neptune
1
1 0
2
0 6 5 0
0 8 3 2
1
end_operator
begin_operator
succumb angina rest pistachio jupiter uranus
1
1 1
2
0 6 5 1
0 8 1 3
1
end_operator
begin_operator
succumb angina rest pistachio neptune earth
1
1 1
2
0 6 5 1
0 8 2 0
1
end_operator
begin_operator
succumb angina rest pistachio uranus neptune
1
1 1
2
0 6 5 1
0 8 3 2
1
end_operator
begin_operator
succumb angina rest tuna jupiter uranus
1
1 2
2
0 6 5 2
0 8 1 3
1
end_operator
begin_operator
succumb angina rest tuna neptune earth
1
1 2
2
0 6 5 2
0 8 2 0
1
end_operator
begin_operator
succumb angina rest tuna uranus neptune
1
1 2
2
0 6 5 2
0 8 3 2
1
end_operator
begin_operator
succumb angina rest wurst jupiter uranus
1
1 3
2
0 6 5 3
0 8 1 3
1
end_operator
begin_operator
succumb angina rest wurst neptune earth
1
1 3
2
0 6 5 3
0 8 2 0
1
end_operator
begin_operator
succumb angina rest wurst uranus neptune
1
1 3
2
0 6 5 3
0 8 3 2
1
end_operator
begin_operator
succumb depression expectation chicken jupiter uranus
1
0 0
2
0 9 4 0
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation chicken neptune earth
1
0 0
2
0 9 4 0
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation chicken uranus neptune
1
0 0
2
0 9 4 0
0 7 3 2
1
end_operator
begin_operator
succumb depression expectation pistachio jupiter uranus
1
0 1
2
0 9 4 1
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation pistachio neptune earth
1
0 1
2
0 9 4 1
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation pistachio uranus neptune
1
0 1
2
0 9 4 1
0 7 3 2
1
end_operator
begin_operator
succumb depression expectation tuna jupiter uranus
1
0 2
2
0 9 4 2
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation tuna neptune earth
1
0 2
2
0 9 4 2
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation tuna uranus neptune
1
0 2
2
0 9 4 2
0 7 3 2
1
end_operator
begin_operator
succumb depression expectation wurst jupiter uranus
1
0 3
2
0 9 4 3
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation wurst neptune earth
1
0 3
2
0 9 4 3
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation wurst uranus neptune
1
0 3
2
0 9 4 3
0 7 3 2
1
end_operator
begin_operator
succumb depression rest chicken jupiter uranus
1
1 0
2
0 9 5 0
0 8 1 3
1
end_operator
begin_operator
succumb depression rest chicken neptune earth
1
1 0
2
0 9 5 0
0 8 2 0
1
end_operator
begin_operator
succumb depression rest chicken uranus neptune
1
1 0
2
0 9 5 0
0 8 3 2
1
end_operator
begin_operator
succumb depression rest pistachio jupiter uranus
1
1 1
2
0 9 5 1
0 8 1 3
1
end_operator
begin_operator
succumb depression rest pistachio neptune earth
1
1 1
2
0 9 5 1
0 8 2 0
1
end_operator
begin_operator
succumb depression rest pistachio uranus neptune
1
1 1
2
0 9 5 1
0 8 3 2
1
end_operator
begin_operator
succumb depression rest tuna jupiter uranus
1
1 2
2
0 9 5 2
0 8 1 3
1
end_operator
begin_operator
succumb depression rest tuna neptune earth
1
1 2
2
0 9 5 2
0 8 2 0
1
end_operator
begin_operator
succumb depression rest tuna uranus neptune
1
1 2
2
0 9 5 2
0 8 3 2
1
end_operator
begin_operator
succumb depression rest wurst jupiter uranus
1
1 3
2
0 9 5 3
0 8 1 3
1
end_operator
begin_operator
succumb depression rest wurst neptune earth
1
1 3
2
0 9 5 3
0 8 2 0
1
end_operator
begin_operator
succumb depression rest wurst uranus neptune
1
1 3
2
0 9 5 3
0 8 3 2
1
end_operator
0

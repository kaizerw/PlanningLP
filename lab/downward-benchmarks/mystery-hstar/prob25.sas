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
3
Atom locale(chicken, bavaria)
Atom locale(chicken, bosnia)
Atom locale(chicken, kentucky)
end_variable
begin_variable
var1
-1
3
Atom locale(tuna, bavaria)
Atom locale(tuna, bosnia)
Atom locale(tuna, kentucky)
end_variable
begin_variable
var2
-1
3
Atom locale(wurst, bavaria)
Atom locale(wurst, bosnia)
Atom locale(wurst, kentucky)
end_variable
begin_variable
var3
-1
4
Atom craves(expectation, chicken)
Atom craves(expectation, pistachio)
Atom craves(expectation, tuna)
Atom craves(expectation, wurst)
end_variable
begin_variable
var4
-1
4
Atom craves(rest, chicken)
Atom craves(rest, pistachio)
Atom craves(rest, tuna)
Atom craves(rest, wurst)
end_variable
begin_variable
var5
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
0
0
0
2
1
3
0
3
0
3
end_state
begin_goal
1
9 0
end_goal
154
begin_operator
feast expectation chicken pistachio bosnia kentucky
0
2
0 3 0 1
0 0 2 1
1
end_operator
begin_operator
feast expectation chicken pistachio kentucky bavaria
0
2
0 3 0 1
0 0 0 2
1
end_operator
begin_operator
feast expectation chicken wurst bosnia kentucky
0
2
0 3 0 3
0 0 2 1
1
end_operator
begin_operator
feast expectation chicken wurst kentucky bavaria
0
2
0 3 0 3
0 0 0 2
1
end_operator
begin_operator
feast expectation pistachio chicken bavaria pennsylvania
0
2
0 3 1 0
0 5 4 0
1
end_operator
begin_operator
feast expectation pistachio chicken bosnia kentucky
0
2
0 3 1 0
0 5 2 1
1
end_operator
begin_operator
feast expectation pistachio chicken kentucky bavaria
0
2
0 3 1 0
0 5 0 2
1
end_operator
begin_operator
feast expectation pistachio chicken pennsylvania surrey
0
2
0 3 1 0
0 5 5 4
1
end_operator
begin_operator
feast expectation pistachio chicken surrey moravia
0
2
0 3 1 0
0 5 3 5
1
end_operator
begin_operator
feast expectation pistachio tuna bavaria pennsylvania
0
2
0 3 1 2
0 5 4 0
1
end_operator
begin_operator
feast expectation pistachio tuna bosnia kentucky
0
2
0 3 1 2
0 5 2 1
1
end_operator
begin_operator
feast expectation pistachio tuna kentucky bavaria
0
2
0 3 1 2
0 5 0 2
1
end_operator
begin_operator
feast expectation pistachio tuna pennsylvania surrey
0
2
0 3 1 2
0 5 5 4
1
end_operator
begin_operator
feast expectation pistachio tuna surrey moravia
0
2
0 3 1 2
0 5 3 5
1
end_operator
begin_operator
feast expectation pistachio wurst bavaria pennsylvania
0
2
0 3 1 3
0 5 4 0
1
end_operator
begin_operator
feast expectation pistachio wurst bosnia kentucky
0
2
0 3 1 3
0 5 2 1
1
end_operator
begin_operator
feast expectation pistachio wurst kentucky bavaria
0
2
0 3 1 3
0 5 0 2
1
end_operator
begin_operator
feast expectation pistachio wurst pennsylvania surrey
0
2
0 3 1 3
0 5 5 4
1
end_operator
begin_operator
feast expectation pistachio wurst surrey moravia
0
2
0 3 1 3
0 5 3 5
1
end_operator
begin_operator
feast expectation tuna pistachio bosnia kentucky
0
2
0 3 2 1
0 1 2 1
1
end_operator
begin_operator
feast expectation tuna pistachio kentucky bavaria
0
2
0 3 2 1
0 1 0 2
1
end_operator
begin_operator
feast expectation tuna wurst bosnia kentucky
0
2
0 3 2 3
0 1 2 1
1
end_operator
begin_operator
feast expectation tuna wurst kentucky bavaria
0
2
0 3 2 3
0 1 0 2
1
end_operator
begin_operator
feast expectation wurst chicken bosnia kentucky
0
2
0 3 3 0
0 2 2 1
1
end_operator
begin_operator
feast expectation wurst chicken kentucky bavaria
0
2
0 3 3 0
0 2 0 2
1
end_operator
begin_operator
feast expectation wurst pistachio bosnia kentucky
0
2
0 3 3 1
0 2 2 1
1
end_operator
begin_operator
feast expectation wurst pistachio kentucky bavaria
0
2
0 3 3 1
0 2 0 2
1
end_operator
begin_operator
feast expectation wurst tuna bosnia kentucky
0
2
0 3 3 2
0 2 2 1
1
end_operator
begin_operator
feast expectation wurst tuna kentucky bavaria
0
2
0 3 3 2
0 2 0 2
1
end_operator
begin_operator
feast rest chicken pistachio bosnia kentucky
0
2
0 4 0 1
0 0 2 1
1
end_operator
begin_operator
feast rest chicken pistachio kentucky bavaria
0
2
0 4 0 1
0 0 0 2
1
end_operator
begin_operator
feast rest chicken wurst bosnia kentucky
0
2
0 4 0 3
0 0 2 1
1
end_operator
begin_operator
feast rest chicken wurst kentucky bavaria
0
2
0 4 0 3
0 0 0 2
1
end_operator
begin_operator
feast rest pistachio chicken bavaria pennsylvania
0
2
0 4 1 0
0 5 4 0
1
end_operator
begin_operator
feast rest pistachio chicken bosnia kentucky
0
2
0 4 1 0
0 5 2 1
1
end_operator
begin_operator
feast rest pistachio chicken kentucky bavaria
0
2
0 4 1 0
0 5 0 2
1
end_operator
begin_operator
feast rest pistachio chicken pennsylvania surrey
0
2
0 4 1 0
0 5 5 4
1
end_operator
begin_operator
feast rest pistachio chicken surrey moravia
0
2
0 4 1 0
0 5 3 5
1
end_operator
begin_operator
feast rest pistachio tuna bavaria pennsylvania
0
2
0 4 1 2
0 5 4 0
1
end_operator
begin_operator
feast rest pistachio tuna bosnia kentucky
0
2
0 4 1 2
0 5 2 1
1
end_operator
begin_operator
feast rest pistachio tuna kentucky bavaria
0
2
0 4 1 2
0 5 0 2
1
end_operator
begin_operator
feast rest pistachio tuna pennsylvania surrey
0
2
0 4 1 2
0 5 5 4
1
end_operator
begin_operator
feast rest pistachio tuna surrey moravia
0
2
0 4 1 2
0 5 3 5
1
end_operator
begin_operator
feast rest pistachio wurst bavaria pennsylvania
0
2
0 4 1 3
0 5 4 0
1
end_operator
begin_operator
feast rest pistachio wurst bosnia kentucky
0
2
0 4 1 3
0 5 2 1
1
end_operator
begin_operator
feast rest pistachio wurst kentucky bavaria
0
2
0 4 1 3
0 5 0 2
1
end_operator
begin_operator
feast rest pistachio wurst pennsylvania surrey
0
2
0 4 1 3
0 5 5 4
1
end_operator
begin_operator
feast rest pistachio wurst surrey moravia
0
2
0 4 1 3
0 5 3 5
1
end_operator
begin_operator
feast rest tuna pistachio bosnia kentucky
0
2
0 4 2 1
0 1 2 1
1
end_operator
begin_operator
feast rest tuna pistachio kentucky bavaria
0
2
0 4 2 1
0 1 0 2
1
end_operator
begin_operator
feast rest tuna wurst bosnia kentucky
0
2
0 4 2 3
0 1 2 1
1
end_operator
begin_operator
feast rest tuna wurst kentucky bavaria
0
2
0 4 2 3
0 1 0 2
1
end_operator
begin_operator
feast rest wurst chicken bosnia kentucky
0
2
0 4 3 0
0 2 2 1
1
end_operator
begin_operator
feast rest wurst chicken kentucky bavaria
0
2
0 4 3 0
0 2 0 2
1
end_operator
begin_operator
feast rest wurst pistachio bosnia kentucky
0
2
0 4 3 1
0 2 2 1
1
end_operator
begin_operator
feast rest wurst pistachio kentucky bavaria
0
2
0 4 3 1
0 2 0 2
1
end_operator
begin_operator
feast rest wurst tuna bosnia kentucky
0
2
0 4 3 2
0 2 2 1
1
end_operator
begin_operator
feast rest wurst tuna kentucky bavaria
0
2
0 4 3 2
0 2 0 2
1
end_operator
begin_operator
overcome angina expectation chicken jupiter uranus
1
3 0
2
0 6 0 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation chicken neptune earth
1
3 0
2
0 6 0 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation chicken uranus neptune
1
3 0
2
0 6 0 4
0 7 2 3
1
end_operator
begin_operator
overcome angina expectation pistachio jupiter uranus
1
3 1
2
0 6 1 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation pistachio neptune earth
1
3 1
2
0 6 1 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation pistachio uranus neptune
1
3 1
2
0 6 1 4
0 7 2 3
1
end_operator
begin_operator
overcome angina expectation tuna jupiter uranus
1
3 2
2
0 6 2 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation tuna neptune earth
1
3 2
2
0 6 2 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation tuna uranus neptune
1
3 2
2
0 6 2 4
0 7 2 3
1
end_operator
begin_operator
overcome angina expectation wurst jupiter uranus
1
3 3
2
0 6 3 4
0 7 3 1
1
end_operator
begin_operator
overcome angina expectation wurst neptune earth
1
3 3
2
0 6 3 4
0 7 0 2
1
end_operator
begin_operator
overcome angina expectation wurst uranus neptune
1
3 3
2
0 6 3 4
0 7 2 3
1
end_operator
begin_operator
overcome angina rest chicken jupiter uranus
1
4 0
2
0 6 0 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest chicken neptune earth
1
4 0
2
0 6 0 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest chicken uranus neptune
1
4 0
2
0 6 0 5
0 8 2 3
1
end_operator
begin_operator
overcome angina rest pistachio jupiter uranus
1
4 1
2
0 6 1 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest pistachio neptune earth
1
4 1
2
0 6 1 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest pistachio uranus neptune
1
4 1
2
0 6 1 5
0 8 2 3
1
end_operator
begin_operator
overcome angina rest tuna jupiter uranus
1
4 2
2
0 6 2 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest tuna neptune earth
1
4 2
2
0 6 2 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest tuna uranus neptune
1
4 2
2
0 6 2 5
0 8 2 3
1
end_operator
begin_operator
overcome angina rest wurst jupiter uranus
1
4 3
2
0 6 3 5
0 8 3 1
1
end_operator
begin_operator
overcome angina rest wurst neptune earth
1
4 3
2
0 6 3 5
0 8 0 2
1
end_operator
begin_operator
overcome angina rest wurst uranus neptune
1
4 3
2
0 6 3 5
0 8 2 3
1
end_operator
begin_operator
overcome depression expectation chicken jupiter uranus
1
3 0
2
0 9 0 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation chicken neptune earth
1
3 0
2
0 9 0 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation chicken uranus neptune
1
3 0
2
0 9 0 4
0 7 2 3
1
end_operator
begin_operator
overcome depression expectation pistachio jupiter uranus
1
3 1
2
0 9 1 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation pistachio neptune earth
1
3 1
2
0 9 1 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation pistachio uranus neptune
1
3 1
2
0 9 1 4
0 7 2 3
1
end_operator
begin_operator
overcome depression expectation tuna jupiter uranus
1
3 2
2
0 9 2 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation tuna neptune earth
1
3 2
2
0 9 2 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation tuna uranus neptune
1
3 2
2
0 9 2 4
0 7 2 3
1
end_operator
begin_operator
overcome depression expectation wurst jupiter uranus
1
3 3
2
0 9 3 4
0 7 3 1
1
end_operator
begin_operator
overcome depression expectation wurst neptune earth
1
3 3
2
0 9 3 4
0 7 0 2
1
end_operator
begin_operator
overcome depression expectation wurst uranus neptune
1
3 3
2
0 9 3 4
0 7 2 3
1
end_operator
begin_operator
overcome depression rest chicken jupiter uranus
1
4 0
2
0 9 0 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest chicken neptune earth
1
4 0
2
0 9 0 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest chicken uranus neptune
1
4 0
2
0 9 0 5
0 8 2 3
1
end_operator
begin_operator
overcome depression rest pistachio jupiter uranus
1
4 1
2
0 9 1 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest pistachio neptune earth
1
4 1
2
0 9 1 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest pistachio uranus neptune
1
4 1
2
0 9 1 5
0 8 2 3
1
end_operator
begin_operator
overcome depression rest tuna jupiter uranus
1
4 2
2
0 9 2 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest tuna neptune earth
1
4 2
2
0 9 2 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest tuna uranus neptune
1
4 2
2
0 9 2 5
0 8 2 3
1
end_operator
begin_operator
overcome depression rest wurst jupiter uranus
1
4 3
2
0 9 3 5
0 8 3 1
1
end_operator
begin_operator
overcome depression rest wurst neptune earth
1
4 3
2
0 9 3 5
0 8 0 2
1
end_operator
begin_operator
overcome depression rest wurst uranus neptune
1
4 3
2
0 9 3 5
0 8 2 3
1
end_operator
begin_operator
succumb angina expectation chicken jupiter uranus
1
3 0
2
0 6 4 0
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation chicken neptune earth
1
3 0
2
0 6 4 0
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation chicken uranus neptune
1
3 0
2
0 6 4 0
0 7 3 2
1
end_operator
begin_operator
succumb angina expectation pistachio jupiter uranus
1
3 1
2
0 6 4 1
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation pistachio neptune earth
1
3 1
2
0 6 4 1
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation pistachio uranus neptune
1
3 1
2
0 6 4 1
0 7 3 2
1
end_operator
begin_operator
succumb angina expectation tuna jupiter uranus
1
3 2
2
0 6 4 2
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation tuna neptune earth
1
3 2
2
0 6 4 2
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation tuna uranus neptune
1
3 2
2
0 6 4 2
0 7 3 2
1
end_operator
begin_operator
succumb angina expectation wurst jupiter uranus
1
3 3
2
0 6 4 3
0 7 1 3
1
end_operator
begin_operator
succumb angina expectation wurst neptune earth
1
3 3
2
0 6 4 3
0 7 2 0
1
end_operator
begin_operator
succumb angina expectation wurst uranus neptune
1
3 3
2
0 6 4 3
0 7 3 2
1
end_operator
begin_operator
succumb angina rest chicken jupiter uranus
1
4 0
2
0 6 5 0
0 8 1 3
1
end_operator
begin_operator
succumb angina rest chicken neptune earth
1
4 0
2
0 6 5 0
0 8 2 0
1
end_operator
begin_operator
succumb angina rest chicken uranus neptune
1
4 0
2
0 6 5 0
0 8 3 2
1
end_operator
begin_operator
succumb angina rest pistachio jupiter uranus
1
4 1
2
0 6 5 1
0 8 1 3
1
end_operator
begin_operator
succumb angina rest pistachio neptune earth
1
4 1
2
0 6 5 1
0 8 2 0
1
end_operator
begin_operator
succumb angina rest pistachio uranus neptune
1
4 1
2
0 6 5 1
0 8 3 2
1
end_operator
begin_operator
succumb angina rest tuna jupiter uranus
1
4 2
2
0 6 5 2
0 8 1 3
1
end_operator
begin_operator
succumb angina rest tuna neptune earth
1
4 2
2
0 6 5 2
0 8 2 0
1
end_operator
begin_operator
succumb angina rest tuna uranus neptune
1
4 2
2
0 6 5 2
0 8 3 2
1
end_operator
begin_operator
succumb angina rest wurst jupiter uranus
1
4 3
2
0 6 5 3
0 8 1 3
1
end_operator
begin_operator
succumb angina rest wurst neptune earth
1
4 3
2
0 6 5 3
0 8 2 0
1
end_operator
begin_operator
succumb angina rest wurst uranus neptune
1
4 3
2
0 6 5 3
0 8 3 2
1
end_operator
begin_operator
succumb depression expectation chicken jupiter uranus
1
3 0
2
0 9 4 0
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation chicken neptune earth
1
3 0
2
0 9 4 0
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation chicken uranus neptune
1
3 0
2
0 9 4 0
0 7 3 2
1
end_operator
begin_operator
succumb depression expectation pistachio jupiter uranus
1
3 1
2
0 9 4 1
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation pistachio neptune earth
1
3 1
2
0 9 4 1
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation pistachio uranus neptune
1
3 1
2
0 9 4 1
0 7 3 2
1
end_operator
begin_operator
succumb depression expectation tuna jupiter uranus
1
3 2
2
0 9 4 2
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation tuna neptune earth
1
3 2
2
0 9 4 2
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation tuna uranus neptune
1
3 2
2
0 9 4 2
0 7 3 2
1
end_operator
begin_operator
succumb depression expectation wurst jupiter uranus
1
3 3
2
0 9 4 3
0 7 1 3
1
end_operator
begin_operator
succumb depression expectation wurst neptune earth
1
3 3
2
0 9 4 3
0 7 2 0
1
end_operator
begin_operator
succumb depression expectation wurst uranus neptune
1
3 3
2
0 9 4 3
0 7 3 2
1
end_operator
begin_operator
succumb depression rest chicken jupiter uranus
1
4 0
2
0 9 5 0
0 8 1 3
1
end_operator
begin_operator
succumb depression rest chicken neptune earth
1
4 0
2
0 9 5 0
0 8 2 0
1
end_operator
begin_operator
succumb depression rest chicken uranus neptune
1
4 0
2
0 9 5 0
0 8 3 2
1
end_operator
begin_operator
succumb depression rest pistachio jupiter uranus
1
4 1
2
0 9 5 1
0 8 1 3
1
end_operator
begin_operator
succumb depression rest pistachio neptune earth
1
4 1
2
0 9 5 1
0 8 2 0
1
end_operator
begin_operator
succumb depression rest pistachio uranus neptune
1
4 1
2
0 9 5 1
0 8 3 2
1
end_operator
begin_operator
succumb depression rest tuna jupiter uranus
1
4 2
2
0 9 5 2
0 8 1 3
1
end_operator
begin_operator
succumb depression rest tuna neptune earth
1
4 2
2
0 9 5 2
0 8 2 0
1
end_operator
begin_operator
succumb depression rest tuna uranus neptune
1
4 2
2
0 9 5 2
0 8 3 2
1
end_operator
begin_operator
succumb depression rest wurst jupiter uranus
1
4 3
2
0 9 5 3
0 8 1 3
1
end_operator
begin_operator
succumb depression rest wurst neptune earth
1
4 3
2
0 9 5 3
0 8 2 0
1
end_operator
begin_operator
succumb depression rest wurst uranus neptune
1
4 3
2
0 9 5 3
0 8 3 2
1
end_operator
0

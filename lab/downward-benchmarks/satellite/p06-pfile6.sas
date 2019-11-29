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
Atom power_avail(satellite2)
NegatedAtom power_avail(satellite2)
end_variable
begin_variable
var1
-1
2
Atom power_on(instrument4)
NegatedAtom power_on(instrument4)
end_variable
begin_variable
var2
-1
2
Atom power_on(instrument1)
NegatedAtom power_on(instrument1)
end_variable
begin_variable
var3
-1
2
Atom power_on(instrument2)
NegatedAtom power_on(instrument2)
end_variable
begin_variable
var4
-1
2
Atom power_on(instrument3)
NegatedAtom power_on(instrument3)
end_variable
begin_variable
var5
-1
2
Atom power_avail(satellite1)
NegatedAtom power_avail(satellite1)
end_variable
begin_variable
var6
-1
2
Atom power_avail(satellite0)
NegatedAtom power_avail(satellite0)
end_variable
begin_variable
var7
-1
2
Atom power_on(instrument0)
NegatedAtom power_on(instrument0)
end_variable
begin_variable
var8
-1
11
Atom pointing(satellite2, groundstation3)
Atom pointing(satellite2, phenomenon8)
Atom pointing(satellite2, planet4)
Atom pointing(satellite2, planet5)
Atom pointing(satellite2, star0)
Atom pointing(satellite2, star1)
Atom pointing(satellite2, star10)
Atom pointing(satellite2, star2)
Atom pointing(satellite2, star6)
Atom pointing(satellite2, star7)
Atom pointing(satellite2, star9)
end_variable
begin_variable
var9
-1
11
Atom pointing(satellite1, groundstation3)
Atom pointing(satellite1, phenomenon8)
Atom pointing(satellite1, planet4)
Atom pointing(satellite1, planet5)
Atom pointing(satellite1, star0)
Atom pointing(satellite1, star1)
Atom pointing(satellite1, star10)
Atom pointing(satellite1, star2)
Atom pointing(satellite1, star6)
Atom pointing(satellite1, star7)
Atom pointing(satellite1, star9)
end_variable
begin_variable
var10
-1
11
Atom pointing(satellite0, groundstation3)
Atom pointing(satellite0, phenomenon8)
Atom pointing(satellite0, planet4)
Atom pointing(satellite0, planet5)
Atom pointing(satellite0, star0)
Atom pointing(satellite0, star1)
Atom pointing(satellite0, star10)
Atom pointing(satellite0, star2)
Atom pointing(satellite0, star6)
Atom pointing(satellite0, star7)
Atom pointing(satellite0, star9)
end_variable
begin_variable
var11
-1
2
Atom calibrated(instrument4)
NegatedAtom calibrated(instrument4)
end_variable
begin_variable
var12
-1
2
Atom calibrated(instrument3)
NegatedAtom calibrated(instrument3)
end_variable
begin_variable
var13
-1
2
Atom calibrated(instrument2)
NegatedAtom calibrated(instrument2)
end_variable
begin_variable
var14
-1
2
Atom have_image(star6, thermograph2)
NegatedAtom have_image(star6, thermograph2)
end_variable
begin_variable
var15
-1
2
Atom have_image(planet4, thermograph2)
NegatedAtom have_image(planet4, thermograph2)
end_variable
begin_variable
var16
-1
2
Atom calibrated(instrument1)
NegatedAtom calibrated(instrument1)
end_variable
begin_variable
var17
-1
2
Atom have_image(star7, infrared3)
NegatedAtom have_image(star7, infrared3)
end_variable
begin_variable
var18
-1
2
Atom have_image(star10, infrared3)
NegatedAtom have_image(star10, infrared3)
end_variable
begin_variable
var19
-1
2
Atom calibrated(instrument0)
NegatedAtom calibrated(instrument0)
end_variable
begin_variable
var20
-1
2
Atom have_image(star9, infrared1)
NegatedAtom have_image(star9, infrared1)
end_variable
begin_variable
var21
-1
2
Atom have_image(planet5, spectrograph0)
NegatedAtom have_image(planet5, spectrograph0)
end_variable
begin_variable
var22
-1
2
Atom have_image(phenomenon8, spectrograph0)
NegatedAtom have_image(phenomenon8, spectrograph0)
end_variable
0
begin_state
0
1
1
1
1
0
0
1
8
8
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
7
14 0
15 0
17 0
18 0
20 0
21 0
22 0
end_goal
362
begin_operator
calibrate satellite0 instrument0 star1
2
10 5
7 0
1
0 19 -1 0
1
end_operator
begin_operator
calibrate satellite1 instrument1 star2
2
9 7
2 0
1
0 16 -1 0
1
end_operator
begin_operator
calibrate satellite1 instrument2 star2
2
9 7
3 0
1
0 13 -1 0
1
end_operator
begin_operator
calibrate satellite1 instrument3 star2
2
9 7
4 0
1
0 12 -1 0
1
end_operator
begin_operator
calibrate satellite2 instrument4 star0
2
8 4
1 0
1
0 11 -1 0
1
end_operator
begin_operator
switch_off instrument0 satellite0
0
2
0 6 -1 0
0 7 0 1
1
end_operator
begin_operator
switch_off instrument1 satellite1
0
2
0 5 -1 0
0 2 0 1
1
end_operator
begin_operator
switch_off instrument2 satellite1
0
2
0 5 -1 0
0 3 0 1
1
end_operator
begin_operator
switch_off instrument3 satellite1
0
2
0 5 -1 0
0 4 0 1
1
end_operator
begin_operator
switch_off instrument4 satellite2
0
2
0 0 -1 0
0 1 0 1
1
end_operator
begin_operator
switch_on instrument0 satellite0
0
3
0 19 -1 1
0 6 0 1
0 7 -1 0
1
end_operator
begin_operator
switch_on instrument1 satellite1
0
3
0 16 -1 1
0 5 0 1
0 2 -1 0
1
end_operator
begin_operator
switch_on instrument2 satellite1
0
3
0 13 -1 1
0 5 0 1
0 3 -1 0
1
end_operator
begin_operator
switch_on instrument3 satellite1
0
3
0 12 -1 1
0 5 0 1
0 4 -1 0
1
end_operator
begin_operator
switch_on instrument4 satellite2
0
3
0 11 -1 1
0 0 0 1
0 1 -1 0
1
end_operator
begin_operator
take_image satellite0 phenomenon8 instrument0 spectrograph0
3
19 0
10 1
7 0
1
0 22 -1 0
1
end_operator
begin_operator
take_image satellite0 planet5 instrument0 spectrograph0
3
19 0
10 3
7 0
1
0 21 -1 0
1
end_operator
begin_operator
take_image satellite0 star9 instrument0 infrared1
3
19 0
10 10
7 0
1
0 20 -1 0
1
end_operator
begin_operator
take_image satellite1 phenomenon8 instrument3 spectrograph0
3
12 0
9 1
4 0
1
0 22 -1 0
1
end_operator
begin_operator
take_image satellite1 planet4 instrument2 thermograph2
3
13 0
9 2
3 0
1
0 15 -1 0
1
end_operator
begin_operator
take_image satellite1 planet5 instrument3 spectrograph0
3
12 0
9 3
4 0
1
0 21 -1 0
1
end_operator
begin_operator
take_image satellite1 star10 instrument1 infrared3
3
16 0
9 6
2 0
1
0 18 -1 0
1
end_operator
begin_operator
take_image satellite1 star10 instrument2 infrared3
3
13 0
9 6
3 0
1
0 18 -1 0
1
end_operator
begin_operator
take_image satellite1 star10 instrument3 infrared3
3
12 0
9 6
4 0
1
0 18 -1 0
1
end_operator
begin_operator
take_image satellite1 star6 instrument2 thermograph2
3
13 0
9 8
3 0
1
0 14 -1 0
1
end_operator
begin_operator
take_image satellite1 star7 instrument1 infrared3
3
16 0
9 9
2 0
1
0 17 -1 0
1
end_operator
begin_operator
take_image satellite1 star7 instrument2 infrared3
3
13 0
9 9
3 0
1
0 17 -1 0
1
end_operator
begin_operator
take_image satellite1 star7 instrument3 infrared3
3
12 0
9 9
4 0
1
0 17 -1 0
1
end_operator
begin_operator
take_image satellite1 star9 instrument2 infrared1
3
13 0
9 10
3 0
1
0 20 -1 0
1
end_operator
begin_operator
take_image satellite1 star9 instrument3 infrared1
3
12 0
9 10
4 0
1
0 20 -1 0
1
end_operator
begin_operator
take_image satellite2 star10 instrument4 infrared3
3
11 0
8 6
1 0
1
0 18 -1 0
1
end_operator
begin_operator
take_image satellite2 star7 instrument4 infrared3
3
11 0
8 9
1 0
1
0 17 -1 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 phenomenon8
0
1
0 10 1 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 planet4
0
1
0 10 2 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 planet5
0
1
0 10 3 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star0
0
1
0 10 4 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star1
0
1
0 10 5 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star10
0
1
0 10 6 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star2
0
1
0 10 7 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star6
0
1
0 10 8 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star7
0
1
0 10 9 0
1
end_operator
begin_operator
turn_to satellite0 groundstation3 star9
0
1
0 10 10 0
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 groundstation3
0
1
0 10 0 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 planet4
0
1
0 10 2 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 planet5
0
1
0 10 3 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star0
0
1
0 10 4 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star1
0
1
0 10 5 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star10
0
1
0 10 6 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star2
0
1
0 10 7 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star6
0
1
0 10 8 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star7
0
1
0 10 9 1
1
end_operator
begin_operator
turn_to satellite0 phenomenon8 star9
0
1
0 10 10 1
1
end_operator
begin_operator
turn_to satellite0 planet4 groundstation3
0
1
0 10 0 2
1
end_operator
begin_operator
turn_to satellite0 planet4 phenomenon8
0
1
0 10 1 2
1
end_operator
begin_operator
turn_to satellite0 planet4 planet5
0
1
0 10 3 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star0
0
1
0 10 4 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star1
0
1
0 10 5 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star10
0
1
0 10 6 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star2
0
1
0 10 7 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star6
0
1
0 10 8 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star7
0
1
0 10 9 2
1
end_operator
begin_operator
turn_to satellite0 planet4 star9
0
1
0 10 10 2
1
end_operator
begin_operator
turn_to satellite0 planet5 groundstation3
0
1
0 10 0 3
1
end_operator
begin_operator
turn_to satellite0 planet5 phenomenon8
0
1
0 10 1 3
1
end_operator
begin_operator
turn_to satellite0 planet5 planet4
0
1
0 10 2 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star0
0
1
0 10 4 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star1
0
1
0 10 5 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star10
0
1
0 10 6 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star2
0
1
0 10 7 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star6
0
1
0 10 8 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star7
0
1
0 10 9 3
1
end_operator
begin_operator
turn_to satellite0 planet5 star9
0
1
0 10 10 3
1
end_operator
begin_operator
turn_to satellite0 star0 groundstation3
0
1
0 10 0 4
1
end_operator
begin_operator
turn_to satellite0 star0 phenomenon8
0
1
0 10 1 4
1
end_operator
begin_operator
turn_to satellite0 star0 planet4
0
1
0 10 2 4
1
end_operator
begin_operator
turn_to satellite0 star0 planet5
0
1
0 10 3 4
1
end_operator
begin_operator
turn_to satellite0 star0 star1
0
1
0 10 5 4
1
end_operator
begin_operator
turn_to satellite0 star0 star10
0
1
0 10 6 4
1
end_operator
begin_operator
turn_to satellite0 star0 star2
0
1
0 10 7 4
1
end_operator
begin_operator
turn_to satellite0 star0 star6
0
1
0 10 8 4
1
end_operator
begin_operator
turn_to satellite0 star0 star7
0
1
0 10 9 4
1
end_operator
begin_operator
turn_to satellite0 star0 star9
0
1
0 10 10 4
1
end_operator
begin_operator
turn_to satellite0 star1 groundstation3
0
1
0 10 0 5
1
end_operator
begin_operator
turn_to satellite0 star1 phenomenon8
0
1
0 10 1 5
1
end_operator
begin_operator
turn_to satellite0 star1 planet4
0
1
0 10 2 5
1
end_operator
begin_operator
turn_to satellite0 star1 planet5
0
1
0 10 3 5
1
end_operator
begin_operator
turn_to satellite0 star1 star0
0
1
0 10 4 5
1
end_operator
begin_operator
turn_to satellite0 star1 star10
0
1
0 10 6 5
1
end_operator
begin_operator
turn_to satellite0 star1 star2
0
1
0 10 7 5
1
end_operator
begin_operator
turn_to satellite0 star1 star6
0
1
0 10 8 5
1
end_operator
begin_operator
turn_to satellite0 star1 star7
0
1
0 10 9 5
1
end_operator
begin_operator
turn_to satellite0 star1 star9
0
1
0 10 10 5
1
end_operator
begin_operator
turn_to satellite0 star10 groundstation3
0
1
0 10 0 6
1
end_operator
begin_operator
turn_to satellite0 star10 phenomenon8
0
1
0 10 1 6
1
end_operator
begin_operator
turn_to satellite0 star10 planet4
0
1
0 10 2 6
1
end_operator
begin_operator
turn_to satellite0 star10 planet5
0
1
0 10 3 6
1
end_operator
begin_operator
turn_to satellite0 star10 star0
0
1
0 10 4 6
1
end_operator
begin_operator
turn_to satellite0 star10 star1
0
1
0 10 5 6
1
end_operator
begin_operator
turn_to satellite0 star10 star2
0
1
0 10 7 6
1
end_operator
begin_operator
turn_to satellite0 star10 star6
0
1
0 10 8 6
1
end_operator
begin_operator
turn_to satellite0 star10 star7
0
1
0 10 9 6
1
end_operator
begin_operator
turn_to satellite0 star10 star9
0
1
0 10 10 6
1
end_operator
begin_operator
turn_to satellite0 star2 groundstation3
0
1
0 10 0 7
1
end_operator
begin_operator
turn_to satellite0 star2 phenomenon8
0
1
0 10 1 7
1
end_operator
begin_operator
turn_to satellite0 star2 planet4
0
1
0 10 2 7
1
end_operator
begin_operator
turn_to satellite0 star2 planet5
0
1
0 10 3 7
1
end_operator
begin_operator
turn_to satellite0 star2 star0
0
1
0 10 4 7
1
end_operator
begin_operator
turn_to satellite0 star2 star1
0
1
0 10 5 7
1
end_operator
begin_operator
turn_to satellite0 star2 star10
0
1
0 10 6 7
1
end_operator
begin_operator
turn_to satellite0 star2 star6
0
1
0 10 8 7
1
end_operator
begin_operator
turn_to satellite0 star2 star7
0
1
0 10 9 7
1
end_operator
begin_operator
turn_to satellite0 star2 star9
0
1
0 10 10 7
1
end_operator
begin_operator
turn_to satellite0 star6 groundstation3
0
1
0 10 0 8
1
end_operator
begin_operator
turn_to satellite0 star6 phenomenon8
0
1
0 10 1 8
1
end_operator
begin_operator
turn_to satellite0 star6 planet4
0
1
0 10 2 8
1
end_operator
begin_operator
turn_to satellite0 star6 planet5
0
1
0 10 3 8
1
end_operator
begin_operator
turn_to satellite0 star6 star0
0
1
0 10 4 8
1
end_operator
begin_operator
turn_to satellite0 star6 star1
0
1
0 10 5 8
1
end_operator
begin_operator
turn_to satellite0 star6 star10
0
1
0 10 6 8
1
end_operator
begin_operator
turn_to satellite0 star6 star2
0
1
0 10 7 8
1
end_operator
begin_operator
turn_to satellite0 star6 star7
0
1
0 10 9 8
1
end_operator
begin_operator
turn_to satellite0 star6 star9
0
1
0 10 10 8
1
end_operator
begin_operator
turn_to satellite0 star7 groundstation3
0
1
0 10 0 9
1
end_operator
begin_operator
turn_to satellite0 star7 phenomenon8
0
1
0 10 1 9
1
end_operator
begin_operator
turn_to satellite0 star7 planet4
0
1
0 10 2 9
1
end_operator
begin_operator
turn_to satellite0 star7 planet5
0
1
0 10 3 9
1
end_operator
begin_operator
turn_to satellite0 star7 star0
0
1
0 10 4 9
1
end_operator
begin_operator
turn_to satellite0 star7 star1
0
1
0 10 5 9
1
end_operator
begin_operator
turn_to satellite0 star7 star10
0
1
0 10 6 9
1
end_operator
begin_operator
turn_to satellite0 star7 star2
0
1
0 10 7 9
1
end_operator
begin_operator
turn_to satellite0 star7 star6
0
1
0 10 8 9
1
end_operator
begin_operator
turn_to satellite0 star7 star9
0
1
0 10 10 9
1
end_operator
begin_operator
turn_to satellite0 star9 groundstation3
0
1
0 10 0 10
1
end_operator
begin_operator
turn_to satellite0 star9 phenomenon8
0
1
0 10 1 10
1
end_operator
begin_operator
turn_to satellite0 star9 planet4
0
1
0 10 2 10
1
end_operator
begin_operator
turn_to satellite0 star9 planet5
0
1
0 10 3 10
1
end_operator
begin_operator
turn_to satellite0 star9 star0
0
1
0 10 4 10
1
end_operator
begin_operator
turn_to satellite0 star9 star1
0
1
0 10 5 10
1
end_operator
begin_operator
turn_to satellite0 star9 star10
0
1
0 10 6 10
1
end_operator
begin_operator
turn_to satellite0 star9 star2
0
1
0 10 7 10
1
end_operator
begin_operator
turn_to satellite0 star9 star6
0
1
0 10 8 10
1
end_operator
begin_operator
turn_to satellite0 star9 star7
0
1
0 10 9 10
1
end_operator
begin_operator
turn_to satellite1 groundstation3 phenomenon8
0
1
0 9 1 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 planet4
0
1
0 9 2 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 planet5
0
1
0 9 3 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star0
0
1
0 9 4 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star1
0
1
0 9 5 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star10
0
1
0 9 6 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star2
0
1
0 9 7 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star6
0
1
0 9 8 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star7
0
1
0 9 9 0
1
end_operator
begin_operator
turn_to satellite1 groundstation3 star9
0
1
0 9 10 0
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 groundstation3
0
1
0 9 0 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 planet4
0
1
0 9 2 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 planet5
0
1
0 9 3 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star0
0
1
0 9 4 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star1
0
1
0 9 5 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star10
0
1
0 9 6 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star2
0
1
0 9 7 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star6
0
1
0 9 8 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star7
0
1
0 9 9 1
1
end_operator
begin_operator
turn_to satellite1 phenomenon8 star9
0
1
0 9 10 1
1
end_operator
begin_operator
turn_to satellite1 planet4 groundstation3
0
1
0 9 0 2
1
end_operator
begin_operator
turn_to satellite1 planet4 phenomenon8
0
1
0 9 1 2
1
end_operator
begin_operator
turn_to satellite1 planet4 planet5
0
1
0 9 3 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star0
0
1
0 9 4 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star1
0
1
0 9 5 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star10
0
1
0 9 6 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star2
0
1
0 9 7 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star6
0
1
0 9 8 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star7
0
1
0 9 9 2
1
end_operator
begin_operator
turn_to satellite1 planet4 star9
0
1
0 9 10 2
1
end_operator
begin_operator
turn_to satellite1 planet5 groundstation3
0
1
0 9 0 3
1
end_operator
begin_operator
turn_to satellite1 planet5 phenomenon8
0
1
0 9 1 3
1
end_operator
begin_operator
turn_to satellite1 planet5 planet4
0
1
0 9 2 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star0
0
1
0 9 4 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star1
0
1
0 9 5 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star10
0
1
0 9 6 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star2
0
1
0 9 7 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star6
0
1
0 9 8 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star7
0
1
0 9 9 3
1
end_operator
begin_operator
turn_to satellite1 planet5 star9
0
1
0 9 10 3
1
end_operator
begin_operator
turn_to satellite1 star0 groundstation3
0
1
0 9 0 4
1
end_operator
begin_operator
turn_to satellite1 star0 phenomenon8
0
1
0 9 1 4
1
end_operator
begin_operator
turn_to satellite1 star0 planet4
0
1
0 9 2 4
1
end_operator
begin_operator
turn_to satellite1 star0 planet5
0
1
0 9 3 4
1
end_operator
begin_operator
turn_to satellite1 star0 star1
0
1
0 9 5 4
1
end_operator
begin_operator
turn_to satellite1 star0 star10
0
1
0 9 6 4
1
end_operator
begin_operator
turn_to satellite1 star0 star2
0
1
0 9 7 4
1
end_operator
begin_operator
turn_to satellite1 star0 star6
0
1
0 9 8 4
1
end_operator
begin_operator
turn_to satellite1 star0 star7
0
1
0 9 9 4
1
end_operator
begin_operator
turn_to satellite1 star0 star9
0
1
0 9 10 4
1
end_operator
begin_operator
turn_to satellite1 star1 groundstation3
0
1
0 9 0 5
1
end_operator
begin_operator
turn_to satellite1 star1 phenomenon8
0
1
0 9 1 5
1
end_operator
begin_operator
turn_to satellite1 star1 planet4
0
1
0 9 2 5
1
end_operator
begin_operator
turn_to satellite1 star1 planet5
0
1
0 9 3 5
1
end_operator
begin_operator
turn_to satellite1 star1 star0
0
1
0 9 4 5
1
end_operator
begin_operator
turn_to satellite1 star1 star10
0
1
0 9 6 5
1
end_operator
begin_operator
turn_to satellite1 star1 star2
0
1
0 9 7 5
1
end_operator
begin_operator
turn_to satellite1 star1 star6
0
1
0 9 8 5
1
end_operator
begin_operator
turn_to satellite1 star1 star7
0
1
0 9 9 5
1
end_operator
begin_operator
turn_to satellite1 star1 star9
0
1
0 9 10 5
1
end_operator
begin_operator
turn_to satellite1 star10 groundstation3
0
1
0 9 0 6
1
end_operator
begin_operator
turn_to satellite1 star10 phenomenon8
0
1
0 9 1 6
1
end_operator
begin_operator
turn_to satellite1 star10 planet4
0
1
0 9 2 6
1
end_operator
begin_operator
turn_to satellite1 star10 planet5
0
1
0 9 3 6
1
end_operator
begin_operator
turn_to satellite1 star10 star0
0
1
0 9 4 6
1
end_operator
begin_operator
turn_to satellite1 star10 star1
0
1
0 9 5 6
1
end_operator
begin_operator
turn_to satellite1 star10 star2
0
1
0 9 7 6
1
end_operator
begin_operator
turn_to satellite1 star10 star6
0
1
0 9 8 6
1
end_operator
begin_operator
turn_to satellite1 star10 star7
0
1
0 9 9 6
1
end_operator
begin_operator
turn_to satellite1 star10 star9
0
1
0 9 10 6
1
end_operator
begin_operator
turn_to satellite1 star2 groundstation3
0
1
0 9 0 7
1
end_operator
begin_operator
turn_to satellite1 star2 phenomenon8
0
1
0 9 1 7
1
end_operator
begin_operator
turn_to satellite1 star2 planet4
0
1
0 9 2 7
1
end_operator
begin_operator
turn_to satellite1 star2 planet5
0
1
0 9 3 7
1
end_operator
begin_operator
turn_to satellite1 star2 star0
0
1
0 9 4 7
1
end_operator
begin_operator
turn_to satellite1 star2 star1
0
1
0 9 5 7
1
end_operator
begin_operator
turn_to satellite1 star2 star10
0
1
0 9 6 7
1
end_operator
begin_operator
turn_to satellite1 star2 star6
0
1
0 9 8 7
1
end_operator
begin_operator
turn_to satellite1 star2 star7
0
1
0 9 9 7
1
end_operator
begin_operator
turn_to satellite1 star2 star9
0
1
0 9 10 7
1
end_operator
begin_operator
turn_to satellite1 star6 groundstation3
0
1
0 9 0 8
1
end_operator
begin_operator
turn_to satellite1 star6 phenomenon8
0
1
0 9 1 8
1
end_operator
begin_operator
turn_to satellite1 star6 planet4
0
1
0 9 2 8
1
end_operator
begin_operator
turn_to satellite1 star6 planet5
0
1
0 9 3 8
1
end_operator
begin_operator
turn_to satellite1 star6 star0
0
1
0 9 4 8
1
end_operator
begin_operator
turn_to satellite1 star6 star1
0
1
0 9 5 8
1
end_operator
begin_operator
turn_to satellite1 star6 star10
0
1
0 9 6 8
1
end_operator
begin_operator
turn_to satellite1 star6 star2
0
1
0 9 7 8
1
end_operator
begin_operator
turn_to satellite1 star6 star7
0
1
0 9 9 8
1
end_operator
begin_operator
turn_to satellite1 star6 star9
0
1
0 9 10 8
1
end_operator
begin_operator
turn_to satellite1 star7 groundstation3
0
1
0 9 0 9
1
end_operator
begin_operator
turn_to satellite1 star7 phenomenon8
0
1
0 9 1 9
1
end_operator
begin_operator
turn_to satellite1 star7 planet4
0
1
0 9 2 9
1
end_operator
begin_operator
turn_to satellite1 star7 planet5
0
1
0 9 3 9
1
end_operator
begin_operator
turn_to satellite1 star7 star0
0
1
0 9 4 9
1
end_operator
begin_operator
turn_to satellite1 star7 star1
0
1
0 9 5 9
1
end_operator
begin_operator
turn_to satellite1 star7 star10
0
1
0 9 6 9
1
end_operator
begin_operator
turn_to satellite1 star7 star2
0
1
0 9 7 9
1
end_operator
begin_operator
turn_to satellite1 star7 star6
0
1
0 9 8 9
1
end_operator
begin_operator
turn_to satellite1 star7 star9
0
1
0 9 10 9
1
end_operator
begin_operator
turn_to satellite1 star9 groundstation3
0
1
0 9 0 10
1
end_operator
begin_operator
turn_to satellite1 star9 phenomenon8
0
1
0 9 1 10
1
end_operator
begin_operator
turn_to satellite1 star9 planet4
0
1
0 9 2 10
1
end_operator
begin_operator
turn_to satellite1 star9 planet5
0
1
0 9 3 10
1
end_operator
begin_operator
turn_to satellite1 star9 star0
0
1
0 9 4 10
1
end_operator
begin_operator
turn_to satellite1 star9 star1
0
1
0 9 5 10
1
end_operator
begin_operator
turn_to satellite1 star9 star10
0
1
0 9 6 10
1
end_operator
begin_operator
turn_to satellite1 star9 star2
0
1
0 9 7 10
1
end_operator
begin_operator
turn_to satellite1 star9 star6
0
1
0 9 8 10
1
end_operator
begin_operator
turn_to satellite1 star9 star7
0
1
0 9 9 10
1
end_operator
begin_operator
turn_to satellite2 groundstation3 phenomenon8
0
1
0 8 1 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 planet4
0
1
0 8 2 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 planet5
0
1
0 8 3 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star0
0
1
0 8 4 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star1
0
1
0 8 5 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star10
0
1
0 8 6 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star2
0
1
0 8 7 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star6
0
1
0 8 8 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star7
0
1
0 8 9 0
1
end_operator
begin_operator
turn_to satellite2 groundstation3 star9
0
1
0 8 10 0
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 groundstation3
0
1
0 8 0 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 planet4
0
1
0 8 2 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 planet5
0
1
0 8 3 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star0
0
1
0 8 4 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star1
0
1
0 8 5 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star10
0
1
0 8 6 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star2
0
1
0 8 7 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star6
0
1
0 8 8 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star7
0
1
0 8 9 1
1
end_operator
begin_operator
turn_to satellite2 phenomenon8 star9
0
1
0 8 10 1
1
end_operator
begin_operator
turn_to satellite2 planet4 groundstation3
0
1
0 8 0 2
1
end_operator
begin_operator
turn_to satellite2 planet4 phenomenon8
0
1
0 8 1 2
1
end_operator
begin_operator
turn_to satellite2 planet4 planet5
0
1
0 8 3 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star0
0
1
0 8 4 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star1
0
1
0 8 5 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star10
0
1
0 8 6 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star2
0
1
0 8 7 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star6
0
1
0 8 8 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star7
0
1
0 8 9 2
1
end_operator
begin_operator
turn_to satellite2 planet4 star9
0
1
0 8 10 2
1
end_operator
begin_operator
turn_to satellite2 planet5 groundstation3
0
1
0 8 0 3
1
end_operator
begin_operator
turn_to satellite2 planet5 phenomenon8
0
1
0 8 1 3
1
end_operator
begin_operator
turn_to satellite2 planet5 planet4
0
1
0 8 2 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star0
0
1
0 8 4 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star1
0
1
0 8 5 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star10
0
1
0 8 6 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star2
0
1
0 8 7 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star6
0
1
0 8 8 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star7
0
1
0 8 9 3
1
end_operator
begin_operator
turn_to satellite2 planet5 star9
0
1
0 8 10 3
1
end_operator
begin_operator
turn_to satellite2 star0 groundstation3
0
1
0 8 0 4
1
end_operator
begin_operator
turn_to satellite2 star0 phenomenon8
0
1
0 8 1 4
1
end_operator
begin_operator
turn_to satellite2 star0 planet4
0
1
0 8 2 4
1
end_operator
begin_operator
turn_to satellite2 star0 planet5
0
1
0 8 3 4
1
end_operator
begin_operator
turn_to satellite2 star0 star1
0
1
0 8 5 4
1
end_operator
begin_operator
turn_to satellite2 star0 star10
0
1
0 8 6 4
1
end_operator
begin_operator
turn_to satellite2 star0 star2
0
1
0 8 7 4
1
end_operator
begin_operator
turn_to satellite2 star0 star6
0
1
0 8 8 4
1
end_operator
begin_operator
turn_to satellite2 star0 star7
0
1
0 8 9 4
1
end_operator
begin_operator
turn_to satellite2 star0 star9
0
1
0 8 10 4
1
end_operator
begin_operator
turn_to satellite2 star1 groundstation3
0
1
0 8 0 5
1
end_operator
begin_operator
turn_to satellite2 star1 phenomenon8
0
1
0 8 1 5
1
end_operator
begin_operator
turn_to satellite2 star1 planet4
0
1
0 8 2 5
1
end_operator
begin_operator
turn_to satellite2 star1 planet5
0
1
0 8 3 5
1
end_operator
begin_operator
turn_to satellite2 star1 star0
0
1
0 8 4 5
1
end_operator
begin_operator
turn_to satellite2 star1 star10
0
1
0 8 6 5
1
end_operator
begin_operator
turn_to satellite2 star1 star2
0
1
0 8 7 5
1
end_operator
begin_operator
turn_to satellite2 star1 star6
0
1
0 8 8 5
1
end_operator
begin_operator
turn_to satellite2 star1 star7
0
1
0 8 9 5
1
end_operator
begin_operator
turn_to satellite2 star1 star9
0
1
0 8 10 5
1
end_operator
begin_operator
turn_to satellite2 star10 groundstation3
0
1
0 8 0 6
1
end_operator
begin_operator
turn_to satellite2 star10 phenomenon8
0
1
0 8 1 6
1
end_operator
begin_operator
turn_to satellite2 star10 planet4
0
1
0 8 2 6
1
end_operator
begin_operator
turn_to satellite2 star10 planet5
0
1
0 8 3 6
1
end_operator
begin_operator
turn_to satellite2 star10 star0
0
1
0 8 4 6
1
end_operator
begin_operator
turn_to satellite2 star10 star1
0
1
0 8 5 6
1
end_operator
begin_operator
turn_to satellite2 star10 star2
0
1
0 8 7 6
1
end_operator
begin_operator
turn_to satellite2 star10 star6
0
1
0 8 8 6
1
end_operator
begin_operator
turn_to satellite2 star10 star7
0
1
0 8 9 6
1
end_operator
begin_operator
turn_to satellite2 star10 star9
0
1
0 8 10 6
1
end_operator
begin_operator
turn_to satellite2 star2 groundstation3
0
1
0 8 0 7
1
end_operator
begin_operator
turn_to satellite2 star2 phenomenon8
0
1
0 8 1 7
1
end_operator
begin_operator
turn_to satellite2 star2 planet4
0
1
0 8 2 7
1
end_operator
begin_operator
turn_to satellite2 star2 planet5
0
1
0 8 3 7
1
end_operator
begin_operator
turn_to satellite2 star2 star0
0
1
0 8 4 7
1
end_operator
begin_operator
turn_to satellite2 star2 star1
0
1
0 8 5 7
1
end_operator
begin_operator
turn_to satellite2 star2 star10
0
1
0 8 6 7
1
end_operator
begin_operator
turn_to satellite2 star2 star6
0
1
0 8 8 7
1
end_operator
begin_operator
turn_to satellite2 star2 star7
0
1
0 8 9 7
1
end_operator
begin_operator
turn_to satellite2 star2 star9
0
1
0 8 10 7
1
end_operator
begin_operator
turn_to satellite2 star6 groundstation3
0
1
0 8 0 8
1
end_operator
begin_operator
turn_to satellite2 star6 phenomenon8
0
1
0 8 1 8
1
end_operator
begin_operator
turn_to satellite2 star6 planet4
0
1
0 8 2 8
1
end_operator
begin_operator
turn_to satellite2 star6 planet5
0
1
0 8 3 8
1
end_operator
begin_operator
turn_to satellite2 star6 star0
0
1
0 8 4 8
1
end_operator
begin_operator
turn_to satellite2 star6 star1
0
1
0 8 5 8
1
end_operator
begin_operator
turn_to satellite2 star6 star10
0
1
0 8 6 8
1
end_operator
begin_operator
turn_to satellite2 star6 star2
0
1
0 8 7 8
1
end_operator
begin_operator
turn_to satellite2 star6 star7
0
1
0 8 9 8
1
end_operator
begin_operator
turn_to satellite2 star6 star9
0
1
0 8 10 8
1
end_operator
begin_operator
turn_to satellite2 star7 groundstation3
0
1
0 8 0 9
1
end_operator
begin_operator
turn_to satellite2 star7 phenomenon8
0
1
0 8 1 9
1
end_operator
begin_operator
turn_to satellite2 star7 planet4
0
1
0 8 2 9
1
end_operator
begin_operator
turn_to satellite2 star7 planet5
0
1
0 8 3 9
1
end_operator
begin_operator
turn_to satellite2 star7 star0
0
1
0 8 4 9
1
end_operator
begin_operator
turn_to satellite2 star7 star1
0
1
0 8 5 9
1
end_operator
begin_operator
turn_to satellite2 star7 star10
0
1
0 8 6 9
1
end_operator
begin_operator
turn_to satellite2 star7 star2
0
1
0 8 7 9
1
end_operator
begin_operator
turn_to satellite2 star7 star6
0
1
0 8 8 9
1
end_operator
begin_operator
turn_to satellite2 star7 star9
0
1
0 8 10 9
1
end_operator
begin_operator
turn_to satellite2 star9 groundstation3
0
1
0 8 0 10
1
end_operator
begin_operator
turn_to satellite2 star9 phenomenon8
0
1
0 8 1 10
1
end_operator
begin_operator
turn_to satellite2 star9 planet4
0
1
0 8 2 10
1
end_operator
begin_operator
turn_to satellite2 star9 planet5
0
1
0 8 3 10
1
end_operator
begin_operator
turn_to satellite2 star9 star0
0
1
0 8 4 10
1
end_operator
begin_operator
turn_to satellite2 star9 star1
0
1
0 8 5 10
1
end_operator
begin_operator
turn_to satellite2 star9 star10
0
1
0 8 6 10
1
end_operator
begin_operator
turn_to satellite2 star9 star2
0
1
0 8 7 10
1
end_operator
begin_operator
turn_to satellite2 star9 star6
0
1
0 8 8 10
1
end_operator
begin_operator
turn_to satellite2 star9 star7
0
1
0 8 9 10
1
end_operator
0

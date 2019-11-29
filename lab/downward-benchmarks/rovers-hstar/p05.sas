begin_version
3
end_version
begin_metric
0
end_metric
25
begin_variable
var0
-1
4
Atom at(rover1, waypoint0)
Atom at(rover1, waypoint1)
Atom at(rover1, waypoint2)
Atom at(rover1, waypoint3)
end_variable
begin_variable
var1
-1
2
Atom calibrated(camera1, rover1)
NegatedAtom calibrated(camera1, rover1)
end_variable
begin_variable
var2
-1
2
Atom have_image(rover1, objective0, colour)
NegatedAtom have_image(rover1, objective0, colour)
end_variable
begin_variable
var3
-1
2
Atom calibrated(camera0, rover1)
NegatedAtom calibrated(camera0, rover1)
end_variable
begin_variable
var4
-1
2
Atom have_image(rover1, objective2, high_res)
NegatedAtom have_image(rover1, objective2, high_res)
end_variable
begin_variable
var5
-1
2
Atom have_image(rover1, objective0, high_res)
NegatedAtom have_image(rover1, objective0, high_res)
end_variable
begin_variable
var6
-1
2
Atom at_soil_sample(waypoint1)
Atom have_soil_analysis(rover1, waypoint1)
end_variable
begin_variable
var7
-1
2
Atom at_soil_sample(waypoint2)
Atom have_soil_analysis(rover1, waypoint2)
end_variable
begin_variable
var8
-1
2
Atom at_soil_sample(waypoint3)
Atom have_soil_analysis(rover1, waypoint3)
end_variable
begin_variable
var9
-1
2
Atom empty(rover1store)
Atom full(rover1store)
end_variable
begin_variable
var10
-1
2
Atom communicated_soil_data(waypoint2)
NegatedAtom communicated_soil_data(waypoint2)
end_variable
begin_variable
var11
-1
2
Atom communicated_soil_data(waypoint1)
NegatedAtom communicated_soil_data(waypoint1)
end_variable
begin_variable
var12
-1
3
Atom at(rover0, waypoint0)
Atom at(rover0, waypoint1)
Atom at(rover0, waypoint3)
end_variable
begin_variable
var13
-1
2
Atom calibrated(camera2, rover0)
NegatedAtom calibrated(camera2, rover0)
end_variable
begin_variable
var14
-1
2
Atom have_image(rover0, objective2, high_res)
NegatedAtom have_image(rover0, objective2, high_res)
end_variable
begin_variable
var15
-1
2
Atom communicated_image_data(objective2, high_res)
NegatedAtom communicated_image_data(objective2, high_res)
end_variable
begin_variable
var16
-1
2
Atom have_image(rover0, objective0, high_res)
NegatedAtom have_image(rover0, objective0, high_res)
end_variable
begin_variable
var17
-1
2
Atom communicated_image_data(objective0, high_res)
NegatedAtom communicated_image_data(objective0, high_res)
end_variable
begin_variable
var18
-1
2
Atom have_image(rover0, objective0, colour)
NegatedAtom have_image(rover0, objective0, colour)
end_variable
begin_variable
var19
-1
2
Atom communicated_image_data(objective0, colour)
NegatedAtom communicated_image_data(objective0, colour)
end_variable
begin_variable
var20
-1
2
Atom at_rock_sample(waypoint0)
Atom have_rock_analysis(rover0, waypoint0)
end_variable
begin_variable
var21
-1
2
Atom at_rock_sample(waypoint1)
Atom have_rock_analysis(rover0, waypoint1)
end_variable
begin_variable
var22
-1
2
Atom empty(rover0store)
Atom full(rover0store)
end_variable
begin_variable
var23
-1
2
Atom communicated_rock_data(waypoint1)
NegatedAtom communicated_rock_data(waypoint1)
end_variable
begin_variable
var24
-1
2
Atom communicated_rock_data(waypoint0)
NegatedAtom communicated_rock_data(waypoint0)
end_variable
0
begin_state
0
1
1
1
1
1
0
0
0
0
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
0
0
0
1
1
end_state
begin_goal
7
10 0
11 0
15 0
17 0
19 0
23 0
24 0
end_goal
111
begin_operator
calibrate rover0 camera2 objective1 waypoint0
1
12 0
1
0 13 -1 0
1
end_operator
begin_operator
calibrate rover0 camera2 objective1 waypoint1
1
12 1
1
0 13 -1 0
1
end_operator
begin_operator
calibrate rover1 camera0 objective1 waypoint0
1
0 0
1
0 3 -1 0
1
end_operator
begin_operator
calibrate rover1 camera0 objective1 waypoint1
1
0 1
1
0 3 -1 0
1
end_operator
begin_operator
calibrate rover1 camera0 objective1 waypoint2
1
0 2
1
0 3 -1 0
1
end_operator
begin_operator
calibrate rover1 camera1 objective1 waypoint0
1
0 0
1
0 1 -1 0
1
end_operator
begin_operator
calibrate rover1 camera1 objective1 waypoint1
1
0 1
1
0 1 -1 0
1
end_operator
begin_operator
calibrate rover1 camera1 objective1 waypoint2
1
0 2
1
0 1 -1 0
1
end_operator
begin_operator
communicate_image_data rover0 general objective0 colour waypoint0 waypoint3
2
12 0
18 0
1
0 19 -1 0
1
end_operator
begin_operator
communicate_image_data rover0 general objective0 colour waypoint1 waypoint3
2
12 1
18 0
1
0 19 -1 0
1
end_operator
begin_operator
communicate_image_data rover0 general objective0 high_res waypoint0 waypoint3
2
12 0
16 0
1
0 17 -1 0
1
end_operator
begin_operator
communicate_image_data rover0 general objective0 high_res waypoint1 waypoint3
2
12 1
16 0
1
0 17 -1 0
1
end_operator
begin_operator
communicate_image_data rover0 general objective2 high_res waypoint0 waypoint3
2
12 0
14 0
1
0 15 -1 0
1
end_operator
begin_operator
communicate_image_data rover0 general objective2 high_res waypoint1 waypoint3
2
12 1
14 0
1
0 15 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective0 colour waypoint0 waypoint3
2
0 0
2 0
1
0 19 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective0 colour waypoint1 waypoint3
2
0 1
2 0
1
0 19 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective0 colour waypoint2 waypoint3
2
0 2
2 0
1
0 19 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective0 high_res waypoint0 waypoint3
2
0 0
5 0
1
0 17 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective0 high_res waypoint1 waypoint3
2
0 1
5 0
1
0 17 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective0 high_res waypoint2 waypoint3
2
0 2
5 0
1
0 17 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective2 high_res waypoint0 waypoint3
2
0 0
4 0
1
0 15 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective2 high_res waypoint1 waypoint3
2
0 1
4 0
1
0 15 -1 0
1
end_operator
begin_operator
communicate_image_data rover1 general objective2 high_res waypoint2 waypoint3
2
0 2
4 0
1
0 15 -1 0
1
end_operator
begin_operator
communicate_rock_data rover0 general waypoint0 waypoint0 waypoint3
2
12 0
20 1
1
0 24 -1 0
1
end_operator
begin_operator
communicate_rock_data rover0 general waypoint0 waypoint1 waypoint3
2
12 1
20 1
1
0 24 -1 0
1
end_operator
begin_operator
communicate_rock_data rover0 general waypoint1 waypoint0 waypoint3
2
12 0
21 1
1
0 23 -1 0
1
end_operator
begin_operator
communicate_rock_data rover0 general waypoint1 waypoint1 waypoint3
2
12 1
21 1
1
0 23 -1 0
1
end_operator
begin_operator
communicate_soil_data rover1 general waypoint1 waypoint0 waypoint3
2
0 0
6 1
1
0 11 -1 0
1
end_operator
begin_operator
communicate_soil_data rover1 general waypoint1 waypoint1 waypoint3
2
0 1
6 1
1
0 11 -1 0
1
end_operator
begin_operator
communicate_soil_data rover1 general waypoint1 waypoint2 waypoint3
2
0 2
6 1
1
0 11 -1 0
1
end_operator
begin_operator
communicate_soil_data rover1 general waypoint2 waypoint0 waypoint3
2
0 0
7 1
1
0 10 -1 0
1
end_operator
begin_operator
communicate_soil_data rover1 general waypoint2 waypoint1 waypoint3
2
0 1
7 1
1
0 10 -1 0
1
end_operator
begin_operator
communicate_soil_data rover1 general waypoint2 waypoint2 waypoint3
2
0 2
7 1
1
0 10 -1 0
1
end_operator
begin_operator
drop rover0 rover0store
0
1
0 22 1 0
1
end_operator
begin_operator
drop rover1 rover1store
0
1
0 9 1 0
1
end_operator
begin_operator
navigate rover0 waypoint0 waypoint1
0
1
0 12 0 1
1
end_operator
begin_operator
navigate rover0 waypoint0 waypoint3
0
1
0 12 0 2
1
end_operator
begin_operator
navigate rover0 waypoint1 waypoint0
0
1
0 12 1 0
1
end_operator
begin_operator
navigate rover0 waypoint3 waypoint0
0
1
0 12 2 0
1
end_operator
begin_operator
navigate rover1 waypoint0 waypoint1
0
1
0 0 0 1
1
end_operator
begin_operator
navigate rover1 waypoint1 waypoint0
0
1
0 0 1 0
1
end_operator
begin_operator
navigate rover1 waypoint1 waypoint2
0
1
0 0 1 2
1
end_operator
begin_operator
navigate rover1 waypoint1 waypoint3
0
1
0 0 1 3
1
end_operator
begin_operator
navigate rover1 waypoint2 waypoint1
0
1
0 0 2 1
1
end_operator
begin_operator
navigate rover1 waypoint3 waypoint1
0
1
0 0 3 1
1
end_operator
begin_operator
sample_rock rover0 rover0store waypoint0
1
12 0
2
0 20 0 1
0 22 0 1
1
end_operator
begin_operator
sample_rock rover0 rover0store waypoint1
1
12 1
2
0 21 0 1
0 22 0 1
1
end_operator
begin_operator
sample_soil rover1 rover1store waypoint1
1
0 1
2
0 6 0 1
0 9 0 1
1
end_operator
begin_operator
sample_soil rover1 rover1store waypoint2
1
0 2
2
0 7 0 1
0 9 0 1
1
end_operator
begin_operator
sample_soil rover1 rover1store waypoint3
1
0 3
2
0 8 0 1
0 9 0 1
1
end_operator
begin_operator
take_image rover0 waypoint0 objective0 camera2 colour
1
12 0
2
0 13 0 1
0 18 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint0 objective0 camera2 high_res
1
12 0
2
0 13 0 1
0 16 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint0 objective0 camera2 low_res
1
12 0
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera2 colour
1
12 0
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera2 high_res
1
12 0
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint0 objective1 camera2 low_res
1
12 0
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint0 objective2 camera2 colour
1
12 0
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint0 objective2 camera2 high_res
1
12 0
2
0 13 0 1
0 14 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint0 objective2 camera2 low_res
1
12 0
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint1 objective0 camera2 colour
1
12 1
2
0 13 0 1
0 18 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint1 objective0 camera2 high_res
1
12 1
2
0 13 0 1
0 16 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint1 objective0 camera2 low_res
1
12 1
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint1 objective1 camera2 colour
1
12 1
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint1 objective1 camera2 high_res
1
12 1
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint1 objective1 camera2 low_res
1
12 1
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint1 objective2 camera2 colour
1
12 1
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint1 objective2 camera2 high_res
1
12 1
2
0 13 0 1
0 14 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint1 objective2 camera2 low_res
1
12 1
1
0 13 0 1
1
end_operator
begin_operator
take_image rover0 waypoint3 objective0 camera2 colour
1
12 2
2
0 13 0 1
0 18 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint3 objective0 camera2 high_res
1
12 2
2
0 13 0 1
0 16 -1 0
1
end_operator
begin_operator
take_image rover0 waypoint3 objective0 camera2 low_res
1
12 2
1
0 13 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective0 camera0 high_res
1
0 0
2
0 3 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint0 objective0 camera0 low_res
1
0 0
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective0 camera1 colour
1
0 0
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint0 objective0 camera1 high_res
1
0 0
2
0 1 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint0 objective1 camera0 high_res
1
0 0
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective1 camera0 low_res
1
0 0
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective1 camera1 colour
1
0 0
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective1 camera1 high_res
1
0 0
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective2 camera0 high_res
1
0 0
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint0 objective2 camera0 low_res
1
0 0
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective2 camera1 colour
1
0 0
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint0 objective2 camera1 high_res
1
0 0
2
0 1 0 1
0 4 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint1 objective0 camera0 high_res
1
0 1
2
0 3 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint1 objective0 camera0 low_res
1
0 1
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective0 camera1 colour
1
0 1
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint1 objective0 camera1 high_res
1
0 1
2
0 1 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint1 objective1 camera0 high_res
1
0 1
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective1 camera0 low_res
1
0 1
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective1 camera1 colour
1
0 1
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective1 camera1 high_res
1
0 1
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective2 camera0 high_res
1
0 1
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint1 objective2 camera0 low_res
1
0 1
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective2 camera1 colour
1
0 1
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint1 objective2 camera1 high_res
1
0 1
2
0 1 0 1
0 4 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint2 objective0 camera0 high_res
1
0 2
2
0 3 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint2 objective0 camera0 low_res
1
0 2
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective0 camera1 colour
1
0 2
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint2 objective0 camera1 high_res
1
0 2
2
0 1 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint2 objective1 camera0 high_res
1
0 2
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective1 camera0 low_res
1
0 2
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective1 camera1 colour
1
0 2
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective1 camera1 high_res
1
0 2
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective2 camera0 high_res
1
0 2
2
0 3 0 1
0 4 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint2 objective2 camera0 low_res
1
0 2
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective2 camera1 colour
1
0 2
1
0 1 0 1
1
end_operator
begin_operator
take_image rover1 waypoint2 objective2 camera1 high_res
1
0 2
2
0 1 0 1
0 4 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint3 objective0 camera0 high_res
1
0 3
2
0 3 0 1
0 5 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint3 objective0 camera0 low_res
1
0 3
1
0 3 0 1
1
end_operator
begin_operator
take_image rover1 waypoint3 objective0 camera1 colour
1
0 3
2
0 1 0 1
0 2 -1 0
1
end_operator
begin_operator
take_image rover1 waypoint3 objective0 camera1 high_res
1
0 3
2
0 1 0 1
0 5 -1 0
1
end_operator
0

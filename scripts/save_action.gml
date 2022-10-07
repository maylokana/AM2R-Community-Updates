//save_action(action_num);
/* numerical ids for actions
0 - up press
1 - down press
2 - right press
3 - left press
4 - jump press
5 - fire press
6 - miss press
7 - sele press
8 - aim1 press
9 - aim2 press
10 - walk press
11 - morp press

12 - up release
13 - down release
14 - right release
15 - left release
16 - jump release
17 - fire release
18 - miss release
19 - sele release
20 - aim1 release
21 - aim2 release
22 - walk release
23 - morp release
*/ // i do not want to talk about it

// save the action in the array and then increment demo_actions
// I LOVE COPY-ON-WRITE I WANT TO
demo_action[@ demo_actions] = argument0;
demo_acttic[@ demo_actions] = demo_tick;

++demo_actions;
show_debug_message("Saved action no. "+string(demo_actions)+": Action "+string(demo_action[@ demo_actions-1])+" at tic "+string(demo_acttic[@ demo_actions-1]))

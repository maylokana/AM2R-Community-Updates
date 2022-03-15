// time_string(time_in_tics)

// make the vars
var ms = string(floor((argument0 mod 60)*1.667));
var sc = string(floor((argument0/60) mod 60));
var mi = string(floor(argument0/3600));
// check if they're right length
if (string_length(ms) < 2) then ms = "0"+ms;
if (string_length(sc) < 2) then sc = "0"+sc;
// and check to make sure this needs to be unset if negative
if (argument0 < 0){
   ms = "--";
   sc = "--";
   mi = "-";
}
// done
return mi+":"+sc+"."+ms;

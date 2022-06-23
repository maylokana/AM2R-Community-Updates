// time_string_misc(time_in_tics)

// make the vars
var sc = string(floor((argument0/60) mod 60));
var mi = string(floor(argument0/3600));
// check if they're right length
if (string_length(sc) < 2) then sc = "0"+sc;
// and check to make sure this needs to be unset if negative
if (argument0 < 0){
   sc = "--";
   mi = "-";
}
// done
return mi+":"+sc;

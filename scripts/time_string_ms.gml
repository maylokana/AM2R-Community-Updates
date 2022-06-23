// time_string_ms(time_in_tics)

// make the vars
var ms = string(floor((argument0 mod 60)*1.667));
// check if they're right length
if (string_length(ms) < 2) then ms = "0"+ms;
// and check to make sure this needs to be unset if negative
if (argument0 < 0){
   ms = "--";
}
// done
return "."+ms;

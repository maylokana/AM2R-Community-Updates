//generate_id();
var str = "";
for (var i = 0; i < 32; ++i;){
    str = str+choose("a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","0","1","2","3","4","5","6","7","8","9");
}
show_debug_message("generate_id(): "+str);
return str;
// i do not want to talk about it. leave me alone

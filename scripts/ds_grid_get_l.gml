// ds_grid_get_l(same functions...)

if (ds_grid_width(argument0) <= argument1 || ds_grid_height(argument0) <= argument2){
    return -1;
}else{
    return ds_grid_get(argument0,argument1,argument2);
}

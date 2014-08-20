///enedebris(x,y,sprite)
var n, c, in;
in = sprite_get_number(argument2)
for(c = 0;c < in;c += 1){
    n = instance_create(argument0,argument1,obj_debris)
    n.sprite_index = argument2
    n.image_index  = c
    if(c > 0.5*in){
        n.angchang    = random_range(0, 3)
    }
    else{
        n.angchang    = random_range(0,-3)
    }
}

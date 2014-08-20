//Physics
if(onground){
    sprite_index = spr_ruby_slash3
    image_speed  = 0.35
    player_drop_controls()
}
else{
    sprite_index = spr_ruby_slash2
    image_speed  = 0.4
    player_controls()
}
player_physics()


n = hitbox(sprite_index,image_index,x,y,image_xscale)
n.atk = 15



//Leave
if(image_index + image_speed >= image_number){
    state = ps_air
}

//Physics
player_drop_controls()
player_physics()

//Animate
sprite_index = spr_ruby_slash1
image_speed  = 0.35

n = hitbox(sprite_index,image_index,x,y,image_xscale)
n.atk = 20



//Leave
if(image_index + image_speed > image_number){
    state = ps_stand
}

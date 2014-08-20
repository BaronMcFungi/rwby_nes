///Physics
player_drop_controls()
player_physics()

//Animate & leave
sprite_index = spr_ruby_shoot2
image_speed  = 0.15
if(image_index + image_speed > image_number){
    state = ps_air
}
else if(image_index >= 1){
    if(!shot){
        n = instance_create(x + image_xscale*16,y + 12,obj_playersniperbullet)
        n.atk       = 20
        n.direction = 90 - image_xscale*135
        sound(snd_shotgun)
        xspeed      = -image_xscale*4
        yspeed      = -4
        shot = true
    }
}

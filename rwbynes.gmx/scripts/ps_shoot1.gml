///Physics
player_drop_controls()
player_physics()

//Animate & leave
sprite_index = spr_ruby_shoot1
image_speed  = 0.2
if(image_index + image_speed > image_number){
    state = ps_stand
    x    -= image_xscale
}
else if(image_index >= 3){
    if(!shot){
        n = instance_create(x + image_xscale*16,y - 12,obj_playersniperbullet)
        n.atk       = 20
        n.direction = 90 - image_xscale*90
        sound(snd_shotgun)
        shot = true
    }
}

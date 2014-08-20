sprite_index = spr_ruby_dash
image_speed  = 0.25
xspeed       = 0
yspeed       = 0

x           += image_xscale*8
cntr        -= 1
if(!cntr){
    state = ps_air
}

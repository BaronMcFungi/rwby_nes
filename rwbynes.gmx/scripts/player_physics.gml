x = clamp(x + xspeed,0,room_width - 1)
ggy = get_ground_y(x) - 16
if(y < ggy){
    yspeed  = min(yspeed + vgrav,tmvelc)
    y      += yspeed
}
if(y >= ggy){
    yspeed = 0
    y      = ggy
}

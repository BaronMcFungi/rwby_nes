if(place_meeting(x + xspeed,y,parent_terrain)){
    s = sign(xspeed)
    while(!place_meeting(x + s,y,parent_terrain)){
        x += s
    }
    xspeed = 0
}
else{
    x = clamp(x + xspeed,0,room_width - 1)
}

if(yspeed < 0 && (terrain_meeting(x,y + masktopdelta))){
    //Ceiling hit!
    yspeed = 0
    while(place_meeting(x,y,parent_terrain)){
        y++
    }
}
else if(yspeed >= 0 && (terrain_meeting(x,y + 1) || (position_meeting(x,y + 1,parent_jumpthru) && !position_meeting(x,y - yspeed,parent_jumpthru)))){
    //Floor hit!
    yspeed = 0
    y      = floor(y + 1)
    while(place_meeting(x,y,parent_terrain) || position_meeting(x,y,parent_jumpthru)){
        y--
    }
    y = min(y,get_ground_y(x))
}
else{
    //Freefalling
    yspeed  = min(yspeed + vgrav,tmvelc)
    y      += yspeed
}

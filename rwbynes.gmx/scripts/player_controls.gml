if(k_l){
    xspeed -= accel
}
else if(k_r){
    xspeed += accel
}
else{
    if(abs(xspeed) > xfrict){
        xspeed -= sign(xspeed)*xfrict
    }
    else{
        xspeed = 0
    }
}
xspeed = clamp(xspeed,-mxxspd,mxxspd)

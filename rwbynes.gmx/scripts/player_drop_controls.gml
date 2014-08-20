if(abs(xspeed) > xfrict){
    xspeed -= sign(xspeed)*xfrict
}
else{
    xspeed = 0
}

///Physics
player_controls()
player_physics()

//Animate
if(k_l){
    image_xscale = -1
}
else if(k_r){
    image_xscale = 1
}

if(xspeed == 0){
    sprite_index = spr_ruby_stand
    image_speed  = 0.1
}
else{
    sprite_index = spr_ruby_walk
    image_speed  = 0.1
}

//Fall or jump
if(!onground){
    state = ps_air
}
else{
    if(k_j && !p_j){
        yspeed = -jmpspd
        y     +=  yspeed
        state  = ps_air
        sound(snd_jump)
    }
}


//Attack
if(k_ma && p_ma<EARLYPRESS){
    image_index = 0
    switch(prevatk){
        case ps_slash1:
            state    = ps_slash2
            prevatkt = 30
            sound(snd_slash1)
        break
    
        default:
            //Normal slash
            state    = ps_slash1
            prevatkt = 30
            sound(snd_slash1)
        break
    }
    prevatk = state
}
else if(k_sa && p_sa<EARLYPRESS){
    image_index = 0
    shot        = false
    switch(prevatk){
        default:
            state = ps_shoot1
        break
    }
}

//Dash
if(k_da && !p_da){
    state = ps_dash
    cntr  = 20
    sound(snd_dash)
}

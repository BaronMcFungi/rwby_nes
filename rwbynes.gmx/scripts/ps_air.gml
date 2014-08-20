//Physics
player_controls()
player_physics()

//Animate
if(yspeed < 0){
    sprite_index = spr_ruby_jump_up
    image_speed  = 0.2
}
else{
    sprite_index = spr_ruby_jump_down
    image_speed  = 0.2
}

//Land
if(y >= get_ground_y(x) - 16){
    state = ps_stand
}

//Jump height adjustment
if(!k_j && p_j){
    if(yspeed < 0){
        yspeed *= 0.5
    }
}

//Attack
if(k_ma && p_ma<EARLYPRESS){
    image_index = 0
    switch(prevatk){
        default:
            //Normal slash
            state    = ps_slash2
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
            state = ps_shoot2
        break
    }
}

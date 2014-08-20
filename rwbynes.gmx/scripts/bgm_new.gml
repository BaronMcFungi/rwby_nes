///bgm(sound)
if(audio_is_playing(global._bgm) && argument0 <> global._bgm){
    audio_stop_sound(global._bgm)
}
global._bgm = argument0
if(argument0 <> NONE){
    if(!audio_is_playing(argument0)){
        audio_play_sound(argument0,10000,true)
    }
}

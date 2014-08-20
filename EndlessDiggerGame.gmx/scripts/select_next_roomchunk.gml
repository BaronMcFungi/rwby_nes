///select_next_roomchunk()
//Main part of random generation routine. Right now, very simple
do{
    r = choose(chunk_shaft01,/*chunk_shaft02,chunk_room01,*/chunk_room02)
}until(r <> room)
return r

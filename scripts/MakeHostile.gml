if !alert
{
    alert = true
    global.enemiesAlerted++
    
    if !audio_is_playing(titleMusic)
    {
        audio_stop_all()
        audio_play_sound(titleMusic, 1, 1)
    }
}
hostile = true
path_end()
alarm[0] = 0
alarm[2] = 300;
alarm[3] = 1;
alarm[4] = 1;
alarm[5] = 300;
alarm[10] = 1;

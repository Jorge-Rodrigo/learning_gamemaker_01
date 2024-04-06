global.life --;

if (global.life < 1)
{
	global.point = 0;
	global.life = 3;
	room_goto(Room1);
	audio_play_sound(snd_game_over,10,false)
}
else
{
	instance_destroy();	
	instance_create_layer(obj_player.x,ystart,"Instances",obj_ball);
	audio_play_sound(snd_lost,10,false);
}
instance_create_layer(x-25,y,"Instances",obj_shot);
instance_create_layer(x+25,y,"Instances",obj_shot);
audio_play_sound(snd_shot,10,false);
if (power_up == true)
{
	alarm[0] = 60;	
}
if (launch == true)
{
	move_bounce_solid(true);
	direction = point_direction(other.x,other.y,x,y);
	audio_play_sound(snd_collision,10,false);
}
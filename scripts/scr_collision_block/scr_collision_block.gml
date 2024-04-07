
function scr_collision_block(){
	
	move_bounce_all(true);
	instance_destroy(other);
	
	global.point += 5;
	
	if (global.point > global.record)
	{
		global.record = global.point;
	};
}

function scr_collision_block_gray(){
	
	move_bounce_all(true);
	other.defense -= 1;
	other.sprite_index = spr_block_gray_break;
	
	if (other.defense == 0){
		instance_destroy(other);	
		global.point += 5;
		
		if (global.point > global.record)
		{
			global.record = global.point;
		};
	}
	
	
	
	
}

function scr_random_power_up(){
	
	randomize();
	
	var _chance = irandom(9);
	
	if (_chance == 9) {
		instance_create_layer(x,y, "Itens", obj_power_up);	
		audio_play_sound(snd_power_up,10,false);
	}
}


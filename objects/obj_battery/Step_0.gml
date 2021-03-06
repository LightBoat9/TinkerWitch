//Draw Based on currency/value amount
if value = 1 {
	sprite_index = spr_battery_red;
}
else if value = 2 {
	sprite_index = spr_battery_blue;
}
else if value = 10 {
	sprite_index = spr_battery_gold;
}

mid_x = x + 16;
mid_y = y + 16;

if !collected {
	if place_meeting(x,y,obj_player) {
		collected = true;
		global.charge += value; //Add the charge currency
		audio_play_sound(snd_collect,0,false);
	}
}

if collected {
	if obj_player.x != x || obj_player.y != y {
		if x > obj_player.x {
			x-=5;
		}
		if x < obj_player.x {
			x+=5;
		}
		if y > obj_player.y {
			y-=5;
		}
		if y < obj_player.y {
			y+=5;
		}
		
	}
	else {
		while x > obj_player.x {
			x--;
		}
		while x < obj_player.x {
			x++;
		}
		while y > obj_player.y {
			y--;
		}
		while y < obj_player.y {
			y++;
		}
	}
}
if instance_exists(obj_bot) {
	if obj_bot.skill = 3 {
		if place_meeting(x+hsp,y,obj_bot) {
			while !place_meeting(x+sign(hsp),y,obj_bot) {
				x += sign(hsp);
			}
			//Switch Direction
			if (obj_player.shield_health_max = 1) {
				scr_sk_switch_dir();
			}
			obj_player.shield_health -= 1;
			roll_amount--;
		}
		else if place_meeting(x,y+vsp,obj_bot) {
			while !place_meeting(x,y+sign(vsp),obj_bot) {
				y += sign(vsp);
			}
			//Switch Direction
			scr_sk_switch_dir();//Switch Direction
			if (obj_player.shield_health_max = 1) {
				scr_sk_switch_dir();
			}
			//Damage Shield
			obj_player.shield_health -= 1;
			roll_amount--;
		}
	}
}
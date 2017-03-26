if destroy {
	instance_destroy();
	exit;
}

//Set Option Variables 
if get_option_text {
	ini_open("Save.sav");
	switch (func) {
		case 0:
			if ini_section_exists("Save1") {
				option_text = "ACTIVE"
			}
			else {
				option_text = "EMPTY"
			}
			break;
		case 1: 
			if ini_section_exists("Save2") {
				option_text = "ACTIVE"
			}
			else {
				option_text = "EMPTY"
			}
			break;
		case 2:
			if ini_section_exists("Save3") {
				option_text = "ACTIVE";
			}
			else {
				option_text = "EMPTY";
			}
			break;
		case 3: //Back
			option_text = "";
			break;
	}
	ini_close();
	get_option_text = false;
}

//Camera Dimentions
var cam_w = camera_get_view_width(view_get_camera(view_current));

//If hover this option and click do the given function based on passed in number
if point_in_rectangle(mouse_x,mouse_y,x,y,x+(cam_w/4),y+boxheight) {
	if mouse_check_button_pressed(mb_left) {
		switch (func) {
			case 0: //Save One
				global.save_slot = 1;
				obj_menu_main.start = true;
				scr_clear_save("Save1");
				break;
			case 1: //Save Two
				global.save_slot = 2;
				obj_menu_main.start = true;
				scr_clear_save("Save2");
				break;
			case 2: //Save Three
				global.save_slot = 3;
				obj_menu_main.start = true;
				scr_clear_save("Save3");
				break;
			case 3: //Back
				obj_menu_main.newsave = false;
				obj_menu_main.select = 2; //Go back to option
				break;
		}
	}
	obj_menu_main.newsave_select = func+1;
}

//Same as above but with S and W for movement and E for select
if obj_menu_main.newsave_select = (func+1) {
	if keyboard_check_pressed(ord("E")) || keyboard_check_pressed(ord("D")) {
		switch (func) {
			case 0: //Save One
				global.save_slot = 1;
				obj_menu_main.start = true;
				scr_clear_save("Save1");
				break;
			case 1: //Save Two
				global.save_slot = 2;
				obj_menu_main.start = true;
				scr_clear_save("Save2");
				break;
			case 2: //Save Three
				global.save_slot = 3;
				obj_menu_main.start = true;
				scr_clear_save("Save3");
				break;
			case 3: //Back
				obj_menu_main.newsave = false;
				obj_menu_main.select = 2; //Go back to option
				break;
		}
	}
}

if keyboard_check_pressed(ord("A")) {
	obj_menu_main.newsave = false;
	obj_menu_main.select = 2; //Go back to option
}


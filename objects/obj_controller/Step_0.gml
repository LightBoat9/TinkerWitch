/// @description Nonconstant Variables

//Allow true random
randomize();

/* Keybindings */
//Movement
global.key_left = keyboard_check(ord("A"));
global.key_right = keyboard_check(ord("D"));
global.key_up = keyboard_check(ord("W"));
global.key_down = keyboard_check(ord("S"));
global.key_jump = keyboard_check(vk_space);
//Items & Skills
global.key_wrench = keyboard_check(ord("Q"));
global.key_bots = keyboard_check(ord("F"));
global.key_missile = keyboard_check(ord("E"));
/* Mouse Bindings */
global.mouse_left = mouse_check_button(mb_left);

/* Backgrounds */
/* COMMENTED OUT CODE FOR MOVING BACKGROUNDS 
bgr_top = layer_get_id("Background_Top");
cam_x = camera_get_view_x(cam);
layer_x(bgr_top, cam_x);
*/
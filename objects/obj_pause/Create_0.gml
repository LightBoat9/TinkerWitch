//Deph
depth = -10000;

//Unpause Variable
unpause = false;

//Graphics Menu Variables
graphics = false;

//Camera Positions & Dimentions
var cam_x = camera_get_view_x(view_get_camera(view_current));
var cam_y = camera_get_view_y(view_get_camera(view_current));
var cam_w = camera_get_view_width(view_get_camera(view_current));
var cam_h = camera_get_view_height(view_get_camera(view_current));

//Menu Text
select = 1; //The currently selected menu option
graphic_select = 1; //The currently selected options menu option
scr_pause_text("RESUME",2,cam_x+64,cam_y+64,0); //Change last param for new additions
scr_pause_text("OPTIONS",2,cam_x+64,cam_y+128,1); //Change last param for new additions
scr_pause_text("SAVE & QUIT",2,cam_x+64,cam_y+192,2); //Change last param for new additions

//Graphics Options
scr_pause_graphics("PARTICLES",2,cam_x+64+(cam_w/4)+96,cam_y+64,0); //Change last param for new additions
scr_pause_graphics("FULLSCREEN",2,cam_x+64+(cam_w/4)+96,cam_y+192,1); //Change last param for new additions
scr_pause_graphics("DEV MODE",2,cam_x+64+(cam_w/4)+96,cam_y+320,2); //Change last param for new additions
scr_pause_graphics("BACK",2,cam_x+64+(cam_w/4)+96,cam_y+448,3); //Change last param for new additions
instance_deactivate_object(obj_pause_graphics_text); //Stop all instances until called

pause_surface = surface_create(1280,720);
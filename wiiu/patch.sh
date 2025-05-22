#!/bin/bash
# run this before make to copy over patched
# versions of the code, friendly to the WiiU

SRC_HEADER=../oneko.h
SRC_MAIN=../sdl/sdl_oneko.c
SRC_XBM_HELPER='../sdl/sdl_xbm_helper*'

copy_oneko_h() {
  grep -v '<X11/'  $SRC_HEADER > oneko_no_x.h
}

copy_sdl_oneko_c() {
  sed  's/int main(/int myapp_main(/g'  $SRC_MAIN > sdl_oneko.c
}

copy_sdl_xbm_helper() {
  cp $SRC_XBM_HELPER .
}

patch_wiiu_header() {
	sed -i 's/.*PATCH_HINT_ExtraIncludes.*/#include <whb\/proc.h>\n#include <sysapp\/launch.h>/'  sdl_oneko.c
}

patch_wiiu_main_game_loop() {
	sed -i 's/.*PATCH_HINT_Main_Game_Loop.*/    while (!quit \&\& WHBProcIsRunning()) { /'  sdl_oneko.c
}

patch_wiiu_sdl_quit() {
	sed -i 's/^.*PATCH_HINT_Sdl_Quit.*/                SYSLaunchMenu();/'  sdl_oneko.c
}

copy_oneko_h
copy_sdl_oneko_c
copy_sdl_xbm_helper
patch_wiiu_header
patch_wiiu_main_game_loop
patch_wiiu_sdl_quit

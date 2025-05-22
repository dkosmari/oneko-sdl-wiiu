#!/bin/bash
# run this before make to copy over patched
# versions of the code, friendly to the WiiU

copy_oneko_nox_h() {
  grep -v '<X11/'  ../oneko.h > oneko_no_x.h
}

copy_oneko_nox_h

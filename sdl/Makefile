# VERY simple Makefile (no dependency tracking)

OUTPUT := oneko-sdl

SOURCES := \
	sdl_oneko.c \
	sdl_xbm_helper.c

OBJECTS := $(SOURCES:.c=.o)


SDL_CFLAGS := $(shell pkg-config sdl2 --cflags)
SDL_LIBS   := $(shell pkg-config sdl2 --libs)

CPPFLAGS := $(SDL_CFLAGS)

LIBS := $(SDL_LIBS) -lm


.PHONY: all clean


all: $(OUTPUT)


clean:
	$(RM) $(OUTPUT)
	$(RM) *.o


$(OUTPUT): $(OBJECTS)
	$(CC) -o $@  $^ $(CFLAGS) $(LDFLAGS) $(LIBS)


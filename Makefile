TITLE_ID = PONG12345 
TARGET   = VitaPong
OBJS     = pong.c
PSVITAIP = 10.0.0.199
LIBS = -lSDL2 -lSceDisplay_stub -lSceGxm_stub -lSceIme_stub -lSceAppUtil_stub -lSceAudio_stub -lSceAudioIn_stub -lSceIofilemgr_stub  -lSceTouch_stub -lSceHid_stub -lSceMotion_stub -lScePower_stub -lSceProcessmgr_stub \
	-lSceSysmodule_stub -lSceCtrl_stub -lScePgf_stub -lScePvf_stub \
	-lSceCommonDialog_stub -lfreetype -lpng -ljpeg -lz -lm -lc -lSceAppMgr_stub



PREFIX  = arm-vita-eabi
CC      = $(PREFIX)-gcc
CFLAGS  = -Wl,-q -Wall -fno-lto
ASFLAGS = $(CFLAGS)

# Link against the locally-built version of libvita2d if possible
LIBS += -L../libvita2d
CFLAGS += -I/opt/vitasdk/arm-vita-eabi/include/SDL2 -I../libvita2d/include -g

all: $(TARGET).vpk

%.vpk: eboot.bin
	vita-mksfoex -s TITLE_ID=$(TITLE_ID) "$(TARGET)" param.sfo
	vita-pack-vpk -s param.sfo -b eboot.bin $@

eboot.bin: $(TARGET).velf
	vita-make-fself -s $< $@

%.velf: %.elf
	vita-elf-create $< $@

$(TARGET).elf: $(OBJS)
	$(CC) $(CFLAGS) $^ $(LIBS) -o $@

%.o: %.png
	$(PREFIX)-ld -r -b binary -o $@ $^

clean:
	@rm -rf $(TARGET).vpk $(TARGET).velf $(TARGET).elf $(OBJS) \
		eboot.bin param.sfo

vpksend: $(TARGET).vpk
	curl -T $(TARGET).vpk ftp://$(PSVITAIP):1337/ux0:/
	@echo "Sent."

send: eboot.bin
	curl -T eboot.bin ftp://$(PSVITAIP):1337/ux0:/app/$(TITLE_ID)/
	@echo "Sent."

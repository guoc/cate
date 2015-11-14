TARGET = iphone:clang:latest

include theos/makefiles/common.mk

TWEAK_NAME = Cate
Cate_FILES = Tweak.xm
Cate_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

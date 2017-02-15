GO_EASY_ON_ME = 1
DEBUG = 0
TARGET = iphone:latest
ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CCRecord
CCRecord_FILES = Tweak.xm
CCRecord_FRAMEWORKS = UIKit
CCRecord_LIBRARIES = MobileGestalt

include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += CCRFS

include $(THEOS_MAKE_PATH)/aggregate.mk
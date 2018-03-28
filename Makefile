include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = EzApt
$(BUNDLE_NAME)_FILES = $(wildcard *.m)
$(BUNDLE_NAME)_INSTALL_PATH = /usr/bin/CCModules/aptme

include $(THEOS_MAKE_PATH)/bundle.mk

after-stage::
	$(FAKEROOT) chmod 4755 $(THEOS_STAGING_DIR)/usr/bin/CCModules/aptme
	$(FAKEROOT) chown 0:0 $(THEOS_STAGING_DIR)/usr/bin/CCModules/aptme
    


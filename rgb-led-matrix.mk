################################################################################
#
# rgb-led-matrix
#
################################################################################

RGB_LED_MATRIX_VERSION     = master
RGB_LED_MATRIX_SITE        = git://github.com/hzeller/rpi-rgb-led-matrix
RGB_LED_MATRIX_SITE_METHOD = git
RGB_LED_MATRIX_INSTALL_TARGET = YES
RGB_LED_MATRIX_DEPENDENCIES = linux

define RGB_LED_MATRIX_BUILD_CMDS
	$(MAKE) AR=$(TARGET_AR) CC=$(TARGET_CC) CXX=$(TARGET_CXX) -C $(@D)
endef

define RGB_LED_MATRIX_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lib/librgbmatrix.so* $(TARGET_DIR)/usr/lib
	$(INSTALL) -D -m 0755 $(@D)/fonts/4x6.bdf $(TARGET_DIR)/etc
endef

$(eval $(generic-package))
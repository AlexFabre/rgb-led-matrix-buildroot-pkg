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
	$(MAKE) $(TARGET_CONFIGURE_OPTS) LD="$(TARGET_LD)" -C $(@D)/lib
endef

define RGB_LED_MATRIX_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/lib/librgbmatrix.so* $(TARGET_DIR)/usr/lib
endef

$(eval $(generic-package))
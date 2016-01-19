################################################################################
#
# glslsandbox-player
#
################################################################################

GLSLSANDBOX_PLAYER_VERSION = bb10291540c570d7c94f34975ca0af9c13d0fa49
GLSLSANDBOX_PLAYER_SITE = https://github.com/jolivain/glslsandbox-player
GLSLSANDBOX_PLAYER_SITE_METHOD = git
GLSLSANDBOX_PLAYER_AUTORECONF = YES
GLSLSANDBOX_PLAYER_DEPENDENCIES = libegl libgles host-pkgconf

ifeq ($(BR2_PACKAGE_PROVIDES_LIBGLES),"imx-gpu-viv")
GLSLSANDBOX_PLAYER_CONF_OPTS = --with-native-gfx=vivfb
else ifeq ($(BR2_PACKAGE_PROVIDES_LIBGLES),"rpi-userland")
GLSLSANDBOX_PLAYER_CONF_OPTS = --with-native-gfx=rpi
else
ifeq ($(BR2_PACKAGE_GLSLSANDBOX_PLAYER),y)
$(error libGLES $(BR2_PACKAGE_PROVIDES_LIBGLES) provider is not supported)
endif
endif

$(eval $(autotools-package))

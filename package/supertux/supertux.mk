################################################################################
#
# supertux
#
################################################################################

SUPERTUX_VERSION = 0.4.0
SUPERTUX_SOURCE = supertux-$(SUPERTUX_VERSION).tar.bz2
SUPERTUX_SITE = https://github.com/SuperTux/supertux/releases/download/v0.4.0

SUPERTUX_LICENSE = GPLv3
SUPERTUX_LICENSE_FILES = LICENSES.txt

SUPERTUX_DEPENDENCIES = boost sdl2 sdl2_image openal libvorbis libcurl physfs

$(eval $(cmake-package))

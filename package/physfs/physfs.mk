################################################################################
#
# physfs
#
################################################################################

PHYSFS_VERSION = 2.0.3
PHYSFS_SOURCE = physfs-$(PHYSFS_VERSION).tar.bz2
PHYSFS_SITE = https://icculus.org/physfs/downloads
PHYSFS_LICENSE = zlib
PHYSFS_LICENSE_FILES = LICENSE.txt

PHYSFS_INSTALL_STAGING = YES

$(eval $(cmake-package))

#
# Copyright (C) 2006-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=micronucleus
PKG_VERSION:=1.11
PKG_RELEASE:=1
PKG_SOURCE=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/micronucleus/micronucleus.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION=v1.11
PKG_SOURCE_SUBDIR=$(PKG_NAME)-$(PKG_VERSION)
PKG_MD5SUM:=57ab2bfb03923e3d612f1925757a558a

include $(INCLUDE_DIR)/package.mk

MAKE_PATH = commandline

define Package/micronucleus
	TITLE:=AtTiny85 USB Bootloader Utilities
	SECTION:=utils
	CATEGORY:=Utilities
	URL:=https://github.com/micronucleus/micronucleus
	DEPENDS:=+libc +libusb-compat
endef

define Package/micronucleus/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_BUILD_DIR)/commandline/micronucleus $(1)/usr/bin/micronucleus
endef

$(eval $(call BuildPackage,micronucleus))

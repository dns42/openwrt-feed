#
# Copyright (C) 2006-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libsbc
PKG_VERSION:=1.2
PKG_RELEASE:=1
PKG_SOURCE:=sbc-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.kernel.org/pub/linux/bluetooth
PKG_MD5SUM:=ec65c444ad4c32aa85702641045b19e9
PKG_BUILD_DIR=$(BUILD_DIR)/sbc-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/libsbc
	TITLE:=Bluetooth Subband Codec (SBC) library
	SECTION:=libs
	CATEGORY:=Libraries
	URL:=http://www.bluez.org/
endef

define Build/Install
	$(call Build/Install/Default)
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/sbc
	$(CP) $(PKG_INSTALL_DIR)/usr/include/sbc $(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsbc.{a,so}* $(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/sbc.pc $(1)/usr/lib/pkgconfig/
endef

define Package/libsbc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libsbc.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libsbc))

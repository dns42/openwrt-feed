#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=invite
PKG_VERSION:=0.2
PKG_SOURCE=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://github.com/dns42/invite.git
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=v0.2
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_MD5SUM:=e80db65834ef4591ead8556b51b530a1

PKG_FIXUP=autoreconf
PKG_INSTALL=1

include $(INCLUDE_DIR)/package.mk

define Package/invite
	TITLE:=Simple SIP INVITE utility
	SECTION:=utils
	CATEGORY:=Utilities
	URL:=https://github.com/dns42/invite
	DEPENDS:=+libc +sofia-sip
endef

define Package/invite/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/invite $(1)/usr/bin/invite
endef

$(eval $(call BuildPackage,invite))

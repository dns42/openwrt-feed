include $(TOPDIR)/rules.mk

PKG_NAME:=dfu-util
PKG_VERSION:=0.9
PKG_SOURCE=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=git://git.code.sf.net/p/dfu-util/dfu-util
PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=v0.9
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_MD5SUM:=e80db65834ef4591ead8556b51b530a1

PKG_FIXUP=autoreconf
PKG_INSTALL=1

include $(INCLUDE_DIR)/package.mk

define Package/dfu-util
	TITLE:=Device Firmware Upgrade Utilities
	SECTION:=utils
	CATEGORY:=Utilities
	URL:=http://dfu-util.sourceforge.net/
	DEPENDS:=+libc +libusb-1.0
endef

define Package/dfu-util/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/dfu-util $(1)/usr/bin/
endef

$(eval $(call BuildPackage,dfu-util))

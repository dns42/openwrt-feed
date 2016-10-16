include $(TOPDIR)/rules.mk

PKG_NAME:=fadecandy
PKG_VERSION:=1.04
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=git://github.com/scanlime/fadecandy
PKG_SOURCE_PROTO:=git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=fcserver-1.04
PKG_MAINTAINER:=Daniel Stodden <daniel.stodden@gmail.com>

include $(INCLUDE_DIR)/package.mk

define Package/fadecandy-server
	TITLE:=FadeCandy Server
	SECTION:=utils
	CATEGORY:=Utilities
	URL:=https://github.com/scanlime/fadecandy
	DEPENDS:=+libpthread +librt +uclibcxx +libstdcpp +libc
endef

define Package/fadecandy-server/description
The Fadecandy Server a background process that handles the USB
communications with one or more FadecandyController boards. You can
send pixel data to a Fadecandy Server over the Open Pixel Control
protocol, or from a web app via WebSockets.
endef

define Build/Compile
	$(MAKE) -C $(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)/server \
		CC=$(TARGET_CC) CXX=$(TARGET_CXX) STRIP_CMD=/bin/true
endef

define Package/fadecandy-server/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/server/fcserver $(1)/usr/bin/

	$(INSTALL_DIR) $(1)/etc
	$(INSTALL_DATA) \
		$(PKG_BUILD_DIR)/examples/config/networked.json \
		$(1)/etc/fcserver.config

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./etc/fcserver.init $(1)/etc/init.d/fcserver
endef

define Package/fadecandy-server/postinst
	/etc/init.d/fcserver enable
endef

$(eval $(call BuildPackage,fadecandy-server))

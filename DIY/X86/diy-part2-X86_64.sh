#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
# sed -i 's/192.168.1.1/7.1.1.1/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
# 修改机器名称
sed -i 's/OpenWrt/OpenWrt-D2550/g' package/base-files/files/bin/config_generate
####### Modify the version number
# sed -i "s/OpenWrt /Fndsz build from Lienol $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/default-settings/files/zzz-default-settings
# zerotier1.8.4
# sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' feeds/packages/net/zerotier/Makefile
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' /openwrt/feeds/packages/net/zerotier/Makefile
####### Modify the version number
#sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
#echo "DISTRIB_DESCRIPTION='ImmortalWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
#sed -i "s/ImmortalWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ ImmortalWrt /g" package/base-files/files/etc/openwrt_release

sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='OpenWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
sed -i "s/OpenWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/base-files/files/etc/openwrt_release

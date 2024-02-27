#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Add additional packages
git clone --depth=1 https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone --depth=1 https://github.com/kenzok8/small.git package/small
git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
rm -rf package/openwrt-packages/luci-app-adguardhome
rm -rf package/openwrt-packages/adguardhome
rm -rf package/openwrt-packages/luci-app-ddns-go
rm -rf package/openwrt-packages/ddns-go
# git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2.git package/openwrt-passwall2
# git clone --depth=1 -b luci https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
# git clone --depth=1 https://github.com/Leo-Jo-My/luci-theme-opentomcat.git package/luci-theme-opentomcat

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

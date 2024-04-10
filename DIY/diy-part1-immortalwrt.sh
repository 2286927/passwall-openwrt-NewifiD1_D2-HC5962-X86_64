#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/3.1.1.1/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
#echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
###### Modify hostname
#sed -i 's/OpenWrt/NewifiD1/g' package/base-files/files/bin/config_generate
####### Modify the version number
#sed -i "s/OpenWrt /Fndsz build from Lede $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
# mkdir package/base-files/files/config
# echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
# rm -rf package/lean/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small.git package/small
#rm -rf package/openwrt-packages/luci-app-adguardhome
rm -rf package/openwrt-packages/adguardhome
rm -rf package/openwrt-packages/luci-app-ddns-go
rm -rf package/openwrt-packages/ddns-go
rm -rf feeds/packages/net/adguardhome
rm -rf package/small/xray-core
#git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
#git clone https://github.com/kenzok8/small-package package/small-package
#git clone https://github.com/bootli/luci-app-turboacc.git package/small-package/luci-app-turboacc
#git clone https://github.com/deplives/luci-app-turboacc.git package/small-package/luci-app-turboacc
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-turboacc package/small-package/luci-app-turboacc
#svn export https://github.com/kiddin9/openwrt-packages/trunk/luci-app-rclone package/small-package/luci-app-rclone
#git clone https://github.com/bootli/luci-app-ddns-go.git package/small-package/ddns-go
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
# git clone https://github.com/garypang13/smartdns-le package/smartdns-le
# wget -P package/lua-maxminddb https://raw.githubusercontent.com/garypang13/openwrt-packages/master/lua-maxminddb/Makefile
# wget -P package/redsocks2 https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/redsocks2/Makefile
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

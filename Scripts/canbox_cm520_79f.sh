#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/4.1.1.1/g' package/base-files/files/bin/config_generate
# 修改机器名称
sed -i 's/OpenWrt/CM520-97F/g' package/base-files/files/bin/config_generate
# 修改初始密码名称
# sed -i 's/password/123450/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
#echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
# mkdir package/base-files/files/config
# echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
# rm -rf package/lean/smartdns
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
git clone https://github.com/kenzok8/small.git package/small
#git clone https://github.com/lisaac/luci-app-dockerman.git
#echo 'src-git kenzok8 https://github.com/kenzok8/openwrt-packages >>feeds.conf.default
#echo 'src-git kenzok8 https://github.com/kenzok8/small >>feeds.conf.default
#sed -i '$a src-git dockerman https://github.com/lisaac/luci-app-dockerman' feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
# git clone https://github.com/garypang13/smartdns-le package/smartdns-le
# wget -P package/lua-maxminddb https://raw.githubusercontent.com/garypang13/openwrt-packages/master/lua-maxminddb/Makefile
# wget -P package/redsocks2 https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/redsocks2/Makefile
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}
#Del package
rm -rf package/lean/qBittorrent
rm -rf package/lean/qt5
rm -rf package/diy/OpenAppFilter
rm -rf package/lean/luci-app-filetransfer
rm -rf package/lean/k3screenctrl
rm -rf package/diy/luci-app-dockerman
rm -rf package/lean/k3-brcmfmac4366c-firmware/files/lib/firmware/brcm/brcmfmac4366c-pcie.bin

# Install to emmc
#git clone https://github.com/tuanqing/install-program package/install-program

# Theme
#git clone https://github.com/jerrykuku/luci-theme-argon.git package/custom/luci-theme-argon-19.07
#rm -rf package/custom/luci-theme-argon-19.07/luasrc/view/themes/argon/footer.htm
#rm -rf package/custom/luci-theme-argon-19.07/luasrc/view/themes/argon/header.htm
#svn export https://github.com/trombonist852/custom/trunk/footer.htm package/custom/luci-theme-argon-19.07/luasrc/view/themes/argon/
#svn export https://github.com/trombonist852/custom/trunk/header.htm package/custom/luci-theme-argon-19.07/luasrc/view/themes/argon/

####### Modify the version number
#sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
#echo "DISTRIB_DESCRIPTION='ImmortalWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
#sed -i "s/ImmortalWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ ImmortalWrt /g" package/base-files/files/etc/openwrt_release

sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='OpenWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
sed -i "s/OpenWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/base-files/files/etc/openwrt_release

#Add Package

#Add files
#mkdir package/base-files/files/etc/modules.d
#svn export https://github.com/maxlicheng/phicomm-n1-wireless/trunk/wireless_enable package/base-files/files/etc/modules.d/
#svn checkout https://github.com/openwrt/luci/trunk/applications/luci-app-dockerman package/diy/luci-app-dockerman

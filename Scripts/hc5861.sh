#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/172.16.3.1/g' package/base-files/files/bin/config_generate
# 修改机器名称
sed -i 's/OpenWrt/HiWiFi-HC5861/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/HiWiFi-HC5861/g' package/base-files/files/bin/config_generate
####### Modify the version number
sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='OpenWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
sed -i "s/OpenWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/base-files/files/etc/openwrt_release
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

# Timezone
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
sed -i 's/time1.apple.com/ntp.ntsc.ac.cn/g' package/base-files/files/bin/config_generate
sed -i 's/time1.google.com/ntp.tencent.com/g' package/base-files/files/bin/config_generate
sed -i 's/time.cloudflare.com/ntp1.aliyun.com/g' package/base-files/files/bin/config_generate
##
# mkdir package/base-files/files/config
# echo 0xDEADBEEF > package/base-files/files/config/google_fu_mode
# rm -rf package/lean/smartdns
rm -rf package/diy/luci-app-dockerman
# git clone -b lede https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
# git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
# git clone https://github.com/kenzok8/small.git package/small
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
# git clone https://github.com/garypang13/smartdns-le package/smartdns-le
# wget -P package/lua-maxminddb https://raw.githubusercontent.com/garypang13/openwrt-packages/master/lua-maxminddb/Makefile
# wget -P package/redsocks2 https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/redsocks2/Makefile
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/172.16.99.1/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
# 修改机器名称
sed -i 's/OpenWrt/OpenWrt-D2550/g' package/base-files/files/bin/config_generate
####### Modify the version number
sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='ImmortalWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
sed -i "s/ImmortalWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ ImmortalWrt /g" package/base-files/files/etc/openwrt_release
##  sed -i 's/os.date()/os.date("%Y-%m-%d %H:%M:%S")/g' package/lean/autocore/files/arm/index.htm
##  
##  sed -i '741a\
##                  <tr><td width="33%">&#32534;&#35793;&#32773;&#58;&#32;&#27954;&#183;&#67;&#121;</td><td><a href="https://github.com/2286927/Build_CM520_OpenWrt_AdGuardHome" style="color: black;" target="_blank">&#32534;&#35793;&#22320;&#22336;</a></td></tr>\
##                  <tr><td width="33%">&#28304;&#30721;&#58;&#32;&#73;&#109;&#109;&#111;&#114;&#116;&#97;&#108;&#87;&#114;&#116;</td><td><a href="https://github.com/immortalwrt/immortalwrt" style="color: black;" target="_blank">&#28304;&#30721;&#38142;&#25509;</a></td></tr>
##  ' package/lean/autocore/files/arm/index.htm
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf

# cpufreq
sed -i 's/LUCI_DEPENDS.*/LUCI_DEPENDS:=\@\(arm\|\|aarch64\)/g' feeds/luci/applications/luci-app-cpufreq/Makefile
sed -i 's/services/system/g' feeds/luci/applications/luci-app-cpufreq/luasrc/controller/cpufreq.lua

# Timezone
sed -i "s/'UTC'/'CST-8'\n   set system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
sed -i 's/time1\.apple\.com/ntp\.ntsc\.ac\.cn/g' package/base-files/files/bin/config_generate
sed -i 's/time1\.google\.com/ntp\.tencent\.com/g' package/base-files/files/bin/config_generate
sed -i 's/time\.cloudflare\.com/ntp1\.aliyun\.com/g' package/base-files/files/bin/config_generate

# Insert command to delete password
#sed -i '2a\echo \"root\:123450\" | chpasswd' package/base-files/files/etc/rc.local

# Add/Remove Plugins
#rm -rf package/feeds/packages/acl

#
####################################
# firewall3/4 的luci-app-socat
####################################
#
#svn export --force https://github.com/chenmozhijin/luci-app-socat/trunk/luci-app-socat feeds/luci/applications/luci-app-socat
#
####################################
# firewall3/4 的luci-app-socat of End
####################################
#
#svn export --force https://github.com/kiddin9/openwrt-packages/trunk/luci-app-rclone feeds/luci/applications/luci-app-rclone
#
# zerotier1.8.4
# sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' feeds/packages/net/zerotier/Makefile
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' /openwrt/feeds/packages/net/zerotier/Makefile
# dockerd去版本验证
sed -i 's/^\s*$[(]call\sEnsureVendoredVersion/#&/' feeds/packages/utils/dockerd/Makefile

# containerd Has验证
sed -i 's/PKG_HASH:=.*/PKG_HASH:=skip/g' feeds/packages/utils/containerd/Makefile

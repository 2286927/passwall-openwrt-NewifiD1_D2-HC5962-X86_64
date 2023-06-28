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
#git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
#git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go
#git clone https://github.com/kenzok8/small-package package/small-package
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
# git clone https://github.com/garypang13/luci-app-bypass.git package/luci-app-bypass
# git clone https://github.com/garypang13/smartdns-le package/smartdns-le
# wget -P package/lua-maxminddb https://raw.githubusercontent.com/garypang13/openwrt-packages/master/lua-maxminddb/Makefile
# wget -P package/redsocks2 https://raw.githubusercontent.com/coolsnowwolf/lede/master/package/lean/redsocks2/Makefile
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-redir/shadowsocksr-libev-alt/g' {}
# find package/*/ feeds/*/ -maxdepth 2 -path "*luci-app-bypass/Makefile" | xargs -i sed -i 's/shadowsocksr-libev-ssr-server/shadowsocksr-libev-server/g' {}

####################################
### Turbo ACC-[openwrt(22.03/23.05)]
####################################
#mkdir -p turboacc_tmp ./package/turboacc
#cd turboacc_tmp 
#git clone https://github.com/chenmozhijin/turboacc -b package
#cd ../package/turboacc
#git clone https://github.com/fullcone-nat-nftables/nft-fullcone
#git clone https://github.com/chenmozhijin/turboacc
#mv ./turboacc/luci-app-turboacc ./luci-app-turboacc
#rm -rf ./turboacc
#cd ../..
#cp turboacc_tmp/turboacc/hack-5.15/952-add-net-conntrack-events-support-multiple-registrant.patch ./target/linux/generic/hack-5.15
#cp turboacc_tmp/turboacc/hack-5.15/953-net-patch-linux-kernel-to-support-shortcut-fe.patch ./target/linux/generic/hack-5.15
#rm -rf ./package/libs/libnftnl ./package/network/config/firewall4 ./package/network/utils/nftables
#mkdir -p ./package/network/config/firewall4 ./package/libs/libnftnl ./package/network/utils/nftables
#cp -r ./turboacc_tmp/turboacc/shortcut-fe ./package/turboacc
#cp -RT ./turboacc_tmp/turboacc/firewall4-04a06bd70b9808b14444cae81a2faba4708ee231/firewall4 ./package/network/config/firewall4
#cp -RT ./turboacc_tmp/turboacc/libnftnl-1.2.5/libnftnl ./package/libs/libnftnl
#cp -RT ./turboacc_tmp/turboacc/nftables-1.0.7/nftables ./package/network/utils/nftables
#rm -rf turboacc_tmp
####################################
### Turbo ACC of End
####################################

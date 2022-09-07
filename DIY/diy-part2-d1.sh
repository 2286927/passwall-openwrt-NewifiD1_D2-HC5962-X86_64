# Modify default IP
sed -i 's/192.168.1.1/3.1.1.1/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
###### Modify hostname
sed -i 's/OpenWrt/NewifiD1/g' package/base-files/files/bin/config_generate
####### Modify the version number
sed -i "s/OpenWrt /Fndsz build from Lede $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings
# zerotier1.8.4
sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' feeds/packages/net/zerotier/Makefile
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' /openwrt/feeds/packages/net/zerotier/Makefile
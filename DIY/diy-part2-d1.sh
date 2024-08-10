# Modify default IP
sed -i 's/192.168.1.1/10.1.1.1/g' package/base-files/files/bin/config_generate
# DNS Cache FixUP
echo -e "#max-ttl=600\nneg-ttl=600\nmin-cache-ttl=3600" >> package/network/services/dnsmasq/files/dnsmasq.conf
###### Modify hostname
sed -i 's/OpenWrt/Newifi-D1/g' package/base-files/files/bin/config_generate
sed -i 's/immortalwrt/Newifi-D1/g' package/base-files/files/bin/config_generate
####### Modify the Lienol version number
#sed -i "s/OpenWrt /洲•Cy build from Lienol $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/default-settings/files/zzz-default-settings
####### Modify the version number
#sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
#echo "DISTRIB_DESCRIPTION='ImmortalWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
#sed -i "s/ImmortalWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ ImmortalWrt /g" package/base-files/files/etc/openwrt_release

sed -i '/DISTRIB_DESCRIPTION/d' package/base-files/files/etc/openwrt_release
echo "DISTRIB_DESCRIPTION='OpenWrt $('%V')'" >> package/base-files/files/etc/openwrt_release
sed -i "s/OpenWrt /\洲\·\C\y \build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/base-files/files/etc/openwrt_release
# 修改连接数
sed -i 's/net.netfilter.nf_conntrack_max=.*/net.netfilter.nf_conntrack_max=165535/g' package/kernel/linux/files/sysctl-nf-conntrack.conf
# 修改NTP时间服务器
sed -i 's/0.openwrt.pool.ntp.org/ntp.tencent.com/g' package/base-files/files/bin/config_generate
# zerotier1.8.4
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' feeds/packages/net/zerotier/Makefile
#sed -i 's/PKG_VERSION:=.*/PKG_VERSION:=1.8.4/g' /openwrt/feeds/packages/net/zerotier/Makefile
# rm -rf package/small/dns2tcp

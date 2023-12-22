#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate

#git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
#git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
#git clone https://github.com/chinaboy2345/luci-app-ramfree.git package/luci-app-ramfree
#git clone https://github.com/sirpdboy/luci-app-ddns-go.git package/ddns-go	
#mkdir -p turboacc_tmp ./package/turboacc
#cd turboacc_tmp 
#git clone https://github.com/chenmozhijin/turboacc -b package
#cd ../package/turboacc
#git clone https://github.com/fullcone-nat-nftables/nft-fullcone
#git clone https://github.com/chenmozhijin/turboacc
#mv ./turboacc/luci-app-turboacc ./luci-app-turboacc
#rm -rf ./turboacc
#cd ../..
#cp -f turboacc_tmp/turboacc/hack-5.15/952-add-net-conntrack-events-support-multiple-registrant.patch ./target/linux/generic/hack-5.15/952-add-net-conntrack-events-support-multiple-registrant.patch
#cp -f turboacc_tmp/turboacc/hack-5.15/953-net-patch-linux-kernel-to-support-shortcut-fe.patch ./target/linux/generic/hack-5.15/953-net-patch-linux-kernel-to-support-shortcut-fe.patch
#cp -f turboacc_tmp/turboacc/pending-5.15/613-netfilter_optional_tcp_window_check.patch ./target/linux/generic/pending-5.15/613-netfilter_optional_tcp_window_check.patch
#rm -rf ./package/libs/libnftnl ./package/network/config/firewall4 ./package/network/utils/nftables
#mkdir -p ./package/network/config/firewall4 ./package/libs/libnftnl ./package/network/utils/nftables
#cp -r ./turboacc_tmp/turboacc/shortcut-fe ./package/turboacc
#cp -RT ./turboacc_tmp/turboacc/firewall4-$(grep -o 'FIREWALL4_VERSION=.*' ./turboacc_tmp/turboacc/version | cut -d '=' -f 2)/firewall4 ./package/network/config/firewall4
#cp -RT ./turboacc_tmp/turboacc/libnftnl-$(grep -o 'LIBNFTNL_VERSION=.*' ./turboacc_tmp/turboacc/version | cut -d '=' -f 2)/libnftnl ./package/libs/libnftnl
#cp -RT ./turboacc_tmp/turboacc/nftables-$(grep -o 'NFTABLES_VERSION=.*' ./turboacc_tmp/turboacc/version | cut -d '=' -f 2)/nftables ./package/network/utils/nftables
#rm -rf turboacc_tmp
#echo "# CONFIG_NF_CONNTRACK_CHAIN_EVENTS is not set" >> target/linux/generic/config-5.15
#echo "# CONFIG_SHORTCUT_FE is not set" >> target/linux/generic/config-5.15
#./scripts/feeds update -a
#./scripts/feeds install -a

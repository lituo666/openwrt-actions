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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

git clone --depth=1 https://github.com/fw876/helloworld.git ./package/helloworld
git clone --depth=1 https://github.com/vernesong/OpenClash.git ./package/luci-app-openclash
git clone --depth=1 https://github.com/rufengsuixing/luci-app-adguardhome.git ./package/luci-app-adguardhome
git clone --depth=1 https://github.com/destan19/OpenAppFilter.git ./package/OpenAppFilter
git clone --depth=1 https://github.com/sbwml/luci-app-alist.git ./package/alist
git clone --depth=1 https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic

mkdir -p package/luci-app-openclash/core-lateset/tmp
mkdir -p package/luci-app-openclash/luci-app-openclash/root/etc/openclash/core
tar -zxf package/luci-app-openclash/core-lateset/dev/clash-linux-arm64.tar.gz -C package/luci-app-openclash/luci-app-openclash/root/etc/openclash/core
tar -zxf package/luci-app-openclash/core-lateset/meta/clash-linux-arm64.tar.gz -C package/luci-app-openclash/core-lateset/tmp
mv package/luci-app-openclash/core-lateset/tmp/* package/luci-app-openclash/luci-app-openclash/root/etc/openclash/core/clash_meta
cp package/luci-app-openclash/core-lateset/premium/clash-linux-arm64-*.gz package/luci-app-openclash/core-lateset/tmp
gzip -d package/luci-app-openclash/core-lateset/tmp/*
chmod +x package/luci-app-openclash/core-lateset/tmp/*
mv package/luci-app-openclash/core-lateset/tmp/* package/luci-app-openclash/luci-app-openclash/root/etc/openclash/core/clash_tun
echo "==========openclash的内核目录core如下=========="
ls -al package/luci-app-openclash/luci-app-openclash/root/etc/openclash/core/
echo "============================================"

echo "diy-part2.sh运行完成"

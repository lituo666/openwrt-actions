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
git clone --depth=1 https://github.com/sbwml/luci-app-alist ./package/alist

echo "运行diy-part2.sh"
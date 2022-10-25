#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

#vlmcsd
git clone https://github.com/cokebar/openwrt-vlmcsd.git ./package/openwrt-vlmcsd
git clone https://github.com/cokebar/luci-app-vlmcsd.git ./package/luci-app-vlmcsd

#xray
git clone https://github.com/yichya/openwrt-xray.git ./package/openwrt-xray
git clone https://github.com/yichya/luci-app-xray.git ./package/luci-app-xray
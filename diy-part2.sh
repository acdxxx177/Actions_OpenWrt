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

# 更改路由IP地址
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
# 替换系统名字
sed -i "s/hostname='OpenWrt'/hostname='Aacxxx177_OpenWrt'/g" package/base-files/files/bin/config_generate
# 替换时区
sed -i "s/timezone='UTC'/timezone='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate
# 替换ntp服务器
sed -i 's/0.openwrt.pool.ntp.org/ntp.aliyun.com/g' package/base-files/files/bin/config_generate
sed -i 's/1.openwrt.pool.ntp.org/ntp1.aliyun.com/g' package/base-files/files/bin/config_generate
sed -i 's/2.openwrt.pool.ntp.org/ntp2.aliyun.com/g' package/base-files/files/bin/config_generate
sed -i 's/3.openwrt.pool.ntp.org/ntp3.aliyun.com/g' package/base-files/files/bin/config_generate

# 更改DHCP的传参方式,用于IPTV配置
sed -i 's/${vendorid:+-V "$vendorid"}/-V ""/g' package/network/config/netifd/files/lib/netifd/proto/dhcp.sh

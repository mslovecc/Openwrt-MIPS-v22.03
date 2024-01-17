#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: Custom.sh
# Description: OpenWrt Custom script
#
# Vlmcsd auto activation enabled
echo srv-host=_vlmcs._tcp.lan,OpenWrt.lan,1688,0,100 >> /etc/dnsmasq.conf

# 解决Kmod相关软件包无法安装问题，刷入系统后使/usr/lib/opkg/status中的hash和安装kmod软件包时出错的hash一致。
sed -i 's/f0c858abcfdd9b33947cc7c3f4ee9521/db5fae317c7dec03ba9a83c32ababa81/g' /usr/lib/opkg/status

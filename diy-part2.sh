#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# Add a feeds
git clone https://github.com/kenzok8/openwrt-packages package/openwrt-packages
git clone https://github.com/kenzok8/small package/small

#Add a feeds
git clone https://github.com/lwz322/luci-app-k3screenctrl package/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build package/k3screenctrl_build



#update & install
./scripts/feeds update -a
./scripts/feeds install -a

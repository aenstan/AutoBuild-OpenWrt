#!/bin/bash
#diy config
sed -i 's/192.168.1.1/192.168.0.1/g' openwrt/package/base-files/files/bin/config_generate
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/LuttyYang/luci-theme-material.git package/luci-theme-material
git clone https://github.com/aenstan/openwrt-subconverter.git package/openwrt-subconverter
./scripts/feeds update -a
./scripts/feeds install -a

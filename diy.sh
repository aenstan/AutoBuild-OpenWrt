#!/bin/bash
#diy config
sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone -b master https://github.com/vernesong/OpenClash.git package/OpenClash
#git clone https://github.com/aenstan/openwrt-subconverter.git package/openwrt-subconverter
#git clone https://github.com/siropboy/mypackages.git package/mypackages
./scripts/feeds update -a
./scripts/feeds install -a

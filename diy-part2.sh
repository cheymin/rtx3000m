#!/bin/bash

sed -i 's/192.168.1.1/192.168.6.1/g' package/base-files/files/bin/config_generate
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
sed -i 's/zh_cn/auto/g' package/feeds/luci/luci-base/root/etc/config/luci

rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/kenzo/luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon

sed -i 's/Bootstrap/Argon/g' feeds/luci/collections/luci/Makefile

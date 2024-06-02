#!/bin/bash
#========================================================================================================================
# https://github.com/ophub/amlogic-s9xxx-openwrt
# Description: Automatically Build OpenWrt
# Function: Diy script (Before Update feeds, Modify the default IP, hostname, theme, add/remove software packages, etc.)
# Source code repository: https://github.com/openwrt/openwrt / Branch: main
#========================================================================================================================

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default

# other
# rm -rf package/utils/{ucode,fbtest}


sudo apt-get update
sudo apt-get install -y libpcre3 libpcre3-dev

# Add a feed source
#echo 'src-git openwrtpackages https://github.com/openwrt/packages' >>feeds.conf.default

# 生成feeds.conf.default
cat <<EOF > feeds.conf.default
#src-git packages https://github.com/openwrt/openwrt.git
src-git packages https://github.com/openwrt/packages.git
src-git luci https://github.com/openwrt/luci.git
src-git routing https://github.com/openwrt-routing/packages.git
src-git telephony https://github.com/openwrt/telephony.git
EOF
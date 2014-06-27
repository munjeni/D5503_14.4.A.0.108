#!/system/bin/sh
#
# Copyright (C) 2012 Sony Mobile Communications AB.
# All rights, including trade secret rights, reserved.
#

TAG="netconfig"
COMMENT="#"

MSS_MIN=$(cat /proc/sys/net/ipv4/route/min_adv_mss)
MSS_MIN=${MSS_MIN:-256}

MSS_RMNET=$(/system/bin/getprop net.tcp.mss.rmnet)
MSS_RMNET=${MSS_RMNET:-$MSS_MIN}

MSS_WLAN=$(/system/bin/getprop net.tcp.mss.wlan)
MSS_WLAN=${MSS_WLAN:-$MSS_MIN}

#Update RMNET MSS
if [ $MSS_RMNET -gt $MSS_MIN ] ; then
  /system/bin/iptables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o rmnet+ -j TCPMSS --set-mss $MSS_RMNET
  /system/bin/ip6tables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o rmnet+ -j TCPMSS --set-mss $MSS_RMNET
fi

#Update WLAN MSS
if [ $MSS_WLAN -gt $MSS_MIN ] ; then
  /system/bin/iptables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o wlan0 -j TCPMSS --set-mss $MSS_WLAN
  /system/bin/ip6tables -t mangle -A POSTROUTING -p tcp --tcp-flags SYN,RST SYN -o wlan0 -j TCPMSS --set-mss $MSS_WLAN
fi

/system/bin/log -t $TAG -p d "ipt"

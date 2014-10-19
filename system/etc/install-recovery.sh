#!/system/bin/sh
/system/xbin/su --daemon &
insmod /system/lib/modules/cpufreq_lionheart.ko
insmod /system/lib/modules/usbserial.ko
insmod /system/lib/modules/ftdi_sio.ko

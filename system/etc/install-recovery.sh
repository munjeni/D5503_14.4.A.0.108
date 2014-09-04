#!/system/bin/sh
/system/xbin/su --daemon &
insmod /system/lib/modules/cpufreq_lionheart.ko
insmod /system/lib/modules/cpufreq_smartass2.ko
insmod /system/lib/modules/cpufreq_lagfree.ko

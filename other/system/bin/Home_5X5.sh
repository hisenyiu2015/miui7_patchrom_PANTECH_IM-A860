#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

cp -p -a -R  /system/xbin/Home/Home_5X5/* /system/media/theme/default/com.miui.home

chmod -R 0644 /system/media/theme/default/com.miui.home

sleep 1

busybox killall com.miui.home


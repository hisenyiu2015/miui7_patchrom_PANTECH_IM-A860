#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

cp -p -a -R  /system/xbin/Notice/Notice_3X4/* /system/media/theme/default/framework-miui-res

busybox chmod -R 0644 /system/media/theme/default/framework-miui-res

sleep 1

reboot
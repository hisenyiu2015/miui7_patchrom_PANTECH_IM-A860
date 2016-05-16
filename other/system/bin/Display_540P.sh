#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

wm size 540x960

busybox sed -i 's/ro.sf.lcd_density=//' /system/build.prop

echo "ro.sf.lcd_density=240"  >> /system/build.prop

sleep 1

reboot
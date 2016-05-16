#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

wm size 720x1280

busybox sed -i 's/ro.sf.lcd_density=//' /system/build.prop

echo "ro.sf.lcd_density=320"  >> /system/build.prop

sleep 1

reboot
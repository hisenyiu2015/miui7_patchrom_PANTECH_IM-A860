#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

if [ -f "/system/framework/framework-res.bak2" ]; then
mv /system/framework/framework-res.bak2 /system/framework/framework-res.apk
else
    mount -o rw,remount /system
fi

sleep 1

reboot

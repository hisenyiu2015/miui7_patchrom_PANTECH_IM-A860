#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

if [ -f "/system/framework/framework-res.bak2" ]; then
    mount -o rw,remount /system
else
    cp /system/framework/framework-res.apk /system/framework/framework-res.zip
    cd /system/xbin/Framework/$f/
    /system/bin/zip -r /system/framework/framework-res.zip *
    mv /system/framework/framework-res.zip /system/framework/framework-res.bak1
fi

if [ -f "/system/framework/framework-res.bak1" ]; then
    mv /system/framework/framework-res.apk /system/framework/framework-res.bak2
else
    mount -o rw,remount /system
fi

if [ -f "/system/framework/framework-res.bak1" ]; then
    mv /system/framework/framework-res.bak1 /system/framework/framework-res.apk
else
    mount -o rw,remount /system
fi

chmod -R 0644 /system/framework/framework-res.apk

sleep 1

reboot

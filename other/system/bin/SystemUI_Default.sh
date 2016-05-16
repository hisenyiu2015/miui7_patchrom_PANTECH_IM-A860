#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

if [ -f "/system/priv-app/MiuiSystemUI.bak2" ]; then
mv /system/priv-app/MiuiSystemUI.bak2 /system/priv-app/MiuiSystemUI.apk
else
    mount -o rw,remount /system
fi

cp -p -a -R  /system/xbin/SystemUI/0/* /system/media/theme/default/com.android.systemui

chmod -R 0644 /system/media/theme/default/com.android.systemui

sleep 1

busybox killall com.android.systemui

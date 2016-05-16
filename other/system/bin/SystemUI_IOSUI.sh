#!/system/bin/sh
export PATH=/system/bin:$PATH

mount -o rw,remount /system

if [ -f "/system/priv-app/MiuiSystemUI.bak2" ]; then
    mount -o rw,remount /system
else
    cp /system/priv-app/MiuiSystemUI.apk /system/priv-app/MiuiSystemUI.zip
    cd /system/xbin/Statusbar/$f/
    /system/bin/zip -r /system/priv-app/MiuiSystemUI.zip *
    mv /system/priv-app/MiuiSystemUI.zip /system/priv-app/MiuiSystemUI.bak1
fi

if [ -f "/system/priv-app/MiuiSystemUI.bak1" ]; then
    mv /system/priv-app/MiuiSystemUI.apk /system/priv-app/MiuiSystemUI.bak2
else
    mount -o rw,remount /system
fi

if [ -f "/system/priv-app/MiuiSystemUI.bak1" ]; then
    mv /system/priv-app/MiuiSystemUI.bak1 /system/priv-app/MiuiSystemUI.apk
else
    mount -o rw,remount /system
fi

cp -p -a -R  /system/xbin/SystemUI/1/* /system/media/theme/default/com.android.systemui

chmod -R 0644 /system/media/theme/default/com.android.systemui

chmod -R 0644 /system/priv-app/MiuiSystemUI.apk

sleep 1

busybox killall com.android.systemui

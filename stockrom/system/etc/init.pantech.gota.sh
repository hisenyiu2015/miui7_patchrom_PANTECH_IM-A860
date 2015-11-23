
PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH


mkdir /data/md5

touch /data/md5/aboot
touch /data/md5/boot
touch /data/md5/recovery
touch /data/md5/rpm
touch /data/md5/sbl1
touch /data/md5/sbl2
touch /data/md5/sbl3
touch /data/md5/tz

chmod 664  /data/md5/aboot
chmod 664  /data/md5/boot
chmod 664  /data/md5/recovery
chmod 664  /data/md5/rpm
chmod 664  /data/md5/sbl1
chmod 664  /data/md5/sbl2
chmod 664  /data/md5/sbl3
chmod 664  /data/md5/tz


ln -s /data/md5/boot /system/etc/boot
ln -s /data/md5/recovery /system/etc/recovery
ln -s /data/md5/rpm /system/etc/rpm
ln -s /data/md5/sbl1 /system/etc/sbl1
ln -s /data/md5/sbl2 /system/etc/sbl2
ln -s /data/md5/sbl3 /system/etc/sbl3
ln -s /data/md5/tz /system/etc/tz
ln -s /data/md5/aboot /system/etc/aboot

/system/bin/restorecon -r /system

sync

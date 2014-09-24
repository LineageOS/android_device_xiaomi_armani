#!/system/bin/sh

PATH=/sbin:/system/sbin:/system/bin:/system/xbin
export PATH

mount_needed=false;

if [ ! -f /system/etc/boot_fixup ];then
  mount -o rw,remount,barrier=1 /system
  mount_needed=true;
fi

# Create wifi module symlink
rm  /system/lib/modules/wlan.ko
ln -s /system/lib/modules/pronto/pronto_wlan.ko /system/lib/modules/wlan.ko

touch /system/etc/boot_fixup

if $mount_needed ;then
  mount -o ro,remount,barrier=1 /system
fi

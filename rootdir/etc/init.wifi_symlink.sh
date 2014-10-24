#!/system/bin/sh

if [ ! -f /system/lib/modules/wlan.ko ]; then
  /system/bin/mount -o rw,remount,barrier=1 /system
  /system/bin/ln -s /system/lib/modules/pronto/pronto_wlan.ko /system/lib/modules/wlan.ko
  /system/bin/mount -o ro,remount,barrier=1 /system
fi

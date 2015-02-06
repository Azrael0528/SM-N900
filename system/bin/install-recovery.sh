#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p10:8060928:dd19774ae624ca439a441d909bb3ab7cc60d6b8f; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p9:7630848:c99366c8a9bf6d24fba9274ff9af8e97cbfa895b EMMC:/dev/block/mmcblk0p10 dd19774ae624ca439a441d909bb3ab7cc60d6b8f 8060928 c99366c8a9bf6d24fba9274ff9af8e97cbfa895b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

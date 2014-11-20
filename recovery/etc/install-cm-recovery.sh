#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p6:5890048:528e0a94ce1a3b199874b26f16caebc96f214482; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:5287936:460173841c31ec5e2a4757b8f539bee0394a4367 EMMC:/dev/block/mmcblk0p6 528e0a94ce1a3b199874b26f16caebc96f214482 5890048 460173841c31ec5e2a4757b8f539bee0394a4367:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

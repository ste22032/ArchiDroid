#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/mmcblk0p6:5857280:33d30ac0f4ec7d9c17530ec18b63525c24e2d0e9; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/mmcblk0p5:5255168:3b7ee7d3d9a39c7025fd1c0a27176a124f5448c2 EMMC:/dev/block/mmcblk0p6 33d30ac0f4ec7d9c17530ec18b63525c24e2d0e9 5857280 3b7ee7d3d9a39c7025fd1c0a27176a124f5448c2:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

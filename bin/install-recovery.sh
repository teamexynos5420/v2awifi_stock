#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7624704:a5ff6749517e32b13f3a016e54510670b846a383; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:6959104:7f7c9fc45f96b1d54c0c6fe517c5afbf4e08314a EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY a5ff6749517e32b13f3a016e54510670b846a383 7624704 7f7c9fc45f96b1d54c0c6fe517c5afbf4e08314a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

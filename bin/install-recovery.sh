#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7602176:7288cb35bb56a6be290bbec9846c006a2e7c58d3; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:6938624:aa1d56993818be23dcc8f0afdf509223b7952f2c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 7288cb35bb56a6be290bbec9846c006a2e7c58d3 7602176 aa1d56993818be23dcc8f0afdf509223b7952f2c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi

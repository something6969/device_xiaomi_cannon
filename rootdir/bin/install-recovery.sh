#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery:134217728:60e091d8d8dae212b20667c8332fe5e9412c58bf; then
  applypatch  \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):67108864:0ca9676155f3261b5d2774e0e0fcc44ea48dda7b \
          --target EMMC:/dev/block/by-name/recovery:134217728:60e091d8d8dae212b20667c8332fe5e9412c58bf && \
      log -t recovery "Installing new recovery image: succeeded" && \
        echo "Installing new recovery image: succeeded" > /cache/recovery/last_install_recovery_status || \
      (log -t recovery "Installing new recovery image: failed" && \
        echo "Installing new recovery image: failed" > /cache/recovery/last_install_recovery_status)
else
  log -t recovery "Recovery image already installed" && \
  echo "Recovery image already installed" > /cache/recovery/last_install_recovery_status
fi

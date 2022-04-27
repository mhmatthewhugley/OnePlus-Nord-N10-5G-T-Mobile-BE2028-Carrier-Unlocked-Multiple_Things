#!/bin/bash
./adb reboot-bootloader
./fastboot -w
./fastboot flash dtbo ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/dtbo.img
./fastboot set_active a
./fastboot flash modem_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash boot_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash recovery_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/recovery.img
./fastboot flash vbmeta_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vbmeta.img
./fastboot flash vbmeta_system_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vbmeta_system.img
sleep 10
./fastboot reboot-bootloader
./fastboot set_active b
./fastboot flash modem_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash boot_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash recovery_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/recovery.img
./fastboot flash vbmeta_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vbmeta.img
./fastboot flash vbmeta_system_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vbmeta_system.img
sleep 10
fastboot reboot-bootloader
sleep 10
./fastboot reboot fastboot
./fastboot flash  abl_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/abl.img
./fastboot flash  abl_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/abl.img
./fastboot flash  aop_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/aop.img
./fastboot flash  aop_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/aop.img
./fastboot flash  bluetooth_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/bluetooth.img
./fastboot flash  bluetooth_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/bluetooth.img
./fastboot flash  boot_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash  boot_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash  devcfg_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/devcfg.img
./fastboot flash  devcfg_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/devcfg.img
./fastboot flash  dsp_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/dsp.img
./fastboot flash  dsp_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/dsp.img
./fastboot flash dtbo_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/dtbo.img
./fastboot flash dtbo_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/dtbo.img
./fastboot flash  featenabler_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/featenabler.img
./fastboot flash  featenabler_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/featenabler.img
./fastboot flash  hyp_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/hyp.img
./fastboot flash  hyp_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/hyp.img
./fastboot flash  imagefv_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/imagefv.img
./fastboot flash  imagefv_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/imagefv.img
./fastboot flash  keymaster_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/keymaster.img
./fastboot flash  keymaster_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/keymaster.img
./fastboot flash  modem_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash  modem_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash oem_stanvbk ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/oem_stanvbk.img
./fastboot flash  qupfw_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/qupfw.img
./fastboot flash  qupfw_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/qupfw.img
./fastboot flash  storsec_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/storsec.img
./fastboot flash  storsec_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/storsec.img
./fastboot flash  tz_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/tz.img
./fastboot flash  tz_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/tz.img
./fastboot flash  uefisecapp_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/uefisecapp.img
./fastboot flash  uefisecapp_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/uefisecapp.img
./fastboot flash  xbl_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/xbl.img
./fastboot flash  xbl_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/xbl.img
./fastboot flash  xbl_config_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/xbl_config.img
./fastboot flash  xbl_config_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/xbl_config.img
sleep 10
./fastboot flash odm ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/odm.img
./fastboot flash odm_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/odm.img
./fastboot flash odm_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/odm.img
./fastboot flash product ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/product.img
./fastboot flash product_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/product.img
./fastboot flash product_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/product.img
./fastboot flash system ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/system.img
./fastboot flash system_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/system.img
./fastboot flash system_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/system.img
./fastboot flash system_ext ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/system_ext.img
./fastboot flash system_ext_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/system_ext.img
./fastboot flash system_ext_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/system_ext.img
./fastboot flash vendor ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vendor.img
./fastboot flash vendor_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vendor.img
./fastboot flash vendor_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.2/vendor.img
./fastboot reboot

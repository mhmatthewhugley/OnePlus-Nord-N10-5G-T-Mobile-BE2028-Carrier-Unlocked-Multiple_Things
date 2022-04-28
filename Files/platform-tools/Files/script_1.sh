#!/bin/bash
./adb reboot bootloader
./fastboot -w
./fastboot flash dtbo ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/dtbo.img
./fastboot set_active a
./fastboot flash modem_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/modem.img
./fastboot flash boot_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/boot.img
./fastboot flash recovery_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/recovery.img
./fastboot flash vbmeta_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vbmeta.img
./fastboot flash vbmeta_system_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vbmeta_system.img
sleep 10
./fastboot reboot bootloader
./fastboot set_active b
./fastboot flash modem_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/modem.img
./fastboot flash boot_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/boot.img
./fastboot flash recovery_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/recovery.img
./fastboot flash vbmeta_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vbmeta.img
./fastboot flash vbmeta_system_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vbmeta_system.img
sleep 10
./fastboot reboot bootloader
sleep 10
./fastboot reboot fastboot
./fastboot flash  abl_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/abl.img
./fastboot flash  abl_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/abl.img
./fastboot flash  aop_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/aop.img
./fastboot flash  aop_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/aop.img
./fastboot flash  bluetooth_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/bluetooth.img
./fastboot flash  bluetooth_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/bluetooth.img
./fastboot flash  boot_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/boot.img
./fastboot flash  boot_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/boot.img
./fastboot flash  devcfg_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/devcfg.img
./fastboot flash  devcfg_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/devcfg.img
./fastboot flash  dsp_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/dsp.img
./fastboot flash  dsp_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/dsp.img
./fastboot flash dtbo_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/dtbo.img
./fastboot flash dtbo_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/dtbo.img
./fastboot flash  featenabler_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/featenabler.img
./fastboot flash  featenabler_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/featenabler.img
./fastboot flash  hyp_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/hyp.img
./fastboot flash  hyp_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/hyp.img
./fastboot flash  imagefv_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/imagefv.img
./fastboot flash  imagefv_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/imagefv.img
./fastboot flash  keymaster_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/keymaster.img
./fastboot flash  keymaster_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/keymaster.img
./fastboot flash  modem_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/modem.img
./fastboot flash  modem_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/modem.img
./fastboot flash oem_stanvbk ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/oem_stanvbk.img
./fastboot flash  qupfw_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/qupfw.img
./fastboot flash  qupfw_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/qupfw.img
./fastboot flash  storsec_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/storsec.img
./fastboot flash  storsec_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/storsec.img
./fastboot flash  tz_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/tz.img
./fastboot flash  tz_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/tz.img
./fastboot flash  uefisecapp_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/uefisecapp.img
./fastboot flash  uefisecapp_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/uefisecapp.img
./fastboot flash  xbl_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/xbl.img
./fastboot flash  xbl_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/xbl.img
./fastboot flash  xbl_config_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/xbl_config.img
./fastboot flash  xbl_config_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/xbl_config.img
sleep 10
./fastboot flash odm ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/odm.img
./fastboot flash odm_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/odm.img
./fastboot flash odm_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/odm.img
./fastboot flash product ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/product.img
./fastboot flash product_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/product.img
./fastboot flash product_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/product.img
./fastboot flash system ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/system.img
./fastboot flash system_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/system.img
./fastboot flash system_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/system.img
./fastboot flash system_ext ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/system_ext.img
./fastboot flash system_ext_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/system_ext.img
./fastboot flash system_ext_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/system_ext.img
./fastboot flash vendor ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vendor.img
./fastboot flash vendor_a ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vendor.img
./fastboot flash vendor_b ./Files/Restore_OOS.7z.001_FILES/OnePlusNordN105G_Restore_OOS11.0.5.BE86AA/vendor.img
./fastboot reboot

#!/bin/bash
./adb reboot-bootloader
./fastboot set_active a
./fastboot flash dtbo ./OnePlusNordN105G_Restore_OOS11.0.2/dtbo.img
./fastboot flash modem_a ./OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash boot_a ./OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash recovery_a ./OnePlusNordN105G_Restore_OOS11.0.2/recovery.img
sleep 3
./fastboot reboot-bootloader
./fastboot set_active b
./fastboot flash modem_b ./OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash boot_b ./OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash recovery_b ./OnePlusNordN105G_Restore_OOS11.0.2/recovery.img
sleep 3
./fastboot reboot fastboot
./fastboot flash  abl_a ./OnePlusNordN105G_Restore_OOS11.0.2/abl.img
./fastboot flash  abl_b ./OnePlusNordN105G_Restore_OOS11.0.2/abl.img
./fastboot flash  aop_a ./OnePlusNordN105G_Restore_OOS11.0.2/aop.img
./fastboot flash  aop_b ./OnePlusNordN105G_Restore_OOS11.0.2/aop.img
./fastboot flash  bluetooth_a ./OnePlusNordN105G_Restore_OOS11.0.2/bluetooth.img
./fastboot flash  bluetooth_b ./OnePlusNordN105G_Restore_OOS11.0.2/bluetooth.img
./fastboot flash  boot_a ./OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash  boot_b ./OnePlusNordN105G_Restore_OOS11.0.2/boot.img
./fastboot flash  devcfg_a ./OnePlusNordN105G_Restore_OOS11.0.2/devcfg.img
./fastboot flash  devcfg_b ./OnePlusNordN105G_Restore_OOS11.0.2/devcfg.img
./fastboot flash  dsp_a ./OnePlusNordN105G_Restore_OOS11.0.2/dsp.img
./fastboot flash  dsp_b ./OnePlusNordN105G_Restore_OOS11.0.2/dsp.img
./fastboot flash  featenabler_a ./OnePlusNordN105G_Restore_OOS11.0.2/featenabler.img
./fastboot flash  featenabler_b ./OnePlusNordN105G_Restore_OOS11.0.2/featenabler.img
./fastboot flash  hyp_a ./OnePlusNordN105G_Restore_OOS11.0.2/hyp.img
./fastboot flash  hyp_b ./OnePlusNordN105G_Restore_OOS11.0.2/hyp.img
./fastboot flash  imagefv_a ./OnePlusNordN105G_Restore_OOS11.0.2/imagefv.img
./fastboot flash  imagefv_b ./OnePlusNordN105G_Restore_OOS11.0.2/imagefv.img
./fastboot flash  keymaster_a ./OnePlusNordN105G_Restore_OOS11.0.2/keymaster.img
./fastboot flash  keymaster_b ./OnePlusNordN105G_Restore_OOS11.0.2/keymaster.img
./fastboot flash  modem_a ./OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash  modem_b ./OnePlusNordN105G_Restore_OOS11.0.2/modem.img
./fastboot flash  qupfw_a ./OnePlusNordN105G_Restore_OOS11.0.2/qupfw.img
./fastboot flash  qupfw_b ./OnePlusNordN105G_Restore_OOS11.0.2/qupfw.img
./fastboot flash  recovery_a ./OnePlusNordN105G_Restore_OOS11.0.2/recovery.img
./fastboot flash  recovery_b ./OnePlusNordN105G_Restore_OOS11.0.2/recovery.img
./fastboot flash  storsec_a ./OnePlusNordN105G_Restore_OOS11.0.2/storsec.img
./fastboot flash  storsec_b ./OnePlusNordN105G_Restore_OOS11.0.2/storsec.img
./fastboot flash  tz_a ./OnePlusNordN105G_Restore_OOS11.0.2/tz.img
./fastboot flash  tz_b ./OnePlusNordN105G_Restore_OOS11.0.2/tz.img
./fastboot flash  uefisecapp_a ./OnePlusNordN105G_Restore_OOS11.0.2/uefisecapp.img
./fastboot flash  uefisecapp_b ./OnePlusNordN105G_Restore_OOS11.0.2/uefisecapp.img
./fastboot flash  xbl_a ./OnePlusNordN105G_Restore_OOS11.0.2/xbl.img
./fastboot flash  xbl_b ./OnePlusNordN105G_Restore_OOS11.0.2/xbl.img
./fastboot flash  xbl_config_a ./OnePlusNordN105G_Restore_OOS11.0.2/xbl_config.img
./fastboot flash  xbl_config_b ./OnePlusNordN105G_Restore_OOS11.0.2/xbl_config.img
sleep 3
./fastboot flash odm_a ./OnePlusNordN105G_Restore_OOS11.0.2/odm.img
./fastboot flash odm_b ./OnePlusNordN105G_Restore_OOS11.0.2/odm.img
./fastboot flash product_a ./OnePlusNordN105G_Restore_OOS11.0.2/product.img
./fastboot flash product_b ./OnePlusNordN105G_Restore_OOS11.0.2/product.img
./fastboot flash system_a ./OnePlusNordN105G_Restore_OOS11.0.2/system.img
./fastboot flash system_b ./OnePlusNordN105G_Restore_OOS11.0.2/system.img
./fastboot flash system_ext_a ./OnePlusNordN105G_Restore_OOS11.0.2/system_ext.img
./fastboot flash system_ext_b ./OnePlusNordN105G_Restore_OOS11.0.2/system_ext.img
./fastboot flash vendor_a ./OnePlusNordN105G_Restore_OOS11.0.2/vendor.img
./fastboot flash vendor_b ./OnePlusNordN105G_Restore_OOS11.0.2/vendor.img
./fastboot reboot

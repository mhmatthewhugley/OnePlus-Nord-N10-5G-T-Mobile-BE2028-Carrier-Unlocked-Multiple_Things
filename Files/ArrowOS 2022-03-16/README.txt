Instructions to flash INTL FIRMWARE to UN-brand the device(BE2028, T-Mobile), and flash Arrow OS with root(Magisk).
This section of instructions is for getting the patched boot image. And unlocking the bootloader.
1. Start on Android 11 aka update the phone fully. You dont have to set the phone up and transfer and login because later the data will be reset.
2. Enable developer options  "Settings", then tap "About phone", then tap "Software version" untill it says it is enabled.
3. Go to "Settings", then "System", then "Developer options", then enable "OEM unlocking", "Advanced reboot" and "USB debugging"
(For Metro/TMO: unlock the bootloader via https://www.oneplus.com/unlock_token)
gather and enter all the information to the page,
in order to get the unlock code you have to boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
1. unlock the phone screen then hold the power button and click the 3 dots and click "Bootloader"
or
2. run "adb reboot bootloader"
then after one of those methods are done run "fastboot devices", then run "fastboot oem get_unlock_code"
While you wait for the unlock token you can prepare the rooted boot image
4. Transfer the boot image and magisk apk to the phone
5. Install apk
6. Go to the magisk application then click Magisk > Install > Select and Patch a File > select boot.img > click LET'S GO
7. Transfer the patched image to the computer, connect the phone to computer and run "adb devices" if nothing comes up make sure the prompt that came up was allowed, then run "adb pull /sdcard/Download/<magisk_patched-numbers_lettersnumber.img>"
8. After you get the email with the unlock token you have to download the <unlock_code.bin> then boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
1. unlock the phone screen then hold the power button and click the 3 dots and click "Bootloader"
or
2. run "adb reboot bootloader"
then unlock the bootloader by running: "fastboot flash cust-unlock <unlock_code.bin>"
9. Fully unlock the bootloader using "fastboot oem unlock" *WILL DELETE ALL DATA.* You have to confirm it on the phone aswell.
10. Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button then select English for your language.
11. Click "Advanced" then "Reboot to bootloader" then confirm it by clicking "Reboot to bootloader"
12. ./fastboot boot ./Files/twrp_3.6.1.img
22. bash ./Files/script_1.sh
Click "Reboot" Click "Fastboot"
25. ./fastboot -w
30. ./adb push ./Files/OnePlusN10Oxygen_14.O.35_OTA_0350_all_2203011055_33cb47218ca747c0.zip /sdcard
31. ./adb reboot bootloader
32. Click pwr button to start.
33. Okay settings, system updates look for gear in top right corner or search local update your doing a local update then click it and click INSTALL NOW
34. Do the update again.
35. If it fails run the debloat if it does not fail still run the debloat.
36. Enable developer options  "Settings", then tap "About phone", then tap "Build number" untill it says it is enabled.
37. Go to "Settings", then "System", then "Developer options", then enable "Advanced reboot" and "USB debugging"
38. bash ./Files/full_debloat.adb
39. ./adb reboot recovery
40. Click english, advanced, reboot to fastboot, confirm it
./fastboot boot ./Files/twrp_3.6.1.img
42. Click "Advanced", "ADB Sideload" Swipe to start.
43. ./adb sideload ./Files/copypartitions.zip
Click "Reboot" Click "Fastboot"
24. ./fastboot set_active a
42. Like before ADB Sideload.
Make sure you unzip the ROMwithGapps.zip for the actual files
58. ./adb sideload ./Files/Arrow-v11.0-billie-UNOFFICIAL-20220316-GAPPS.zip
Click "Reboot" Click "Fastboot"
62. ./fastboot -w
./adb push ./Files/twrp_3.6.1_EduardoA3677_flasher.zip /sdcard
Install it
Click "Reboot" Click "Fastboot"
./fastboot flash recovery ./Files/twrp_3.6.1.img
52. ./adb push ./Files/Magisk-v24.3.apk /sdcard
Boot install apk then follow the commands below.
Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button
Click "Reboot" Click "Fastboot"
./fastboot flash boot <magisk_patched-numbers_lettersnumber.img>

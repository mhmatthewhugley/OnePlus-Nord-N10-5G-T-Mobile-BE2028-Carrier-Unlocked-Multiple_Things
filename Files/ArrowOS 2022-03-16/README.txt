Instructions for INTL FIRMWARE to UN-brand the device, flashing Arrow OS with root(Magisk).
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

12. fastboot boot twrp_lito.img
13. adb pull /dev/block/by-name/vbmeta_a vbmeta.img
14. adb pull /dev/block/by-name/vbmeta_system_a vbmeta_system.img
15. adb reboot bootloader
16. fastboot --disable-verity --disable-verification flash vbmeta_a vbmeta.img
17. fastboot --disable-verity --disable-verification flash vbmeta_system_a vbmeta_system.img
18. fastboot flash recovery_a PixelExperience_Recovery_billie-11.0-20220316-1225.img
19. fastboot flash recovery_b PixelExperience_Recovery_billie-11.0-20220316-1225.img
20. fastboot reboot recovery
21. Click "Advanced" then "Reboot to bootloader"
22. bash script_1.sh
23. ./fastboot getvar all
24. ./fastboot set_active a
25. ./fastboot -w
26. ./fastboot reboot
27. . Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button then select English for your language.
28. Go to Advanced Click Reboot to fastboot confirm it
29. fastboot boot twrp_lito.img
30. ./adb push OnePlusN10Oxygen_14.O.35_OTA_0350_all_2203011055_33cb47218ca747c0.zip /sdcard
31. ./adb reboot bootloader
32. Click pwr button to start.
33. Okay settings, system updates look for gear in top right corner or search local update your doing a local update then click it and click INSTALL NOW
34. Do the update again.
35. If it fails run the debloat if it does not fail still run the debloat.
36. Enable developer options  "Settings", then tap "About phone", then tap "Build number" untill it says it is enabled.
37. Go to "Settings", then "System", then "Developer options", then enable "Advanced reboot" and "USB debugging"
38. bash full_debloat.adb
39. ./adb reboot recovery
40. Click english advanced reboot to fastboot confirm it
41. ./fastboot boot /path/to/pixelrecovery.img
42. Apply update Apply from ADB
43. ./adb sideload copypartitions.zip
44. Boot into bootloader again
45. Boot to fastboot
46. ./fastboot flash recovery_b twrp_lito.img
47. ./fastboot flash recovery_a PixelExperience_Recovery_billie-11.0-20220316-1225.img
48. Boot into bootloader again
49. ./fastboot reboot recovery
50. swipe to allow modifications
51. if it does not swipe
52. ./adb push Magisk-v24.3.apk /sdcard
53. ./adb shell
54. twrp install /sdcard/Magisk-v24.3.apk
55. bootctl set-active-boot-slot 0
56. Reboot to recovery mode
57. Apply update Apply from ADB
58. ./adb sideload Arrow-v11.0-billie-UNOFFICIAL-20220316-GAPPS.zip
59. Go to the fastboot
60. fastboot --disable-verity --disable-verification flash vbmeta_a vbmeta.img
61. fastboot --disable-verity --disable-verification flash vbmeta_system_a vbmeta_system.img
62. ./fastboot -w
63. Click Reboot system now

Go through the commands below.

If your stuck 
set slot a from bootloader
Flash pixel to both recovery a and b 
18. fastboot flash recovery_a PixelExperience_Recovery_billie-11.0-20220316-1225.img
19. fastboot flash recovery_b PixelExperience_Recovery_billie-11.0-20220316-1225.img
18. fastboot flash recovery PixelExperience_Recovery_billie-11.0-20220316-1225.img
THEN without reboot or setting a slot
 do a third time: "fastboot flash recovery" without the _a or _b suffix

Reboot into recovery side load rom and reboot. There will be a slot switch, but you don't do it.
 after you flash recovery without suffix that's the "bootable" block state do not concern yourself with slots after that

fastboot flash boot <magisk_patched-numbers_lettersnumber.img>

15. Use volume key to select "Factory reset" then press the power button to execute it. 
16. Press the power button again to execute the selected "Format data/factory reset" button.
17. Now use the volume button to go down and select "Format data" then click the power button to execute it.
18. When it is done get to the main screen by using the volume key to go to the arrow and clicking the power button on the arrow to go back a page.
19. Go to "Apply update" and choose "Apply from ADB"
Make sure you unzip the ROMwithGapps.zip for the actual files
20. Sideload the ROM by running "adb sideload <rom.zip>"
22. Once it is finished back up 1 page and go to and click "Advanced" Then click "Enter fastboot"
23. Run "fastboot --set-active=b"
24. Flash recovery on the selected slot B. "fastboot flash recovery <recovery.img>"
25. Flash the patched boot image with "fastboot flash boot <magisk_patched-numbers_lettersnumber.img>"
26. Run "fastboot -w"
27. Click "Reboot system now"

# OnePlus-Nord-N10-5G-T-Mobile-BE2028-Carrier-Unlocked-Custom-Rom-Installation
What I did to install a custom rom on the Oneplus Nord N10 5G T mobile BE2028 carrier unlocked model.

All instructions were written based on using Linux Mint 20.3 x86_64

All files are copyrighted to their respective owner.


Instructions to flash INTL FIRMWARE to UN-brand the device(BE2028, T-Mobile), and flash Havoc OS with root(Magisk).

Firstly I would like to thank "@nosaj_33" for spending "5 hours, 38 minutes and 22 seconds" helping me UN-brand the device and giving me instruction. And the day before spending "44 minutes and 48 seconds" with me.

This section of instructions is for getting the patched boot image. And unlocking the bootloader.
1. Start on Android 11 aka update the phone fully. You dont have to set the phone up and transfer and login because later the data will be reset.
2. Enable developer options  "Settings", then tap "About phone", then tap "Software version" untill it says it is enabled.
3. Go to "Settings", then "System", then "Developer options", then enable "OEM unlocking", "Advanced reboot" and "USB debugging"
(For Metro/TMO: unlock the bootloader via https://www.oneplus.com/unlock_token)
gather and enter all the information to the page,
in order to get the unlock code you have to boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
. unlock the phone screen then hold the power button and click the 3 dots and click "Bootloader"
or
. run "./adb reboot bootloader"
then after one of those methods are done run "fastboot devices", then run "fastboot oem get_unlock_code"
While you wait for the unlock token you can prepare the rooted boot image
4. Transfer the boot image and magisk apk to the phone
5. Install apk
6. Go to the magisk application then click Magisk > Install > Select and Patch a File > select bootHavocOS.img > click LET'S GO
7. Transfer the patched image to the computer, connect the phone to computer and run "adb devices" if nothing comes up make sure the prompt that came up was allowed, then run "adb pull /sdcard/Download/<magisk_patched-numbers_lettersnumber.img>"
8. After you get the email with the unlock token you have to download the <unlock_code.bin> then boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
. unlock the phone screen then hold the power button and click the 3 dots and click "Bootloader"
or
. run "./adb reboot bootloader"
then unlock the bootloader by running: "fastboot flash cust-unlock <unlock_code.bin>"
9. Fully unlock the bootloader using "fastboot oem unlock" *WILL DELETE ALL DATA.* You have to confirm it on the phone aswell.

This section of instructions is for flashing the INTL FIRMWARE and debloating.
10. Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button then select English for your language.
11. Click "Advanced" then "Reboot to bootloader" then confirm it by clicking "Reboot to bootloader"
12. Extract "Restore_OOS.7z"
13. Extract the file "OnePlusNordN105G_Restore_OOS11.0.5.BE86AA.zip"
14. bash ./Files/script_1.sh
. You dont have to set the phone up and transfer and login and all of that just skip it.
15. Enable developer options go to "Settings", then tap "About phone", then tap "Build number" untill it says it is enabled.
16. Go to "Settings", then "System", then "Developer Options", then enable "Advanced reboot" and "USB debugging"
17. Run the debloat.
18. bash ./Files/full_debloat.adb
19. ./adb reboot recovery
20. Click english, advanced, reboot to fastboot, confirm it
21. ./fastboot flash recovery ./Files/HavocOS\ 2022-04-17/RECOVERY/recoveryHavocOS.img
. Use the volume keys to select and use the power button to click "Recovery mode"
22. Click "Install update", "ADB Sideload".
23. ./adb sideload ./Files/copy-partitions-20210323_1922.zip

Work on everything below this line.
This section of instructions is for flashing the ROM and TWRP.
24. Like before ADB Sideload.
25. Make sure you unzip the ROMwithGapps.zip for the actual files
26. ./adb sideload ./Files/HavocOS\ 2022-04-17/ROM\ \[WITH\ GAPPS\]/ROM\ \[WITH\ GAPPS\]/Havoc-OS-v4.15-20220417-billie-Unofficial-GApps.zip
27. Click "Reboot" Click "Fastboot"
28. ./fastboot -w
29. ./adb push ./Files/twrp_3.6.1_EduardoA3677_flasher.zip /sdcard
30. Install it
31. Click "Reboot" Click "Fastboot"
32. ./fastboot flash recovery ./Files/recoveryHavocOS.img

This section of instructions is for prepping to patch the boot image by pushing the magisk apk to /sdcard so it can be installed.
33. ./adb push ./Files/Magisk-v24.3.apk /sdcard
34. Boot, install apk, then follow the next section below.

This section of instructions is for flashing the patched boot image.
35. Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button
36. Click "Reboot" Click "Fastboot"
37. ./fastboot flash boot <magisk_patched-numbers_lettersnumber.img>

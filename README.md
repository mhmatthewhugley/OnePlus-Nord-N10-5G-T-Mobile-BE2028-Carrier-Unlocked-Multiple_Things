| :warning: WARNING                            |
| :------------------------------------------- |
| To clone this entire repo you need 14.82GiB. |

| :exclamation: Because this is only how I did it with my specific device, |
| ------------------------------------------------------------------------ |

| :zap: No WARRANTY or SUPPORT is provided! |
| ----------------------------------------- |

# OnePlus-Nord-N10-5G-T-Mobile-BE2028-Carrier-Unlocked-Multiple_Things

What I did to flash INTL FIRMWARE to UN-brand the device(Oneplus Nord N10 5G BE2028, T-Mobile carrier unlocked), and flash Havoc OS with root(Magisk).

All instructions were written based on using Linux Mint 20.3 x86_64

All files are copyrighted to their respective owner.

Firstly I would like to thank "@nosaj_33" for spending "5 hours, 38 minutes and 22 seconds" helping me UN-brand the device and giving me instruction. And the day before spending "44 minutes and 48 seconds" with me.

This section is what you need to unarchive/extract:
\
The platform-tools_r33.0.1-linux.zip if on Linux and it is the appropriate version needed:

01. Extract ```Restore_OOS.7z```.

02. Extract the file ```OnePlusNordN105G_Restore_OOS11.0.5.BE86AA.zip```.

03. Make sure you unzip the ROM[Extract].7z for the actual files.

This section of instructions is for getting the patched boot image. And unlocking the bootloader:
1. Start on Android 11, aka update the phone fully. You dont have to set the phone up and transfer and login because later the data will be reset.
2. Enable developer options "Settings", then tap "About phone", then tap "Software version" untill it says it is enabled.
3. Go to "Settings", then "System", then "Developer options", then enable "OEM unlocking", "Advanced reboot" and "USB debugging".
```
(For Metro/TMO: unlock the bootloader via https://www.oneplus.com/unlock_token)
gather and enter all the information to the page,
in order to get the unlock code you have to boot to the bootloader,
first, connect the phone to computer,
then there are two methods of getting to the bootloader:
. unlock the phone screen then hold the power button and click the 3 dots and click "Bootloader".
or
. run "./adb reboot bootloader".
then after one of those methods are done run "fastboot oem get_unlock_code".
While you wait for the unlock token you can prepare the rooted boot image:
```
4. Transfer the boot image and magisk apk to the phone (Certain ROMs dont include it so you might have to extract it using a payload dumper or one of the other methods avaliable. I personally did the payload dumper.)
5. Install apk.
6. Go to the magisk application then click Magisk > Install > Select and Patch a File > select bootHavocOS.img > click LET'S GO
7. Transfer the patched image to the computer, connect the phone to computer and run ```adb devices``` if nothing comes up make sure the prompt that came up was allowed, then run ```adb pull /sdcard/Download/<magisk_patched-numbers_lettersnumber.img>```.
\
Or transfer it any other way you want to.
8. After you get the email with the unlock token you have to download the <unlock_code.bin> then boot to the bootloader,
\
first, connect the phone to computer,
\
then there are two methods of getting to the bootloader:
\
. unlock the phone screen then hold the power button and click the 3 dots and click "Bootloader"
\
or
\
. run ```./adb reboot bootloader```.
\
then unlock the bootloader by running: ```fastboot flash cust-unlock <unlock_code.bin>```.
9. Fully unlock the bootloader using ```fastboot oem unlock```. _WILL DELETE ALL DATA._ You have to confirm it on the phone aswell.

This section of instructions is for flashing the INTL FIRMWARE and debloating:
\
10. Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button then select English for your language.
\
11. Click "Advanced" then "Reboot to bootloader" then confirm it by clicking "Reboot to bootloader".
\
12. ```bash ./Files/script_1.sh```.
\
. You dont have to set the phone up and transfer and login and all of that just skip it.
\
13. Enable developer options go to "Settings", then tap "About phone", then tap "Build number" untill it says it is enabled.
\
14. Go to "Settings", then "System", then "Developer Options", then enable "Advanced reboot" and "USB debugging".
\
15. Run the debloat.
\
16. ```bash ./Files/full_debloat.adb```.
\
17. ```./adb reboot recovery```.
\
18. Click english, advanced, reboot to fastboot, confirm it.
\
19. ```./fastboot flash recovery ./Files/HavocOS\ 2022-04-17/RECOVERY/recoveryHavocOS.img```.
\
    . Use the volume keys to select and use the power button to click "Recovery mode".
    \
20. Click "Install update", "ADB Sideload".
\
21. ```./adb sideload ./Files/copy-partitions-20210323_1922.zip```.

This section of instructions is for flashing the ROM:
\
22. Like before ADB Sideload.
\
23. ```./adb sideload ./Files/HavocOS\ 2022-04-17/ROM\ \[WITH\ GAPPS\]/Havoc-OS-v4.15-20220417-billie-Unofficial-GApps.zip```.
\
24. Go back a menu then click "Advanced" then "Reboot to bootloader".
\
25. ```./fastboot set_active a```.
\
26. Use the volume keys to select and use the power button to click "Recovery mode".
\
27. Do steps 22 and 23 again (This flashes it in the slot that is not active.).
\
28. Go back a menu then click "Factory reset" then click "Format data/factory reset" and confirm it by clicking "Format data".

This section of instructions is for prepping to patch the boot image by pushing the magisk apk to /sdcard so it can be installed:
\
29. ```./adb push ./Files/HavocOS\ 2022-04-17/Magisk/APK/Magisk-v24.3.apk /sdcard```.
\
30. Boot, install apk, open, then follow the next section below.

This section of instructions is for flashing the patched boot image:
\
31. Hold power button and then click the Restart button then when the screen goes black hold the volume down and power button.
\
32. Click "Reboot" Click "Fastboot".
\
33. ```./fastboot flash boot ./Files/HavocOS\ 2022-04-17/Patched\ BOOT\ IMAGE/magisk_patched-24300_QENbr.img```
\
34. Boot then open the app and follow the instruction about additonal things being required it will reboot.

This section is the list of modules I recommend using:
\
Energized Protection
\
Systemless Hosts
\
Universal SafetyNet Fix
\
Zygisk - LSPosed

This section is the list of what I put in the DenyList inside the magisk app:
\
CardValet
com.fiservcardvalet.mobile.android
\
Crossy Road
com.yodo1.crossyroad
\
Family Express
com.familyexpress.finder
\
Google Play Store
com.android.vending
\
Google Wallet
com.google.android.apps.walletnfcrel
\
Meta Quest
com.oculus.twilight
\
Telegram
org.telegram.messenger

This section is the LSPosed Modules I suggest:
\
Killergram

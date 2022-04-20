Instructions for flashing Arrow OS with root(Magisk).
1. Start on Android 11 aka update the phone fully. You dont have to set the phone up and transfer and login because later the data will be reset.
2. Enable developer options  "Settings", then tap "About phone", then tap "Software version" untill it says it is enabled.
3. Go to "Settings", then "System", then "Developer options", then enable "OEM unlocking", "Advanced reboot" and "USB debugging"
(For Metro/TMO: unlock the bootloader via https://www.oneplus.com/unlock_token)
gather and enter all the information to the page,
in order to get the unlock code you have to boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
1. unlock the phone screen then hold the power button and click the 3 dots and click "reboot to bootloader"
or
2. run "adb reboot bootloader"
then after one of those methods are done run "fastboot devices", then run "fastboot oem get_unlock_code"
While you wait for the unlock token you can prepare the rooted boot image
4. Transfer the boot image and magisk apk to the phone
5. Install apk
6. Go to the magisk application then click Magisk > Install > Select and Patch a File > select boot.img > click LET'S GO
7. Transfer the patched image to the computer, connect the phone to computer and run "adb devices" if nothing comes up make sure the prompt that came up was allowed, then run "adb pull /sdcard/Download/magisk_patched-24300_Zn8So.img"

8. After you get the email with the unlock token you have to boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
1. unlock the phone screen then hold the power button and click the 3 dots and click "reboot to bootloader"
or
2. run "adb reboot bootloader"
then unlock the bootloader by running: "fastboot flash cust-unlock <unlock_token.bin>"
9. Fully unlock the bootloader using "fastboot oem unlock"
10. Flash the patched boot image with "fastboot flash boot magisk_patched-24300_Zn8So.img"

Not needed? 11. Reboot to fastboot. Or run "adb reboot bootloader"

12. In fastboot enter "fastboot --set-active=a" since the android 11 update is set to slot B.
13. Install recovery on slot A. "fastboot flash recovery recovery.img"

14. Reboot into recovery. Or run "fastboot reboot-recovery"

15. format your device
16. Go to Apply Update and choose Apply from ADB Sideload the ROM. Or run "adb sideload rom.zip"
17. Once it finishes you have to boot to the bootloader,
first, connect the phone to computer
then there are two methods of getting to the bootloader:
1. unlock the phone screen then hold the power button and click the 3 dots and click "reboot to bootloader"
or
2. run "adb reboot bootloader"
18. Run "Fastboot --set-active=b"
19. Flash recovery again. "fastboot flash recovery recovery.img"

20. Reboot to recovery, sideload ROM.

21. Factory reset inside recovery.
22. Reboot your phone.

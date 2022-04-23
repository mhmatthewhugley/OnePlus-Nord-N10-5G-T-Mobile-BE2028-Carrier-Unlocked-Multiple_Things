Instructions for flashing Arrow OS with root(Magisk).
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
11. Click "Advanced" then "Reboot to fastboot" then confirm it by clicking "Reboot to fastboot"
12. Then enter "fastboot --set-active=a" since the android 11 update is set to slot B.
13. Install recovery on the selected slot A. "fastboot flash recovery <recovery.img>"
14. Boot into recovery by using the volume key to go down two or until "Recovery mode" is shown, then press the power button to boot to it.
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

# android-udev
# adb debugging for my personal devices
SUBSYSTEM=="usb", ATTR{idVendor}=="8087", MODE="0660", GROUP="adbusers"
SUBSYSTEM=="usb",ATTR{idVendor}=="8087",ATTR{idProduct}=="0a5f",SYMLINK+="android_adb"
SUBSYSTEM=="usb",ATTR{idVendor}=="8087",ATTR{idProduct}=="0a5f",SYMLINK+="android_fastboot"

SUBSYSTEM=="usb", ATTR{idVendor}=="0b05", MODE="0660", GROUP="adbusers"
SUBSYSTEM=="usb",ATTR{idVendor}=="0b05",ATTR{idProduct}=="5601",SYMLINK+="android_adb"
SUBSYSTEM=="usb",ATTR{idVendor}=="0b05",ATTR{idProduct}=="5601",SYMLINK+="android_fastboot"

SUBSYSTEM=="usb", ATTR{idVendor}=="0b05", MODE="0660", GROUP="adbusers"
SUBSYSTEM=="usb",ATTR{idVendor}=="0b05",ATTR{idProduct}=="4daf",SYMLINK+="android_adb"
SUBSYSTEM=="usb",ATTR{idVendor}=="0b05",ATTR{idProduct}=="4daf",SYMLINK+="android_fastboot"

SUBSYSTEM=="usb", ATTR{idVendor}=="18d1", MODE="0660", GROUP="adbusers"
SUBSYSTEM=="usb",ATTR{idVendor}=="18d1",ATTR{idProduct}=="4ee2",SYMLINK+="android_adb"
SUBSYSTEM=="usb",ATTR{idVendor}=="18d1",ATTR{idProduct}=="4ee2",SYMLINK+="android_fastboot"

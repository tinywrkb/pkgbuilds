# set mode and group of vfio devices in order to attach to vm without root permissions
SUBSYSTEM=="vfio", GROUP="kvm", MODE="0666"
# example how to set the usb device's group in order to attach to vm without root permissions
#SUBSYSTEM=="usb",ATTR{idVendor}=="046d",ATTR{idProduct}=="c21f",GROUP="kvm"

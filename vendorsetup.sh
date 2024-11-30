echo 'Starting to clone stuffs needed to build for garnet'

#Vendor
echo 'Cloning vendor tree'
git clone https://github.com/oji00001/proprietary_vendor_xiaomi_garnet -b 15.0 vendor/xiaomi/garnet

# Kernel
echo 'Cloning kernel tree'
git clone https://github.com/oji00001/android_xiaomi_kernel_garnet -b 15.0 device/xiaomi/garnet-kernel

# Hardware Xiaomi
echo 'Cloning hardware xiaomi'
git clone https://github.com/oji00001/android_hardware_xiaomi -b 15.0 hardware/xiaomi

# MiuiCamera
echo 'Cloning MiuiCamera tree'
git clone https://git.mainlining.org/adarshgrewal/proprietary_vendor_xiaomi_garnet-miuicamera.git -b lineage-21 vendor/xiaomi/garnet-miuicamera

# ViperFx
echo 'Cloning Viper'
git clone https://github.com/JYRRC/packages_apps_ViPER4AndroidFX.git -b v4a packages/apps/ViPER4AndroidFX

# BCR
echo 'Cloning bcr'
git clone https://github.com/JYRRC/vendor_bcr.git -b main vendor/bcr

echo 'Cloning process is completed, now its time for lunch'

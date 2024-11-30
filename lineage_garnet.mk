#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CrDroid stuff.
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from garnet device
$(call inherit-product, device/xiaomi/garnet/device.mk)

# MiuiCamera
$(call inherit-product-if-exists, vendor/xiaomi/garnet-miuicamera/products/miuicamera.mk)

-include vendor/lineage-priv/keys/keys.mk

PRODUCT_NAME := lineage_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := XIG05

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

BUILD_FINGERPRINT := Redmi/XIG05_jp_kdi/XIG05:12/SKQ1.230401.001/V816.0.2.0.UNRJPKD:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Rising
RISING_MAINTAINER="y-shino"
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 7s GEN 2" \
    RisingMaintainer="y-shino" \

RISING_PACKAGE_TYPE := "GAPPS"

WITH_GMS := true
TARGET_CORE_GMS := true
PRODUCT_PACKAGES += \
    Photos \
    MarkupGoogle \
    LatinIMEGooglePrebuilt \
    AiWallpapers \
    WallpaperEmojiPrebuilt \
    PrebuiltDeskClockGoogle \
    CalculatorGooglePrebuilt \
    CalendarGooglePrebuilt \
    Velvet
TARGET_CORE_GMS_EXTRAS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

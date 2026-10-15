#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit Camera-related flags
TARGET_USES_MIUI_CAMERA := true
TARGET_INCLUDES_MIUI_CAMERA := true

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=google/mustang_beta/mustang:CANARY/ZP11.260515.009/15513807:user/release-keys

# Lunch banner maintainer variable
RISING_MAINTAINER="𝙽𝚊𝚏𝚒𝚜"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon™ 870 5G" \
    RisingMaintainer="𝙽𝚊𝚏𝚒𝚜"

RISING_MAINTAINER := 𝙽𝚊𝚏𝚒𝚜

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

#Gapps
WITH_GMS := true
PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false

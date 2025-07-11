#
# Copyright (C) 2018-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Lineage AOSP stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Resolution
TARGET_BOOT_ANIMATION_RES := 1080

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# RisingOS
# Pure vanilla build
#WITH_GMS := false
#TARGET_ENABLE_BLUR := false
#TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
#TARGET_INCLUDE_GOOGLE_DIALER := false
#TARGET_DEFAULT_PIXEL_LAUNCHER := false

# full gapps build
WITH_GMS := true
BUILD_WITH_GAPPS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_INCLUDE_GOOGLE_DIALER := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false
TARGET_ENABLE_BLUR := true

# core gapps build
#WITH_GMS := true
#BUILD_WITH_GAPPS := true
#TARGET_CORE_GMS := true
#TARGET_DEFAULT_PIXEL_LAUNCHER := false
#TARGET_INCLUDE_GOOGLE_DIALER := false
#TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
#TARGET_ENABLE_BLUR := true

TARGET_BOOT_ANIMATION_RES := 1080

# Maintainer
RISING_MAINTAINER := Anirban_X_Chronix
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon 675" \
    RisingMaintainer="Anirban_X_Chronix"

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi


PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc=$(call normalize-path-list, "violet-user 10 QKQ1.190915.002 V12.5.1.0 release-keys")

BUILD_FINGERPRINT := xiaomi/violet/violet:10/QKQ1.190915.002/V12.5.1.0.QFHINXM:user/release-keys

PRODUCT_PRODUCT_PROPERTIES += \
   ro.build.fingerprint=$(BUILD_FINGERPRINT)

#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common blaze stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/blaze/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := blaze_bluejay

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

#Blaze Stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_BLUR := true
TARGET_UDFPS_ANIMATIONS := true
BLAZE_BUILD_TYPE := OFFICIAL
BLAZE_MAINTAINER := CYB3R0ID694

WITH_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP2A.240805.005.F1 12043167 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP2A.240805.005.F1/12043167:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)

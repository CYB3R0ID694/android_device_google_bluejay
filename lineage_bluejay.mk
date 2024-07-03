#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
DISABLE_ARTIFACT_PATH_REQUIREMENTS := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Gapps
#$(call inherit-product-if-exists, vendor/gapps/arm64/arm64-vendor.mk)

# Inherit device configuration
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/gs101/lineage_common.mk)
$(call inherit-product, device/google/bluejay/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := lineage_bluejay

# Crdroid Extra Stuffs
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_IS_PIXEL := true
WITH_GAPPS := true
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
EXTRA_UDFPS_ANIMATIONS := true

# Use Scudo instead of Jemalloc
PRODUCT_USE_SCUDO := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP2A.240705.004 11875680 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)

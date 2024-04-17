#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

DEVICE_PACKAGE_OVERLAYS += device/google/oriole/overlay


# Inherit device configuration
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, device/google/gs101/device_omni.mk)
$(call inherit-product, device/google/bluejay/aosp_bluejay.mk)
$(call inherit-product, device/google/bluejay/device-omni.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 6a
PRODUCT_NAME := omni_bluejay

# Boot animation
TARGET_BOOTANIMATION_SIZE := 1080p

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP1A.240405.002 11480754 release-keys"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP1A.240405.002/11480754:user/release-keys

PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS := false

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)

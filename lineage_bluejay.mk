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
PRODUCT_NAME := rising_bluejay

# RisingOS variables
RISING_MAINTAINER := CYB3R0ID694
RISING_CHIPSET := Google Tensor G1
TARGET_HAS_UDFPS := true

# Gms variables
WITH_GMS := true

# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# Wether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Use Scudo instead of Jemalloc
PRODUCT_USE_SCUDO := true
PRODUCT_USE_SCUDO_32_BIT := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=bluejay \
    PRIVATE_BUILD_DESC="bluejay-user 14 AP2A.240705.004 11875680 release-keys" \
    RISING_CHIPSET="Google Tensor G1" \
    RISING_MAINTAINER="CYB3R0ID694"

BUILD_FINGERPRINT := google/bluejay/bluejay:14/AP2A.240705.004/11875680:user/release-keys

$(call inherit-product, vendor/google/bluejay/bluejay-vendor.mk)

#add priv8 keys for signing builds
-include vendor/lineage-priv/keys/keys.mk

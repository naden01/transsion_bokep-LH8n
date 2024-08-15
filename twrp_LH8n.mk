#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from TECNO-LH8n device
$(call inherit-product, device/tecno/LH8n/device.mk)

PRODUCT_DEVICE := LH8n
PRODUCT_NAME := twrp_LH8n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO LH8n
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_lh8nu_h333-user 12 SP1A.210812.016 651421 release-keys"

BUILD_FINGERPRINT := TECNO/LH8n-GL/TECNO-LH8n:12/SP1A.210812.016/240703V513:user/release-keys

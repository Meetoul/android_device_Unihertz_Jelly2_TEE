#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Jelly2 device
$(call inherit-product-if-exists, vendor/Unihertz/Jelly2_TEE/Jelly2_TEE-vendor.mk)
$(call inherit-product, device/Unihertz/Jelly2/deviceCommon.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Jelly2_TEE
PRODUCT_DEVICE := Jelly2_TEE
PRODUCT_BRAND := Unihertz
PRODUCT_MODEL := Jelly2
PRODUCT_MANUFACTURER := Unihertz

PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 854
TARGET_SCREEN_WIDTH := 480

# Stock build info
BUILD_FINGERPRINT := "Unihertz/Jelly2/Jelly2:10/QP1A.190711.020/root.20210417.155922:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Jelly2_TEE \
    PRODUCT_NAME=Jelly2 \
    PRIVATE_BUILD_DESC="Jelly2-user 10 QP1A.190711.020 root.20210417.155922 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-unihertz

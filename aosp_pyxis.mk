# Copyright (C) 2020 The LineageOS Project

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cepheus device
$(call inherit-product, device/xiaomi/pyxis/device.mk)

# Inherit some common PE stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_pyxis
PRODUCT_DEVICE := pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 Lite
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/pyxis/pyxis:10/QKQ1.190828.002/V12.0.6.0.QFCMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="pyxis-user 10 QKQ1.190828.002 V12.0.6.0.QFCMIXM release-keys" \
    PRODUCT_NAME="pyxis"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#
# Copyright (C) 2019-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common SuperiorOS stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/superior/config/common.mk)
$(call inherit-product, vendor/miuicamera/common/common-vendor.mk)

# Launcher
TARGET_LAUNCHER := oplauncher

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Maintainer prop
PRODUCT_PROPERTY_OVERRIDES += \
    ro.superior.maintainer=MADMAX

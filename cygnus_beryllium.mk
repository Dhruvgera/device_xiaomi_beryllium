#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/beryllium/device.mk)
$(call inherit-product, device/qcom/common/common.mk)

# Inherit some common CygnusOS stuff.
TARGET_INCLUDE_WIFI_EXT := true
$(call inherit-product, vendor/cygnus/configs/common.mk)
include device/qcom/common/common.mk
# Device identifier. This must come after all inclusions.
PRODUCT_NAME := cygnus_beryllium
PRODUCT_DEVICE := beryllium
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO F1
PRODUCT_MANUFACTURER := Xiaomi
CYGNUS_BUILD_TYPE := OFFICIAL
WITH_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="beryllium" \
    TARGET_DEVICE="beryllium"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
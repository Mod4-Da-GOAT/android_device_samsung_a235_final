#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/a23

PRODUCT_USE_DYNAMIC_PARTITIONS := true
# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30
# API
PRODUCT_SHIPPING_API_LEVEL := 30

# fastbootd
TW_INCLUDE_FASTBOOTD := true
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# qcom decryption
@@ -27,7 +29,8 @@ PRODUCT_PACKAGES += \

# Dependencies
TARGET_RECOVERY_DEVICE_MODULES += \
    libion \
    libfastboot

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

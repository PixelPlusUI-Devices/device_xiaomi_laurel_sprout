#
# Copyright (C) 2018-2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common ppui stuff
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Pixel charging animation
TARGET_INCLUDE_PIXEL_CHARGER := true

TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_GAPPS_ARCH := arm64

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/laurel_sprout.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := aosp_laurel_sprout
PRODUCT_MODEL := Mi A3


# ABI Checks
SKIP_ABI_CHECKS := true

BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ3A.210805.001.A1/7474174:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 10 QKQ1.190910.002 V11.0.15.0.QFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout"
    
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#PPUI Props
TARGET_FACE_UNLOCK_SUPPORTED = true
TARGET_INCLUDE_PIXEL_CHARGER := true
CUSTOM_BUILD_TYPE=OFFICIAL
PRODUCT_PROPERTY_OVERRIDES += \
ro.ppui.device_name=MI-A3 \
ro.ppui.version=3.7 \
ro.ppui.version_code=Ragnarok \
ro.ppui.is_official=true \
ro.ppui.maintainer_name=H3M3L

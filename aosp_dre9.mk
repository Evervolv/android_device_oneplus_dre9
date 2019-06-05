#
# Copyright 2015 The Android Open Source Project
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

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_dre9
PRODUCT_DEVICE := dre9
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AOSP on dre9
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_RESTRICT_VENDOR_FILES := false
PRODUCT_SHIPPING_API_LEVEL := 30

$(call inherit-product, device/oneplus/dre9/device.mk)
$(call inherit-product-if-exists, vendor/oneplus/dre9/dre9-vendor.mk)

PRODUCT_PACKAGES += \
    Launcher3QuickStep

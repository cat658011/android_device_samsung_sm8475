#
# Copyright (C) 2025 The Android Open Source Project
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
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from b4q device
$(call inherit-product, device/samsung/sm8475/q4q/device.mk)

PRODUCT_DEVICE := q4q
PRODUCT_NAME := twrp_q4q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F936B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="b4qxxx-user 12 SP2A.220305.013 F721BXXS4EWL5 release-keys"

BUILD_FINGERPRINT := samsung/b4qxxx/b4q:12/SP2A.220305.013/F721BXXS4EWL5:user/release-keys

# Copyright (C) 2009 The Android Open Source Project
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

## Wifi
PRODUCT_PACKAGES += \
    abtfilt \
    wlan_tool \
    wmiconfig

PRODUCT_PACKAGES += \
    Torch

## Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/cooper/ramdisk/COOPER.rle:root/COOPER.rle \
    device/samsung/cooper/ramdisk/modules/fsr.ko:root/lib/modules/fsr.ko \
    device/samsung/cooper/ramdisk/modules/fsr_stl.ko:root/lib/modules/fsr_stl.ko \
    device/samsung/cooper/ramdisk/modules/sec_param.ko:root/lib/modules/sec_param.ko

# Inherit products (Most specific first)
$(call inherit-product, vendor/samsung/cooper/vendor_blobs.mk)
$(call inherit-product, device/samsung/cooper/common.mk)

## MDPI assets
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

## Inherit overlays
$(call inherit-product, device/mdpi-common/mdpi.mk)
DEVICE_PACKAGE_OVERLAYS += device/samsung/cooper/overlay

# Goo-Manager app
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=ankur \
	ro.goo.board=$(TARGET_PRODUCT) \
	ro.goo.rom=cm10.2_$(TARGET_PRODUCT) \
	ro.goo.version=1

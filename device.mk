# Copyright 2016 The Android Open Source Project
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

DEVICE_PACKAGE_OVERLAYS += \
    device/sony/yuga/overlay

# Device etc
PRODUCT_COPY_FILES := \
    device/sony/yuga/rootdir/system/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/sony/yuga/rootdir/system/etc/thermanager.xml:system/etc/thermanager.xml \
    device/sony/yuga/rootdir/system/etc/sensor_def_qcomdev.conf:system/etc/sensor_def_qcomdev.conf

# Device Specific Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml

# Device Init
PRODUCT_PACKAGES += \
    init.recovery.yuga \
    init.yuga \
    ueventd.yuga

# Lights
PRODUCT_PACKAGES += \
    lights.yuga

# Simple PowerHAL
PRODUCT_PACKAGES += \
    power.yuga

# NFC
PRODUCT_PACKAGES += \
    nfc.yuga

PRODUCT_AAPT_CONFIG := large
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=480 \
    ro.usb.pid_suffix=19E

# Inherit from those products. Most specific first.
$(call inherit-product, device/sony/fusion3-common/platform.mk)
$(call inherit-product, vendor/sony/fusion3-common/yuga-vendor.mk)

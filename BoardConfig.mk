#
# Copyright (C) 2020 The LineageOS Project
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

### INHERIT FROM YOSHIRO
include device/samsung/exynos7904-common/BoardConfigPlatform.mk
include vendor/samsung/a30/BoardConfigVendor.mk

DEVICE_PATH := device/samsung/a30

PRODUCT_PLATFORM := exynos7904

TARGET_OTA_ASSERT_DEVICE := a30,a30dd

#Kernel config
TARGET_KERNEL_CONFIG := exynos7885-a30_defconfig

### PARTITIONS
BOARD_FLASH_BLOCK_SIZE := 4096
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5033164800
BOARD_VENDORIMAGE_PARTITION_SIZE := 595591168
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_BOOTIMAGE_PARTITION_SIZE := 37748736
# block size minus 20480
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55700336640

### DISPLAY
TARGET_SCREEN_DENSITY := 420

### SYSTEM PROPS
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

### VENDOR SECURITY PATCH DATE
VENDOR_SECURITY_PATCH := 2020-02-01

### VENDOR PROPS
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

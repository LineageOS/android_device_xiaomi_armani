#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := device/xiaomi/armani

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_HAL_STATIC_LIBRARIES := libhealthd.armani

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 6241112064
BOARD_CACHEIMAGE_PARTITION_SIZE    := 402653184
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432
BOARD_FLASH_BLOCK_SIZE             := 131072

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# Graphics
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Shader cache config options
# Maximum size of the GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Hardware tunables
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw/

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Init
TARGET_INIT_VENDOR_LIB := libinit_armani
TARGET_RECOVERY_DEVICE_MODULES := libinit_armani
TARGET_UNIFIED_DEVICE := true

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/armani
TARGET_KERNEL_CONFIG := cyanogenmod_armani_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=armani zcache.enabled=1
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_DTBTOOL_ARGS := --force-v2

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Memory
MALLOC_IMPL := dlmalloc

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
USE_CLANG_PLATFORM_BUILD := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Radio
TARGET_RIL_VARIANT := caf

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.armani
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_PROVIDES_WCNSS_QMI := true
TARGET_USES_QCOM_WCNSS_QMI := true

# inherit from the proprietary version
-include vendor/xiaomi/armani/BoardConfigVendor.mk

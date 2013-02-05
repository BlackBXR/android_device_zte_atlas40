#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/zte/atlas40/BoardConfigVendor.mk

ARCH_ARM_HIGH_OPTIMIZATION := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS   += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ICS_DECODERS

# CPU
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := atlas40
TARGET_SPECIFIC_HEADER_PATH := device/zte/atlas40/include
TARGET_CORTEX_CACHE_LINE_32 := true

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/atlas40/recovery/graphics.c
#BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/zte/atlas40/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/zte/atlas40/recovery/init.rc
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/atlas40/recovery-kernel
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_RMT_STORAGE := true

# Kernel (KonstaT's kernel source available at https://github.com/KonstaT/zte-kernel-msm7x27a)
TARGET_KERNEL_SOURCE := kernel/zte/zte-kernel-msm7x27a
TARGET_KERNEL_CONFIG := cyanogen_atlas40_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3
BOARD_KERNEL_CMDLINE := androidboot.hardware=atlas40
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096

# Bluetooth
BOARD_HAVE_BLUETOOTH := true

#Camera

BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB

# USB mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := sys/class/android_usb/f_mass_storage/lun/file
BOARD_UMS_LUNFILE := "sys/class/android_usb/f_mass_storage/lun/file"

# Browser
#WITH_JIT := true
#ENABLE_JSC_JIT := true
#JS_ENGINE := v8
#HTTP := chrome

# Webkit
ENABLE_WEBGL := true

DCHECK_FOR_EXTERNAL_FORMAT := true
BOARD_USE_SKIA_LCDTEXT := true
BOARD_EGL_CFG := device/zte/atlas40/prebuilt/system/lib/egl/egl.cfg
BOARD_USES_QCOM_HARDWARE := true
#COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_PMEM := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DTARGET_MSM7x27

#WiFi

BOARD_WLAN_DEVICE := ath6kl
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
WIFI_DRIVER_MODULE_PATH := "/system/wifi/ath6kl_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "ath6kl_sdio"
WIFI_EXT_MODULE_PATH := "/system/wifi/cfg80211.ko"
WIFI_EXT_MODULE_NAME := "cfg80211"
WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP  := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"

# Graphics
TARGET_USES_GENLOCK := true
USE_OPENGL_RENDERER := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_FORCE_CPU_UPLOAD := true
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

#GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := atlas40

#HTC KANG
TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_SF_BYPASS := false
TARGET_HAVE_BYPASS := false
TARGET_USES_OVERLAY := false
TARGET_QCOM_HDMI_OUT := false
TARGET_NO_HW_VSYNC := true
BOARD_USES_ADRENO_200 := true

# Caf 
TARGET_CPU_SMP := true
TARGET_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_USES_16BPPSURFACE_FOR_OPAQUE := true
TARGET_HAVE_TSLIB := true
MM_AUDIO_OMX_ADEC_EVRC_DISABLED := false
MM_AUDIO_OMX_ADEC_QCELP13_DISABLED := false
MM_AUDIO_FTM_DISABLED := false
MM_AUDIO_MEASUREMENT_DISABLED := false
BOARD_USES_QCNE := true

# dev:    size   erasesize  name
# mtd0: 00500000 00020000 "recovery"
# mtd1: 00500000 00020000 "boot"
# mtd2: 00180000 00020000 "splash"
# mtd3: 00080000 00020000 "misc"
# mtd4: 00200000 00020000 "cache"
# mtd5: 08a00000 00020000 "system"
# mtd6: 13ba0000 00020000 "userdata"
# mtd7: 00020000 00020000 "oem"
# mtd8: 00180000 00020000 "persist"
BOARD_BOOTIMAGE_PARTITION_SIZE := 274464768
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 274464768
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 314572800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 274464768
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_LARGE_FILESYSTEM := true

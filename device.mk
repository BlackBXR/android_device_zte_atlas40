DEVICE_PACKAGE_OVERLAYS := device/zte/atlas40/overlay
$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product-if-exists, vendor/zte/atlas40/atlas40-vendor.mk)

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Graphics
PRODUCT_PACKAGES := \
        copybit.msm7x27a \
        gralloc.msm7x27a \
        hwcomposer.msm7x27a \
        libgenlock \
        libI420colorconvert \
        libmemalloc \
        libqdutils \
        liboverlay \
        libtilerenderer \
        libQcomUI

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# Camera
PRODUCT_PACKAGES += \
        camera.msm7x27a

# GPS
PRODUCT_PACKAGES += \
        librpc \
        gps.atlas40

# Audio
PRODUCT_PACKAGES += \
        audio.a2dp.default \
        audio_policy.msm7x27a \
        audio.primary.msm7x27a \
        libaudioutils

PRODUCT_PACKAGES += \
        LiveWallpapersPicker \
        librs_jni \
        dexpreopt

LOCAL_PATH := device/zte/atlas40
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

DISABLE_DEXPREOPT := false

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PROPERTY_OVERRIDES += \
        ro.cwm.enable_key_repeat=true

PRODUCT_COPY_FILES := \
        device/zte/atlas40/prebuilt/root/sbin/usbchangemode:root/sbin/usbchangemode \
        device/zte/atlas40/prebuilt/root/sbin/usbconfig:root/sbin/usbconfig \
        device/zte/atlas40/prebuilt/root/default.prop:root/default.prop \
        device/zte/atlas40/prebuilt/root/init.2ndstg.rc:root/init.2ndstg.rc \
        device/zte/atlas40/prebuilt/root/init.atlas40.rc:root/init.atlas40.rc \
        device/zte/atlas40/prebuilt/root/init.qcom.rc:root/init.qcom.rc \
        device/zte/atlas40/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
        device/zte/atlas40/prebuilt/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
        device/zte/atlas40/prebuilt/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
        device/zte/atlas40/prebuilt/root/init.rc:root/init.rc \
        device/zte/atlas40/prebuilt/root/logo.bmp:root/logo.bmp \
        device/zte/atlas40/prebuilt/root/ueventd.rc:root/ueventd.rc \
        device/zte/atlas40/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
        device/zte/atlas40/prebuilt/system/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
        device/zte/atlas40/prebuilt/system/etc/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
        device/zte/atlas40/prebuilt/system/etc/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh \
        device/zte/atlas40/prebuilt/system/lib/hw/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so \
        device/zte/atlas40/prebuilt/system/usr/keylayout/atlas40_keypad.kl:/system/usr/keylayout/atlas40_keypad.kl \
        device/zte/atlas40/prebuilt/system/usr/keylayout/syna-touchscreen.kl:/system/usr/keylayout/syna-touchscreen.kl \
        device/zte/atlas40/prebuilt/system/usr/idc/syna-touchscreen.idc:/system/usr/idc/syna-touchscreen.idc \
        device/zte/atlas40/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
        device/zte/atlas40/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
        device/zte/atlas40/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
        device/zte/atlas40/prebuilt/system/etc/start_usb0.sh:system/etc/start_usb0.sh \
        device/zte/atlas40/prebuilt/system/etc/gps.conf:system/etc/gps.conf

# Bluetooth config
PRODUCT_COPY_FILES += \
        device/zte/atlas40/prebuilt/system/etc/init.bt.sh:system/etc/init.bt.sh \
        device/zte/atlas40/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

# WiFi
PRODUCT_COPY_FILES += \
        device/zte/atlas40/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        device/zte/atlas40/prebuilt/system/wifi/ath6kl_sdio.ko:system/wifi/ath6kl_sdio.ko \
        device/zte/atlas40/prebuilt/system/wifi/cfg80211.ko:system/wifi/cfg80211.ko

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
        frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
        frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
        frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
        frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/zte/atlas40/atlas40-vendor.mk)

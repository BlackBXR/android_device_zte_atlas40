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
        dexpreopt \
        make_ext4fs \
        setup_fs

PRODUCT_PACKAGES += \
    Atlas40Parts \
    lights.atlas40 \
    power.msm7x27a

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
        device/zte/atlas40/prebuilt/root/fstab.atlas40:root/fstab.atlas40 \
        device/zte/atlas40/prebuilt/root/init.atlas40.rc:root/init.atlas40.rc \
        device/zte/atlas40/prebuilt/root/init.atlas40.usb.rc:root/init.atlas40.usb.rc \
        device/zte/atlas40/prebuilt/root/logo.bmp:root/logo.bmp \
        device/zte/atlas40/prebuilt/root/ueventd.atlas40.rc:root/ueventd.atlas40.rc \
        device/zte/atlas40/prebuilt/system/etc/init.d/09proximity:system/etc/init.d/09proximity \
        device/zte/atlas40/prebuilt/system/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
        device/zte/atlas40/prebuilt/system/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
        device/zte/atlas40/prebuilt/system/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
        device/zte/atlas40/prebuilt/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
        device/zte/atlas40/prebuilt/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
        device/zte/atlas40/prebuilt/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
        device/zte/atlas40/prebuilt/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
        device/zte/atlas40/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf \
        device/zte/atlas40/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
        device/zte/atlas40/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
        device/zte/atlas40/prebuilt/system/lib/hw/camera.msm7x27a.so:system/lib/hw/camera.msm7x27a.so \
        device/zte/atlas40/prebuilt/system/lib/egl/egl.cfg:system/lib/egl/egl.cfg \
        device/zte/atlas40/prebuilt/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
        device/zte/atlas40/prebuilt/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
        device/zte/atlas40/prebuilt/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
        device/zte/atlas40/prebuilt/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
        device/zte/atlas40/prebuilt/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
        device/zte/atlas40/prebuilt/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
        device/zte/atlas40/prebuilt/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
        device/zte/atlas40/prebuilt/system/lib/libC2D2.so:system/lib/libC2D2.so \
        device/zte/atlas40/prebuilt/system/lib/libgsl.so:system/lib/libgsl.so \
        device/zte/atlas40/prebuilt/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
        device/zte/atlas40/prebuilt/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so \
        device/zte/atlas40/prebuilt/system/usr/keylayout/atlas40_keypad.kl:/system/usr/keylayout/atlas40_keypad.kl \
        device/zte/atlas40/prebuilt/system/usr/keylayout/syna-touchscreen.kl:/system/usr/keylayout/syna-touchscreen.kl \
        device/zte/atlas40/prebuilt/system/usr/idc/syna-touchscreen.idc:/system/usr/idc/syna-touchscreen.idc \
        device/zte/atlas40/prebuilt/system/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
        device/zte/atlas40/prebuilt/system/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
        device/zte/atlas40/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
        device/zte/atlas40/prebuilt/system/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
        device/zte/atlas40/prebuilt/system/etc/gps.conf:system/etc/gps.conf

# Bluetooth config
PRODUCT_COPY_FILES += \
        device/zte/atlas40/prebuilt/system/etc/bluetooth/main.conf:system/etc/bluetooth/main.conf

# WiFi
PRODUCT_COPY_FILES += \
        device/zte/atlas40/prebuilt/system/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
        device/zte/atlas40/prebuilt/system/wifi/ath6kl_sdio.ko:system/wifi/ath6kl_sdio.ko \
        device/zte/atlas40/prebuilt/system/wifi/cfg80211.ko:system/wifi/cfg80211.ko

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
        frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
        frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
        frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
        frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
        frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
        frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
        frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
        frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
        frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)
$(call inherit-product-if-exists, vendor/zte/atlas40/atlas40-vendor.mk)

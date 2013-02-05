# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/zte/atlas40/atlas40.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=atlas40 BUILD_ID=JRO03C BUILD_FINGERPRINT=ZTE/N880E_JB/atlas40:4.1.1/JRO03C/eng.songsy.20120718.233441:eng/test-keys PRIVATE_BUILD_DESC="N880E_JB-eng 4.1.1 JRO03C eng.songsy.20120718.233441 test-keys" BUILD_NUMBER=eng.songsy.20120718.233441

PRODUCT_DEVICE := atlas40
PRODUCT_NAME := cm_atlas40
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE BLADE III
PRODUCT_MANUFACTURER := ZTE
PRODUCT_RELEASE_NAME := atlas40
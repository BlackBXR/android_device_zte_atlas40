# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

$(call inherit-product, device/zte/atlas40/atlas40.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=P772N10 BUILD_ID=IMM76D BUILD_FINGERPRINT=ZTE/P772N10/atlas40:4.0.4/IMM76D/20120910.192158:user/release-keys PRIVATE_BUILD_DESC="P772N10-user 4.0.4 IMM76D 20120910.192158 release-keys" BUILD_NUMBER=20120910.192158

PRODUCT_DEVICE := atlas40
PRODUCT_NAME := cm_atlas40
PRODUCT_BRAND := zte
PRODUCT_MODEL := atlas40
PRODUCT_MANUFACTURER := zte
PRODUCT_RELEASE_NAME := atlas40

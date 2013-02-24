# Inherit from u8150 device
$(call inherit-product, $(LOCAL_PATH)/u8150.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/tiny.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, vendor/cm/config/tiny.mk)

# Correct bootanimation size for the screen
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Setup device configuration
PRODUCT_NAME := cm_u8150
PRODUCT_RELEASE_NAME := u8150
PRODUCT_DEVICE := u8150
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := U8150
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=google/soju/crespo:4.0.4/IMM76D/299849:user/release-keys PRIVATE_BUILD_DESC="soju-user 4.0.4 IMM76D 299849 release-keys"

# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit IOKP common bits
$(call inherit-product, vendor/iokp/configs/common.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/tuna

# CDMATools
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/CDMATools

# Setup device specific product configuration.
PRODUCT_NAME := iokp_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

# Toroplus specific packages
PRODUCT_PACKAGES += \
    Thinkfree \
    CDMATools

PRODUCT_COPY_FILES += \
    vendor/iokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip

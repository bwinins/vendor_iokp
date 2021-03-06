# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/tilapia/full_tilapia.mk)

# Inherit IOKP common_tablet bits
$(call inherit-product, vendor/iokp/configs/common_tablet.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/iokp/configs/gsm.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/grouper

# Setup device specific product configuration.
PRODUCT_NAME := iokp_tilapia
PRODUCT_BRAND := google
PRODUCT_DEVICE := tilapia
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=nakasig BUILD_FINGERPRINT="google/nakasig/tilapia:4.2.1/JOP40D/533553:user/release-keys" PRIVATE_BUILD_DESC="nakasig-user 4.2.1 JOP40D 533553 release-keys"

PRODUCT_COPY_FILES += \
    vendor/iokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation-alt.zip

PRODUCT_PACKAGES += \
    Mms

# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit IOKP common bits
$(call inherit-product, vendor/iokp/configs/common.mk)

# Inherit common Verizon Wireless Files
$(call inherit-product, vendor/iokp/configs/vzw.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := iokp_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysid BUILD_FINGERPRINT="google/mysid/toro:4.3/JWR66V/737497:user/release-keys" PRIVATE_BUILD_DESC="mysid-user 4.3 JWR66V 737497 release-keys" BUILD_NUMBER=125147

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/iokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip

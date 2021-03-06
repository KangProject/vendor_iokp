# Inherit AOSP device configuration for mako
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit iokp common bits
$(call inherit-product, vendor/iokp/configs/common.mk)

# Manta Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/manta

# Setup device specific product configuration
PRODUCT_NAME := iokp_manta
PRODUCT_BRAND := google
PRODUCT_DEVICE := manta
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mantaray BUILD_FINGERPRINT=google/mantaray/manta:4.4.2/KOT49H/937116:user/release-keys PRIVATE_BUILD_DESC="mantaray-user 4.4.2 KOT49H 937116 release-keys"

PRODUCT_COPY_FILES +=  \
    vendor/iokp/prebuilt/bootanimation/bootanimation_1280_800.zip:system/media/bootanimation-alt.zip

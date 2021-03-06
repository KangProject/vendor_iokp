# Inherit iokp device configuration for mint
$(call inherit-product-if-exists, device/sony/mint/aokp.mk)

# mint overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/iokp/overlay/mint

# Setup device specific product configuration.
PRODUCT_NAME := iokp_mint
PRODUCT_BRAND := Sony
PRODUCT_DEVICE := mint
PRODUCT_MODEL := Xperia T
PRODUCT_MANUFACTURER := Sony

# boot animation
PRODUCT_COPY_FILES += \
	vendor/iokp/prebuilt/bootanimation/bootanimation_720_1280.zip:system/media/bootanimation-alt.zip

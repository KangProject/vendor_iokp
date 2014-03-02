$(call inherit-product, device/samsung/hlte/full_hlte.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/iokp/configs/gsm.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/iokp/configs/common.mk)

PRODUCT_DEVICE := hlte
PRODUCT_NAME := iokp_hlte

# Inherit AOSP device configuration for jfltecri
$(call inherit-product, device/samsung/jfltecri/full_jfltecri.mk)

# Inherit common cdma apns
$(call inherit-product, vendor/iokp/configs/cdma.mk)

# Inherit common product files.
$(call inherit-product, vendor/iokp/configs/common.mk)

# Inherit common jf overlays
DEVICE_PACKAGE_OVERLAYS += vendor/iokp/overlay/samsung/jf-common \
                           vendor/iokp/overlay/samsung/msm8960-common \
                           vendor/iokp/overlay/samsung/qcom-common

PRODUCT_NAME := iokp_jfltecri
PRODUCT_DEVICE := jfltecri
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SCH-R970C
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=jfltecri TARGET_DEVICE=jfltecri BUILD_FINGERPRINT="samsung/jfltecri/jfltecri:4.2.2/JDQ39/R970CVVUAME4:user/release-keys" PRIVATE_BUILD_DESC="jfltecri-user 4.2.2 JDQ39 R970CVVUAME4 release-keys"

# boot animation
PRODUCT_COPY_FILES += \
       vendor/iokp/prebuilt/bootanimation/bootanimation_1080_1920.zip:system/media/bootanimation-alt.zip

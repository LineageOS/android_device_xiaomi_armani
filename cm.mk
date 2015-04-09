# Inherit some common CM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/armani/full_armani.mk)

PRODUCT_NAME := cm_armani

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a7lte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a7lte/device_a7lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a7lte
PRODUCT_NAME := cm_a7lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a7lte
PRODUCT_MANUFACTURER := samsung

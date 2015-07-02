## Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := a7lte

# Inherit some common omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/a7lte/device_a7lte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a7lte
PRODUCT_NAME := omni_a7lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := a7lte
PRODUCT_MANUFACTURER := samsung

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/samsung/a7lte/a7lte-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/samsung/a7lte/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/samsung/a7lte/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
    
    # Filesystem
PRODUCT_PACKAGES += \
    e2fsck \
    make_ext4fs \
    setup_fs

PRODUCTY_COPY_FILES += \
    device/samsung/a7lte/twrp.fstab:recovery/root/etc/twrp.fstab

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_a7lte
PRODUCT_DEVICE := a7lte

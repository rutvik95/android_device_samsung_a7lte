USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/a7lte/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := a7lte

BOARD_KERNEL_CMDLINE := console=null androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --dt device/samsung/a7lte/dtb --tags_offset 0x01e00000

# fix this up by examining /proc/mtd on a running device
#BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00480000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/samsung/a7lte/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
#TARGET_RECOVERY_FSTAB := device/samsung/a7lte/recovery.fstab
#TWRP
DEVICE_RESOLUTION := 1080x1920
TW_NEW_ION_HEAP := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
#TW_TARGET_USES_QCOM_BSP := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_INCLUDE_CRYPTO := true


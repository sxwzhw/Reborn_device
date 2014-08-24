USE_CAMERA_STUB := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

## This is evil. The mt9m114 (FFC) data inside the liboemcamera blob is in the .bss section,
## and inaccessible if PIE is enabled
TARGET_DISABLE_ARM_PIE := true

ARCH_ARM_HIGH_OPTIMIZATION := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINE := true
TARGET_USE_QCOM_BIONIC_OPTIMIZATION := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=iprj vmalloc=580M lpj=67667 msm_rtb.filter=0x0
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01800000

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Try to build the kernel
TARGET_KERNEL_CONFIG := miro_jbskt_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/iproj
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01400000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x01400000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 880803840
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2004621312
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_RECOVERY_SWIPE := true
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/lu6200/recovery-gfx.c
TARGET_USERIMAGES_USE_EXT4 := true

# QCOM
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_FORCE_CPU_UPLOAD := true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
BOARD_PROVIDES_LIBRIL := true
BOARD_RIL_FIVE_SEARCH_RESPONSES := true
TARGET_SPECIFIC_HEADER_PATH := device/lge/lu6200/include

# Display
BOARD_EGL_CFG := device/lge/lu6200/egl.cfg
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_USES_OVERLAY := true
TARGET_USES_ASHMEM := true
TARGET_USES_SF_BYPASS := true
TARGET_HAVE_BYPASS := true
TARGET_MAX_BYPASS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_DISPLAY_USE_RETIRE_FENCE := true
VSYNC_EVENT_PHASE_OFFSET_NS := 7500000
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 5000000
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 7500000

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_LEGACY_NL80211_STA_EVENTS := true
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/firmware/fw_bcmdhd_apsta.bin"

# BT
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/lu6200/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/lge/lu6200/vnd_bt.txt

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

TARGET_PROVIDES_LIBLIGHTS := true

BOARD_HAVE_BACK_MIC_CAMCORDER := true
BOARD_USE_QCOM_LPA := true
BOARD_QCOM_TUNNEL_LPA_ENABLED := true
BOARD_QCOM_TUNNEL_PLAYBACK_ENABLED := true
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED
# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_CAMERA_ABI_HACK
COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS



TARGET_BOOTANIMATION_USE_RGB565 := true
TARGET_BOOTANIMATION_PRELOAD := true


# mmc_erase sometimes hangs and requires a reboot, so skip it
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_VOLD_MAX_PARTITIONS := 32
ENABLE_WEBGL := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_RECOVERY_FSTAB = device/lge/lu6200/fstab.iprj
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_USES_LEGACY_ALSA_AUDIO := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
BOARD_QCOM_VOIP_ENABLED := true
BOARD_BLUEDROID_VENDOR_CONF := device/lge/lu6200/vnd_bt.txt
BOARD_HAL_STATIC_LIBRARIES := libhealthd.iprj
TARGET_INIT_VENDOR_LIB := libinit_msm
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_PROVIDES_LIBLIGHT := true
BOARD_SEPOLICY_DIRS += \
        device/lge/lu6200/sepolicy

BOARD_SEPOLICY_UNION += \
	genfs_contexts \
	app.te \
	bluetooth.te \
	device.te \
	domain.te \
	drmserver.te \
	file.te \
	file_contexts \
	hci_init.te \
	init_hell.te \
	keystore.te \
	mediaserver.te \
	kickstart.te \
	rild.te \
	surfaceflinger.te \
	system.te \
	ueventd.te \
	wpa.te

BOARD_HARDWARE_CLASS := device/lge/lu6200/cmhw/

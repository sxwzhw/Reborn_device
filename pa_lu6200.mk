# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit device configuration
$(call inherit-product, device/lge/lu6200/lu6200.mk)

PRODUCT_NAME := pa_lu6200

# Release name and versioning
PRODUCT_RELEASE_NAME := OptimusLTE
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lu6200

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=lu6200  BUILD_FINGERPRINT=LGE/lu6200/i_lgu:4.0.4/IMM76D/LG-LU6200-V167.1c2df587db:user/release-keys PRIVATE_BUILD_DESC="i_lgu-user 4.0.4 IMM76D 4823bc3c release-keys"

# Enable Torch
PRODUCT_PACKAGES += Lightbulb


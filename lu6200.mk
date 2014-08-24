$(call inherit-product, device/lge/lu6200/iprj.mk)

$(call inherit-product-if-exists, vendor/lge/lu6200/lu6200-vendor.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product-if-exists, vendor/pa/vendor.mk)

$(call inherit-product-if-exists, vendor/pa/main.mk)

## These are different between models
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/fstab.iprj:root/fstab.iprj

## Model specific files
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/init.iprj.rc:root/init.iprj.rc


PRODUCT_NAME := full_lu6200 
PRODUCT_DEVICE := lu6200 
PRODUCT_MODEL := LG-LU6200 

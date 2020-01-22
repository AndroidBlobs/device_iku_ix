# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from ix device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := iku
PRODUCT_DEVICE := ix
PRODUCT_MANUFACTURER := iku
PRODUCT_NAME := lineage_ix
PRODUCT_MODEL := ix

PRODUCT_GMS_CLIENTID_BASE := android-iku
TARGET_VENDOR := iku
TARGET_VENDOR_PRODUCT_NAME := ix
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sp7731e_fs280_32v4_project-user 8.1.0 OPM2.171019.012 01119 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := iKU/ix/ix:8.1.0/OPM2.171019.012/00422:user/release-keys

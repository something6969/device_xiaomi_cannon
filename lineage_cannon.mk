# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cannon device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := cannon
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_cannon
PRODUCT_MODEL := M2007J22C

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cannon
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cannon-user 12 SP1A.210812.016 22.4.21 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/cannon/cannon:12/SP1A.210812.016/22.4.21:user/release-keys

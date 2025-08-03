#ingerit device files
$(call inherit-product, device/samsung/smdk5260-common/device-common.mk)
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony.mk)

# Inherit from ha3g device
$(call inherit-product, device/samsung/m2alte/device.mk)
## Specify phone tech before including full_phone
$(call inherit-product, vendor/lineage/config/telephony.mk)
# Release name
PRODUCT_RELEASE_NAME := m2alte
PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# HLLTE vendor
$(call inherit-product-if-exists, vendor/samsung/m2alte/hllte-vendor.mk)

# Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m2alte
PRODUCT_NAME := lineage_m2alte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-C115
PRODUCT_MANUFACTURER := samsung

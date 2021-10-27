#
# Copyright (C) 2020 Raphielscape LLC.
# Copyright (C) 2020 Team StormBreaker
# Copyright (C) 2020 FusionOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from our versioning
$(call inherit-product, vendor/fuse/config/versioning.mk)

# Inherit from our kernel/header generator
$(call inherit-product, vendor/fuse/config/BoardConfigFuse.mk)

# Inherit boot animation
$(call inherit-product, vendor/fuse/config/bootanimation.mk)

# Vendor overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/fuse/overlay

# Apps
PRODUCT_PACKAGES += \
    ThemePicker \
    Launcher3

# Gapps
ifeq ($(WITH_GAPPS),true)
$(call inherit-product-if-exists, vendor/google/gms/config.mk)
endif

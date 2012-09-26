#
# Copyright (C) 2011 The Android Open-Source Project
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

LOCAL_PATH := vendor/softwinner/mk802

#Bin files
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/propietary/bin/fsck.exfat:system/bin/fsck.exfat \
        $(LOCAL_PATH)/propietary/bin/mkfs.exfat:system/bin/mkfs.exfat \
        $(LOCAL_PATH)/propietary/bin/mount.exfat:system/bin/mount.exfat \
        $(LOCAL_PATH)/propietary/bin/ntfs-3g:system/bin/ntfs-3g \
        $(LOCAL_PATH)/propietary/bin/ntfs-3g.probe:system/bin/ntfs-3g.probe \
        $(LOCAL_PATH)/propietary/bin/mkntfs:system/bin/mkntfs \
        $(LOCAL_PATH)/propietary/bin/reboot-recovery.sh:system/bin/reboot-recovery.sh \
        $(LOCAL_PATH)/propietary/bin/usb_modeswitch:system/bin/usb_modeswitch \
        $(LOCAL_PATH)/propietary/bin/rild:system/bin/rild

#Lib files
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/propietary/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
        $(LOCAL_PATH)/propietary/lib/egl/libGLES_android.so:system/lib/egl/libGLES_android.so \
        $(LOCAL_PATH)/propietary/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
        $(LOCAL_PATH)/propietary/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
        $(LOCAL_PATH)/propietary/lib/liballwinner-ril.so:system/lib/liballwinner-ril.so \
        $(LOCAL_PATH)/propietary/lib/hw/camera.exDroid.so:system/lib/hw/camera.exDroid.so \
        $(LOCAL_PATH)/propietary/lib/libMali.so:system/lib/libMali.so \
        $(LOCAL_PATH)/propietary/lib/libUMP.so:system/lib/libUMP.so

#Usr files
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/propietary/usr/keylayout/axp20-supplyer.kl:system/usr/keylayout/axp20-supplyer.kl \
        $(LOCAL_PATH)/propietary/usr/keylayout/sun4i-keyboard.kl:system/usr/keylayout/sun4i-keyboard.kl \
        $(LOCAL_PATH)/propietary/usr/icu/icudt46l.dat:system/usr/icu/icudt46l.dat

#Modules
PRODUCT_COPY_FILES += \
        $(call find-copy-subdir-files,*,$(LOCAL_PATH)/propietary/lib/modules,system/lib/modules)

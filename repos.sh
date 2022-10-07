
SOURCE_REPO_URL="https://www.github.com/lineageos"
CUSTOM_REPO_URL="https://www.github.com/rinando/"

PROJECTS=(
# Fix legacy build
'build/make			https://github.com/lineageos/android_build			github	lineage-20.0	https://github.com/rinando/android_build			rinando	lineage-20.0	rebase'
# libcutils for RIL
'hardware/lineage/compat	https://github.com/LineageOS/android_hardware_lineage_compat	github	lineage-20.0	https://github.com/rinando/android_hardware_lineage_compat	rinando	lineage-20.0	rebase'
# Legacy Kernel build
'vendor/lineage			https://github.com/LineageOS-UL/android_vendor_lineage		losul	lineage-20.0	https://github.com/rinando/android_vendor_lineage		rinando	lineage-20.0	rebase'



#Memfd
'art				https://android.googlesource.com/platform/art			aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_art				rinando	lineage-20.0	rebase'
# home/wake-button and camera extensions
'system/core			https://github.com/lineageos/android_system_core		losul	lineage-20.0	https://github.com/rinando/android_system_core			rinando	lineage-20.0	rebase'
# Mali crash-fix, StorageXML, ColorFade, Camera, Memory trim
'frameworks/base		https://github.com/lineageos/android_frameworks_base		losul	lineage-20.0	https://github.com/rinando/android_frameworks_base		rinando	lineage-20.0	rebase'
# Camera, codecs support
'frameworks/av			https://github.com/lineageos/android_frameworks_av		losul	lineage-20.0	https://github.com/rinando/android_frameworks_av		rinando	lineage-20.0	rebase'
# Graphical performance fix
'frameworks/native		https://github.com/lineageos/android_frameworks_native		losul	lineage-20.0	https://github.com/rinando/android_frameworks_native		rinando	lineage-20.0	rebase'
# Shim support
'bionic				https://github.com/lineageos/android_bionic			losul	lineage-20.0	https://github.com/rinando/android_bionic			rinando	lineage-20.0	rebase'
# Legacy ADB Function FS
'packages/modules/adb		https://github.com/lineageos/android_packages_modules_adb	losul	lineage-20.0	https://github.com/rinando/android_packages_modules_adb		rinando	lineage-20.0	rebase'
#Fix network BPF wifi issues...
'frameworks/libs/net		https://android.googlesource.com/platform/frameworks/libs/net 		aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_frameworks_libs_net		rinando	lineage-20.0	rebase'
'packages/modules/Connectivity			https://github.com/LineageOS/android_packages_modules_Connectivity		losul	lineage-20.0	https://github.com/rinando/android_packages_modules_Connectivity			rinando	lineage-20.0	rebase'
'packages/modules/NetworkStack			https://android.googlesource.com/platform/packages/modules/NetworkStack		aosp	refs/tags/android-13.0.0_r8	https://github.com/rINanDO/android_packages_modules_NetworkStack			rinando	lineage-20.0	rebase'
'system/netd			https://github.com/lineageos/android_system_netd		aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_system_netd			rinando	lineage-20.0	rebase'
'system/memory/lmkd			https://github.com/lineageos/android_system_memory_lmkd 		github	lineage-20.0	https://github.com/rinando/android_system_memory_lmkd			rinando	lineage-20.0	rebase'

# Disable BPF loading modules
'system/bpf			https://android.googlesource.com/platform/system/bpf		aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_system_bpf			rinando	lineage-20.0	rebase'
# Fix memfd
'external/perfetto			https://android.googlesource.com/platform/external/perfetto	aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_external_perfetto	rinando	lineage-20.0	rebase'

# Build fix
'hardware/lineage/interfaces	https://github.com/LineageOS/android_hardware_lineage_interfaces	losul	lineage-20.0	https://github.com/rinando/android_hardware_lineage_interfaces	rinando	lineage-20.0	rebase'
# Legacy Kernel build
'prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9	https://github.com/rinando/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9	rinando	lineage-17.1			https://github.com/rinando/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9			rinando	lineage-20.0	rebase'
)


PROJECTS_LOS=(
#Memfd
'art				https://android.googlesource.com/platform/art			aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_art				rinando	lineage-20.0	rebase'
# home/wake-button and camera extensions
'system/core			https://github.com/lineageos/android_system_core		github	lineage-20.0	https://github.com/rinando/android_system_core			rinando	lineage-20.0	rebase'
# Mali crash-fix, StorageXML, ColorFade, Camera, Memory trim
'frameworks/base		https://github.com/lineageos/android_frameworks_base		github	lineage-20.0	https://github.com/rinando/android_frameworks_base		rinando	lineage-20.0	rebase'
# Camera, codecs support
'frameworks/av			https://github.com/lineageos/android_frameworks_av		github	lineage-20.0	https://github.com/rinando/android_frameworks_av		rinando	lineage-20.0	rebase'
# Graphical performance fix
'frameworks/native		https://github.com/lineageos/android_frameworks_native		github	lineage-20.0	https://github.com/rinando/android_frameworks_native		rinando	lineage-20.0	rebase'
# Shim support
'bionic				https://github.com/lineageos/android_bionic			github	lineage-20.0	https://github.com/rinando/android_bionic			rinando	lineage-20.0	rebase'
# Fix legacy build
'build/make			https://github.com/lineageos/android_build			github	lineage-20.0	https://github.com/rinando/android_build			rinando	lineage-20.0	rebase'
#'build/soong			https://github.com/lineageos/android_soong			github	lineage-19.1	https://github.com/rinando/android_build_soong			rinando	lineage-19.1	rebase'
#'packages/modules/Permission	https://github.com/lineageos/android_packages_modules_Permission	github	lineage-19.1	https://github.com/rinando/android_packages_modules_Permission			rinando	lineage-19.1	rebase'
# Legacy ADB Function FS
'packages/modules/adb		https://github.com/lineageos/android_packages_modules_adb	github	lineage-20.0	https://github.com/rinando/android_packages_modules_adb		rinando	lineage-20.0	rebase'
# Gesture navigation
#'packages/apps/Settings		https://github.com/LineageOS/android_packages_apps_Settings	github	lineage-19.1	https://github.com/rinando/android_packages_apps_Settings	rinando	lineage-19.1	rebase'

#'external/boringssl		https://android.googlesource.com/platform/external/boringssl	aosp	refs/tags/android-12.1.0_r22	https://github.com/rinando/android_external_boringssl	rinando	lineage-19.1	rebase'
#'external/ntfs-3g		https://github.com/LineageOS/android_external_ntfs-3g		github	lineage-19.1	https://github.com/rinando/android_external_ntfs-3g		rinando	lineage-19.1	checkout'
#'external/e2fsprogs		https://github.com/LineageOS/android_external_e2fsprogs		github	lineage-19.1	https://github.com/rinando/android_external_e2fsprogs		rinando	lineage-19.1	checkout'
# Fix i9300 gps blob partially...
'system/libhidl			https://github.com/LineageOS/android_system_libhidl	github	lineage-20.0	https://github.com/rinando/android_system_libhidl	rinando	lineage-20.0	rebase'
#Fix network BPF wifi issues...
'frameworks/libs/net		https://android.googlesource.com/platform/frameworks/libs/net 		aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_frameworks_libs_net		rinando	lineage-20.0	rebase'
'packages/modules/Connectivity			https://github.com/LineageOS/android_packages_modules_Connectivity		github	lineage-20.0	https://github.com/rinando/android_packages_modules_Connectivity			rinando	lineage-20.0	rebase'
'packages/modules/NetworkStack			https://android.googlesource.com/platform/packages/modules/NetworkStack		aosp	refs/tags/android-13.0.0_r8	https://github.com/rINanDO/android_packages_modules_NetworkStack			rinando	lineage-20.0	rebase'
'system/netd			https://github.com/lineageos/android_system_netd		aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_system_netd			rinando	lineage-20.0	rebase'
'system/memory/lmkd			https://github.com/lineageos/android_system_memory_lmkd 		github	lineage-20.0	https://github.com/rinando/android_system_memory_lmkd			rinando	lineage-20.0	rebase'

# Disable BPF loading modules
'system/bpf			https://android.googlesource.com/platform/system/bpf		aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_system_bpf			rinando	lineage-20.0	rebase'
# Fix memfd
'external/perfetto			https://android.googlesource.com/platform/external/perfetto	aosp	refs/tags/android-13.0.0_r8	https://github.com/rinando/android_external_perfetto	rinando	lineage-20.0	rebase'

#'hardware/broadcom/wlan		https://android.googlesource.com/platform/hardware/broadcom/wlan		github	refs/tags/android-12.1.0_r22	https://github.com/rinando/android_hardware_broadcom_wlan	rinando	lineage-19.1	checkout'
#'hardware/samsung		https://github.com/lineageos/android_hardware_samsung		lineage	lineage-19.1	https://github.com/rinando/android_hardware_samsung		rinando	lineage-19.1	rebase'
#'hardware/ril			https://github.com/lineageos/android_hardware_ril		github	lineage-19.1	https://github.com/rinando/android_hardware_ril			rinando	lineage-19.1	rebase'
#'vendor/samsung			https://github.com/themuppets/proprietary_vendor_samsung	themuppets	lineage-19.1	https://github.com/rinando/proprietary_vendor_samsung	rinando	lineage-19.1	checkout'
# Legacy Kernel build
'vendor/lineage			https://github.com/LineageOS/android_vendor_lineage		github	lineage-20.0	https://github.com/rinando/android_vendor_lineage		rinando	lineage-20.0	rebase'
# Build fix
'hardware/lineage/interfaces	https://github.com/LineageOS/android_hardware_lineage_interfaces	github	lineage-20.0	https://github.com/rinando/android_hardware_lineage_interfaces	rinando	lineage-20.0	rebase'
# Build fix #Tempory disabled code not needed
#'lineage-sdk	https://github.com/LineageOS/android_lineage-sdk	github	lineage-20.0	https://github.com/rinando/android_android_lineage-sdk	rinando	lineage-20.0	rebase'
# Legacy Kernel build
'prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9	https://github.com/rinando/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9	rinando	lineage-17.1			https://github.com/rinando/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9			rinando	lineage-20.0	rebase'
# libcutils for RIL
'hardware/lineage/compat	https://github.com/LineageOS/android_hardware_lineage_compat	github	lineage-20.0	https://github.com/rinando/android_hardware_lineage_compat	rinando	lineage-20.0	rebase'
 

#'device/samsung/galaxys2-common	https://github.com/lineageos/android_device_samsung_galaxys2-common	github	lineage-17.0	https://github.com/rinando/android_device_samsung_galaxys2-common	rinando	lineage-19.1	checkout'
#'device/samsung/i9100		https://github.com/lineageos/android_device_samsung_i9100		lineage	lineage-17.0	https://github.com/rinando/android_device_samsung_i9100			rinando	lineage-19.1	checkout'
#'device/samsung/smdk4412-common	https://github.com/lineageos/android_device_samsung_smdk4412-common	lineage	cm-14.1		https://github.com/rinando/android_device_samsung_smdk4412-common	rinando	lineage-19.1	checkout'
#'device/samsung/i9300		https://github.com/lineageos/android_device_samsung_i9300		lineage	cm-14.1		https://github.com/rinando/android_device_samsung_i9300			rinando	lineage-19.1	checkout'
#'kernel/samsung/smdk4412	https://github.com/lineageos/android_kernel_samsung_smdk4412		github	lineage-17.0	https://github.com/rinando/android_kernel_samsung_smdk4412		rinando	lineage-19.1	checkout'

#'device/samsung/herolte		https://github.com/lineageos/android_device_samsung_herolte		github	lineage-19.1	https://github.com/rinando/android_device_samsung_herolte		rinando	lineage-19.1	checkout'
#'device/samsung/universal8890-common	https://github.com/lineageos/android_device_samsung_universal8890-common	github	lineage-19.1	https://github.com/rinando/android_device_samsung_universal8890-common		rinando	lineage-19.1	checkout'
#'device/samsung_slsi/sepolicy	https://github.com/lineageos/android_device_samsung_slsi_sepolicy		github	lineage-19.1	https://github.com/rinando/android_device_samsung_slsi_sepolicy		rinando	lineage-19.1	checkout'
#'kernel/samsung/universal8890	https://github.com/lineageos/android_kernel_samsung_universal8890		github	lineage-19.1	https://github.com/rinando/android_kernel_samsung_universal8890		rinando	lineage-19.1	checkout'
)


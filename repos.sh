
SOURCE_REPO_URL="https://www.github.com/lineageos"
CUSTOM_REPO_URL="https://www.github.com/rinando/"

PROJECTS=(
# Fix legacy build
'build/make			https://github.com/lineageos/android_build			github	lineage-20.0	https://github.com/rinando/android_build			rinando	lineage-20.0	rebase'
# libcutils for RIL
'hardware/lineage/compat	https://github.com/LineageOS/android_hardware_lineage_compat	github	lineage-20.0	https://github.com/rinando/android_hardware_lineage_compat	rinando	lineage-20.0	rebase'
# Legacy Kernel build
'vendor/lineage			https://github.com/LineageOS-UL/android_vendor_lineage		github	lineage-20.0	https://github.com/rinando/android_vendor_lineage		rinando	lineage-20.0	rebase'



#Memfd
'art				https://android.googlesource.com/platform/art			aosp	refs/tags/android-13.0.0_r11	https://github.com/rinando/android_art				rinando	lineage-20.0	rebase'
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
# Legacy ADB Function FS
'packages/modules/adb		https://github.com/lineageos/android_packages_modules_adb	github	lineage-20.0	https://github.com/rinando/android_packages_modules_adb		rinando	lineage-20.0	rebase'
#Fix network BPF wifi issues...
'frameworks/libs/net		https://android.googlesource.com/platform/frameworks/libs/net 		aosp	refs/tags/android-13.0.0_r11	https://github.com/rinando/android_frameworks_libs_net		rinando	lineage-20.0	rebase'
'packages/modules/Connectivity			https://github.com/LineageOS/android_packages_modules_Connectivity		github	lineage-20.0	https://github.com/rinando/android_packages_modules_Connectivity			rinando	lineage-20.0	rebase'
'packages/modules/NetworkStack			https://android.googlesource.com/platform/packages/modules/NetworkStack		aosp	refs/tags/android-13.0.0_r11	https://github.com/rINanDO/android_packages_modules_NetworkStack			rinando	lineage-20.0	rebase'
'system/netd			https://github.com/lineageos/android_system_netd		aosp	refs/tags/android-13.0.0_r11	https://github.com/rinando/android_system_netd			rinando	lineage-20.0	rebase'
'system/memory/lmkd			https://github.com/lineageos/android_system_memory_lmkd 		github	lineage-20.0	https://github.com/rinando/android_system_memory_lmkd			rinando	lineage-20.0	rebase'

# Disable BPF loading modules
'system/bpf			https://android.googlesource.com/platform/system/bpf		aosp	refs/tags/android-13.0.0_r11	https://github.com/rinando/android_system_bpf			rinando	lineage-20.0	rebase'
# Fix memfd
'external/perfetto			https://android.googlesource.com/platform/external/perfetto	aosp	refs/tags/android-13.0.0_r11	https://github.com/rinando/android_external_perfetto	rinando	lineage-20.0	rebase'

# Build fix
'hardware/lineage/interfaces	https://github.com/LineageOS/android_hardware_lineage_interfaces	github	lineage-20.0	https://github.com/rinando/android_hardware_lineage_interfaces	rinando	lineage-20.0	rebase'
# Legacy Kernel build
'prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9	https://github.com/rinando/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9	rinando	lineage-17.1			https://github.com/rinando/android_prebuilts_gcc_linux-x86_arm_arm-linux-androideabi-4.9			rinando	lineage-20.0	rebase'
)


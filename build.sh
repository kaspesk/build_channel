rm -rf .repo/local_manifests/  && 
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs --depth=1
# Clone local_manifests repository
git clone https://github.com/kaspesk/local_manifests --depth 1 -b 11.0 .repo/local_manifests && 
# Sync the repositories
# Set up build environment
export BUILD_USERNAME=kaspesk 
export BUILD_HOSTNAME=crave 
# Build the ROM
lunch lineage_channel-userdebug && make installclean && mka bacon

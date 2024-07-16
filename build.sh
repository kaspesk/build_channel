rm -rf .repo/local_manifests/  && 
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs --depth=1
# Clone local_manifests repository
git clone https://github.com/kaspesk/local_manifests --depth 1 -b 11.0 .repo/local_manifests && 
# Sync the repositories
/opt/crave/resync.sh  && 
# Set up build environment
export BUILD_USERNAME=kaspesk 
export BUILD_HOSTNAME=crave 
source build/envsetup.sh && 
# Build the ROM
lunch lineage_starqltechn-userdebug && make installclean && mka bacon

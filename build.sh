rm -rf .repo/local_manifests/  && 
repo init -u https://github.com/crdroid-security/android.git -b 11.0 --git-lfs --depth=1
# Clone local_manifests repository
git clone https://github.com/PurpleVoyager401/local_manifests_starqltechn --depth 1 -b lineage-18.1-temp .repo/local_manifests && 
# Sync the repositories
/opt/crave/resync.sh  && 
# Set up build environment
export BUILD_USERNAME=PurpleVoyager401 
export BUILD_HOSTNAME=crave 
source build/envsetup.sh && 
# Build the ROM
lunch lineage_starqltechn-userdebug && make installclean && mka bacon

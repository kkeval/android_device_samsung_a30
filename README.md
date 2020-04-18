# LineageOS device tree for the Samsung Galaxy A30

LineageOS 17.1 for the A30 (SM-A305F)

        repo init -u git://github.com/LineageOS/android.git -b lineage-17.1

### Steps

* The local manifest:

        nano .repo/local_manifests/roomservice.xml

        <?xml version="1.0" encoding="UTF-8"?>
        <manifest>
            <project name="crazo7924/device_samsung_beyond0lte" path="device/samsung/a30" />
            <project name="crazo7924/device_samsung_exynos7904-common" path="device/samsung/exynos7904-common" remote="github" />
            <project name="crazo7924/kernel_samsung_exynos7904" path="kernel/samsung/exynos7904" remote="github" />
            <project name="crazo7924/proprietary_vendor_samsung_a30" path="vendor/samsung/a30" remote="github" />
            <project name="LineageOS/android_device_samsung_slsi_sepolicy" path="device/samsung_slsi/sepolicy" remote="github" />
        </manifest>

* Extract vendor blobs

        cd device/samsung/a30
        ./extract-files.sh

* Setup the environment

        . build/envsetup.sh
        lunch lineage_a30-userdebug

* Build it

        m -j <insert--a-number-according-to-your-builder-cpu> bacon

        (Note: bacon here means the food, not OnePlus One)

* Get the zip's location
	
        cd $OUT
        pwd

echo "removing old module"
rm mayfly_overlay.zip

echo "build overlay apks"
bash vendor_hardware_overlay/build/build.sh

echo "making module"
mv vendor_hardware_overlay/build/treble-overlay-xiaomi-mi12s.apk module/system/product/overlay/
mv vendor_hardware_overlay/build/treble-overlay-xiaomi-mi12s-systemui.apk module/system/product/overlay/
cd module
zip -r ../mayfly_overlay.zip *

echo "done"

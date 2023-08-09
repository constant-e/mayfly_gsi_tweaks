echo "removing old module"
rm mayfly_overlay.zip

echo "build overlay apks"
bash vendor_hardware_overlay/build/build.sh

echo "making module"
mv vendor_hardware_overlay/build/treble-overlay-xiaomi-mi12s.apk Module/system/product/overlay/
mv vendor_hardware_overlay/build/treble-overlay-xiaomi-mi12s-systemui.apk Module/system/product/overlay/
cd Module
zip -r ../mayfly_overlay.zip *

echo "done"

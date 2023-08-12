echo "removing old module"
rm mayfly_overlay.zip

echo "building overlay apks"
bash vendor_hardware_overlay/build/build.sh

echo "making module"
mv vendor_hardware_overlay/build/*.apk module/system/product/overlay/
mv module/system/product/overlay/.gitkeep ./
cd module
zip -r ../mayfly_overlay.zip *
mv ../.gitkeep system/product/overlay/

echo "done"

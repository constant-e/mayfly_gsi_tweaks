# Xiaomi 12S (mayfly) GSI 优化

## 优化内容
1. android : 添加vendor中overlay的内容；UI圆角调整；全面屏调整
2. com.android.systemui : 添加vendor中overlay的内容；UI圆角调整
3. /system/build.prop : 将音量阶数调整至15；默认音量阶数调整至10

## 使用方法
1. 生成Magisk或KernelSU模块：  
运行 make_module.sh (需要依赖：zip, aapt)  
```bash
bash make_module.sh
```  
会在项目根目录下生成mayfly_overlay.zip，通过Magisk或KernelSU安装即可

2. 只生成overlay文件  
运行vendor_hardware_overlay/build/build.sh (需要依赖aapt)  
```bash
bash vendor_hardware_overlay/build/build.sh
```  
会在vendor_hardware_overlay/build下生成两个apk文件，为android和com.android.systemui的overlay文件，选择适合的方法安装即可

## 使用的其他源代码
1. TrebleDroid/vendor_hardware_overlay for vendor_hardware_overlay
2. cupid-development/android_device_xiaomi_cupid for display cutout参数
3. Iconify for 部分UI圆角调整

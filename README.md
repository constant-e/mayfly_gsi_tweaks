# Xiaomi 12S (mayfly) GSI 优化

测试中，不完善

## 优化内容
1. android : 添加vendor中overlay的内容；UI圆角和间距调整；全面屏调整（注：由于未知原因，此项目android的overlay似乎在priority小于1000时不会生效，大于等于1000时生效但不会在framework-res.apk中体现，未在framework-res.apk中找到修改痕迹是正常现象。如需更高的优先级可以删除isStatic属性并在安装后手动启用overlay）
2. com.android.systemui : 添加vendor中overlay的内容；UI圆角和间距调整；亮屏动画(从电源键处展开)优化
3. /system/build.prop : 将音量阶数调整至15；默认音量阶数调整至10

## 使用方法
1. 生成Magisk或KernelSU模块：  
运行 make_module.sh (需要依赖：aapt, zip)  
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

## Xiaomi 12S GSI部分已知问题
1. 除在卡2的联通SIM卡外，其他SIM卡无法接收短信
2. 指纹
3. 67W快充（小米私有协议不可用,实测最高支持20W PD快充）
4. 自动亮度（传感器正常，无开启选项）
5. LineageOS Light下phh settings中无法切换至120Hz，系统无法识别机型
6. bilibili等在播放中暂停后继续播放会导致视频画面卡住，疑似IjkMediaPlayerService崩溃导致，可以拖动进度条恢复播放。不使用ijkplayer的app应无此问题
7. 充电剩余时间显示异常
8. 屏幕圆角锯齿仍存在
9. 部分UI圆角仍较小

## Xiaomi 12S GSI不需要模块优化的问题的优化方法
1. volte : 执行phh settings中的IMS选项中的全部内容后重启
2. 5G : 拨号\*#\*#4636#\*#\*，进入第一项即可找到调整选项
3. 双击亮屏 : 在phh settings中的Xiaomi选项中开启dt2w(double tap to wake)
4. 相机优化 : 寻找谷歌相机相关教程或移植MIUI相机
5. AOD : （或通过模块）在phh settings中的Misc选项中开启强制允许AOD（force allow always on display）

## 使用的其他源代码
1. TrebleDroid/vendor_hardware_overlay for vendor_hardware_overlay
2. cupid-development/android_device_xiaomi_cupid for display cutout参数
3. Iconify for 部分UI圆角调整

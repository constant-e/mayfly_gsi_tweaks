# Xiaomi 12S（mayfly）GSI优化

测试中，不完善。

## 优化内容
1. android：添加vendor和Xiaomi 12的Device tree中部分overlay的内容；UI圆角和间距调整；全面屏调整；开启自动亮度。
2. com.android.systemui：添加vendor中overlay的内容；UI圆角和间距调整；亮屏动画(从电源键处展开)优化。
3. com.android.settings：开启120Hz选项。
4. /system/build.prop：将音量阶数调整至15；默认音量阶数调整至10；添加机型信息。

注：由于未知原因，此项目android的overlay似乎在priority较小时不会生效，如需更高的优先级可以删除isStatic属性并在安装后手动启用overlay。

## 使用方法（模块）
1. 安装依赖aapt git zip。
2. 克隆此仓库：  
```bash
git clone https://github.com/EntityBug/mayfly_gsi_tweaks.git
```
3. 运行 make_module.sh以生成Magisk或KernelSU模块：  
```bash
cd mayfly_gsi_tweaks && bash make_module.sh
```  
4. 通过Magisk或KernelSU安装生成在项目根目录下的mayfly_overlay.zip。

## 使用方法（只生成overlay文件）
1. 安装依赖aapt git。
2. 克隆此仓库：  
```bash
git clone https://github.com/EntityBug/mayfly_gsi_tweaks.gits
```
3. 运行vendor_hardware_overlay/build/build.sh：  
```bash
cd mayfly_gsi_tweak && bash vendor_hardware_overlay/build/build.sh
```  
4. 此方法会在vendor_hardware_overlay/build下生成android、com.android.settings和com.android.systemui的overlay文件，选择适合的方法安装即可。

注：此方法不会修改/system/build.prop

## Xiaomi 12S GSI部分已知问题
1. 除在卡2的联通SIM卡外，其他SIM卡无法接收短信。
2. 指纹。
3. 67W快充（小米私有协议不可用,实测最高支持20W PD快充）。
4. LineageOS Light下phh settings中无法切换至120Hz（未测试新版是否解决），系统无法识别机型（可自行调整module/system.prop解决）。
5. bilibili等在播放中暂停后继续播放会导致视频画面卡住，疑似IjkMediaPlayerService崩溃导致，可以拖动进度条恢复播放。不使用ijkplayer的app应无此问题。
6. 充电剩余时间显示异常。
7. 屏幕圆角锯齿仍存在。
8. 部分UI圆角仍较小。

## Xiaomi 12S GSI尚未测试的项目
1. NFC。
2. 红外。

## Xiaomi 12S GSI不需要模块优化的问题的优化方法
1. volte：执行phh settings中的IMS选项中的全部内容后重启。
2. 5G：拨号\*#\*#4636#\*#\*，进入第一项即可找到调整选项。
3. 双击亮屏：在Phh Treble Settings中的Xiaomi选项中开启DT2W。
4. 相机优化：寻找谷歌相机相关教程或移植MIUI相机。
5. AOD：（或通过模块）在Phh Treble Settings中的Misc选项中开启Force Allow Always-On Display。

注：前4项未通过模块实现，无论是否安装模块都要执行。

## 使用的其他源代码
1. TrebleDroid/vendor_hardware_overlay：vendor_hardware_overlay模板。
2. cupid-development多个仓库：部分overlay内容。
3. Iconify for 部分UI圆角调整。

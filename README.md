# [Public Achieved] Xiaomi 12S（mayfly）GSI优化

停止更新

## 优化内容
1. 修复 自动亮度（体验不如官方）
2. 修复 挖孔周围锯齿（屏幕四角锯齿仍存在）
3. 修复 部分ROM无法识别机型
4. 修复 AOD及AOD亮屏动画不正常
5. 修复 高刷相关设置
6. 优化 状态栏边距
7. 优化 系统圆角
8. 优化 音量阶数
9. 新增 部分小米的overlay内容

注：此项目android的overlay的priority设置为700，如需更高的优先级可以删除isStatic属性并在安装后手动启用overlay。

## 使用方法
1. 在Release界面下载mayfly_overlay.zip
2. 通过Magisk或KernelSU安装mayfly_overlay.zip

## 从源代码构建（Linux）
1. 安装依赖aapt（可选） git zip。
2. 克隆此仓库：  
```bash
git clone https://github.com/EntityBug/mayfly_gsi_tweaks.git
```
3. 运行 make_module.sh以生成Magisk或KernelSU模块：  
```bash
cd mayfly_gsi_tweaks && bash make_module.sh
```  
4. 通过Magisk或KernelSU安装生成在项目根目录下的mayfly_overlay.zip。

## Xiaomi 12S GSI部分已知问题
1. 除在卡2的联通SIM卡外，其他SIM卡无法接收短信
2. 指纹
3. 67W快充（小米私有协议不可用,实测最高支持20W PD快充）
4. bilibili等在播放中暂停后继续播放大概率会导致视频画面卡住，可以拖动进度条恢复播放。不使用ijkplayer的app应无此问题
5. 几个小bug：充电剩余时间显示异常，屏幕圆角锯齿仍存在，部分UI圆角仍较小

## Xiaomi 12S GSI尚未测试的项目
1. NFC（开关正常）
2. 红外

## Xiaomi 12S GSI其他问题优化
1. 双击亮屏：设置->Phh Treble Settings->Xiaomi features->Enable DT2W
2. VoLTE：设置->Phh Treble Settings->IMS features四个选项都点一遍（第二个选项会下载ims.apk，可以在通知中心查看进度，下载完后安装并重启
3. 5G：拨号\*#\*#4636#\*#\*->手机信息->首选网络类型，拉到底下倒数第二个（最长的那个）就是

注：未通过模块实现，无论是否安装模块都要执行。

## 使用的其他源代码
1. TrebleDroid/vendor_hardware_overlay：vendor_hardware_overlay模板
2. cupid-development多个仓库：部分overlay内容
3. Iconify for 部分UI圆角调整
4. Xiaomi：部分overlay内容
5. Magisk：Magisk模块


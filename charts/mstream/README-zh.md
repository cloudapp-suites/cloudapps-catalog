# mStream 音乐

mStream 是一个个人音乐流媒体服务器。你可以使用 mStream 从你的家用电脑将音乐流式传输到任何设备，随时随地访问。

主界面|共享|管理界面
---|---|---
![main](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mstream/image/mstreamv5.png)|![shared](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mstream/image/shared.png)|![admin](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mstream/image/admin.png)

## 演示及其他链接

#### [查看演示版本！](https://demo.mstream.io/)

#### [Discord 频道](https://discord.gg/AM896Rr)

#### [官方网站](https://mstream.io)

### 服务器特性
* 跨平台，支持 Windows、OSX、Linux 和 FreeBSD
* 内存和 CPU 占用低
* 支持多 TB 级别的音乐库
* 可运行在 Raspberry Pi 等 ARM 开发板上

### WebApp 特性
* 无缝播放
* Milkdrop 可视化效果
* 播放列表共享
* 通过文件浏览器上传文件

## 技术细节

* **依赖项：** NodeJS v10 或更高版本

* **支持的文件格式：** flac, mp3, mp4, wav, ogg, opus, aac, m4a

## 致谢

mStream 基于一些优秀的开源库构建：

* [music-metadata](https://github.com/Borewit/music-metadata) - NodeJS 上最好的元数据解析器
* [LokiJS](https://github.com/techfort/LokiJS) - 一个用 JavaScript 编写的本地内存数据库。LokiJS 是 mStream 快速且易于安装的关键
* [Butterchurn](https://github.com/jberg/butterchurn) - 用 JavaScript 实现的 Milkdrop 可视化效果

同时感谢 [LinuxServer.io](https://www.linuxserver.io/) 团队维护 Docker 镜像！
<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=restreamer)

</div>


<h1 align="center">Restreamer</h1>
<h3 align="center">一个非常好且免费的直播流处理替代方案。</h3>
<p align="center">
<a href="https://github.com/datarhei/restreamer/blob/2.x/LICENSE" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/restreamer/image/restreamer.svg" alt="License" /></a>
<a href="https://docs.datarhei.com/restreamer/getting-started/quick-start" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/restreamer/image/documentation-get_20started-green.svg" alt="Documentation" /></a>
</p>
<p align="center"><a href="https://demo.datarhei.com/ui" target="_blank">试用在线演示</a><br />
<a href="https://demo.datarhei.com/ui" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/restreamer/image/username-admin-blue.svg" alt="demo username" /></a>
<a href="https://demo.datarhei.com/ui" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/restreamer/image/password-demo-blue.svg" alt="demo password" /></a>

<p align="center">
  <a href="https://datarhei.com">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/restreamer/image/readme-promo.gif" alt="Restreamer Promo Video" />
  </a>
</p>

<p align="center">自主托管解决方案，将直播流传输到您的网站并发布到 YouTube-Live、Twitter、Twitch、Vimeo 等许多其他平台或服务。我们的 Docker 镜像易于安装，可在 Linux 环境中运行（MacOS/Windows 通过 Docker Desktop）。此外，可以将 Restreamer 与树莓派等单板计算机或 GPU 驱动的系统结合用于视频编码。</p>
<br />
<hr />

## 功能特性

- 简化的用户界面
- 简单的向导配置
- 多种音视频输入、输出、协议和编解码器
- 重新流向 YouTube-Live 等平台、Wowza Media Server 等软件以及其他基于 RTMP、SRT 等协议的目标
- 可选将单独的音频通道混入视频
- 为您的网站内置 VideoJS 播放器
- 可配置的发布网站，无需嵌入播放器即可进行流媒体播放
- 使用知识共享协议的内容许可证
- HTTP/S- (HLS)、RTMP/S- 和 SRT- 流媒体服务器
- 自动 Let's Encrypt HTTPS 证书
- 观看者/带宽监控和限制
- 支持 Raspberry Pi (MMAL/OMX)、Nvidia Cuda、Intel VAAPI
- 支持硬件和虚拟设备
- FFmpeg 视频处理（尽可能原生）
- REST-API (JSON) 并且 100% Swagger 文档化
- 资源监控（可选 Prom-Metrics）
- 服务器和进程日志
- 符合 GDPR 规范，不使用第三方提供商且不保存观众数据

## 快速设置

### AMD64/ARMv7/ARM64:
```sh
docker run -d --restart=always --name restreamer \
   -v /opt/restreamer/config:/core/config -v /opt/restreamer/data:/core/data \
   -p 8080:8080 -p 8181:8181 \
   -p 1935:1935 -p 1936:1936 \
   -p 6000:6000/udp \
   datarhei/restreamer:latest
```

*`--privileged` 仅用于 USB 摄像头等本地设备。*    
*如果无法访问网络源，请尝试 `--security-opt seccomp=unconfined`。*

### ARMv7/ARM64 树莓派:
```sh
docker run -d --restart=always --name restreamer \
   -v /opt/restreamer/config:/core/config -v /opt/restreamer/data:/core/data \
   --privileged \
   -p 8080:8080 -p 8181:8181 \
   -p 1935:1935 -p 1936:1936 \
   -p 6000:6000/udp \
   datarhei/restreamer:rpi-latest
```

*`--privileged` 仅用于 USB 摄像头等本地设备。*    
*如果无法访问网络源，请尝试 `--security-opt seccomp=unconfined`。*

### AMD64 Nvidia Cuda:
```sh
docker run -d --restart=always --name restreamer \
   -v /opt/restreamer/config:/core/config -v /opt/restreamer/data:/core/data \
   --runtime=nvidia --privileged \
   -p 8080:8080 -p 8181:8181 \
   -p 1935:1935 -p 1936:1936 \
   -p 6000:6000/udp \
   datarhei/restreamer:cuda-latest
```

*`--privileged` 仅用于 USB 摄像头等本地设备。*    
*如果无法访问网络源，请尝试 `--security-opt seccomp=unconfined`。*

### AMD64 Intel VAAPI:
```sh
docker run -d --restart=always --name restreamer \
   -v /opt/restreamer/config:/core/config -v /opt/restreamer/data:/core/data \
   -v /dev/dri:/dev/dri --privileged \
   -p 8080:8080 -p 8181:8181 \
   -p 1935:1935 -p 1936:1936 \
   -p 6000:6000/udp \
   datarhei/restreamer:vaapi-latest
```

*`--privileged` 仅用于 USB 摄像头等本地设备。*    
*如果无法访问网络源，请尝试 `--security-opt seccomp=unconfined`。*

*对于外部访问（http/s、rtmp/s、srt），可能需要在您的互联网路由器上设置端口转发到 Restreamer 的内部 IP 地址。*

## 文档

文档可在 [docs.datarhei.com/restreamer](https://docs.datarhei.com/restreamer) 获取。我们提供了大量信息，从设置摄像头、在您的网站上嵌入播放器，到向 YouTube-Live 等服务进行流媒体传输等等。

- [快速开始](https://docs.datarhei.com/restreamer/getting-started/quick-start)
- [安装](https://docs.datarhei.com/restreamer/installing/minimum-requirements)
- [手册](https://docs.datarhei.com/restreamer/knowledge-base/manual)
- [指南](https://docs.datarhei.com/restreamer/knowledge-base/user-guides)

## 开发

### 创建自定义镜像（捆绑包）:

#### [Restreamer FFmpeg](https://github.com/datarhei/ffmpeg):
```
$ git clone github.com/datarhei/ffmpeg
$ cd ffmpeg
$ docker build -f Dockerfile.alpine -t myffmpeg .
```

#### [Restreamer 后端](https://github.com/datarhei/core) (Golang):

```
$ git clone github.com/datarhei/core
$ cd core
$ docker build -t mycore .
```

#### [Restreamer 界面](https://github.com/datarhei/restreamer-ui) (React):
```
$ git clone github.com/datarhei/restreamer-ui
$ cd restreamer-ui
$ docker build -t myrsui .
```

#### Restreamer 捆绑包:
```
$ git clone github.com/datarhei/restreamer
$ cd restreamer
$ docker build --build-arg FFMPEG_IMAGE=myffmpeg --build-arg CORE_IMAGE=mycore --build-arg RESTREAMER_UI_IMAGE=myrsui -t myrestreamer .
$ docker run -it --rm -p 8080:8080 myrestreamer
```

### 在 [Restreamer 界面](https://github.com/datarhei/restreamer-ui) 中添加/修复翻译:

Restreamer 界面目前已翻译为多种语言，如德语、法语、意大利语、西班牙语等。如果您发现翻译错误或对某些句子有更好的建议，可以在 [poeditor.com](https://poeditor.com/join/project/ogATl3F48K) 成为翻译贡献者。
您也可以在该网站开始翻译 Restreamer 界面中尚未支持的语言。

在以下网址贡献翻译: [https://poeditor.com/join/project/ogATl3F48K](https://poeditor.com/join/project/ogATl3F48K)

## 社区支持

如需使用 Restreamer 的一般帮助，请参考官方[文档](https://docs.datarhei.com/restreamer)。如需额外支持，您可以使用 Github 提出问题（错误报告、贡献、功能）。

## 许可证
有关许可信息，请参见 LICENSE 文件。

## 商业咨询
**我们为商业需求提供专业支持、敏捷软件开发和咨询服务。** 如果您有商业需求，无论是错误修复还是功能增强，请直接联系我们 support@datarhei.com。
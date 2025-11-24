<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=coral-talk)

</div>

---
<p align="center">
  <a href="https://coralproject.net" target="_blank"><img width="250" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/coral-talk/image/coralproject_by_voxmedia.svg" alt="Coral by Vox Media" /></a>
</p>

<p align="center">
  来自 <a href="https://product.voxmedia.com/" target="_blank">Vox Media</a> 的更优质的评论体验。
</p>

<p align="center">
  <a href="https://github.com/coralproject/talk/actions/workflows/build-and-test.yml" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/coral-talk/image/badge.svg" alt="GithubActions" /></a>
  <a href="https://hub.docker.com/r/coralproject/talk" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/coral-talk/image/talk.svg" alt="Docker Image Version" /></a>
  <a href="https://hub.docker.com/r/coralproject/talk" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/coral-talk/image/talk.svg" alt="Docker Image Size" /></a>
  <a href="https://twitter.com/coralproject" target="_blank"><img alt="Twitter Follow" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/coral-talk/image/coralproject.svg"></a>
</p>

## 描述

在线评论系统已经过时了。我们这款开源的评论平台 [Coral](https://coralproject.net) 重新设计了评论的审核机制、展示方式和互动功能，从而为围绕您的内容开展更安全、更智能的讨论创造可能。

## 文档

如果您是初次接触 Coral，可以从 [Coral 文档](https://docs.coralproject.net/) 开始，了解如何部署和开发 Coral。

您已经安装了 Coral，并准备在您的网站上启动它。真正的社区工作从现在开始，就在上线之前。在正式发布之前，您有机会为社区的成功打下坚实的基础。请阅读我们的 [社区指南](https://guides.coralproject.net/start-here/) 了解更多内容。

## 支持

我们可以协助您安装 Coral、从其他系统迁移评论数据、集成注册平台、与您的开发人员协作，并提供定制化安装的支持。如需了解更多信息，请[联系我们](https://coralproject.net/pricing/)。

## 贡献

Coral 是一个采用 Apache-2.0 协议发布的开源项目，由 [Vox Media](https://product.voxmedia.com/) 旗下的 Coral 团队倾心打造。

如果您有兴趣为 Coral 做出贡献，请查看我们的 贡献者指南。

## 许可证

Coral 采用 Apache-2.0 协议授权。

## 版本管理

如果您正在打包 Coral 的发布版本，我们提供了一个便捷的脚本，用于更新单体仓库中所有子项目的版本号。

以下脚本将对所有子仓库执行 `npm version x.y.z` 命令，这样您就无需手动逐一更新！

```
sh scripts/version.sh MAJOR.MINOR.VERSION // 例如 8.5.0
```
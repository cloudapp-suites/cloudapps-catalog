<p align="center">
    <a href="https://github.com/gotify/logo">
        <img height="370px" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/gotify-logo.png" />
    </a>
</p>

<h1 align="center">gotify/server</h1>

<p align="center">
    <a href="https://github.com/gotify/server/actions?query=workflow%3Abuild">
        <img alt="构建状态" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/badge.svg">
    </a>
    <a href="https://codecov.io/gh/gotify/server">
        <img alt="codecov" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/badge.svg">
    </a>
    <a href="https://goreportcard.com/report/github.com/gotify/server">
        <img alt="Go Report Card" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/68747470733a2f2f676f7265706f7274636172642e636f6d2f62616467652f6769746875622e636f6d2f676f746966792f736572766572.svg">
    </a>
    <a href="https://matrix.to/#/#gotify:matrix.org">
        <img alt="Matrix" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/gotify_matrix.org.svg">
    </a>
    <a href="https://hub.docker.com/r/gotify/server">
        <img alt="Docker Pulls" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/server.svg">
    </a>
    <a href="https://github.com/gotify/server/releases/latest">
        <img alt="最新版本" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/server.svg">
    </a>
</p>

## 简介
我们想要一个简单的服务器来发送和接收消息（通过WebSocket实时传输）。为此，现有的开源项目并不多，而且大多数现有项目已被废弃。此外，一个要求是它可以自托管。我们知道市面上有很多免费和商业的推送服务。

## 功能特性

<img alt="Gotify UI 截图" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/ui.png" align="right" width="500px"/>

* 通过 REST-API 发送消息
* 通过 WebSocket 接收消息
* 管理用户、客户端和应用程序
* [插件](https://gotify.net/docs/plugin)
* Web界面 -> ./ui
* 发送消息的CLI -> [gotify/cli](https://github.com/gotify/cli)
* Android应用 -> [gotify/android](https://github.com/gotify/android)

[<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/gotify/image/en_badge_web_generic.png" alt="从Google Play获取" width="150" />][playstore]
[<img src="https://f-droid.org/badge/get-it-on.png" alt="从F-Droid获取" width="150"/>][fdroid]

<sub>（Google Play和Google Play徽标是Google LLC的商标。）</sub>

---

**[文档](https://gotify.net/docs)**

[安装](https://gotify.net/docs/install) ᛫
[配置](https://gotify.net/docs/config) ᛫
[REST-API](https://gotify.net/api-docs) ᛫
[搭建开发环境](https://gotify.net/docs/dev-setup)

## 版本控制
我们使用 [SemVer](http://semver.org/) 进行版本控制。有关可用版本，请参见
[此仓库的标签](https://github.com/gotify/server/tags)。

## 许可证
该项目根据MIT许可证授权 - 有关详细信息，请参阅 LICENSE 文件

 [playstore]: https://play.google.com/store/apps/details?id=com.github.gotify
 [fdroid]: https://f-droid.org/de/packages/com.github.gotify/
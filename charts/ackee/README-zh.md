> 🚀 **EDAS 提供应用一键部署，快来体验吧！** [立即部署](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=2d2a0dc1-e1d7-4778-8a44-fcf263c5cd13)

<div align="center">

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/ackee/image/icon.png" title="Ackee" alt="Ackee logo" width="128">

# Ackee

![构建](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/ackee/image/badge.svg) [![覆盖率状态](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/ackee/image/badge.svg)](https://coveralls.io/github/electerious/Ackee?branch=master) [![被 Awesome Selfhosted 提及](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/ackee/image/mentioned-badge.svg)](https://github.com/awesome-selfhosted/awesome-selfhosted)

Ackee 是一个自托管的、基于 Node.js 的分析工具，适用于注重隐私的用户。Ackee 运行在你自己的服务器上，分析你网站的流量，并在简洁的界面中提供有用的统计数据。

[🌍 官方网站](https://ackee.electerious.com) | [🔮 在线演示](https://demo.ackee.electerious.com) | [🧸 GraphQL Playground](https://demo.ackee.electerious.com/api)

<br/>

![浏览器中的 Ackee](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/ackee/image/readme.png)

</div>

## 👋 简介

Ackee 是一个注重隐私的自托管分析工具。我们相信你不需要追踪访客的每一个行为。Ackee 会对追踪的数据进行匿名化处理，以避免用户身份被识别，同时仍然提供有用的分析信息。对于不需要像 Google Analytics 或 Matomo 那样功能齐全的营销分析平台的用户来说，Ackee 是一个理想的选择。

- **自托管**：Ackee 运行在你自己的服务器上，并且 100% 开源
- **现代技术**：轻量级的 Node.js 和 MongoDB 架构
- **界面美观**：简洁且专注的用户界面
- **无 Cookie**：不进行唯一用户追踪，因此无需显示 Cookie 提示
- **事件追踪**：可追踪按钮点击、订阅新闻通讯等行为
- **GraphQL API**：完整的文档化 GraphQL API，允许你基于 Ackee 构建新工具

## 📚 文档

文档和指南位于 docs 文件夹中。如果你还有疑问，请查看 FAQ。

### API

Ackee 提供一个 GraphQL API，允许你基于 Ackee 构建自定义工具。你在界面上看到的所有数据都来自该 API。

### 配置项

Ackee 使用环境变量，并支持在项目根目录中使用 [`.env` 文件](https://www.npmjs.com/package/dotenv) 来集中存储所有变量。配置项说明 &#187;

### 相关项目

- [ackee-tracker](https://github.com/electerious/ackee-tracker) - 向 Ackee 发送数据
- [ackee-bitbar](https://github.com/electerious/ackee-bitbar) - 在 macOS 菜单栏中显示 Ackee 数据
- [ackee-lighthouse](https://github.com/electerious/ackee-lighthouse) - 将 Lighthouse 报告发送到 Ackee
- [ackee-report](https://github.com/BetaHuhn/ackee-report) - 用于生成性能报告的 CLI 工具
- [gatsby-plugin-ackee-tracker](https://github.com/Burnsy/gatsby-plugin-ackee-tracker) - Gatsby 的 Ackee 插件
- [Soapberry](https://wordpress.org/plugins/soapberry/) - WordPress 的 Ackee 插件
- [Ackee-PHP](https://github.com/BrookeDot/ackee-php) - 一个用于 Ackee 的 PHP 类
- [use-ackee](https://github.com/electerious/use-ackee) - 在 React 中使用 Ackee
- [nuxt-ackee](https://github.com/bdrtsky/nuxt-ackee) - Nuxt.js 的 Ackee 模块
- [ngx-ackee-wrapper](https://github.com/oakify/ngx-ackee-wrapper) - Angular 的 Ackee 包装器
- [django-ackee-middleware](https://github.com/suda/django-ackee-middleware) - Django 的 Ackee 中间件
- [gridsome-plugin-ackee](https://github.com/DenzoNL/gridsome-plugin-ackee) - Gridsome 的 Ackee 插件
- [vuepress-plugin-ackee](https://github.com/spekulatius/vuepress-plugin-ackee) - VuePress 的 Ackee 插件
- [svelte-ackee](https://github.com/gaia-green-tech/svelte-ackee) - Svelte 的 Ackee 模块
- [ackee_dart](https://github.com/marchellodev/ackee_dart) - Dart/Flutter 的 Ackee 插件 ([pub.dev](https://pub.dev/packages/ackee_dart))
- [ackee-tracker-consent](https://www.npmjs.com/package/ackee-tracker-consent) - 用于启用 Ackee 详细追踪的同意横幅

### 链接

- [在 Twitter 上关注 Ackee](https://twitter.com/getackee)
- [在 ProductHunt 上为 Ackee 投票](https://www.producthunt.com/posts/ackee)

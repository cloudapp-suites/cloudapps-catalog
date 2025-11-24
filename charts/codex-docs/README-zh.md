<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=codex-docs)

</div>

# CodeX 文档

[CodeX Docs](https://docs.codex.so/) 是一个免费的文档应用。它基于 Editor.js 生态系统，提供了现代化的内容操作功能。

你可以将它用于产品文档、团队内部文档、个人笔记或其他用途。

![page-overview-bright](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/codex-docs/image/190149130-6a6fcdec-09bc-4f96-8bdc-5ff4d789f248.png)

安装和使用都非常简单。

## 功能特性

- 🤩 基于 [Editor.js](https://editorjs.io/) 生态系统
- 📂 支持文档嵌套 —— 创建你需要的任意结构
- 💎 静态内容渲染
- 📱 桌面端和移动端都具有良好的显示效果
- 🔥 美观的页面 URL，可读性强且利于 SEO
- 🦅 集成 [Hawk](https://hawk.so/?from=docs-demo) 错误追踪
- 💌 支持通过 Telegram / Slack 提交 [拼写错误](https://github.com/codex-team/codex.misprints) 报告
- 📈 集成 [Yandex Metrica](https://metrica.yandex.com/about)
- 🚢 易于部署 —— 无需数据库及其他依赖
- 🤙 简单的配置流程
- ⚙️ 可自定义 UI。可折叠章节，隐藏侧边栏

## 演示

欢迎访问我们的 [演示站点](https://docs-demo.codex.so/)，亲身体验 CodeX Docs 的功能。

## 使用指南

1. [快速入门](https://docs.codex.so/getting-started)
2. [配置说明](https://docs.codex.so/configuration)
3. [Kubernetes 部署](https://docs.codex.so/k8s-deployment)
4. [身份验证](https://docs.codex.so/authentication)
5. [编写文档](https://docs.codex.so/writing)
6. [如何启用分析功能](https://docs.codex.so/yandex-metrica)
7. [贡献指南](https://docs.codex.so/contribution)

## 快速入门

### 1. 克隆仓库

```shell
git clone https://github.com/codex-team/codex.docs
```

### 2. 配置参数

阅读有关可用[配置](https://docs.codex.so/configuration)选项的说明。

### 3. 运行应用

#### 使用 Yarn

```shell
yarn && yarn start
```

#### 使用 Docker

```
docker-compose build
docker-compose up
```

#### 使用 Kubernetes

我们提供了即用的 [Helm Chart](https://github.com/codex-team/codex.docs.chart)，可用于在 Kubernetes 中部署项目。

## 开发指南

开发者文档详见 DEVELOPMENT.md。

# 关于 CodeX

<img align="right" width="120" height="120" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/codex-docs/image/codex-logo.svg" hspace="50">

CodeX 是一个由全球各地的数字技术专家组成的团队，致力于打造高质量的开源产品，并面向全球市场。我们欢迎有志青年加入，一起通过前沿技术的实验不断提升技能，实现职业成长。

| 🌐                           | 加入 👋                                | Twitter                                      | Instagram                                      |
| ---------------------------- | -------------------------------------- | -------------------------------------------- | ---------------------------------------------- |
| [codex.so](https://codex.so) | [codex.so/join](https://codex.so/join) | [@codex_team](http://twitter.com/codex_team) | [@codex_team](http://instagram.com/codex_team) |
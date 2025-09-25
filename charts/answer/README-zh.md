<a href="https://answer.apache.org">
    <img alt="logo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/logo.svg" height="99px">
</a>

# Apache Answer - 构建问答平台

一款适用于各种规模团队的问答平台软件。无论是社区论坛、帮助中心，还是知识管理平台，你都可以信赖 Answer。

如需了解更多项目信息，请访问 [answer.apache.org](https://answer.apache.org)。

[![LICENSE](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c6963656e73652f6170616368652f616e73776572.svg)](https://github.com/apache/answer/blob/main/LICENSE)
[![Language](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/language-go-blue.svg)](https://golang.org/)
[![Language](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/language-react-blue.svg)](https://reactjs.org/)
[![Go Report Card](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/68747470733a2f2f676f7265706f7274636172642e636f6d2f62616467652f6769746875622e636f6d2f6170616368652f616e73776572.svg)](https://goreportcard.com/report/github.com/apache/answer)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f646973636f72642d636861742d3538363566323f6c6f676f3d646973636f7264266c6f676f436f6c6f723d663566356635.svg)](https://discord.gg/Jm7Y4cbUej)

## 截图

![screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/screenshot.png)

## 快速开始

### 使用 Docker 运行

```bash
docker run -d -p 9080:80 -v answer-data:/data --name answer apache/answer:1.6.0
```

更多信息，请参阅 [安装指南](https://answer.apache.org/docs/installation)。

### 插件

Answer 提供了插件系统，供开发者创建自定义插件并扩展 Answer 的功能。你可以在此查阅[插件文档](https://answer.apache.org/community/plugins)。

我们非常重视您的反馈和建议，以帮助我们改进文档。如果您有任何意见或问题，请随时与我们联系。我们非常期待您使用我们的插件系统所创造的成果！

你也可以在此查看[插件列表](https://answer.apache.org/plugins)。

## 源码构建

### 前提条件

- Golang >= 1.23
- Node.js >= 20
- pnpm >= 9
- [mockgen](https://github.com/uber-go/mock?tab=readme-ov-file#installation) >= 1.6.0
- [wire](https://github.com/google/wire/) >= 0.5.0

### 构建步骤

```bash
# 安装 wire 和 mockgen 用于构建。你可以运行 `make check` 来检查是否已安装。
$ make generate
# 安装前端依赖并构建
$ make ui
# 安装后端依赖并构建
$ make build
```

## 贡献

我们始终欢迎贡献者的加入！

有关如何开始贡献，请参阅 [贡献指南](https://answer.apache.org/community/contributing)。

## 许可证

[Apache 许可证 2.0](https://github.com/apache/answer/blob/main/LICENSE)
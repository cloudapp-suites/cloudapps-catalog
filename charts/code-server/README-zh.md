<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=code-server)

</div>

# code-server

[!["GitHub Discussions"](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/_20GitHub-_20Discussions-gray.svg)](https://github.com/coder/code-server/discussions) [!["Join us on Slack"](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/join-us_20on_20slack-gray.svg)](https://coder.com/community) [![Twitter Follow](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/CoderHQ.svg)](https://twitter.com/coderhq) [![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/747933592273027093.svg)](https://discord.com/invite/coder) [![codecov](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/badge.svg)](https://codecov.io/gh/coder/code-server) [![See latest](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/v1.svg)](https://coder.com/docs/code-server/latest)

在任何地方的任意设备上运行 [VS Code](https://github.com/Microsoft/vscode)，并通过浏览器访问它。

![Screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/screenshot-1.png)
![Screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/screenshot-2.png)

## 主要特性

- 在任何设备上使用一致的开发环境进行编码
- 利用云服务器加速测试、编译、下载等任务
- 外出时节省本地设备电量；所有高负载任务均在服务器上运行

## 系统要求

最低配置要求及如何设置可安装 code-server 的 Google 虚拟机，请参见[系统要求](https://coder.com/docs/code-server/latest/requirements)。

**简而言之：** 支持 WebSocket 的 Linux 机器，1 GB 内存，2 个 vCPU

## 快速开始

有五种方式可以快速开始使用：

1. 使用[安装脚本](https://github.com/coder/code-server/blob/main/install.sh)，该脚本能自动化大部分安装流程。脚本会尽可能使用系统的包管理器。
2. 手动[安装 code-server](https://coder.com/docs/code-server/latest/install)
3. 使用 [coder/coder](https://cdr.co/coder-github) 将 code-server 部署给团队使用
4. 使用我们提供的一键部署按钮和指南，将 code-server [部署到云服务商](https://github.com/coder/deploy-code-server) ⚡
5. 如果你的项目已经在使用 devcontainers，可使用 [devcontainers 的 code-server 功能](https://github.com/coder/devcontainer-features/blob/main/src/code-server/README.md)

如果你使用安装脚本，可以预览安装过程中会发生什么：

```bash
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run
```

开始安装，请运行：

```bash
curl -fsSL https://code-server.dev/install.sh | sh
```

安装完成后，脚本会输出运行和启动 code-server 的说明。

> **注意**
> 若要在你的基础设施上为团队管理 code-server，请查看：[coder/coder](https://cdr.co/coder-github)

我们也提供了详细的[设置与配置指南](https://coder.com/docs/code-server/latest/guide)。

## 有疑问？

请查阅[常见问题解答](https://coder.com/docs/code-server/latest/FAQ)。

## 想要参与贡献？

详情请见[贡献指南](https://coder.com/docs/code-server/latest/CONTRIBUTING)。

## 招聘信息

有兴趣[加入 Coder 团队](https://coder.com/careers)吗？请查看[我们的招聘职位](https://coder.com/careers#openings)！

## 面向团队

我们开发了 [coder/coder](https://cdr.co/coder-github)，帮助团队更顺利地采用远程开发模式。
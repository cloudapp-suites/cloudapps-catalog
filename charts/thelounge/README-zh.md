<h1 align="center">
	<img
		width="300"
		alt="The Lounge"
		src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thelounge/image/logo-vertical-transparent-bg.svg">
</h1>

<h3 align="center">
	专为自托管设计的现代网页 IRC 客户端
</h3>

<p align="center">
	<strong>
		<a href="https://thelounge.chat/">官网</a>
		•
		<a href="https://thelounge.chat/docs">文档</a>
		•
		<a href="https://demo.thelounge.chat/">演示</a>
        •
		<a href="https://github.com/thelounge/thelounge-docker">Docker</a>
	</strong>
</p>
<p align="center">
	<a href="https://demo.thelounge.chat/"><img
		alt="#thelounge IRC 频道在 Libera.Chat 上"
		src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thelounge/image/Libera.Chat-_23thelounge-415364.svg"></a>
	<a href="https://yarn.pm/thelounge"><img
		alt="npm 版本"
		src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thelounge/image/thelounge.svg"></a>
	<a href="https://github.com/thelounge/thelounge/actions"><img
		alt="构建状态"
		src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thelounge/image/badge.svg"></a>
</p>

<p align="center">
	<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thelounge/image/thelounge-screenshot.png" width="550">
</p>

## 概述

- **为 IRC 带来现代功能。** 消息推送、链接预览、新消息标记等功能，让 IRC 走进 21 世纪。
- **始终保持连接。** 即使你离线，也能保持与 IRC 服务器的连接。
- **跨平台支持。** 无论你使用何种操作系统，只要能运行 Node.js，它就能运行。
- **响应式界面。** 客户端在桌面、手机和平板电脑上都能流畅运行。
- **同步体验。** 无论使用哪台设备，总能从上次离开的地方继续。

如需了解更多关于 The Lounge 的配置、使用和功能，请查看 [官网](https://thelounge.chat)。

The Lounge 是 [Shout](https://github.com/erming/shout) 的官方且由社区维护的分支，原作者是 [Mattias Erming](https://github.com/erming)。

## 安装与使用

The Lounge 需要安装最新的 [Node.js](https://nodejs.org/) LTS 版本或更新的版本。
建议同时安装 [Yarn 包管理器](https://yarnpkg.com/)。
如果你希望使用 npm 安装，则需要添加 `--unsafe-perm` 参数以确保正确安装。

### 运行稳定版本

有关所有可用的安装方法，请参考我们官网上的 [安装和升级文档](https://thelounge.chat/docs/install-and-upgrade)。

### 从源码运行

以下命令用于安装并运行 The Lounge 的开发版本：

```sh
git clone https://github.com/thelounge/thelounge.git
cd thelounge
yarn install
NODE_ENV=production yarn build
yarn start
```

以这种方式安装后，不会生成 `thelounge` 可执行文件。运行命令时请使用 `node index <command>`。

⚠️ 虽然这是最新的代码，但**不适用于生产环境**！请自行承担风险运行。也不建议以 root 身份运行。

## 开发环境设置

只需按照上述从源码运行 The Lounge 的说明，在你自己的 fork 仓库中操作即可。

提交任何更改之前，请确保完成以下事项：

- 阅读 [贡献指南](https://github.com/thelounge/thelounge/blob/master/.github/CONTRIBUTING.md#contributing)
- 运行 `yarn test` 来执行代码检查和测试套件
  - 如果检查失败，请运行 `yarn format:prettier`
- 如果你修改或新增了 `client/js` 或 `client/components` 中的内容，请运行 `yarn build:client`
  - 构建后的文件将通过 webpack 输出到 `public/` 目录
- 如果你修改了 `server/` 中的任何内容，请运行 `yarn build:server`
  - 构建后的文件将通过 tsc 输出到 `dist/` 目录
- 可以使用 `yarn dev` 启动支持热模块重载的 The Lounge

为确保不会提交无法通过代码检查的文件，你可以安装一个 pre-commit git hook。
运行 `yarn githooks-install` 即可完成安装。
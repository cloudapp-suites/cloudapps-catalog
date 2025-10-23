> 🚀 **EDAS 提供应用一键部署，快来体验吧！** [立即部署](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=b8bf821f-d64d-43d7-a065-3682c4d78bdc)

<!-- markdownlint-disable MD030 -->

<p align="center">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/flowise_white.svg">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/flowise_dark.svg">
</p>

<div align="center">

[![Release Notes](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f72656c656173652f466c6f7769736541492f466c6f77697365.svg)](https://github.com/FlowiseAI/Flowise/releases)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/68747470733a2f2f696d672e736869656c64732e696f2f646973636f72642f313038373639383835343737353838313737383f6c6162656c3d446973636f7264266c6f676f3d646973636f7264.svg)](https://discord.gg/jbaHfsRVBW)
[![Twitter Follow](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/68747470733a2f2f696d672e736869656c64732e696f2f747769747465722f666f6c6c6f772f466c6f7769736541493f7374796c653d736f6369616c.svg)](https://twitter.com/FlowiseAI)
[![GitHub star chart](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f73746172732f466c6f7769736541492f466c6f776973653f7374796c653d736f6369616c.svg)](https://star-history.com/#FlowiseAI/Flowise)
[![GitHub fork](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f666f726b732f466c6f7769736541492f466c6f776973653f7374796c653d736f6369616c.svg)](https://github.com/FlowiseAI/Flowise/fork)

English | 繁體中文 | 简体中文 | 日本語 | 한국어

</div>

<h3>以可视化方式构建AI代理</h3>
<a href="https://github.com/FlowiseAI/Flowise">
<img width="100%" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/flowise_agentflow.gif"></a>

## 📚 目录

- ⚡ 快速开始
- 🐳 Docker
- 👨‍💻 开发者
- 🌱 环境变量
- 📖 文档
- 📄 许可证

## ⚡ 快速开始

下载并安装 [NodeJS](https://nodejs.org/en/download) >= 18.15.0

1. 安装 Flowise
    ```bash
    npm install -g flowise
    ```
2. 启动 Flowise

    ```bash
    npx flowise start
    ```

3. 打开 [http://localhost:3000](http://localhost:3000)

## 🐳 Docker

### Docker Compose

1. 克隆 Flowise 项目
2. 进入项目根目录下的 `docker` 文件夹
3. 复制 `.env.example` 文件，粘贴到相同位置并重命名为 `.env`
4. `docker compose up -d`
5. 打开 [http://localhost:3000](http://localhost:3000)
6. 可以通过 `docker compose stop` 停止容器

### Docker 镜像

1. 在本地构建镜像：
   
    ```bash
    docker build --no-cache -t flowise .
    ```
2. 运行镜像：
   
    ```bash
    docker run -d --name flowise -p 3000:3000 flowise
    ```

3. 停止镜像：
   
    ```bash
    docker stop flowise
    ```

## 👨‍💻 开发者

Flowise 在一个单一仓库中包含三个不同的模块。

-   `server`: 提供 API 逻辑的 Node 后端
-   `ui`: React 前端
-   `components`: 第三方节点集成
-   `api-documentation`: 从 express 自动生成的 swagger-ui API 文档

### 前提条件

-   安装 [PNPM](https://pnpm.io/installation)
    ```bash
    npm i -g pnpm
    ```

### 设置

1.  克隆仓库：

    ```bash
    git clone https://github.com/FlowiseAI/Flowise.git
    ```

2.  进入仓库文件夹：

    ```bash
    cd Flowise
    ```

3.  安装所有模块的依赖：

    ```bash
    pnpm install
    ```

4.  构建所有代码：

    ```bash
    pnpm build
    ```

    <details>
    <summary>退出代码 134 (JavaScript 堆内存不足)</summary>  
      如果在运行上述 `build` 脚本时出现此错误，请尝试增加 Node.js 堆大小并重新运行脚本：

        export NODE_OPTIONS="--max-old-space-size=4096"
        pnpm build

    </details>

5.  启动应用：

    ```bash
    pnpm start
    ```

    现在可以在 [http://localhost:3000](http://localhost:3000) 访问该应用

6.  开发版本构建：

    -   在 `packages/ui` 中创建 `.env` 文件并指定 `VITE_PORT`（参考 `.env.example`）
    -   在 `packages/server` 中创建 `.env` 文件并指定 `PORT`（参考 `.env.example`）
    -   运行:

        ```bash
        pnpm dev
        ```

    任何代码更改都会自动在 [http://localhost:8080](http://localhost:8080) 上重新加载应用

## 🌱 环境变量

Flowise 支持多种环境变量来配置您的实例。您可以在 `packages/server` 文件夹中的 `.env` 文件中指定以下变量。阅读 [更多](https://github.com/FlowiseAI/Flowise/blob/main/CONTRIBUTING.md#-env-variables)

## 📖 文档

您可以在此处查看 Flowise 文档 [这里](https://docs.flowiseai.com/)

[![Star History Chart](https://api.star-history.com/svg?repos=FlowiseAI/Flowise&type=Timeline)](https://star-history.com/#FlowiseAI/Flowise&Date)

## 📄 许可证

本仓库中的源代码根据 Apache License Version 2.0 授权。
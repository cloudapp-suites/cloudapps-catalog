<div align="center">

🚀 **EDAS provides one-click application deployment. Try it now!** 

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=b8bf821f-d64d-43d7-a065-3682c4d78bdc)

</div>

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

<h3>Build AI Agents, Visually</h3>
<a href="https://github.com/FlowiseAI/Flowise">
<img width="100%" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flowise/image/flowise_agentflow.gif"></a>

## 📚 Table of Contents

- ⚡ Quick Start
- 🐳 Docker
- 👨‍💻 Developers
- 🌱 Env Variables
- 📖 Documentation
- 📄 License

## ⚡Quick Start

Download and Install [NodeJS](https://nodejs.org/en/download) >= 18.15.0

1. Install Flowise
    ```bash
    npm install -g flowise
    ```
2. Start Flowise

    ```bash
    npx flowise start
    ```

3. Open [http://localhost:3000](http://localhost:3000)

## 🐳 Docker

### Docker Compose

1. Clone the Flowise project
2. Go to `docker` folder at the root of the project
3. Copy `.env.example` file, paste it into the same location, and rename to `.env` file
4. `docker compose up -d`
5. Open [http://localhost:3000](http://localhost:3000)
6. You can bring the containers down by `docker compose stop`

### Docker Image

1. Build the image locally:
   
    ```bash
    docker build --no-cache -t flowise .
    ```
2. Run image:
   
    ```bash
    docker run -d --name flowise -p 3000:3000 flowise
    ```

3. Stop image:
   
    ```bash
    docker stop flowise
    ```

## 👨‍💻 Developers

Flowise has 3 different modules in a single mono repository.

-   `server`: Node backend to serve API logics
-   `ui`: React frontend
-   `components`: Third-party nodes integrations
-   `api-documentation`: Auto-generated swagger-ui API docs from express

### Prerequisite

-   Install [PNPM](https://pnpm.io/installation)
    ```bash
    npm i -g pnpm
    ```

### Setup

1.  Clone the repository:

    ```bash
    git clone https://github.com/FlowiseAI/Flowise.git
    ```

2.  Go into repository folder:

    ```bash
    cd Flowise
    ```

3.  Install all dependencies of all modules:

    ```bash
    pnpm install
    ```

4.  Build all the code:

    ```bash
    pnpm build
    ```

    <details>
    <summary>Exit code 134 (JavaScript heap out of memory)</summary>  
      If you get this error when running the above `build` script, try increasing the Node.js heap size and run the script again:

        export NODE_OPTIONS="--max-old-space-size=4096"
        pnpm build

    </details>

5.  Start the app:

    ```bash
    pnpm start
    ```

    You can now access the app on [http://localhost:3000](http://localhost:3000)

6.  For development build:

    -   Create `.env` file and specify the `VITE_PORT` (refer to `.env.example`) in `packages/ui`
    -   Create `.env` file and specify the `PORT` (refer to `.env.example`) in `packages/server`
    -   Run:

        ```bash
        pnpm dev
        ```

    Any code changes will reload the app automatically on [http://localhost:8080](http://localhost:8080)

## 🌱 Env Variables

Flowise supports different environment variables to configure your instance. You can specify the following variables in the `.env` file inside `packages/server` folder. Read [more](https://github.com/FlowiseAI/Flowise/blob/main/CONTRIBUTING.md#-env-variables)

## 📖 Documentation

You can view the Flowise Docs [here](https://docs.flowiseai.com/)

[![Star History Chart](https://api.star-history.com/svg?repos=FlowiseAI/Flowise&type=Timeline)](https://star-history.com/#FlowiseAI/Flowise&Date)

## 📄 License

Source code in this repository is made available under the Apache License Version 2.0.

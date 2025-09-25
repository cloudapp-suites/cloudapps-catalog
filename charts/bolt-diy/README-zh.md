# bolt.diy

[![bolt.diy: 浏览器中的AI全栈Web开发](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bolt-diy/image/social_preview_index.jpg)](https://bolt.diy)

欢迎使用 bolt.diy，这是 Bolt.new 的官方开源版本，它允许你为每个提示选择使用的 LLM！目前，你可以使用 OpenAI、Anthropic、Ollama、OpenRouter、Gemini、LMStudio、Mistral、xAI、HuggingFace、DeepSeek 或 Groq 模型——而且它很容易扩展以支持 Vercel AI SDK 支持的任何其他模型！请参阅以下说明，了解如何在本地运行以及如何扩展以包含更多模型。

-----
更多官方安装说明和更多信息，请查看 [bolt.diy 文档](https://stackblitz-labs.github.io/bolt.diy/)。

-----
此外，我们社区中的[这篇置顶帖子](https://thinktank.ottomator.ai/t/videos-tutorial-helpful-content/3243)也提供了大量关于自行运行和部署 bolt.diy 的资源！

我们还推出了一款名为 "bolt.diy Expert" 的实验性代理，它可以回答关于 bolt.diy 的常见问题。你可以在 [oTTomator Live Agent Studio](https://studio.ottomator.ai/) 找到它。

bolt.diy 最初由 [Cole Medin](https://www.youtube.com/@ColeMedin) 发起，但现在已经迅速发展成为一个庞大的社区项目，旨在打造最好的开源 AI 编程助手！

## 目录

- 加入社区
- 功能请求
- 功能特性
- 安装配置
- 运行应用
- 可用脚本
- 贡献代码
- 路线图
- 常见问题

## 加入社区

[点击此处加入 bolt.diy 社区（位于 oTTomator Think Tank）！](https://thinktank.ottomator.ai)

## 项目管理

bolt.diy 是一个社区驱动的项目！尽管如此，核心贡献者团队仍在努力以一种让你了解当前重点方向的方式来组织项目。

如果你想了解我们正在做什么、计划做什么，或者想为项目做贡献，请查看 项目管理指南，以便快速上手。

## 功能请求

- ✅ OpenRouter 集成 (@coleam00)
- ✅ Gemini 集成 (@jonathands)
- ✅ 根据已下载内容自动生成 Ollama 模型 (@yunatamos)
- ✅ 按提供商筛选模型 (@jasonm23)
- ✅ 将项目下载为 ZIP 格式 (@fabwaseem)
- ✅ 改进 `app\lib\.server\llm\prompts.ts` 中的主 bolt.new 提示 (@kofi-bhr)
- ✅ DeepSeek API 集成 (@zenith110)
- ✅ Mistral API 集成 (@ArulGandhi)
- ✅ "Open AI 类似" API 集成 (@ZerxZ)
- ✅ 支持将文件（单向同步）同步到本地文件夹 (@muzafferkadir)
- ✅ 使用 Docker 容器化应用以便于安装 (@aaronbolton)
- ✅ 直接发布项目到 GitHub (@goncaloalves)
- ✅ 在 UI 中输入 API 密钥 (@ali00209)
- ✅ xAI Grok Beta 集成 (@milutinke)
- ✅ LM Studio 集成 (@karrot0)
- ✅ HuggingFace 集成 (@ahsan3219)
- ✅ Bolt 终端以查看 LLM 运行命令的输出 (@thecodacus)
- ✅ 代码输出流式传输 (@thecodacus)
- ✅ 支持将代码还原到早期版本 (@wonderwhy-er)
- ✅ 聊天历史备份与恢复功能 (@sidbetatester)
- ✅ Cohere 集成 (@hasanraiyan)
- ✅ 动态模型最大 token 长度 (@hasanraiyan)
- ✅ 更好的提示增强 (@SujalXplores)
- ✅ 提示缓存 (@SujalXplores)
- ✅ 将本地项目加载到应用中 (@wonderwhy-er)
- ✅ Together 集成 (@mouimet-infinisoft)
- ✅ 移动端友好支持 (@qwikode)
- ✅ 更好的提示增强 (@SujalXplores)
- ✅ 在提示中附加图片 (@atrokhym)(@stijnus)
- ✅ 添加 Git 克隆按钮 (@thecodacus)
- ✅ 从 URL 导入 Git 项目 (@thecodacus)
- ✅ 提示库（PromptLibrary），为不同用例提供不同变体的提示 (@thecodacus)
- ✅ 检测 package.json 和命令以自动安装并运行文件夹和 Git 导入的预览 (@wonderwhy-er)
- ✅ 选择工具以可视化方式定位更改 (@emcconnell)
- ✅ 检测终端错误并让 bolt 修复 (@thecodacus)
- ✅ 检测预览错误并让 bolt 修复 (@wonderwhy-er)
- ✅ 添加启动模板选项 (@thecodacus)
- ✅ Perplexity 集成 (@meetpateltech)
- ✅ AWS Bedrock 集成 (@kunjabijukchhe)
- ✅ 添加 "差异视图" 以查看更改内容 (@toddyclipsgg)
- ⬜ **高优先级** - 防止 bolt 频繁重写文件（文件锁定和差异）
- ⬜ **高优先级** - 为较小的 LLM 提供更好的提示（代码窗口有时无法启动）
- ⬜ **高优先级** - 在后端运行代理，而不是单个模型调用
- ✅ 直接部署到 Netlify (@xKevIsDev)
- ✅ Supabase 集成 (@xKevIsDev)
- ⬜ 让 LLM 在 MD 文件中规划项目以获得更好的结果/透明度
- ⬜ 与 git 类似确认机制的 VSCode 集成
- ⬜ 上传文档以提供知识 - UI 设计模板、参考代码库等
- ✅ 语音提示
- ⬜ Azure Open AI API 集成
- ⬜ Vertex AI 集成
- ⬜ Granite 集成
- ✅ Web 容器弹出窗口 (@stijnus)
- ✅ 支持更改弹出窗口大小 (@stijnus)

## 功能特性

- **AI 驱动的全栈 Web 开发**，直接在浏览器中开发 **基于 NodeJS 的应用**。
- **支持多种 LLM**，并具有可扩展的架构以集成更多模型。
- **支持在提示中附加图片**，以获得更好的上下文理解。
- **集成终端**，用于查看 LLM 运行命令的输出。
- **将代码还原到早期版本**，便于调试和快速修改。
- **将项目下载为 ZIP**，便于移植并同步到主机上的文件夹。
- **集成 Docker 支持**，实现无烦恼的安装配置。
- **直接部署**到 **Netlify**

## 安装配置

如果你是第一次从 GitHub 安装软件，不用担心！如果遇到任何问题，可以使用提供的链接提交一个 "issue"，或者通过 fork 仓库、编辑说明文档并提交 pull request 来改进文档。以下说明将帮助你在本地机器上快速运行稳定分支。

让我们开始使用 Bolt.DIY 的稳定版本吧！

## 快速下载

[![下载最新版本](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bolt-diy/image/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f762f72656c656173652f737461636b626c69747a2d6c6162732f626f6c742e6469793f6c6162656c3d446f776e6c6f6164253230426f6c7426736f72743d73656d766572.svg)](https://github.com/stackblitz-labs/bolt.diy/releases/latest) ← 点击这里前往最新发布版本！

- 接下来点击 **source.zip**

## 前置要求

开始之前，你需要安装两个重要的软件：

### 安装 Node.js

运行该应用需要 Node.js。

1. 访问 [Node.js 下载页面](https://nodejs.org/en/download/)
2. 下载适用于你操作系统的 "LTS"（长期支持）版本
3. 运行安装程序，接受默认设置
4. 验证 Node.js 是否正确安装：
   - **Windows 用户**：
     1. 按下 `Windows + R`
     2. 输入 "sysdm.cpl" 并按 Enter
     3. 进入 "高级" 标签页 → "环境变量"
     4. 检查 "Path" 变量中是否包含 `Node.js`
   - **Mac/Linux 用户**：
     1. 打开终端
     2. 输入以下命令：
        ```bash
        echo $PATH
        ```
     3. 在输出中查找 `/usr/local/bin`

## 运行应用

你有两种方式运行 Bolt.DIY：直接在你的机器上运行，或使用 Docker。

### 方式 1：直接安装（推荐给初学者）

1. **安装包管理器 (pnpm)**:

   ```bash
   npm install -g pnpm
   ```

2. **安装项目依赖**:

   ```bash
   pnpm install
   ```

3. **启动应用**:

   ```bash
   pnpm run dev
   ```

### 方式 2：使用 Docker

此方式需要对 Docker 有一定了解，但提供了更隔离的环境。

#### 额外前置要求

- 安装 Docker：[下载 Docker](https://www.docker.com/)

#### 步骤：

1. **构建 Docker 镜像**:

   ```bash
   # 使用 npm 脚本：
   npm run dockerbuild

   # 或者使用直接的 Docker 命令：
   docker build . --target bolt-ai-development
   ```

2. **运行容器**:
   ```bash
   docker compose --profile development up
   ```

## 配置 API 密钥和提供商

### 添加你的 API 密钥

在 Bolt.DIY 中设置 API 密钥非常简单：

1. 打开首页（主界面）
2. 从下拉菜单中选择你想要的提供商
3. 点击铅笔（编辑）图标
4. 在安全输入框中输入你的 API 密钥

![API 密钥配置界面](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bolt-diy/image/api-key-ui-section.png)

### 配置自定义基础 URL

对于支持自定义基础 URL 的提供商（如 Ollama 或 LM Studio），请按照以下步骤操作：

1. 点击侧边栏中的设置图标以打开设置菜单
   ![设置按钮位置](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bolt-diy/image/bolt-settings-button.png)

2. 切换到 "Providers" 标签页
3. 使用搜索栏查找你的提供商
4. 在指定字段中输入你的自定义基础 URL
   ![提供商基础 URL 配置](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bolt-diy/image/provider-base-url.png)

> **注意**：自定义基础 URL 在运行本地 AI 模型或使用自定义 API 端点时特别有用。

### 支持的提供商

- Ollama
- LM Studio
- OpenAILike

## 使用 Git 安装（仅限开发者）

此方法推荐给希望：

- 为项目做贡献
- 跟踪最新更改
- 在不同版本之间切换
- 创建自定义修改的开发者

#### 前置要求

1. 安装 Git：[下载 Git](https://git-scm.com/downloads)

#### 初始设置

1. **克隆仓库**:

   ```bash
   git clone -b stable https://github.com/stackblitz-labs/bolt.diy.git
   ```

2. **进入项目目录**:

   ```bash
   cd bolt-diy
   ```

3. **安装依赖**:

   ```bash
   pnpm install
   ```

4. **启动开发服务器**:
   ```bash
   pnpm run dev
   ```

5. **(可选)** 如果你想使用预发布/测试分支，请切换到主分支：
   ```bash
   git checkout main
   pnpm install
   pnpm run dev
   ```
  提示：请注意，这可能包含测试功能，比稳定版本更容易出现 bug

>**打开 WebUI 进行测试（默认：http://localhost:5173）**
>   - 初学者建议：
>     - 尝试使用像 Anthropic 的 Claude Sonnet 3.x 模型这样高级的提供商/模型以获得最佳效果
>     - 说明：目前 bolt.diy 中实现的系统提示无法覆盖所有提供商和模型的最佳性能。因此，某些模型效果更好，而另一些则效果较差，即使这些模型本身非常适合编程
>     - 未来计划：将开发一个插件/扩展库，为不同模型提供不同的系统提示，以帮助获得更好的结果

#### 保持更新

要获取仓库的最新更改：

1. **保存你的本地更改**（如果有的话）:

   ```bash
   git stash
   ```

2. **拉取最新更新**:

   ```bash
   git pull 
   ```

3. **更新依赖**:

   ```bash
   pnpm install
   ```

4. **恢复你的本地更改**（如果有的话）:
   ```bash
   git stash pop
   ```

#### Git 安装故障排除

如果遇到问题：

1. **清理安装**:

   ```bash
   # 删除 node_modules 和锁文件
   rm -rf node_modules pnpm-lock.yaml

   # 清理 pnpm 缓存
   pnpm store prune

   # 重新安装依赖
   pnpm install
   ```

2. **重置本地更改**:
   ```bash
   # 丢弃所有本地更改
   git reset --hard origin/main
   ```

请始终在拉取更新前提交或暂存你的本地更改，以避免冲突。

---

## 可用脚本

- **`pnpm run dev`**：启动开发服务器。
- **`pnpm run build`**：构建项目。
- **`pnpm run start`**：使用 Wrangler Pages 在本地运行构建后的应用。
- **`pnpm run preview`**：构建并本地运行生产环境构建。
- **`pnpm test`**：使用 Vitest 运行测试套件。
- **`pnpm run typecheck`**：运行 TypeScript 类型检查。
- **`pnpm run typegen`**：使用 Wrangler 生成 TypeScript 类型。
- **`pnpm run deploy`**：将项目部署到 Cloudflare Pages。
- **`pnpm run lint:fix`**：自动修复 linting 问题。

---

## 贡献代码

我们欢迎任何贡献！请查看我们的 贡献指南 开始。

---

## 路线图

探索我们 [路线图](https://roadmap.sh/r/ottodev-roadmap-2ovzo) 上即将推出的功能和优先事项。

---

## 常见问题

有关常见问题的解答、常见问题以及推荐模型列表，请访问我们的 FAQ 页面。

# 许可协议
**谁需要商业 WebContainer API 许可证？**

bolt.diy 的源代码以 MIT 协议分发，但它使用了 [WebContainers API](https://webcontainers.io/enterprise)，在商业、盈利性生产环境中使用需要获得许可。（原型或概念验证不需要商业许可证。）如果你使用该 API 来满足客户、潜在客户和/或员工的需求，则需要获得许可证以确保符合我们的服务条款。违反这些条款使用 API 可能会导致你的访问权限被撤销。
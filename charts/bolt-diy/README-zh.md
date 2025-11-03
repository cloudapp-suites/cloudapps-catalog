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

## 使用指南

### 设置百炼模型的使用方法

1. 展开侧边栏，找到并点击左下角的设置图标
![](https://computenest-service-deploy-document-cn-hangzhou.oss-cn-hangzhou.aliyuncs.com/quickstart-bolt.diy/img_6.png)
2. 在设置界面中找到并点击"Local Providers"选项
![](https://computenest-service-deploy-document-cn-hangzhou.oss-cn-hangzhou.aliyuncs.com/quickstart-bolt.diy/img_7.png)
3. 启用"OpenAILike"功能开关
![](https://computenest-service-deploy-document-cn-hangzhou.oss-cn-hangzhou.aliyuncs.com/quickstart-bolt.diy/img_8.png)
4. 返回主页，在模型选择区域选择OpenAILike，并设置API-KEY，这样就可以使用百炼平台的大模型服务了
![](https://computenest-service-deploy-document-cn-hangzhou.oss-cn-hangzhou.aliyuncs.com/quickstart-bolt.diy/img_9.png)

### 浏览器安全策略调整

![](https://computenest-service-deploy-document-cn-hangzhou.oss-cn-hangzhou.aliyuncs.com/quickstart-bolt.diy/img_10.png)

出现这个提示是由于浏览器对SharedArrayBuffer的安全限制所致。出于安全考虑，浏览器要求使用SharedArrayBuffer或多线程通信技术（例如通过postMessage传输SharedArrayBuffer）的网页必须满足跨域隔离条件，即页面需通过HTTPS协议加载（本地开发环境使用localhost除外）。要解决这个问题，我们可以调整浏览器的相关设置。

在Chrome浏览器中进行如下操作：
1. 在地址栏输入 `chrome://flags/#allow-insecure-localhost` 并回车进入实验性功能页面
![](https://computenest-service-deploy-document-cn-hangzhou.oss-cn-hangzhou.aliyuncs.com/quickstart-bolt.diy/img_5.png)
2. 找到"Insecure origins treated as secure"选项并将其设置为"Enabled"
3. 在下方的输入框中添加Bolt.diy的访问地址
4. 完成设置后重启浏览器使配置生效

# 许可协议
**谁需要商业 WebContainer API 许可证？**

bolt.diy 的源代码以 MIT 协议分发，但它使用了 [WebContainers API](https://webcontainers.io/enterprise)，在商业、盈利性生产环境中使用需要获得许可。（原型或概念验证不需要商业许可证。）如果你使用该 API 来满足客户、潜在客户和/或员工的需求，则需要获得许可证以确保符合我们的服务条款。违反这些条款使用 API 可能会导致你的访问权限被撤销。
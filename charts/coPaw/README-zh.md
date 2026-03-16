<div align="center">

# CoPaw

<p align="center">
  <img src="https://img.alicdn.com/imgextra/i2/O1CN014TIqyO1U5wDiSbFfA_!!6000000002467-2-tps-816-192.png" alt="CoPaw Logo" width="120">
</p>

<p align="center"><b>为你而生，伴你成长。</b></p>

</div>

你的个人 AI 助手；安装简单，可部署在本地设备或云端；支持多种聊天应用，并具备易于扩展的能力。

> **核心能力：**
>
> **全渠道支持** —— 钉钉、飞书、QQ、Discord、iMessage 等。一个助手，按需连接。
>
> **完全由你掌控** —— 记忆与个性化设置均由你控制；支持本地或云端部署；可向任意渠道发送定时提醒。
>
> **技能丰富** —— 内置定时任务（cron）；自定义技能可置于工作区中并自动加载；无厂商锁定。
>
> <details>
> <summary><b>你能用它做什么</b></summary>
>
> <br>
>
> - **社交**：每日热点内容摘要（小红书、知乎、Reddit）、Bilibili / YouTube 视频摘要。
> - **效率**：将新闻简报推送至钉钉 / 飞书 / QQ；从邮件或日历中提取联系人信息。
> - **创意**：描述你的目标，让它整夜运行，次日即可获得初稿。
> - **研究**：追踪科技 / AI 行业动态，构建个人知识库。
> - **桌面端**：整理文件、读取并摘要文档、在聊天中请求文件。
> - **探索**：将技能与定时任务组合，打造属于你自己的智能体应用。
>
> </details>

---

## 最新动态

[2026-03-12] 我们发布了 v0.0.7！完整更新日志请参阅 [v0.0.7 发布说明](https://agentscope-ai.github.io/CoPaw/release-notes)。

- **[v0.0.7] 新增功能：** 工具防护安全层 —— 在用户明确授权前拦截高风险工具调用；新增 Mattermost 和 Matrix 渠道集成；为 Discord / 钉钉 / 飞书 / Telegram 支持仅 @ 提及才响应的群组过滤机制；Telegram Markdown 渲染支持；飞书表情反应与富文本媒体支持；QQ 图片发送支持；LLM 调用自动重试（指数退避策略）；新增 LM Studio 模型提供商；支持 Token 使用量统计与可视化仪表盘；模型提供商 `generate_kwargs` 参数编辑器；工作区文件拖放上传；聊天模型切换；智能体语言选择器；上下文管理 UI；页面导航时保持聊天状态；AI 技能优化（支持流式响应）；技能卡片描述展示；为中国大陆用户自动配置 PyPI 镜像。
- **[v0.0.7] 功能改进：** 优化模型提供商连接测试提示；异步打包工作区 ZIP 及会话加载；自动解决模型提供商 ID 冲突；按需发现可用模型；集中化 Token 统计记录；完善内置技能文档及 Shell `PATH` 处理逻辑；升级 Himalaya 邮件技能；重构记忆模块文档；重构「配置与安全」页面。
- **[v0.0.7] 问题修复：** 清理钉钉认证失败残留；修复 Discord 单条消息超 2000 字符时的自动分段；统一 Matrix / Mattermost / MQTT 渠道配置类型；修复 Windows 下 Shell 编码、进程树清理问题；修复桌面端 SSL 证书、输入法（IME）兼容性及外部 URL 导航问题；保护魔法命令会话状态不被覆盖；修复 Ollama 模态框重复渲染；避免重复提交聊天请求。
- **[v0.0.7] 贡献者致谢：** 感谢以下新贡献者：[@2catycm](https://github.com/2catycm)、[@2niuhe](https://github.com/2niuhe)、[@yingdachen](https://github.com/yingdachen)、[@Atletico1999](https://github.com/Atletico1999)、[@buecker](https://github.com/buecker)、[@Cirilla-zmh](https://github.com/Cirilla-zmh)、[@gnipping](https://github.com/gnipping)、[@Nufe-muzi](https://github.com/Nufe-muzi)、[@FuKunZ](https://github.com/FuKunZ)、[@JasonBuildAI](https://github.com/JasonBuildAI)、[@StarMoonCity](https://github.com/StarMoonCity)、[@walker83](https://github.com/walker83)、[@lllcy](https://github.com/lllcy)。

[2026-03-09] 我们发布了 v0.0.6！完整更新日志请参阅 [v0.0.6 发布说明](https://agentscope-ai.github.io/CoPaw/release-notes)。

[2026-03-06] 我们发布了 v0.0.5！完整更新日志请参阅 [v0.0.5 发布说明](https://agentscope-ai.github.io/CoPaw/release-notes)。

[2026-03-02] 我们发布了 v0.0.4！完整更新日志请参阅 [v0.0.4 发布说明](https://agentscope-ai.github.io/CoPaw/release-notes)。

---
#### 功能特性

- ✅ **零配置**：下载后双击即可运行，无需安装 Python 或配置环境变量
- ✅ **跨平台支持**：兼容 Windows 10+ 及 macOS 14+
- ✅ **图形界面**：自动打开浏览器界面，无需手动输入地址
- ⚠️ **Beta 阶段**：功能持续优化中，欢迎反馈

## API 密钥

若你使用 **云端大语言模型**（例如 DashScope、ModelScope），必须先配置 API 密钥才能开始聊天。未设置有效密钥时，CoPaw 将无法运行。详情请参阅 [官方文档](https://copaw.agentscope.io/docs/models#configure-cloud-providers)。

**配置方法：**

1. **控制台（推荐）** —— 运行 `copaw app` 后，打开 **http://127.0.0.1:8088/** → **设置** → **模型**。选择提供商，输入 **API 密钥**，并启用该提供商及对应模型。
2. **`copaw init`** —— 运行 `copaw init` 时，系统将引导你完成大语言模型提供商及 API 密钥的配置。请按提示选择提供商并输入密钥。
3. **环境变量** —— 对于 DashScope，你可在 shell 中设置 `DASHSCOPE_API_KEY`，或在工作目录下创建 `.env` 文件进行配置。

需要额外密钥的工具（例如用于网页搜索的 `TAVILY_API_KEY`）可在控制台 **设置 → 环境变量** 中配置，或参阅 [配置文档](https://copaw.agentscope.io/docs/config) 获取详情。

> **仅使用本地模型？** 若你使用 [本地模型](#local-models)（llama.cpp 或 MLX），则 **无需任何 API 密钥**。

## 本地模型

CoPaw 可完全在你的本地机器上运行大语言模型 —— 无需 API 密钥，也无需依赖云端服务。详情请参阅 [官方文档](https://copaw.agentscope.io/docs/models#local-providers-llamacpp--mlx)。

| 后端         | 最佳适用场景                             | 安装方式                                                              |
| ------------ | ---------------------------------------- | --------------------------------------------------------------------- |
| **llama.cpp** | 跨平台（macOS / Linux / Windows）        | `pip install 'copaw[llamacpp]'` 或 `bash install.sh --extras llamacpp` |
| **MLX**       | Apple Silicon Mac（M1/M2/M3/M4）         | `pip install 'copaw[mlx]'` 或 `bash install.sh --extras mlx`          |
| **Ollama**    | 跨平台（需预先运行 Ollama 服务）         | `pip install 'copaw[ollama]'` 或 `bash install.sh --extras ollama`     |

安装完成后，你可在 **控制台** UI 中下载并管理本地模型。也可通过命令行操作：

```bash
copaw models download Qwen/Qwen3-4B-GGUF
copaw models # 选择已下载的模型
copaw app # 启动服务
```

---

## 文档

| 主题                                                                 | 描述                                      |
| -------------------------------------------------------------------- | ----------------------------------------- |
| [简介](https://copaw.agentscope.io/docs/intro)                       | CoPaw 是什么，以及如何使用它              |
| [快速入门](https://copaw.agentscope.io/docs/quickstart)              | 安装与运行（本地或 ModelScope Studio）    |
| [控制台](https://copaw.agentscope.io/docs/console)                   | Web UI：聊天与智能体配置                  |
| [模型](https://copaw.agentscope.io/docs/models)                       | 配置云端、本地及自定义模型提供商          |
| [渠道](https://copaw.agentscope.io/docs/channels)                    | 钉钉、飞书、QQ、Discord、iMessage 等      |
| [技能](https://copaw.agentscope.io/docs/skills)                      | 扩展与自定义能力                          |
| [MCP](https://copaw.agentscope.io/docs/mcp)                          | 管理 MCP 客户端                           |
| [记忆](https://copaw.agentscope.io/docs/memory)                      | 长期记忆                                  |
| [上下文](https://copaw.agentscope.io/docs/context)                   | 上下文管理机制                            |
| [魔法命令](https://copaw.agentscope.io/docs/commands)                | 无需等待 AI 响应即可控制对话状态          |
| [心跳机制](https://copaw.agentscope.io/docs/heartbeat)               | 定时签到与摘要生成                        |
| [配置与工作目录](https://copaw.agentscope.io/docs/config)            | 工作目录与配置文件                        |
| [命令行接口（CLI）](https://copaw.agentscope.io/docs/cli)            | 初始化、定时任务、技能管理、清理等        |
| [常见问题（FAQ）](https://copaw.agentscope.io/docs/faq)              | 常见问题与故障排查                        |

本仓库中的完整文档位于：[website/public/docs/](website/public/docs/)。

---

## 常见问题（FAQ）

关于常见问题、故障排查技巧及已知问题，请访问 **[FAQ 页面](https://copaw.agentscope.io/docs/faq)**。

---

## 路线图

| 领域                                  | 事项                                                                                                                                             | 状态               |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------- |
| **横向扩展**                          | 更多渠道、模型、技能、MCP —— **欢迎社区贡献**                                                                                                    | 寻求贡献者           |
| **现有功能增强**                      | 显示优化、下载提示、Windows 路径兼容性等 —— **欢迎社区贡献**                                                                                     | 寻求贡献者           |
| **控制台 Web UI**                     | 在控制台中暴露更多信息与配置项                                                                                                                   | 进行中               |
| **自愈能力**                          | 魔法命令与守护进程能力（CLI、状态、重启、日志）                                                                                                 | 进行中               |
|                                       | DaemonAgent：自主诊断、自愈与恢复                                                                                                                | 计划中               |
| **多智能体**                          | 后台任务支持                                                                                                                                     | 进行中               |
|                                       | 多智能体隔离                                                                                                                                     | 计划中               |
|                                       | 智能体间资源争用解决                                                                                                                             | 计划中               |
|                                       | 多智能体通信                                                                                                                                     | 计划中               |
| **多模态**                            | 语音/视频通话与实时交互                                                                                                                          | 进行中               |
| **小模型 + 大模型协同**               | 针对 CoPaw 工作流及敏感数据场景训练/微调本地小语言模型                                                                                         | 进行中               |
|                                       | 多模型路由：本地 LLM 处理敏感数据；云端 LLM 负责规划与编码；兼顾隐私性、性能与能力平衡                                                         | 计划中               |
| **记忆系统**                          | 经验蒸馏与技能抽取                                                                                                                               | 进行中               |
|                                       | 多模态记忆融合                                                                                                                                   | 计划中               |
|                                       | 上下文感知的主动推送                                                                                                                             | 计划中               |
| **安全性**                            | Shell 执行确认                                                                                                                                   | 计划中               |
|                                       | 工具/技能安全机制                                                                                                                                | 计划中               |
|                                       | 可配置的安全等级（用户可自定义）                                                                                                                 | 计划中               |
| **发布与贡献**                        | 为“氛围编程”智能体提供贡献指南                                                                                                                   | 计划中               |
| **沙箱**                              | 与 AgentScope Runtime 沙箱深度集成                                                                                                               | 长期计划             |
| **云原生**                            | 与 AgentScope Runtime 深度集成；充分利用云算力、存储与工具链                                                                                     | 长期计划             |
| **技能中心**                          | 丰富 [AgentScope Skills](https://github.com/agentscope-ai/agentscope-skills) 仓库内容，提升高质量技能的可发现性                                | 长期计划             |


*状态说明*：*进行中* —— 正在积极开发；*计划中* —— 已排期或处于设计阶段，同样 **欢迎贡献**；*寻求贡献者* —— 我们 **强烈鼓励社区参与贡献**；*长期计划* —— 属于远期路线图。

### 参与共建

我们以开源方式构建 CoPaw，并欢迎任何形式的贡献！请查阅上方 [路线图](#roadmap)（尤其是标注为 **寻求贡献者** 的条目），寻找你感兴趣的领域，并阅读 [CONTRIBUTING](https://github.com/agentscope-ai/CoPaw/blob/main/CONTRIBUTING.md) 入门指南。我们尤其欢迎：

- **横向扩展** —— 新增渠道、模型提供商、技能、MCP。
- **现有功能增强** —— 显示与用户体验优化、下载提示、Windows 路径兼容性等。

欢迎加入 [GitHub Discussions](https://github.com/agentscope-ai/CoPaw/discussions) 发起讨论、提出建议或认领任务。

---

## 为何选择 CoPaw？

CoPaw 既代表 **Co Personal Agent Workstation（协作式个人智能体工作站）**，也寓意“co-paw”——一只始终陪伴你左右的伙伴之“爪”。它不只是冰冷的工具，更是一只温暖的“小爪子”，随时准备伸出援手（或“爪”）！它是你数字生活的终极搭档。

---
<div align="center">

# CoPaw
<p align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/coPaw/image/O1CN014TIqyO1U5wDiSbFfA___6000000002467-2-tps-816-192.png" alt="CoPaw Logo" width="120">
</p>

<p align="center"><b>Works for you, grows with you.</b></p>

</div>

Your Personal AI Assistant; easy to install, deploy on your own machine or on the cloud; supports multiple chat apps with easily extensible capabilities.

> **Core capabilities:**
>
> **Every channel** — DingTalk, Feishu, QQ, Discord, iMessage, and more. One assistant, connect as you need.
>
> **Under your control** — Memory and personalization under your control. Deploy locally or in the cloud; scheduled reminders to any channel.
>
> **Skills** — Built-in cron; custom skills in your workspace, auto-loaded. No lock-in.
>
> <details>
> <summary><b>What you can do</b></summary>
>
> <br>
>
> - **Social**: daily digest of hot posts (Xiaohongshu, Zhihu, Reddit), Bilibili/YouTube summaries.
> - **Productivity**: newsletter digests to DingTalk/Feishu/QQ, contacts from email/calendar.
> - **Creative**: describe your goal, run overnight, get a draft next day.
> - **Research**: track tech/AI news, personal knowledge base.
> - **Desktop**: organize files, read/summarize docs, request files in chat.
> - **Explore**: combine Skills and cron into your own agentic app.
>
> </details>

---

## News

[2026-03-12] We released v0.0.7! See the [v0.0.7 Release Notes](https://agentscope-ai.github.io/CoPaw/release-notes) for the full changelog.

- **[v0.0.7] Added:** Tool Guard security layer — blocks risky tool calls until user approval; Mattermost and Matrix channel integrations; @mention-only group filtering for Discord/DingTalk/Feishu/Telegram; Telegram Markdown rendering; Feishu emoji reactions and rich text media; QQ image sending; LLM call auto-retry with exponential backoff; LM Studio provider; token usage tracking with dashboard; provider `generate_kwargs` editor; workspace file drag-and-drop; chat model switching; agent language selector; context management UI; chat state preservation across navigation; AI skill optimization with streaming; skill card description display; auto PyPI mirror for China.
- **[v0.0.7] Improved:** Provider connection test messages; async workspace zip and session load; provider ID conflict auto-resolution; on-demand model discovery; token recording centralization; built-in skill docs and shell `PATH` handling; Himalaya email skill; memory docs reorganization; Config & Security page refactor.
- **[v0.0.7] Fixed:** DingTalk auth failure cleanup; Discord 2000-char message splitting; channel config type alignment for Matrix/Mattermost/MQTT; Windows shell encoding and process tree cleanup; desktop SSL certificates, IME input, and external URL navigation; magic command session state protection; Ollama modal re-renders; chat request deduplication.
- **[v0.0.7] Contributors:** Thanks to new contributors: [@2catycm](https://github.com/2catycm), [@2niuhe](https://github.com/2niuhe), [@yingdachen](https://github.com/yingdachen), [@Atletico1999](https://github.com/Atletico1999), [@buecker](https://github.com/buecker), [@Cirilla-zmh](https://github.com/Cirilla-zmh), [@gnipping](https://github.com/gnipping), [@Nufe-muzi](https://github.com/Nufe-muzi), [@FuKunZ](https://github.com/FuKunZ), [@JasonBuildAI](https://github.com/JasonBuildAI), [@StarMoonCity](https://github.com/StarMoonCity), [@walker83](https://github.com/walker83), [@lllcy](https://github.com/lllcy).

[2026-03-09] We released v0.0.6! See the [v0.0.6 Release Notes](https://agentscope-ai.github.io/CoPaw/release-notes) for the full changelog.

[2026-03-06] We released v0.0.5! See the [v0.0.5 Release Notes](https://agentscope-ai.github.io/CoPaw/release-notes) for the full changelog.

[2026-03-02] We released v0.0.4! See the [v0.0.4 Release Notes](https://agentscope-ai.github.io/CoPaw/release-notes) for the full changelog.

---
#### Features

- ✅ **Zero configuration**: Download and double-click to run, no need to install Python or configure environment variables
- ✅ **Cross-platform**: Supports Windows 10+ and macOS 14+
- ✅ **Visual interface**: Automatically opens browser interface, no need to manually enter addresses
- ⚠️ **Beta stage**: Features are continuously being improved, feedback welcome

---

## API Key

If you use a **cloud LLM** (e.g. DashScope, ModelScope), you must configure an API key before chatting. CoPaw will not work until a valid key is set. See the [official docs](https://copaw.agentscope.io/docs/models#configure-cloud-providers) for details.

**How to configure:**

1. **Console (recommended)** — After running `copaw app`, open **http://127.0.0.1:8088/** → **Settings** → **Models**. Choose a provider, enter the **API Key**, and enable that provider and model.
2. **`copaw init`** — When you run `copaw init`, it will guide you through configuring the LLM provider and API key. Follow the prompts to choose a provider and enter your key.
3. **Environment variable** — For DashScope you can set `DASHSCOPE_API_KEY` in your shell or in a `.env` file in the working directory.

Tools that need extra keys (e.g. `TAVILY_API_KEY` for web search) can be set in Console **Settings → Environment variables**, or see [Config](https://copaw.agentscope.io/docs/config) for details.

> **Using local models only?** If you use [Local Models](#local-models) (llama.cpp or MLX), you do **not** need any API key.

## Local Models

CoPaw can run LLMs entirely on your machine — no API keys or cloud services required. See the [official docs](https://copaw.agentscope.io/docs/models#local-providers-llamacpp--mlx) for details.

| Backend       | Best for                                 | Install                                                              |
| ------------- | ---------------------------------------- | -------------------------------------------------------------------- |
| **llama.cpp** | Cross-platform (macOS / Linux / Windows) | `pip install 'copaw[llamacpp]'` or `bash install.sh --extras llamacpp` |
| **MLX**       | Apple Silicon Macs (M1/M2/M3/M4)         | `pip install 'copaw[mlx]'` or `bash install.sh --extras mlx`         |
| **Ollama**    | Cross-platform (requires Ollama service) | `pip install 'copaw[ollama]'` or `bash install.sh --extras ollama`   |

After installing, you can download and manage local models in the **Console** UI. You can also use the command line:

```bash
copaw models download Qwen/Qwen3-4B-GGUF
copaw models # select the downloaded model
copaw app # start the server
```

---

## Documentation

| Topic                                                                 | Description                                      |
| --------------------------------------------------------------------- | ------------------------------------------------ |
| [Introduction](https://copaw.agentscope.io/docs/intro)                | What CoPaw is and how to use it                  |
| [Quick start](https://copaw.agentscope.io/docs/quickstart)            | Install and run (local or ModelScope Studio)    |
| [Console](https://copaw.agentscope.io/docs/console)                   | Web UI: chat and agent configuration            |
| [Models](https://copaw.agentscope.io/docs/models)                     | Configure cloud, local, and custom providers    |
| [Channels](https://copaw.agentscope.io/docs/channels)                  | DingTalk, Feishu, QQ, Discord, iMessage, and more |
| [Skills](https://copaw.agentscope.io/docs/skills)                      | Extend and customize capabilities               |
| [MCP](https://copaw.agentscope.io/docs/mcp)                            | Manage MCP clients                               |
| [Memory](https://copaw.agentscope.io/docs/memory)                     | Long-term memory                     |
| [Context](https://copaw.agentscope.io/docs/context)                   | Context management mechanism                     |
| [Magic commands](https://copaw.agentscope.io/docs/commands)           | Control conversation state without waiting for the AI |
| [Heartbeat](https://copaw.agentscope.io/docs/heartbeat)                | Scheduled check-in and digest                    |
| [Config & working dir](https://copaw.agentscope.io/docs/config) | Working directory and config file                |
| [CLI](https://copaw.agentscope.io/docs/cli)                            | Init, cron jobs, skills, clean                   |
| [FAQ](https://copaw.agentscope.io/docs/faq)                           | Common questions and troubleshooting             |

Full docs in this repo: [website/public/docs/](website/public/docs/).

---

## FAQ

For common questions, troubleshooting tips, and known issues, please visit the **[FAQ page](https://copaw.agentscope.io/docs/faq)**.

---

## Roadmap

| Area                                  | Item                                                                                                                                             | Status               |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------ | -------------------- |
| **Horizontal Expansion**              | More channels, models, skills, MCPs — **community contributions welcome**                                                                        | Seeking Contributors |
| **Existing Feature Extension**        | Display optimization, download hints, Windows path compatibility, etc. — **community contributions welcome**                                     | Seeking Contributors |
| **Console Web UI**                    | Expose more info/config in the Console                                                                                                           | In Progress          |
| **Self-healing**                      | Magic commands and daemon capabilities (CLI, status, restart, logs)                                                                              | In Progress          |
|                                       | DaemonAgent: autonomous diagnostics, self-healing, and recovery                                                                                  | Planned              |
| **Multi-agent**                       | Background task support                                                                                                                          | In Progress          |
|                                       | Multi-agent isolation                                                                                                                            | Planned              |
|                                       | Inter-agent contention resolution                                                                                                                | Planned              |
|                                       | Multi-agent communication                                                                                                                        | Planned              |
| **Multimodal**                        | Voice/video calls and real-time interaction                                                                                                      | In Progress          |
| **Small + Large Model Collaboration** | Train/fine-tune local small LLMs for CoPaw workflows and sensitive-data use cases                                                                | In Progress          |
|                                       | Multi-model routing. Local LLMs for sensitive data; cloud LLMs for planning and coding; balance of privacy, performance, and capability          | Planned              |
| **Memory System**                     | Experience distillation & skill extraction                                                                                                       | In Progress          |
|                                       | Multimodal memory fusion                                                                                                                         | Planned              |
|                                       | Context-aware proactive delivery                                                                                                                 | Planned              |
| **Security**                          | Shell execution confirmation                                                                                                                     | Planned              |
|                                       | Tool/skills security                                                                                                                             | Planned              |
|                                       | Configurable security levels (user-configurable)                                                                                                 | Planned              |
| **Release & Contributing**            | Contributing guidance for vibe coding agents                                                                                                     | Planned              |
| **Sandbox**                           | Deeper integration with AgentScope Runtime sandboxes                                                                                             | Long-term Planned    |
| **Cloud-native**                      | Deeper integration with AgentScope Runtime; leverage cloud compute, storage, and tooling                                                         | Long-term Planned    |
| **Skills Hub**                        | Enrich the [AgentScope Skills](https://github.com/agentscope-ai/agentscope-skills) repository and improve discoverability of high-quality skills | Long-term Planned    |


*Status:* *In Progress* — actively being worked on; *Planned* — queued or under design, also **welcome contributions**; *Seeking Contributors* — we **strongly encourage community contributions**; *Long-term Planned* — longer-horizon roadmap.

### Get involved

We are building CoPaw in the open and welcome contributions of all kinds! Check the [Roadmap](#roadmap) above (especially items marked **Seeking Contributors**) to find areas that interest you, and read [CONTRIBUTING](https://github.com/agentscope-ai/CoPaw/blob/main/CONTRIBUTING.md) to get started. We particularly welcome:

- **Horizontal expansion** — new channels, model providers, skills, MCPs.
- **Existing feature extension** — display and UX improvements, download hints, Windows path compatibility, and the like.

Join the conversation on [GitHub Discussions](https://github.com/agentscope-ai/CoPaw/discussions) to suggest or pick up work.

---

## Why CoPaw?

CoPaw represents both a **Co Personal Agent Workstation** and a "co-paw"—a partner always by your side. More than just a cold tool, CoPaw is a warm "little paw" always ready to lend a hand (or a paw!). It is the ultimate teammate for your digital life.

---
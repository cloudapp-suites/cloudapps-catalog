<div align="center">

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=openclaw)

🚀 🚀 **EDAS 提供应用一键部署，快来体验吧！**

</div>

# 🦞 OpenClaw — 个人 AI 助手

<p align="center">
    <picture>
        <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/openclaw/openclaw/main/docs/assets/openclaw-logo-text-dark.png">
        <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/openclaw/image/openclaw-logo-text.png" alt="OpenClaw" width="500">
    </picture>
</p>

<p align="center">
  <strong>EXFOLIATE! EXFOLIATE!</strong>
</p>

**OpenClaw** 是一个您可以在自己的设备上运行的 _个人 AI 助手_。
它通过您已经使用的渠道与您沟通（WhatsApp、Telegram、Slack、Discord、Google Chat、Signal、iMessage、BlueBubbles、IRC、Microsoft Teams、Matrix、飞书、LINE、Mattermost、Nextcloud Talk、Nostr、Synology Chat、Tlon、Twitch、Zalo、Zalo Personal、WebChat）。它可以在 macOS/iOS/Android 上说话和收听，并且可以渲染您控制的实时 Canvas。Gateway 只是控制平面——产品本身就是助手。

如果您想要一个感觉本地化、快速且始终在线的个人、单用户助手，这就是它。

[网站](https://openclaw.ai) · [文档](https://docs.openclaw.ai) · [愿景](VISION.md) · [DeepWiki](https://deepwiki.com/openclaw/openclaw) · [入门指南](https://docs.openclaw.ai/start/getting-started) · [更新](https://docs.openclaw.ai/install/updating) · [展示](https://docs.openclaw.ai/start/showcase) · [常见问题](https://docs.openclaw.ai/help/faq) · [向导](https://docs.openclaw.ai/start/wizard) · [Nix](https://github.com/openclaw/nix-openclaw) · [Docker](https://docs.openclaw.ai/install/docker) · [Discord](https://discord.gg/clawd)

首选设置：在终端中运行入职向导 (`openclaw onboard`)。
向导将逐步指导您完成设置 gateway、工作区、渠道和技能。CLI 向导是推荐的方式，适用于 **macOS、Linux 和 Windows（通过 WSL2；强烈推荐）**。
支持 npm、pnpm 或 bun。
新安装？从这里开始：[入门指南](https://docs.openclaw.ai/start/getting-started)

## 安全默认设置（DM 访问）

OpenClaw 连接到真实的消息表面。将入站 DM 视为 **不可信的输入**。

完整安全指南：[安全](https://docs.openclaw.ai/gateway/security)

Telegram/WhatsApp/Signal/iMessage/Microsoft Teams/Discord/Google Chat/Slack 的默认行为：

- **DM 配对** (`dmPolicy="pairing"` / `channels.discord.dmPolicy="pairing"` / `channels.slack.dmPolicy="pairing"`；旧版：`channels.discord.dm.policy`, `channels.slack.dm.policy`)：未知发送者会收到简短的配对代码，机器人不会处理他们的消息。
- 批准方式：`openclaw pairing approve <channel> <code>`（然后将发送者添加到本地允许列表存储）。
- 公共入站 DM 需要明确选择加入：设置 `dmPolicy="open"` 并在频道允许列表中包含 `"*"`（`allowFrom` / `channels.discord.allowFrom` / `channels.slack.allowFrom`；旧版：`channels.discord.dm.allowFrom`, `channels.slack.dm.allowFrom`）。

运行 `openclaw doctor` 来检查有风险/配置不当的 DM 策略。

## 亮点

- **[Local-first Gateway](https://docs.openclaw.ai/gateway)** — 用于会话、渠道、工具和事件的单一控制平面。
- **[多渠道收件箱](https://docs.openclaw.ai/channels)** — WhatsApp、Telegram、Slack、Discord、Google Chat、Signal、BlueBubbles (iMessage)、iMessage（旧版）、IRC、Microsoft Teams、Matrix、飞书、LINE、Mattermost、Nextcloud Talk、Nostr、Synology Chat、Tlon、Twitch、Zalo、Zalo Personal、WebChat、macOS、iOS/Android。
- **[多代理路由](https://docs.openclaw.ai/gateway/configuration)** — 将入站渠道/账户/对等方路由到隔离的代理（工作区 + 每代理会话）。
- **[Voice Wake](https://docs.openclaw.ai/nodes/voicewake) + [Talk Mode](https://docs.openclaw.ai/nodes/talk)** — macOS/iOS 上的唤醒词和 Android 上的连续语音（ElevenLabs + 系统 TTS 回退）。
- **[实时 Canvas](https://docs.openclaw.ai/platforms/mac/canvas)** — 由代理驱动的视觉工作区，带有 [A2UI](https://docs.openclaw.ai/platforms/mac/canvas#canvas-a2ui)。
- **[一流工具](https://docs.openclaw.ai/tools)** — 浏览器、canvas、节点、cron、会话和 Discord/Slack 操作。
- **[配套应用](https://docs.openclaw.ai/platforms/macos)** — macOS 菜单栏应用 + iOS/Android [节点](https://docs.openclaw.ai/nodes)。
- **[入职](https://docs.openclaw.ai/start/wizard) + [技能](https://docs.openclaw.ai/tools/skills)** — 向导驱动的设置，包含捆绑/管理/工作区技能。

## 迄今为止我们构建的一切

### 核心平台

- [Gateway WS 控制平面](https://docs.openclaw.ai/gateway)，包含会话、存在、配置、cron、webhooks、[Control UI](https://docs.openclaw.ai/web) 和 [Canvas 主机](https://docs.openclaw.ai/platforms/mac/canvas#canvas-a2ui)。
- [CLI 界面](https://docs.openclaw.ai/tools/agent-send)：gateway、agent、send、[向导](https://docs.openclaw.ai/start/wizard) 和 [doctor](https://docs.openclaw.ai/gateway/doctor)。
- [Pi 代理运行时](https://docs.openclaw.ai/concepts/agent)，采用 RPC 模式，支持工具流式和块流式。
- [会话模型](https://docs.openclaw.ai/concepts/session)：`main` 用于直接聊天、群组隔离、激活模式、队列模式、回复。群组规则：[群组](https://docs.openclaw.ai/channels/groups)。
- [媒体管道](https://docs.openclaw.ai/nodes/images)：图像/音频/视频、转录钩子、大小限制、临时文件生命周期。音频详情：[音频](https://docs.openclaw.ai/nodes/audio)。

### 渠道

- [渠道](https://docs.openclaw.ai/channels)：[WhatsApp](https://docs.openclaw.ai/channels/whatsapp) (Baileys)、[Telegram](https://docs.openclaw.ai/channels/telegram) (grammY)、[Slack](https://docs.openclaw.ai/channels/slack) (Bolt)、[Discord](https://docs.openclaw.ai/channels/discord) (discord.js)、[Google Chat](https://docs.openclaw.ai/channels/googlechat) (Chat API)、[Signal](https://docs.openclaw.ai/channels/signal) (signal-cli)、[BlueBubbles](https://docs.openclaw.ai/channels/bluebubbles) (iMessage，推荐)、[iMessage](https://docs.openclaw.ai/channels/imessage)（旧版 imsg）、[IRC](https://docs.openclaw.ai/channels/irc)、[Microsoft Teams](https://docs.openclaw.ai/channels/msteams)、[Matrix](https://docs.openclaw.ai/channels/matrix)、[飞书](https://docs.openclaw.ai/channels/feishu)、[LINE](https://docs.openclaw.ai/channels/line)、[Mattermost](https://docs.openclaw.ai/channels/mattermost)、[Nextcloud Talk](https://docs.openclaw.ai/channels/nextcloud-talk)、[Nostr](https://docs.openclaw.ai/channels/nostr)、[Synology Chat](https://docs.openclaw.ai/channels/synology-chat)、[Tlon](https://docs.openclaw.ai/channels/tlon)、[Twitch](https://docs.openclaw.ai/channels/twitch)、[Zalo](https://docs.openclaw.ai/channels/zalo)、[Zalo Personal](https://docs.openclaw.ai/channels/zalouser)、[WebChat](https://docs.openclaw.ai/web/webchat)。
- [群组路由](https://docs.openclaw.ai/channels/group-messages)：提及门控、回复标签、每渠道分块和路由。渠道规则：[渠道](https://docs.openclaw.ai/channels)。

### 应用 + 节点

- [macOS 应用](https://docs.openclaw.ai/platforms/macos)：菜单栏控制平面、[Voice Wake](https://docs.openclaw.ai/nodes/voicewake)/PTT、[Talk Mode](https://docs.openclaw.ai/nodes/talk) 覆盖、[WebChat](https://docs.openclaw.ai/web/webchat)、调试工具、[远程 gateway](https://docs.openclaw.ai/gateway/remote) 控制。
- [iOS 节点](https://docs.openclaw.ai/platforms/ios)：[Canvas](https://docs.openclaw.ai/platforms/mac/canvas)、[Voice Wake](https://docs.openclaw.ai/nodes/voicewake)、[Talk Mode](https://docs.openclaw.ai/nodes/talk)、相机、屏幕录制、Bonjour + 设备配对。
- [Android 节点](https://docs.openclaw.ai/platforms/android)：连接标签（设置代码/手动）、聊天会话、语音标签、[Canvas](https://docs.openclaw.ai/platforms/mac/canvas)、相机/屏幕录制，以及 Android 设备命令（通知/位置/短信/照片/联系人/日历/运动/应用更新）。
- [macOS 节点模式](https://docs.openclaw.ai/nodes)：system.run/notify + canvas/camera 暴露。

### 工具 + 自动化

- [浏览器控制](https://docs.openclaw.ai/tools/browser)：专用的 openclaw Chrome/Chromium、快照、操作、上传、配置文件。
- [Canvas](https://docs.openclaw.ai/platforms/mac/canvas)：[A2UI](https://docs.openclaw.ai/platforms/mac/canvas#canvas-a2ui) push/reset、eval、快照。
- [节点](https://docs.openclaw.ai/nodes)：相机抓拍/剪辑、屏幕录制、[location.get](https://docs.openclaw.ai/nodes/location-command)、通知。
- [Cron + 唤醒](https://docs.openclaw.ai/automation/cron-jobs)；[webhooks](https://docs.openclaw.ai/automation/webhook)；[Gmail Pub/Sub](https://docs.openclaw.ai/automation/gmail-pubsub)。
- [技能平台](https://docs.openclaw.ai/tools/skills)：捆绑、管理和工作区技能，带安装门控 + UI。

### 运行时 + 安全

- [渠道路由](https://docs.openclaw.ai/channels/channel-routing)、[重试策略](https://docs.openclaw.ai/concepts/retry) 和 [流式/分块](https://docs.openclaw.ai/concepts/streaming)。
- [存在](https://docs.openclaw.ai/concepts/presence)、[打字指示器](https://docs.openclaw.ai/concepts/typing-indicators) 和 [使用跟踪](https://docs.openclaw.ai/concepts/usage-tracking)。
- [模型](https://docs.openclaw.ai/concepts/models)、[模型故障转移](https://docs.openclaw.ai/concepts/model-failover) 和 [会话修剪](https://docs.openclaw.ai/concepts/session-pruning)。
- [安全](https://docs.openclaw.ai/gateway/security) 和 [故障排除](https://docs.openclaw.ai/channels/troubleshooting)。

### 运维 + 打包

- [Control UI](https://docs.openclaw.ai/web) + [WebChat](https://docs.openclaw.ai/web/webchat) 直接从 Gateway 提供。
- [Tailscale Serve/Funnel](https://docs.openclaw.ai/gateway/tailscale) 或 [SSH 隧道](https://docs.openclaw.ai/gateway/remote)，带令牌/密码认证。
- [Nix 模式](https://docs.openclaw.ai/install/nix) 用于声明式配置；基于 [Docker](https://docs.openclaw.ai/install/docker) 的安装。
- [Doctor](https://docs.openclaw.ai/gateway/doctor) 迁移、[日志记录](https://docs.openclaw.ai/logging)。

## 工作原理（简短）

```
WhatsApp / Telegram / Slack / Discord / Google Chat / Signal / iMessage / BlueBubbles / IRC / Microsoft Teams / Matrix / 飞书 / LINE / Mattermost / Nextcloud Talk / Nostr / Synology Chat / Tlon / Twitch / Zalo / Zalo Personal / WebChat
               │
               ▼
┌───────────────────────────────┐
│            Gateway            │
│       (控制平面)              │
│     ws://127.0.0.1:18789      │
└──────────────┬────────────────┘
               │
               ├─ Pi 代理 (RPC)
               ├─ CLI (openclaw ...)
               ├─ WebChat UI
               ├─ macOS 应用
               └─ iOS / Android 节点
```

## 关键子系统

- **[Gateway WebSocket 网络](https://docs.openclaw.ai/concepts/architecture)** — 用于客户端、工具和事件的单一 WS 控制平面（加上运维：[Gateway 运行手册](https://docs.openclaw.ai/gateway)）。
- **[Tailscale 暴露](https://docs.openclaw.ai/gateway/tailscale)** — 用于 Gateway 仪表板 + WS 的 Serve/Funnel（远程访问：[远程](https://docs.openclaw.ai/gateway/remote)）。
- **[浏览器控制](https://docs.openclaw.ai/tools/browser)** — openclaw 管理的 Chrome/Chromium，带 CDP 控制。
- **[Canvas + A2UI](https://docs.openclaw.ai/platforms/mac/canvas)** — 代理驱动的视觉工作区（A2UI 主机：[Canvas/A2UI](https://docs.openclaw.ai/platforms/mac/canvas#canvas-a2ui)）。
- **[Voice Wake](https://docs.openclaw.ai/nodes/voicewake) + [Talk Mode](https://docs.openclaw.ai/nodes/talk)** — macOS/iOS 上的唤醒词以及 Android 上的连续语音。
- **[节点](https://docs.openclaw.ai/nodes)** — Canvas、相机抓拍/剪辑、屏幕录制、`location.get`、通知，以及 macOS 专用的 `system.run`/`system.notify`。

## Tailscale 访问（Gateway 仪表板）

OpenClaw 可以自动配置 Tailscale **Serve**（仅限 tailnet）或 **Funnel**（公开），而 Gateway 保持绑定到环回接口。配置 `gateway.tailscale.mode`：

- `off`：无 Tailscale 自动化（默认）。
- `serve`：通过 `tailscale serve` 实现仅限 tailnet 的 HTTPS（默认使用 Tailscale 身份头）。
- `funnel`：通过 `tailscale funnel` 实现公开 HTTPS（需要共享密码认证）。

注意：

- 启用 Serve/Funnel 时，`gateway.bind` 必须保持 `loopback`（OpenClaw 强制执行此设置）。
- 可以通过设置 `gateway.auth.mode: "password"` 或 `gateway.auth.allowTailscale: false` 强制 Serve 需要密码。
- 除非设置了 `gateway.auth.mode: "password"`，否则 Funnel 拒绝启动。
- 可选：`gateway.tailscale.resetOnExit` 在关闭时撤销 Serve/Funnel。

详情：[Tailscale 指南](https://docs.openclaw.ai/gateway/tailscale) · [Web 表面](https://docs.openclaw.ai/web)

## 远程 Gateway（Linux 很棒）

在小型 Linux 实例上运行 Gateway 是完全可以的。客户端（macOS 应用、CLI、WebChat）可以通过 **Tailscale Serve/Funnel** 或 **SSH 隧道** 连接，并且您仍然可以配对设备节点（macOS/iOS/Android）以在需要时执行设备本地操作。

- **Gateway 主机** 默认运行执行工具和渠道连接。
- **设备节点** 通过 `node.invoke` 运行设备本地操作（`system.run`、相机、屏幕录制、通知）。
  简而言之：exec 在 Gateway 所在的地方运行；设备操作在设备所在的地方运行。

详情：[远程访问](https://docs.openclaw.ai/gateway/remote) · [节点](https://docs.openclaw.ai/nodes) · [安全](https://docs.openclaw.ai/gateway/security)

## 通过 Gateway 协议的 macOS 权限

macOS 应用可以以 **节点模式** 运行，并通过 Gateway WebSocket（`node.list` / `node.describe`）宣传其功能和权限映射。然后客户端可以通过 `node.invoke` 执行本地操作：

- `system.run` 运行本地命令并返回 stdout/stderr/退出代码；设置 `needsScreenRecording: true` 需要屏幕录制权限（否则会收到 `PERMISSION_MISSING`）。
- `system.notify` 发布用户通知，如果通知被拒绝则失败。
- `canvas.*`、`camera.*`、`screen.record` 和 `location.get` 也通过 `node.invoke` 路由，并遵循 TCC 权限状态。

提升的 bash（主机权限）与 macOS TCC 是分开的：

- 当启用 + 允许列表时，使用 `/elevated on|off` 切换每会话提升访问。
- Gateway 通过 `sessions.patch`（WS 方法）持久化每会话切换， alongside `thinkingLevel`、`verboseLevel`、`model`、`sendPolicy` 和 `groupActivation`。

详情：[节点](https://docs.openclaw.ai/nodes) · [macOS 应用](https://docs.openclaw.ai/platforms/macos) · [Gateway 协议](https://docs.openclaw.ai/concepts/architecture)

## 代理到代理（sessions_* 工具）

- 使用这些工具在不跳转聊天表面的情况下跨会话协调工作。
- `sessions_list` — 发现活动会话（代理）及其元数据。
- `sessions_history` — 获取会话的转录日志。
- `sessions_send` — 向另一个会话发送消息；可选的回复 ping-pong + 宣布步骤（`REPLY_SKIP`、`ANNOUNCE_SKIP`）。

详情：[会话工具](https://docs.openclaw.ai/concepts/session-tool)

## 技能注册表（ClawHub）

ClawHub 是一个最小化的技能注册表。启用 ClawHub 后，代理可以自动搜索技能并根据需要拉取新技能。

[ClawHub](https://clawhub.com)

## 聊天命令

在 WhatsApp/Telegram/Slack/Google Chat/Microsoft Teams/WebChat 中发送这些（群组命令仅限所有者）：

- `/status` — 简洁的会话状态（模型 + 令牌，可用时显示成本）
- `/new` 或 `/reset` — 重置会话
- `/compact` — 压缩会话上下文（摘要）
- `/think <level>` — off|minimal|low|medium|high|xhigh（仅限 GPT-5.2 + Codex 模型）
- `/verbose on|off`
- `/usage off|tokens|full` — 每次响应的使用量页脚
- `/restart` — 重启 gateway（群组中仅限所有者）
- `/activation mention|always` — 群组激活切换（仅限群组）

## 应用（可选）

Gateway 本身就能提供出色的体验。所有应用都是可选的，并添加额外功能。

如果您计划构建/运行配套应用，请遵循下面的平台运行手册。

### macOS (OpenClaw.app)（可选）

- Gateway 和健康状况的菜单栏控制。
- Voice Wake + 按键通话覆盖。
- WebChat + 调试工具。
- 通过 SSH 进行远程 gateway 控制。

注意：需要签名构建才能使 macOS 权限在重新构建后保持有效（参见 `docs/mac/permissions.md`）。

### iOS 节点（可选）

- 通过 Gateway WebSocket 配对为节点（设备配对）。
- 语音触发转发 + Canvas 表面。
- 通过 `openclaw nodes ...` 控制。

运行手册：[iOS 连接](https://docs.openclaw.ai/platforms/ios)。

### Android 节点（可选）

- 通过设备配对 (`openclaw devices ...`) 配对为 WS 节点。
- 暴露连接/聊天/语音标签以及 Canvas、相机、屏幕捕获和 Android 设备命令系列。
- 运行手册：[Android 连接](https://docs.openclaw.ai/platforms/android)。

## 代理工作区 + 技能

- 工作区根目录：`~/.openclaw/workspace`（可通过 `agents.defaults.workspace` 配置）。
- 注入的提示文件：`AGENTS.md`、`SOUL.md`、`TOOLS.md`。
- 技能：`~/.openclaw/workspace/skills/<skill>/SKILL.md`。

## 配置

最小化 `~/.openclaw/openclaw.json`（模型 + 默认值）：

```json5
{
  agent: {
    model: "anthropic/claude-opus-4-6",
  },
}
```

[完整配置参考（所有键 + 示例）。](https://docs.openclaw.ai/gateway/configuration)

## 安全模型（重要）

- **默认：** 工具为 **main** 会话在主机上运行，因此当只有您自己时，代理拥有完全访问权限。
- **群组/渠道安全：** 设置 `agents.defaults.sandbox.mode: "non-main"` 以在每会话 Docker 沙箱中运行 **非 main 会话**（群组/渠道）；bash 然后在 Docker 中为这些会话运行。
- **沙箱默认值：** 允许列表 `bash`、`process`、`read`、`write`、`edit`、`sessions_list`、`sessions_history`、`sessions_send`、`sessions_spawn`；拒绝列表 `browser`、`canvas`、`nodes`、`cron`、`discord`、`gateway`。

详情：[安全指南](https://docs.openclaw.ai/gateway/security) · [Docker + 沙箱](https://docs.openclaw.ai/install/docker) · [沙箱配置](https://docs.openclaw.ai/gateway/configuration)

### [WhatsApp](https://docs.openclaw.ai/channels/whatsapp)

- 链接设备：`pnpm openclaw channels login`（将凭据存储在 `~/.openclaw/credentials`）。
- 通过 `channels.whatsapp.allowFrom` 允许谁可以与助手交谈。
- 如果设置了 `channels.whatsapp.groups`，它将成为群组允许列表；包含 `"*"` 以允许所有。

### [Telegram](https://docs.openclaw.ai/channels/telegram)

- 设置 `TELEGRAM_BOT_TOKEN` 或 `channels.telegram.botToken`（环境变量获胜）。
- 可选：设置 `channels.telegram.groups`（带 `channels.telegram.groups."*".requireMention`）；设置后，它是群组允许列表（包含 `"*"` 以允许所有）。还可以根据需要设置 `channels.telegram.allowFrom` 或 `channels.telegram.webhookUrl` + `channels.telegram.webhookSecret`。

```json5
{
  channels: {
    telegram: {
      botToken: "123456:ABCDEF",
    },
  },
}
```

### [Slack](https://docs.openclaw.ai/channels/slack)

- 设置 `SLACK_BOT_TOKEN` + `SLACK_APP_TOKEN`（或 `channels.slack.botToken` + `channels.slack.appToken`）。

### [Discord](https://docs.openclaw.ai/channels/discord)

- 设置 `DISCORD_BOT_TOKEN` 或 `channels.discord.token`（环境变量获胜）。
- 可选：设置 `commands.native`、`commands.text` 或 `commands.useAccessGroups`，以及根据需要设置 `channels.discord.allowFrom`、`channels.discord.guilds` 或 `channels.discord.mediaMaxMb`。

```json5
{
  channels: {
    discord: {
      token: "1234abcd",
    },
  },
}
```

### [Signal](https://docs.openclaw.ai/channels/signal)

- 需要 `signal-cli` 和 `channels.signal` 配置部分。

### [BlueBubbles (iMessage)](https://docs.openclaw.ai/channels/bluebubbles)

- **推荐** 的 iMessage 集成。
- 配置 `channels.bluebubbles.serverUrl` + `channels.bluebubbles.password` 和 webhook（`channels.bluebubbles.webhookPath`）。
- BlueBubbles 服务器运行在 macOS 上；Gateway 可以运行在 macOS 或其他地方。

### [iMessage（旧版）](https://docs.openclaw.ai/channels/imessage)

- 通过 `imsg` 的旧版 macOS 专用集成（Messages 必须已登录）。
- 如果设置了 `channels.imessage.groups`，它将成为群组允许列表；包含 `"*"` 以允许所有。

### [Microsoft Teams](https://docs.openclaw.ai/channels/msteams)

- 配置 Teams 应用 + Bot Framework，然后添加 `msteams` 配置部分。
- 通过 `msteams.allowFrom` 允许谁可以交谈；通过 `msteams.groupAllowFrom` 或 `msteams.groupPolicy: "open"` 进行群组访问。

### [WebChat](https://docs.openclaw.ai/web/webchat)

- 使用 Gateway WebSocket；无需单独的 WebChat 端口/配置。

浏览器控制（可选）：

```json5
{
  browser: {
    enabled: true,
    color: "#FF4500",
  },
}
```

## 文档

当您完成入职流程并想要更深入的参考时，请使用这些。

- [从文档索引开始，了解导航和"内容在哪里"](https://docs.openclaw.ai)
- [阅读架构概述，了解 gateway + 协议模型](https://docs.openclaw.ai/concepts/architecture)
- [当您需要每个键和示例时，使用完整的配置参考](https://docs.openclaw.ai/gateway/configuration)
- [按照操作运行手册运行 Gateway](https://docs.openclaw.ai/gateway)
- [了解 Control UI/Web 表面如何工作以及如何安全地暴露它们](https://docs.openclaw.ai/web)
- [了解通过 SSH 隧道或 tailnet 进行远程访问](https://docs.openclaw.ai/gateway/remote)
- [按照入职向导流程进行引导式设置](https://docs.openclaw.ai/start/wizard)
- [通过 webhook 表面连接外部触发器](https://docs.openclaw.ai/automation/webhook)
- [设置 Gmail Pub/Sub 触发器](https://docs.openclaw.ai/automation/gmail-pubsub)
- [了解 macOS 菜单栏配套应用详情](https://docs.openclaw.ai/platforms/mac/menu-bar)
- [平台指南：Windows (WSL2)](https://docs.openclaw.ai/platforms/windows)、[Linux](https://docs.openclaw.ai/platforms/linux)、[macOS](https://docs.openclaw.ai/platforms/macos)、[iOS](https://docs.openclaw.ai/platforms/ios)、[Android](https://docs.openclaw.ai/platforms/android)
- [使用故障排除指南调试常见故障](https://docs.openclaw.ai/channels/troubleshooting)
- [在暴露任何内容之前审查安全指南](https://docs.openclaw.ai/gateway/security)

## 高级文档（发现 + 控制）

- [发现 + 传输](https://docs.openclaw.ai/gateway/discovery)
- [Bonjour/mDNS](https://docs.openclaw.ai/gateway/bonjour)
- [Gateway 配对](https://docs.openclaw.ai/gateway/pairing)
- [远程 gateway README](https://docs.openclaw.ai/gateway/remote-gateway-readme)
- [Control UI](https://docs.openclaw.ai/web/control-ui)
- [Dashboard](https://docs.openclaw.ai/web/dashboard)

## 运维和故障排除

- [健康检查](https://docs.openclaw.ai/gateway/health)
- [Gateway 锁](https://docs.openclaw.ai/gateway/gateway-lock)
- [后台进程](https://docs.openclaw.ai/gateway/background-process)
- [浏览器故障排除（Linux）](https://docs.openclaw.ai/tools/browser-linux-troubleshooting)
- [日志记录](https://docs.openclaw.ai/logging)

## 深入探讨

- [代理循环](https://docs.openclaw.ai/concepts/agent-loop)
- [存在](https://docs.openclaw.ai/concepts/presence)
- [TypeBox 模式](https://docs.openclaw.ai/concepts/typebox)
- [RPC 适配器](https://docs.openclaw.ai/reference/rpc)
- [队列](https://docs.openclaw.ai/concepts/queue)

## 工作区和技能

- [技能配置](https://docs.openclaw.ai/tools/skills-config)
- [默认 AGENTS](https://docs.openclaw.ai/reference/AGENTS.default)
- [模板：AGENTS](https://docs.openclaw.ai/reference/templates/AGENTS)
- [模板：BOOTSTRAP](https://docs.openclaw.ai/reference/templates/BOOTSTRAP)
- [模板：IDENTITY](https://docs.openclaw.ai/reference/templates/IDENTITY)
- [模板：SOUL](https://docs.openclaw.ai/reference/templates/SOUL)
- [模板：TOOLS](https://docs.openclaw.ai/reference/templates/TOOLS)
- [模板：USER](https://docs.openclaw.ai/reference/templates/USER)

## 平台内部

- [macOS 开发设置](https://docs.openclaw.ai/platforms/mac/dev-setup)
- [macOS 菜单栏](https://docs.openclaw.ai/platforms/mac/menu-bar)
- [macOS 语音唤醒](https://docs.openclaw.ai/platforms/mac/voicewake)
- [iOS 节点](https://docs.openclaw.ai/platforms/ios)
- [Android 节点](https://docs.openclaw.ai/platforms/android)
- [Windows (WSL2)](https://docs.openclaw.ai/platforms/windows)
- [Linux 应用](https://docs.openclaw.ai/platforms/linux)

## 电子邮件钩子（Gmail）

- [docs.openclaw.ai/gmail-pubsub](https://docs.openclaw.ai/automation/gmail-pubsub)

## Molty

OpenClaw 是为 **Molty** 构建的，一只太空龙虾 AI 助手。🦞
作者：Peter Steinberger 和社区。

- [openclaw.ai](https://openclaw.ai)
- [soul.md](https://soul.md)
- [steipete.me](https://steipete.me)
- [@openclaw](https://x.com/openclaw)
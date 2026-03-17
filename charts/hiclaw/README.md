<div align="center">

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=hiclaw)

🚀 🚀 **EDAS provides one-click application deployment. Try it now!**

</div>

<h1 align="center">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN014DQemZ257thQOBg8L___6000000007480-55-tps-1489-391.svg" alt="HiClaw"  width="290" height="72.5">
  <br>
</h1>

**HiClaw is an open-source Collaborative Multi-Agent OS for transparent, human-in-the-loop task coordination via Matrix rooms.**

Built with a **Manager-Workers architecture**, HiClaw lets you coordinate multiple Worker Agents through a Manager Agent to complete complex tasks — all conversations are visible in Matrix rooms, and you can intervene at any time.

Think of it as your AI team in a chat room: tell the Manager what you need, it spins up Workers, and you watch everything happen in real-time.

## Key Features

- 🦞 **Customizable "Claws"**: Each Claw can be OpenClaw, CoPaw, NanoClaw, ZeroClaw, or your own enterprise agent. Pre-installed with OpenClaw.

- 🧬 **Manager Claw Role**: A dedicated Manager handles Worker lifecycle — create, assign tasks, monitor progress — all through natural language.

- ☎️ **Private & Secure Matrix Communication**: Self-hosted Matrix server (Tuwunel) + Element Web client. **No third-party IM platforms, no external APIs, no data leaving your infrastructure.** Your agent conversations stay on your servers.

- 📦 **Shared File System (MinIO)**: Centralized file storage for agent collaboration. Workers are stateless — destroy and recreate anytime.

- 🔐 **Secure Entry via Higress AI Gateway**: Workers never hold real API keys. They only get consumer tokens. Even if compromised, attackers get nothing useful.

## News

- **2026-03-14**: HiClaw 1.0.6 — enterprise-grade MCP Server management, zero credential exposure. [Blog](blog/hiclaw-1.0.6-release.md)
- **2026-03-10**: HiClaw 1.0.4 — CoPaw Worker support, 80% less memory. [Blog](blog/hiclaw-1.0.4-release.md)
- **2026-03-04**: HiClaw open sourced. [Announcement](blog/hiclaw-announcement.md)

## Why HiClaw

- **Enterprise-Grade Security**: Worker Agents operate with consumer tokens only. Real credentials (API keys, GitHub PATs) stay in the gateway — Workers can't see them, and neither can attackers.

- **Fully Private**: Matrix is a decentralized, open protocol. Host it yourself, federate with others if you want. No vendor lock-in, no data harvesting.

- **Human-in-the-Loop by Default**: Every Matrix room includes you, the Manager, and the relevant Workers. Watch everything. Jump in anytime. No black boxes.

- **Zero Configuration IM**: Built-in Matrix server means no bot applications, no API approvals, no waiting. Just open Element Web and start chatting.

- **One Command Setup**: `curl | bash` and you're done — AI gateway, Matrix server, file storage, web client, and Manager Agent.

- **Skills Ecosystem**: Workers pull from [skills.sh](https://skills.sh) (80,000+ community skills) on demand. Safe because Workers can't access real credentials.

## How It Works

### Manager as Your AI Chief of Staff

```
You: Create a Worker named alice for frontend development

Manager: Done. Worker alice is ready.
         Room: Worker: Alice
         Tell alice what to build.

You: @alice implement a login page with React

Alice: On it... [a few minutes later]
       Done. PR submitted: https://github.com/xxx/pull/1
```

<p align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN01wHWaJQ29KV3j5vryD___6000000008049-0-tps-589-1280.jpg" width="240" />
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN01q9L67J245mFT0fPXH___6000000007340-0-tps-589-1280.jpg" width="240" />
</p>
<p align="center">
  <sub>① Manager creates a Worker and assigns tasks</sub>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <sub>② You can also direct Workers directly in the room</sub>
</p>

### Security Model

```
Worker (consumer token only)
    → Higress AI Gateway (holds real API keys, GitHub PAT)
        → LLM API / GitHub API / MCP Servers
```

Workers see only their consumer token. The gateway handles all real credentials. The Manager knows what Workers are doing but never touches the actual keys.

### Human in the Loop

Every Matrix Room includes you, the Manager, and relevant Workers:

```
You: @bob wait, change the password rule to minimum 8 chars
Bob: Got it, updated.
Alice: Frontend validation updated too.
```

No hidden agent-to-agent calls. Everything is visible and intervenable.

## Architecture

```
┌─────────────────────────────────────────────┐
│         hiclaw-manager-agent                │
│  Higress │ Tuwunel │ MinIO │ Element Web    │
│  Manager Agent (OpenClaw)                   │
└──────────────────┬──────────────────────────┘
                   │ Matrix + HTTP Files
┌──────────────────┴──────┐  ┌────────────────┐
│  hiclaw-worker-agent    │  │  hiclaw-worker │
│  Worker Alice (OpenClaw)│  │  Worker Bob    │
└─────────────────────────┘  └────────────────┘
```

| Component | Role |
|-----------|------|
| Higress AI Gateway | LLM proxy, MCP Server hosting, credential management |
| Tuwunel (Matrix) | Self-hosted IM server for all Agent + Human communication |
| Element Web | Browser client, zero setup |
| MinIO | Centralized file storage, Workers are stateless |
| OpenClaw | Agent runtime with Matrix plugin and skills |

## HiClaw vs OpenClaw Native

| | OpenClaw Native | HiClaw |
|---|---|---|
| Deployment | Single process | Distributed containers |
| Agent creation | Manual config + restart | Conversational |
| Credentials | Each agent holds real keys | Workers only hold consumer tokens |
| Human visibility | Optional | Built-in (Matrix Rooms) |
| Mobile access | Depends on channel setup | Any Matrix client, zero config |
| Monitoring | None | Manager heartbeat, visible in Room |

## Roadmap

### ✅ Released

- ~~**CoPaw** — Lightweight agent runtime~~ [Released in 1.0.4](blog/hiclaw-1.0.4-release.md): ~150MB memory usage (vs ~500MB for OpenClaw), plus local host mode for browser automation.
- ~~**Universal MCP Service Support** — MCP server integration~~ [Released in 1.0.6](blog/hiclaw-1.0.6-release.md): Any MCP server can be safely exposed to Workers through the gateway. Workers access tools using only Higress-issued tokens; real credentials never leave the gateway.

### In Progress

#### Lightweight Worker Runtimes

- **ZeroClaw** — Rust-based ultra-lightweight runtime, 3.4MB binary, <10ms cold start.
- **NanoClaw** — Minimal OpenClaw alternative, <4000 LOC, container-based isolation.

Goal: Reduce per-Worker memory from ~500MB to <100MB.

### Planned

#### Team Management Center

A built-in dashboard for observing and controlling your Agent Teams — real-time observation, active interruption, task timeline, resource monitoring.

---

## Documentation

| | |
|---|---|
| [docs/quickstart.md](docs/quickstart.md) | Step-by-step guide |
| [docs/architecture.md](docs/architecture.md) | System architecture deep dive |
| [docs/manager-guide.md](docs/manager-guide.md) | Manager configuration |
| [docs/worker-guide.md](docs/worker-guide.md) | Worker deployment |
| [docs/development.md](docs/development.md) | Contributing and local dev |

## License

Apache License 2.0

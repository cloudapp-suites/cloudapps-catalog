<div align="center">

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=hiclaw)

🚀 🚀 **EDAS 提供应用一键部署，快来体验吧！**

</div>

<a name="readme-top"></a>
<h1 align="center">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN014DQemZ257thQOBg8L___6000000007480-55-tps-1489-391.svg" alt="HiClaw"  width="290" height="72.5">

</h1>


**HiClaw 是一个开源的协作式多智能体操作系统。让多个 Agent 在 Matrix 房间中协作，人类全程可见、随时可介入。 设计了 Manager - Workers 协作架构，人类可通过 Manager Agent 可协调多个 Worker Agents，完成复杂任务，从而加速实现 OPOC（一人一公司）和企业数字员工。**

HiClaw 并不和其他 xxClaw 对标，非龙虾本虾，而是一个多 Agent 操作系统。
- 🦞 每个 Claw 支持用户自定义：可以是 OpenClaw，也可以是 Copaw、NanoClaw、ZeroClaw 或是企业自建的 Agent，目前预装的是 OpenClaw 和 Copaw。
- 🧑‍💻 引入了 Manger Claw 的角色：不用真人去管理每个干活的 Worker Claw，节省管理成本。
- 🎨 使用 Element IM 客户端+Tuwunel IM 服务器（均基于 Matrix 实时通信协议），通信协议和原生的不同，节省钉钉、飞书 IM 的接入和企业内的审批成本，方便用户快速体验在 IM 的交互环境中体验模型服务的"爽感"，同时支持以 OpenClaw 原生的方式接入 IM。
- 📚 引入 MinIO 共享文件系统，用于 Agent 之间的信息共享，真人之间的协作，共同记忆也是基于共享文件系统。
- ⛑️ 引入 Higress AI Gateway，入口和各类凭证风险降低了，减少了用户对原生龙虾在安全上的顾虑。

![架构](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN01c1VlDE1zYZ46EW3OA___6000000006726-49-tps-9895-8231.webp)

## 动态
- **2026-03-14:** HiClaw 1.0.6 发布，企业级 MCP Server 管理——凭证零暴露，工具全接入。Worker 可通过 Higress AI Gateway 安全使用任意 MCP 工具。了解[更多](blog/zh-cn/hiclaw-1.0.6-release.md)。
- **2026-03-10:** HiClaw 1.0.4 发布，支持 CoPaw Worker——内存占用降低 80%，新增本地模式可操作浏览器。了解[更多](blog/zh-cn/hiclaw-1.0.4-release.md)。
- **2026-03-04:** HiClaw 开源，引入 Manager Agent 角色，构建企业级多 Agent 协同平台。了解[更多](https://github.com/higress-group/hiclaw/blob/main/blog/zh-cn/hiclaw-announcement.md)。

## 为什么选 HiClaw

- **企业级安全**：Worker 永远不持有真实的 API Key 或 GitHub PAT，只有一个消费者令牌（类似"工牌"）。即使 Worker 被攻击，攻击者也拿不到任何真实凭证。
- **多 Agent 群聊网络**：Manager Agent 智能分解任务，协调多个 Worker Agent 并行执行，大幅提升复杂任务处理能力。
- **Matrix 协议驱动**：基于开放的 Matrix IM 协议，所有 Agent 通信透明可审计，天然支持分布式部署和联邦通信。
- **人工全程监督**：人类可随时进入任意 Matrix 房间观察 Agent 对话，实时干预或修正 Agent 行为，确保安全可控。
- **真正开箱即用的 IM**：内置 Matrix 服务器，不需要申请飞书/钉钉机器人，不需要等待审批。浏览器打开 Element Web 就能对话，或者用手机上的 Matrix 客户端（Element、FluffyChat）随时指挥，iOS、Android、Web 全平台支持。
- **Manager-Worker 架构**：清晰的 Manager-Worker 两层架构，职责分明，易于扩展自定义 Worker Agent 以适应不同场景，支持纳管 Copaw、NanoClaw、ZeroClaw 或是企业自建的 Agent

- **一条命令启动**：一个 `curl | bash` 搞定所有组件--Higress AI 网关、Matrix 服务器、文件存储、Web 客户端和 Manager Agent 本身。

- **技能生态**：Worker 可以按需从 [skills.sh](https://skills.sh) 获取技能（社区已有 80,000+ 个）。因为 Worker 本身就拿不到真实凭证，所以可以放心使用公开技能库。

## 工作方式

### Manager 是你的 AI 管家

Manager 通过自然语言完成 Worker 的全生命周期管理：

```
你：帮我创建一个名为 alice 的前端 Worker

Manager：好的，Worker alice 已创建。
         房间：Worker: Alice
         可以直接在房间里给 alice 分配任务了。

你：@alice 帮我用 React 实现一个登录页面

Alice：收到，正在处理……[几分钟后]
       完成了！PR 已提交：https://github.com/xxx/pull/1
```

<p align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN01Kvz9CF1l8XwU7izC9___6000000004774-0-tps-589-1280.jpg" width="240" />
  &nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hiclaw/image/O1CN01lifZMs1h7qscHxCsH___6000000004231-0-tps-589-1280.jpg" width="240" />
</p>
<p align="center">
  <sub>① Manager 创建 Worker，分配任务</sub>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <sub>② 人类也可以直接在房间里指挥 Worker</sub>
</p>

Manager 还会定期发送心跳检查--如果某个 Worker 卡住了，它会自动提醒你。

### 安全模型

```
Worker（只持有消费者令牌）
    → Higress AI 网关（持有真实 API Key、GitHub PAT）
        → LLM API / GitHub API / MCP Server
```

Worker 只能看到自己的消费者令牌。网关统一管理所有真实凭证。Manager 知道 Worker 在做什么，但同样接触不到真实的 Key。

### 人工全程监督

每个 Matrix 房间里都有你、Manager 和相关 Worker。你可以随时跳进来：

```
你：@bob 等一下，密码规则改成至少 8 位
Bob：好的，已修改。
Alice：前端校验也更新了。
```

没有黑盒，没有隐藏的 Agent 间调用。

## HiClaw vs OpenClaw 原生

| | OpenClaw 原生 | HiClaw |
|---|---|---|
| 部署方式 | 单进程 | 分布式容器 |
| Agent 创建 | 手动配置 + 重启 | 对话式 |
| 凭证管理 | 每个 Agent 持有真实 Key | Worker 只持有消费者令牌 |
| 人工可见性 | 可选 | 内置（Matrix 房间） |
| 移动端访问 | 取决于渠道配置 | 任意 Matrix 客户端，零配置 |
| 监控 | 无 | Manager 心跳，房间内可见 |

## 架构

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

| 组件 | 职责 |
|------|------|
| Higress AI 网关 | LLM 代理、MCP Server 托管、凭证集中管理 |
| Tuwunel（Matrix） | 所有 Agent 与人类通信的 IM 服务器 |
| Element Web | 浏览器客户端，零配置 |
| MinIO | 集中式文件存储，Worker 无状态 |
| OpenClaw | 带 Matrix 插件和技能系统的 Agent 运行时 |


## Roadmap

### ✅ 已发布

- ~~**CoPaw** -- 轻量级 Agent 运行时~~ [已在 1.0.4 发布](blog/zh-cn/hiclaw-1.0.4-release.md)：Docker 模式内存占用约 150MB（对比 OpenClaw 的 500MB），还支持本地模式可操作浏览器、访问本地文件。
- ~~**通用 MCP 服务支持** -- MCP 服务集成~~ [已在 1.0.6 发布](blog/zh-cn/hiclaw-1.0.6-release.md)：任意 MCP 服务可安全暴露给 Worker，Worker 仅使用 Higress 签发的 token，真实凭证零泄露。

### 进行中

#### 轻量级 Worker 运行时

- **ZeroClaw** -- 基于 Rust 的超轻量运行时，3.4MB 二进制，冷启动 <10ms，专为边缘和资源受限环境设计。
- **NanoClaw** -- 极简 OpenClaw 替代品，<4000 行代码，基于容器隔离，使用 Anthropic Agents SDK。

目标：将单 Worker 内存占用从 ~500MB 降至 <100MB，在相同硬件上支持更多 Worker。

### 计划中

#### Team 管理中心

开箱即用的可视化控制台，用于观察和管控整个 Agent Team：

- **实时观测**：每个 Agent 的工作过程细节可视化（对话、工具调用、思考过程）
- **主动打断**：发现问题时可随时打断指定 Agent 的工作，接管或调整方向
- **任务时间线**：谁在什么时候做了什么，完整历史记录
- **资源监控**：每个 Worker 的 CPU/内存使用情况

目标：让 Agent Teams 像人类团队一样透明可控--没有黑盒。

---

## 文档

| | |
|---|---|
| [docs/zh-cn/quickstart.md](docs/zh-cn/quickstart.md) | 端到端快速入门，含验证检查点 |
| [docs/zh-cn/architecture.md](docs/zh-cn/architecture.md) | 系统架构详解 |
| [docs/zh-cn/manager-guide.md](docs/zh-cn/manager-guide.md) | Manager 配置与使用 |
| [docs/zh-cn/worker-guide.md](docs/zh-cn/worker-guide.md) | Worker 部署与故障排查 |
| [docs/zh-cn/development.md](docs/zh-cn/development.md) | 贡献指南与本地开发 |
| [docs/zh-cn/faq.md](docs/zh-cn/faq.md) | 常见问题 |

## 许可证

Apache License 2.0

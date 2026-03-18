<div align="center">

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=zeroclaw)

🚀 🚀 **EDAS 提供应用一键部署，快来体验吧！**

</div>

<h1 align="center">ZeroClaw 🦀（简体中文）</h1>

<p align="center">
  <strong>零开销、零妥协；随处部署、万物可换。</strong>
</p>

<p align="center">
  <a href="https://raw.githubusercontent.com/zeroclaw-labs/zeroclaw/master/install.sh">一键部署</a> |
  <a href="docs/i18n/zh-CN/setup-guides/README.zh-CN.md">安装入门</a> |
  <a href="docs/README.zh-CN.md">文档总览</a> |
  <a href="docs/SUMMARY.zh-CN.md">文档目录</a>
</p>

<p align="center">
  <strong>场景分流：</strong>
  <a href="docs/i18n/zh-CN/reference/README.zh-CN.md">参考手册</a> ·
  <a href="docs/i18n/zh-CN/ops/README.zh-CN.md">运维部署</a> ·
  <a href="docs/i18n/zh-CN/ops/troubleshooting.zh-CN.md">故障排查</a> ·
  <a href="docs/i18n/zh-CN/security/README.zh-CN.md">安全专题</a> ·
  <a href="docs/i18n/zh-CN/hardware/README.zh-CN.md">硬件外设</a> ·
  <a href="docs/i18n/zh-CN/contributing/README.zh-CN.md">贡献与 CI</a>
</p>


<!-- BEGIN:WHATS_NEW -->

### 🚀 What's New in v0.3.1 (March 2026)

| Area | Highlights |
|---|---|
| ci | add Termux (aarch64-linux-android) release target |

<!-- END:WHATS_NEW -->

## 📢 公告板

用于发布重要通知（破坏性变更、安全通告、维护窗口、版本阻塞问题等）。

| 日期（UTC） | 级别 | 通知 | 处理建议 |
|---|---|---|---|
| 2026-02-19 | _紧急_ | 我们与 `openagen/zeroclaw` 及 `zeroclaw.org` **没有任何关系**。`zeroclaw.org` 当前会指向 `openagen/zeroclaw` 这个 fork，并且该域名/仓库正在冒充我们的官网与官方项目。 | 请不要相信上述来源发布的任何信息、二进制、募资活动或官方声明。请仅以[本仓库](https://github.com/zeroclaw-labs/zeroclaw)和已验证官方社媒为准。 |
| 2026-02-21 | _重要_ | 我们的官网现已上线：[zeroclawlabs.ai](https://zeroclawlabs.ai)。感谢大家一直以来的耐心等待。我们仍在持续发现冒充行为，请勿参与任何未经我们官方渠道发布、但打着 ZeroClaw 名义进行的投资、募资或类似活动。 | 一切信息请以[本仓库](https://github.com/zeroclaw-labs/zeroclaw)为准；也可关注 [X（@zeroclawlabs）](https://x.com/zeroclawlabs?s=21)、[Telegram（@zeroclawlabs）](https://t.me/zeroclawlabs)、[Facebook（群组）](https://www.facebook.com/groups/zeroclawlabs)、[Reddit（r/zeroclawlabs）](https://www.reddit.com/r/zeroclawlabs/) 与 [小红书账号](https://www.xiaohongshu.com/user/profile/67cbfc43000000000d008307?xsec_token=AB73VnYnGNx5y36EtnnZfGmAmS-6Wzv8WMuGpfwfkg6Yc%3D&xsec_source=pc_search) 获取官方最新动态。 |
| 2026-02-19 | _重要_ | Anthropic 于 2026-02-19 更新了 Authentication and Credential Use 条款。条款明确：OAuth authentication（用于 Free、Pro、Max）仅适用于 Claude Code 与 Claude.ai；将 Claude Free/Pro/Max 账号获得的 OAuth token 用于其他任何产品、工具或服务（包括 Agent SDK）不被允许，并可能构成对 Consumer Terms of Service 的违规。 | 为避免损失，请暂时不要尝试 Claude Code OAuth 集成；原文见：[Authentication and Credential Use](https://code.claude.com/docs/en/legal-and-compliance#authentication-and-credential-use)。 |

## 项目简介

ZeroClaw 是一个高性能、低资源占用、可组合的自主智能体运行时。ZeroClaw 是面向智能代理工作流的**运行时操作系统** — 它抽象了模型、工具、记忆和执行层，使代理可以一次构建、随处运行。

- Rust 原生实现，单二进制部署，跨 ARM / x86 / RISC-V。
- Trait 驱动架构，`Provider` / `Channel` / `Tool` / `Memory` 可替换。
- 安全默认值优先：配对鉴权、显式 allowlist、沙箱与作用域约束。

## 为什么选择 ZeroClaw

- **默认轻量运行时**：常见 CLI 与 `status` 工作流通常保持在几 MB 级内存范围。
- **低成本部署友好**：面向低价板卡与小规格云主机设计，不依赖厚重运行时。
- **冷启动速度快**：Rust 单二进制让常用命令与守护进程启动更接近“秒开”。
- **跨架构可移植**：同一套二进制优先流程覆盖 ARM / x86 / RISC-V，并保持 provider/channel/tool 可替换。

## 基准快照（ZeroClaw vs OpenClaw，可复现）

以下是本地快速基准对比（macOS arm64，2026 年 2 月），按 0.8GHz 边缘 CPU 进行归一化展示：

| | OpenClaw | NanoBot | PicoClaw | ZeroClaw 🦀 |
|---|---|---|---|---|
| **语言** | TypeScript | Python | Go | **Rust** |
| **RAM** | > 1GB | > 100MB | < 10MB | **< 5MB** |
| **启动时间（0.8GHz 核）** | > 500s | > 30s | < 1s | **< 10ms** |
| **二进制体积** | ~28MB（dist） | N/A（脚本） | ~8MB | **~8.8 MB** |
| **成本** | Mac Mini $599 | Linux SBC ~$50 | Linux 板卡 $10 | **任意 $10 硬件** |

> 说明：ZeroClaw 的数据来自 release 构建，并通过 `/usr/bin/time -l` 测得。OpenClaw 需要 Node.js 运行时环境，仅该运行时通常就会带来约 390MB 的额外内存占用；NanoBot 需要 Python 运行时环境。PicoClaw 与 ZeroClaw 为静态二进制。


### 本地可复现测量

基准数据会随代码与工具链变化，建议始终在你的目标环境自行复测：

```bash
cargo build --release
ls -lh target/release/zeroclaw

/usr/bin/time -l target/release/zeroclaw --help
/usr/bin/time -l target/release/zeroclaw status
```

当前 README 的样例数据（macOS arm64，2026-02-18）：

- Release 二进制：`8.8M`
- `zeroclaw --help`：约 `0.02s`，峰值内存约 `3.9MB`
- `zeroclaw status`：约 `0.01s`，峰值内存约 `4.1MB`



## 贡献与许可证

- 贡献指南：[`CONTRIBUTING.md`](CONTRIBUTING.md)
- PR 工作流：[`docs/contributing/pr-workflow.md`](docs/i18n/zh-CN/contributing/pr-workflow.zh-CN.md)
- Reviewer 指南：[`docs/contributing/reviewer-playbook.md`](docs/i18n/zh-CN/contributing/reviewer-playbook.zh-CN.md)
- 许可证：MIT 或 Apache 2.0（见 [`LICENSE-MIT`](LICENSE-MIT)、[`LICENSE-APACHE`](LICENSE-APACHE) 与 [`NOTICE`](NOTICE)）

<!-- BEGIN:RECENT_CONTRIBUTORS -->
---
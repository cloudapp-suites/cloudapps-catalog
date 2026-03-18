<div align="center">

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=zeroclaw)

🚀 🚀 **EDAS provides one-click application deployment. Try it now!**

</div>

<h1 align="center">ZeroClaw 🦀</h1>

<p align="center">
  <strong>Zero overhead. Zero compromise. 100% Rust. 100% Agnostic.</strong><br>
  ⚡️ <strong>Runs on $10 hardware with <5MB RAM: That's 99% less memory than OpenClaw and 98% cheaper than a Mac mini!</strong>
</p>

### ✨ Features

- 🏎️ **Lean Runtime by Default:** Common CLI and status workflows run in a few-megabyte memory envelope on release builds.
- 💰 **Cost-Efficient Deployment:** Designed for low-cost boards and small cloud instances without heavyweight runtime dependencies.
- ⚡ **Fast Cold Starts:** Single-binary Rust runtime keeps command and daemon startup near-instant for daily operations.
- 🌍 **Portable Architecture:** One binary-first workflow across ARM, x86, and RISC-V with swappable providers/channels/tools.

### Why teams pick ZeroClaw

- **Lean by default:** small Rust binary, fast startup, low memory footprint.
- **Secure by design:** pairing, strict sandboxing, explicit allowlists, workspace scoping.
- **Fully swappable:** core systems are traits (providers, channels, tools, memory, tunnels).
- **No lock-in:** OpenAI-compatible provider support + pluggable custom endpoints.

## Benchmark Snapshot (ZeroClaw vs OpenClaw, Reproducible)

Local machine quick benchmark (macOS arm64, Feb 2026) normalized for 0.8GHz edge hardware.

|                           | OpenClaw      | NanoBot        | PicoClaw        | ZeroClaw 🦀          |
| ------------------------- | ------------- | -------------- | --------------- | -------------------- |
| **Language**              | TypeScript    | Python         | Go              | **Rust**             |
| **RAM**                   | > 1GB         | > 100MB        | < 10MB          | **< 5MB**            |
| **Startup (0.8GHz core)** | > 500s        | > 30s          | < 1s            | **< 10ms**           |
| **Binary Size**           | ~28MB (dist)  | N/A (Scripts)  | ~8MB            | **~8.8 MB**          |
| **Cost**                  | Mac Mini $599 | Linux SBC ~$50 | Linux Board $10 | **Any hardware $10** |

> Notes: ZeroClaw results are measured on release builds using `/usr/bin/time -l`. OpenClaw requires Node.js runtime (typically ~390MB additional memory overhead), while NanoBot requires Python runtime. PicoClaw and ZeroClaw are static binaries. The RAM figures above are runtime memory; build-time compilation requirements are higher.

### Reproducible local measurement

Benchmark claims can drift as code and toolchains evolve, so always measure your current build locally:

```bash
cargo build --release
ls -lh target/release/zeroclaw

/usr/bin/time -l target/release/zeroclaw --help
/usr/bin/time -l target/release/zeroclaw status
```

Example sample (macOS arm64, measured on February 18, 2026):

- Release binary size: `8.8MB`
- `zeroclaw --help`: about `0.02s` real time, ~`3.9MB` peak memory footprint
- `zeroclaw status`: about `0.01s` real time, ~`4.1MB` peak memory footprint


## Collaboration & Docs

Start from the docs hub for a task-oriented map:

- Documentation hub: [`docs/README.md`](docs/README.md)
- Unified docs TOC: [`docs/SUMMARY.md`](docs/SUMMARY.md)
- Commands reference: [`docs/reference/cli/commands-reference.md`](docs/reference/cli/commands-reference.md)
- Config reference: [`docs/reference/api/config-reference.md`](docs/reference/api/config-reference.md)
- Providers reference: [`docs/reference/api/providers-reference.md`](docs/reference/api/providers-reference.md)
- Channels reference: [`docs/reference/api/channels-reference.md`](docs/reference/api/channels-reference.md)
- Operations runbook: [`docs/ops/operations-runbook.md`](docs/ops/operations-runbook.md)
- Troubleshooting: [`docs/ops/troubleshooting.md`](docs/ops/troubleshooting.md)
- Docs inventory/classification: [`docs/maintainers/docs-inventory.md`](docs/maintainers/docs-inventory.md)
- PR/Issue triage snapshot (as of February 18, 2026): [`docs/maintainers/project-triage-snapshot-2026-02-18.md`](docs/maintainers/project-triage-snapshot-2026-02-18.md)

Core collaboration references:

- Documentation hub: [docs/README.md](docs/README.md)
- Documentation template: [docs/contributing/doc-template.md](docs/contributing/doc-template.md)
- Documentation change checklist: [docs/README.md#4-documentation-change-checklist](docs/README.md#4-documentation-change-checklist)
- Channel configuration reference: [docs/reference/api/channels-reference.md](docs/reference/api/channels-reference.md)
- Matrix encrypted-room operations: [docs/security/matrix-e2ee-guide.md](docs/security/matrix-e2ee-guide.md)
- Contribution guide: [CONTRIBUTING.md](CONTRIBUTING.md)
- PR workflow policy: [docs/contributing/pr-workflow.md](docs/contributing/pr-workflow.md)
- Reviewer playbook (triage + deep review): [docs/contributing/reviewer-playbook.md](docs/contributing/reviewer-playbook.md)
- Security disclosure policy: [SECURITY.md](SECURITY.md)

For deployment and runtime operations:

- Network deployment guide: [docs/ops/network-deployment.md](docs/ops/network-deployment.md)
- Proxy agent playbook: [docs/ops/proxy-agent-playbook.md](docs/ops/proxy-agent-playbook.md)

## Support ZeroClaw

If ZeroClaw helps your work and you want to support ongoing development, you can donate here:

<a href="https://buymeacoffee.com/argenistherose"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/zeroclaw/image/Buy_20Me_20a_20Coffee-Donate-yellow.svg" alt="Buy Me a Coffee" /></a>


## ⚠️ Official Repository & Impersonation Warning

**This is the only official ZeroClaw repository:**

> https://github.com/zeroclaw-labs/zeroclaw

Any other repository, organization, domain, or package claiming to be "ZeroClaw" or implying affiliation with ZeroClaw Labs is **unauthorized and not affiliated with this project**. Known unauthorized forks will be listed in [TRADEMARK.md](docs/maintainers/trademark.md).

If you encounter impersonation or trademark misuse, please [open an issue](https://github.com/zeroclaw-labs/zeroclaw/issues).

---

## License

ZeroClaw is dual-licensed for maximum openness and contributor protection:

| License | Use case |
|---|---|
| [MIT](LICENSE-MIT) | Open-source, research, academic, personal use |
| [Apache 2.0](LICENSE-APACHE) | Patent protection, institutional, commercial deployment |

You may choose either license. **Contributors automatically grant rights under both** — see [CLA.md](docs/contributing/cla.md) for the full contributor agreement.

### Trademark

The **ZeroClaw** name and logo are trademarks of ZeroClaw Labs. This license does not grant permission to use them to imply endorsement or affiliation. See [TRADEMARK.md](docs/maintainers/trademark.md) for permitted and prohibited uses.

### Contributor Protections

- You **retain copyright** of your contributions
- **Patent grant** (Apache 2.0) shields you from patent claims by other contributors
- Your contributions are **permanently attributed** in commit history and [NOTICE](NOTICE)
- No trademark rights are transferred by contributing

## Contributing

New to ZeroClaw? Look for issues labeled [`good first issue`](https://github.com/zeroclaw-labs/zeroclaw/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22) — see our [Contributing Guide](CONTRIBUTING.md#first-time-contributors) for how to get started.

See [CONTRIBUTING.md](CONTRIBUTING.md) and [CLA.md](docs/contributing/cla.md). Implement a trait, submit a PR:

- CI workflow guide: [docs/contributing/ci-map.md](docs/contributing/ci-map.md)
- New `Provider` → `src/providers/`
- New `Channel` → `src/channels/`
- New `Observer` → `src/observability/`
- New `Tool` → `src/tools/`
- New `Memory` → `src/memory/`
- New `Tunnel` → `src/tunnel/`
- New `Skill` → `~/.zeroclaw/workspace/skills/<name>/`

---

**ZeroClaw** — Zero overhead. Zero compromise. Deploy anywhere. Swap anything. 🦀


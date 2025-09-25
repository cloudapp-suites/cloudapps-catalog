<div align="center">

<a href="https://getunleash.io" title="Unleash - 赋能开发者自信发布功能">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/github_header_opaque_landscape.svg" alt="访问 Unleash 官网">
</a>

<br/>
<br/>

[![Build and Tests](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/build.yaml.svg)](https://github.com/Unleash/unleash/actions/workflows/build.yaml) [![Coverage Report](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/coverage-vitest-green.svg)](https://github.com/Unleash/unleash/actions/workflows/build_coverage.yaml) [![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/unleash-server.svg)](https://hub.docker.com/r/unleashorg/unleash-server) [![Apache-2.0 license](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/unleash.svg)](https://github.com/Unleash/unleash/blob/main/LICENSE) [![Join Unleash on Slack](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/slack-join-635dc5.svg)](https://slack.unleash.run)

[体验 Unleash 在线演示 →](https://www.getunleash.io/interactive-demo)

</div>

## 什么是 Unleash？

Unleash 是一个强大的开源功能管理解决方案。它简化了你的开发流程，加速软件交付，并赋予团队控制新功能向最终用户推出的方式和时机的能力。使用 Unleash，你可以以更小、更可控的版本逐步将代码部署到生产环境中。

Unleash 中的功能开关（Feature Flags）让你可以使用真实的生产数据测试代码，从而降低对用户体验造成负面影响的风险。它还使你的团队能够同时开发多个功能，而无需创建单独的功能分支。

Unleash 是 GitHub 上最受欢迎的开源功能开关解决方案。它支持 15 个官方客户端和服务端 SDK，以及超过 15 个社区开发的 SDK。你甚至可以自己创建 SDK。Unleash 支持任何语言和框架。

<br/>

## 开始使用 Unleash

### 安装配置 Unleash

要开始使用 Unleash，你可以选择试用 Unleash Enterprise，或者使用我们的开源版本 本地部署。

#### Unleash Enterprise

要开始使用 Unleash Enterprise，请 [申请免费试用](https://www.getunleash.io/plans/enterprise-payg?utm_source=oss&utm_medium=readme&utm_content=unleash-enterprise-start)。这将为你提供一个托管实例，支持无限项目和环境，并提供诸如 [基于角色的访问控制](https://docs.getunleash.io/reference/rbac)、[变更请求](https://docs.getunleash.io/reference/change-requests)、[单点登录](https://docs.getunleash.io/reference/sso) 和 [SCIM](https://docs.getunleash.io/reference/scim) 等功能，用于自动用户配置。

#### Unleash Open Source

要在本地设置 Unleash，你需要在你的机器上安装 [`git`](https://git-scm.com/) 和 [`docker`](https://www.docker.com/)。

执行以下命令：

```bash
git clone git@github.com:Unleash/unleash.git
cd unleash
docker compose up -d
```

然后在浏览器中访问 `localhost:4242`，并使用以下凭据登录：

- 用户名：`admin`
- 密码：`unleash4all`

如果你想直接通过 Node.js 运行此仓库中的源代码，请参阅 贡献指南中的逐步说明。

### 连接你的 SDK

在 我们的官方 SDK 列表 中找到你偏好的 SDK 并导入到你的项目中。然后按照特定 SDK 的设置指南进行操作。

如果你使用的是上一步中提供的 docker compose 文件，以下是启动所需配置信息：

- 对于前端 SDK：
  - URL: `http://localhost:4242/api/frontend/`
  - `clientKey`: `default:development.unleash-insecure-frontend-api-token`
- 对于后端 SDK：
  - Unleash API URL: `http://localhost:4242/api/`
  - API token: `default:development.unleash-insecure-api-token`

如果你使用的是其他设置方式，你的配置信息可能会有所不同。

### 检查功能开关状态

在代码中检查功能开关的状态非常简单！语法会根据你使用的语言不同而有所变化，但你只需要一个简单的函数调用来判断某个功能开关是否启用。以下是 Java 中的示例：

```java
if (unleash.isEnabled("AwesomeFeature")) {
  // 执行新功能
} else {
  // 执行旧逻辑
}
```

## 在线演示

尝试 [Unleash 在线演示](https://www.getunleash.io/interactive-demo)。

[![The Unleash online demo](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/github_online_demo.svg)](https://www.getunleash.io/interactive-demo)

<br/>

## 社区与帮助 — 分享即关爱

我们知道学习一个新工具可能很困难且耗时。我们有一个不断壮大的社区，乐于助人。请随时寻求帮助。

[![Join Unleash on Slack](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/slack-join-635dc5.svg)](https://slack.unleash.run)

💬 [加入 Unleash 的 Slack 频道](https://slack.unleash.run)，如果你有关于 Unleash 或功能开关的开放性问题，或者想讨论相关话题。

💻 [创建 GitHub issue](https://github.com/Unleash/unleash/issues/new)，如果你发现了 bug 或者有改进 Unleash 的想法。

📚 [访问文档](https://docs.getunleash.io/) 获取更详细的描述、操作指南等内容。

📖 了解更多关于构建和扩展 [功能开关](https://docs.getunleash.io/topics/feature-flags/feature-flag-best-practices) 解决方案的最佳实践。

<br/>

## 为 Unleash 做贡献

Unleash 是 GitHub 上最大的 [开源功能开关解决方案](https://www.getunleash.io/)。Unleash 的开发是一个协作过程，我们非常感谢许多聪明且有才华的个人的贡献。与社区一起构建 Unleash，确保我们打造的产品能真正解决实际问题。我们也非常欢迎你的帮助：请随时提交 issue 或 pull request。

请查看 CONTRIBUTING.md 文件 获取贡献指南，以及 Unleash 开发者指南 获取环境设置、运行测试和从源码运行 Unleash 的提示。

## 用户喜爱的功能

### 灵活性与适应性

- 查看所有环境中所有应用和服务的功能开关
- 使用 [激活策略](https://docs.getunleash.io/reference/activation-strategies) 实现针对特定用户或用户组的功能启用或禁用，而无需重新部署应用
- [金丝雀发布 / 逐步上线](https://docs.getunleash.io/reference/activation-strategies)
- [熔断开关](https://docs.getunleash.io/reference/feature-toggles#feature-flag-types)
- [A/B 测试](https://docs.getunleash.io/feature-flag-tutorials/use-cases/a-b-testing)
- 支持 2 个 [环境](https://docs.getunleash.io/reference/environments)
- 使用 [标签](https://docs.getunleash.io/reference/feature-toggles#tags) 组织功能开关
- 内置集成流行工具（[Slack](https://docs.getunleash.io/addons/slack)、[Microsoft Teams](https://docs.getunleash.io/addons/teams)、[Datadog](https://docs.getunleash.io/addons/datadog)）+ 通过 [webhooks](https://docs.getunleash.io/addons/webhook) 集成任意系统
- [技术债务管理](https://docs.getunleash.io/reference/technical-debt) 和 [过期功能开关](https://docs.getunleash.io/reference/technical-debt#stale-and-potentially-stale-flags) 的洞察
- API 优先：_所有功能_ 都可以自动化，无例外
- [12 个官方 SDK](https://docs.getunleash.io/reference/sdks#official-sdks)，以及 10 个 [社区 SDK](https://docs.getunleash.io/reference/sdks#community-sdks)
- 可通过 Docker 使用 [官方 Docker 镜像](https://hub.docker.com/r/unleashorg/unleash-server) 或作为纯 Node.js 应用运行

### 安全性与性能

- 默认隐私保护（符合 GDPR 和 Schrems II）。终端用户数据不会离开你的应用。
- [审计日志](https://docs.getunleash.io/advanced/audit_log)
- 通过严格的 HTTPS 模式强制执行 [OWASP 安全头](https://owasp.org/www-project-secure-headers/)
- 灵活的托管选项：可在本地或任意云环境中部署
- 通过 [Unleash Edge](https://docs.getunleash.io/reference/unleash-edge) 独立于 Unleash 服务器扩展，以支持任意数量的前端客户端，而不会使 Unleash 实例过载

### 想了解更多功能？

如果你需要以下功能之一，请查看我们的 [Pro 和 Enterprise 计划](https://www.getunleash.io/plans)：

- [基于角色的访问控制 (RBAC)](https://docs.getunleash.io/reference/rbac)
- [单点登录 (SSO)](https://docs.getunleash.io/reference/sso)
- 更多环境支持
- [功能开关项目支持](https://docs.getunleash.io/reference/projects)
- [高级用户分组](https://docs.getunleash.io/reference/segments)
- [更多策略约束](https://docs.getunleash.io/reference/activation-strategies#constraints)
- 更强的安全性
- 更多托管选项（我们甚至可以为你托管）

<br/>

## 架构图

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/unleash-architecture-edge.png" title="Unleash 系统概览" />

更多内容请参阅 Unleash 文档中的 [_系统概览_ 部分](https://docs.getunleash.io/understanding-unleash/unleash-overview#system-overview)。

<br/>

## Unleash SDK

要将你的应用连接到 Unleash，你需要使用对应编程语言的客户端 SDK。

**官方后端 SDK：**

- [Go SDK](https://docs.getunleash.io/reference/sdks/go)
- [Java SDK](https://docs.getunleash.io/reference/sdks/java)
- [Node.js SDK](https://docs.getunleash.io/reference/sdks/node)
- [PHP SDK](https://docs.getunleash.io/reference/sdks/php)
- [Python SDK](https://docs.getunleash.io/reference/sdks/python)
- [Ruby SDK](https://docs.getunleash.io/reference/sdks/ruby)
- [Rust SDK](https://github.com/unleash/unleash-client-rust)
- [.NET SDK](https://docs.getunleash.io/reference/sdks/dotnet)

**官方前端 SDK：**

前端 SDK 通过 [Unleash Edge](https://docs.getunleash.io/reference/unleash-edge) 连接，以确保隐私、可扩展性和安全性。

- [Android Proxy SDK](https://docs.getunleash.io/reference/sdks/android-proxy)
- [Flutter Proxy SDK](https://docs.getunleash.io/reference/sdks/flutter)
- [iOS Proxy SDK](https://docs.getunleash.io/reference/sdks/ios-proxy)
- [JavaScript Proxy SDK](https://docs.getunleash.io/reference/sdks/javascript-browser)
- [React Proxy SDK](https://docs.getunleash.io/reference/sdks/react)
- [Svelte Proxy SDK](https://docs.getunleash.io/reference/sdks/svelte)
- [Vue Proxy SDK](https://docs.getunleash.io/reference/sdks/vue)

**社区 SDK：**

如果官方 SDK 无法满足你的需求，还可以查看 [社区开发的 SDK](https://docs.getunleash.io/reference/sdks#community-sdks)，其中可能包含你所需语言的实现（例如 [Elixir](https://gitlab.com/afontaine/unleash_ex)、[Dart](https://pub.dev/packages/unleash)、[Clojure](https://github.com/AppsFlyer/unleash-client-clojure) 等）。

<br/>

## Unleash 的用户

**Unleash 被全球数千家公司所信赖**。

**自豪的开源用户：**（如果你想添加你的 Logo，请给我们发消息）

![Unleash 的 Logo 被 Finn.no、nav（挪威劳动和福利管理局）、Budgets、Otovo 和 Amedia 的 Logo 环绕，所有 Logo 都连接到 Unleash 的 Logo。](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/unleash/image/github_unleash_users.svg)

<br/>

## 迁移指南

Unleash 在过去几年中有了显著的发展，我们理解保持软件更新可能很困难。如果你使用的是当前主版本，升级通常不会有问题。如果你使用的是之前的主版本，请查看 [Unleash 迁移指南](https://docs.getunleash.io/deploy/migration_guide)！

<br/>

## 想了解更多关于 Unleash 的信息？

### 视频与播客

- [Unleash 的 YouTube 频道](https://www.youtube.com/channel/UCJjGVOc5QBbEje-r7nZEa4A)
- [_功能开关 — 为什么以及如何添加到你的软件中_ — freeCodeCamp (YouTube)](https://www.youtube.com/watch?v=-yHZ9uLVSp4&t=0s)
- [_使用 Unleash 的功能开关_ — The Code Kitchen (播客)](https://share.fireside.fm/episode/zD-4e4KI+Pr379KBv)
- [_功能开关与 Unleash，嘉宾 Fredrik Oseberg_ — Utviklerpodden (播客；挪威语)](https://pod.space/utviklerpodden/feature-flags-og-unleash-med-fredrik-oseberg)

### 文章与更多资料

- [Unleash 博客](https://www.getunleash.io/blog)
- [_设计 Rust Unleash API 客户端_ — Medium](https://medium.com/cognite/designing-the-rust-unleash-api-client-6809c95aa568)
- [Martin Fowler 的 _FeatureToggle_](http://martinfowler.com/bliki/FeatureToggle.html)
- [_在负载测试中使用功能开关处理临时错误_ — nrkbeta](https://nrkbeta.no/2021/08/23/feature-toggling-transient-errors-in-load-tests/)
- [_与 Unleash 创始人 Ivar 的访谈_ — Console](https://console.substack.com/p/console-42)
- [_逐步启用你的功能_](http://ivarconr.github.io/feature-toggles-presentation/sch-dev-lunch-2017/#1 ' ')，由 Unleash 创始人 Ivar 提供的幻灯片/演示文稿
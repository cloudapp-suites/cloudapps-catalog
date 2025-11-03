<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=484f046a-5117-446d-b608-66294a1b24a0)

</div>

Miniflux 2
==========

Miniflux 是一个极简且有设计主张的订阅阅读器。  
它简单、快速、轻量且易于安装。

官方网站: <https://miniflux.app>

功能特性
--------

### 订阅阅读器

- 支持的订阅格式：Atom 0.3/1.0、RSS 1.0/2.0 以及 JSON Feed 1.0/1.1。
- 支持 [OPML](https://en.wikipedia.org/wiki/OPML) 文件导入/导出和 URL 导入。
- 支持多个附件（播客、视频、音乐和图片附件）。
- 可在 Miniflux 内直接播放 YouTube 视频。
- 使用分类和书签组织文章。
- 可公开分享单篇文章。
- 获取网站图标（favicon）。
- 将文章保存到第三方服务。
- 提供全文搜索功能（基于 Postgres）。
- 支持 20 种语言：葡萄牙语（巴西）、中文（简体和繁体）、荷兰语、英语（美国）、芬兰语、法语、德语、希腊语、印地语、印尼语、意大利语、日语、波兰语、罗马尼亚语、俄语、台湾白话文（POJ）、乌克兰语、西班牙语和土耳其语。

### 隐私与安全

- 移除像素追踪器。
- 从 URL 中去除追踪参数（例如：`utm_source`、`utm_medium`、`utm_campaign`、`fbclid` 等）。
- 当订阅源来自 FeedBurner 时，获取原始链接。
- 使用属性 `rel="noopener noreferrer" referrerpolicy="no-referrer"` 打开外部链接，以提升安全性。
- 实现 HTTP 头 `Referrer-Policy: no-referrer` 以防止引用信息泄露。
- 提供媒体代理以避免追踪并解决使用 HTTPS 时的混合内容警告。
- 通过注重隐私的域名 `youtube-nocookie.com` 播放 YouTube 视频。
- 支持替代的 YouTube 视频播放器，例如 [Invidious](https://invidio.us)。
- 阻止外部 JavaScript 以防止追踪并增强安全性。
- 在渲染外部内容前进行清理。
- 强制实施 [内容安全策略](https://developer.mozilla.org/zh-CN/docs/Web/HTTP/CSP) 和 [可信类型策略](https://developer.mozilla.org/zh-CN/docs/Web/API/Trusted_Types_API)，仅允许应用自身的 JavaScript，并阻止内联脚本和样式。

### 机器人防护绕过机制

- 可选禁用 HTTP/2 以减少指纹识别。
- 允许配置自定义用户代理。
- 支持为特定用例添加自定义 Cookie。
- 支持使用代理以增强隐私或绕过限制。

### 内容处理

- 获取原始文章并使用本地 Readability 解析器提取相关内容。
- 允许基于 <abbr title="层叠样式表">CSS</abbr> 选择器定义自定义抓取规则。
- 支持自定义内容重写规则。
- 提供正则表达式过滤器，根据特定模式包含或排除文章。
- 可选允许自签名或无效证书（默认禁用）。
- 抓取 YouTube 网站以获取视频时长作为阅读时间，或使用 YouTube API（默认禁用）。

### 用户界面

- 优化的样式表以提升可读性。
- 响应式设计，无缝适配桌面、平板和移动设备。
- 极简且无干扰的用户界面。
- 无需从 Apple App Store 或 Google Play Store 下载应用程序。
- 可直接添加到主屏幕以便快速访问。
- 支持广泛的键盘快捷键以实现高效导航。
- 可选支持在移动设备上使用触摸手势导航。
- 自定义样式表和 JavaScript 以根据个人偏好定制用户界面。
- 主题：
    - 浅色（无衬线）
    - 浅色（衬线）
    - 深色（无衬线）
    - 深色（衬线）
    - 系统（无衬线）——根据系统偏好自动切换深色和浅色主题。
    - 系统（衬线）

### 集成支持

- 支持 25+ 第三方服务集成：[Apprise](https://github.com/caronc/apprise)、[Betula](https://sr.ht/~bouncepaw/betula/)、[Cubox](https://cubox.cc/)、[Discord](https://discord.com/)、[Espial](https://github.com/jonschoning/espial)、[Instapaper](https://www.instapaper.com/)、[LinkAce](https://www.linkace.org/)、[Linkding](https://github.com/sissbruecker/linkding)、[LinkWarden](https://linkwarden.app/)、[Matrix](https://matrix.org)、[Notion](https://www.notion.com/)、[Ntfy](https://ntfy.sh/)、[Nunux Keeper](https://keeper.nunux.org/)、[Pinboard](https://pinboard.in/)、[Pushover](https://pushover.net)、[RainDrop](https://raindrop.io/)、[Readeck](https://readeck.org/en/)、[Readwise Reader](https://readwise.io/read)、[RssBridge](https://rss-bridge.org/)、[Shaarli](https://github.com/shaarli/Shaarli)、[Shiori](https://github.com/go-shiori/shiori)、[Slack](https://slack.com/)、[Telegram](https://telegram.org)、[Wallabag](https://www.wallabag.org/) 等。
- 提供书签小工具，可在任意浏览器中直接订阅网站。
- 支持 Webhook 以实现实时通知或自定义集成。
- 兼容使用 Fever 或 Google Reader API 的现有移动应用。
- 提供 REST API，支持 [Go](https://github.com/miniflux/v2/tree/main/client) 和 [Python](https://github.com/miniflux/python-client) 客户端库。

### 身份验证

- 本地用户名和密码。
- Passkeys（[WebAuthn](https://en.wikipedia.org/wiki/WebAuthn)）。
- Google（OAuth2）。
- 通用 OpenID Connect。
- 反向代理身份验证。

### 技术细节

- 使用 [Go (Golang)](https://golang.org/) 编写。
- 单一静态编译的二进制文件，无依赖。
- 仅支持 [PostgreSQL](https://www.postgresql.org/)。
- 不使用任何 ORM 或复杂框架。
- 仅在必要时使用现代原生 JavaScript。
- 所有静态文件通过 Go 的 `embed` 包打包进应用二进制文件。
- 支持 Systemd `sd_notify` 协议以进行进程监控。
- 可通过 Let's Encrypt 自动配置 HTTPS。
- 支持自定义 <abbr title="安全套接字层">SSL</abbr> 证书。
- 启用 TLS 时支持 [HTTP/2](https://en.wikipedia.org/wiki/HTTP/2)。
- 使用内部调度器或传统 cron 作业在后台更新订阅。
- 对图片和 iframe 使用原生延迟加载。
- 仅兼容现代浏览器。
- 遵循 [Twelve-Factor App](https://12factor.net/) 方法论。
- 提供官方 Debian/RPM 包和预编译二进制文件。
- 发布 Docker 镜像到 Docker Hub、GitHub Registry 和 Quay.io Registry，支持 ARM 架构。
- 仅使用少量第三方 Go 依赖。
- 拥有完整的测试套件，包括单元测试和集成测试。
- 即使订阅数量达到数百个，也仅占用几 MB 内存和极少的 CPU 资源。
- 支持/发送 Last-Modified、If-Modified-Since、If-None-Match、Cache-Control、Expires 和 ETags 头部，默认轮询间隔为 1 小时。

文档
-----

Miniflux 文档地址： <https://miniflux.app/docs/> ([手册页](https://miniflux.app/miniflux.1.html))

- [设计理念](https://miniflux.app/opinionated.html)
- [功能特性](https://miniflux.app/features.html)
- [系统要求](https://miniflux.app/docs/requirements.html)
- [安装指南](https://miniflux.app/docs/installation.html)
- [升级到新版本](https://miniflux.app/docs/upgrade.html)
- [配置说明](https://miniflux.app/docs/configuration.html)
- [命令行使用](https://miniflux.app/docs/cli.html)
- [用户界面使用](https://miniflux.app/docs/ui.html)
- [键盘快捷键](https://miniflux.app/docs/keyboard_shortcuts.html)
- [与外部服务集成](https://miniflux.app/docs/#integrations)
- [内容重写与抓取规则](https://miniflux.app/docs/rules.html)
- [API 文档](https://miniflux.app/docs/api.html)
- [开发指南](https://miniflux.app/docs/development.html)
- [国际化支持](https://miniflux.app/docs/i18n.html)
- [常见问题](https://miniflux.app/faq.html)

截图
-----

默认主题：

![默认主题](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/miniflux/image/overview.png)

使用键盘导航时的深色主题：

![深色主题](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/miniflux/image/item-selection-black-theme.png)

致谢
-----

- 作者：Frédéric Guillot - [贡献者列表](https://github.com/miniflux/v2/graphs/contributors)
- 使用 Apache 2.0 许可证发布
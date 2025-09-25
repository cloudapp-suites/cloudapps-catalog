<h1 align="center">Dashy</h1>
<p align="center">
  <i>Dashy 帮助您通过单一入口访问和组织您的自托管服务</i>
   <br/>
  <img width="120" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.png" />
  <br/>
  <b><a href="./docs/showcase.md">用户展示</a></b> | <b><a href="https://demo.dashy.to">在线演示</a></b> | <b><a href="./docs/quick-start.md">快速开始</a></b> | <b><a href="https://dashy.to/docs">文档</a></b> | <b><a href="https://github.com/Lissy93/dashy">GitHub</a></b>
</p>

<p align="center">
<br>
<sup>Dashy 由 <a href="https://umbrel.com?ref=dashy">Umbrel</a> 赞助 - 用于自托管的个人家庭云和操作系统</sup><br>
<a href="https://umbrel.com?ref=dashy">
<img width="400" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/umbrel-banner.jpg" />
</a>
</p>

> [!NOTE]
> 版本 [3.0.0](https://github.com/Lissy93/dashy/releases/tag/3.0.0) 已发布，需要对您的设置进行一些更改，请参见 [#1529](https://github.com/Lissy93/dashy/discussions/1529) 获取详细信息。

<details>
  <summary><b>目录</b></summary>
  <p>
  
- **入门指南**
  - 🌈 功能
  - ⚡演示
  - 🚀 快速开始
  - 🔧 配置
- **功能概览**
  - 🎨 主题
  - 🧸 图标
  - 🚦 状态指示器
  - 📊 小工具
  - 🔐 身份验证
  - 👓 替代视图
  - 🖱️ 打开方式
  - 🔎 搜索和快捷键
  - ⚙️ 配置编辑器
  - ☁ 云备份与同步
  - 🌎 语言切换
  - 📃 多页面支持
- **社区**
  - 📊 系统要求
  - 🙋‍♀️ 支持
  - 💖 支持 Dashy
  - 🏆 致谢
  - 🧱 开发
  - 🗞️ 发布计划
  - 📘 文档
  - 🛣️ 路线图
  - 🙌 替代方案
  - 📜 许可证
    
  </p>
</details>

## 功能 🌈
- 📃 支持多页面
- 🚦 实时监控每个应用/链接的状态
- 📊 使用小工具显示自托管服务的信息和动态内容
- 🔎 按名称、域名或标签即时搜索 + 可自定义热键和键盘快捷键
- 🎨 多种内置颜色主题，具有 UI 颜色编辑器和自定义 CSS 支持
- 🧸 多种图标选项 - Font-Awesome、homelab 图标、自动获取 Favicon、图片、表情符号等
- 💂 可选的身份验证，支持多用户访问、可配置权限和 SSO
- 🌎 多语言支持，10 多种人工翻译语言，还有更多正在路上
- ☁ 可选的加密免费异地云备份和恢复功能
- 💼 工作区视图，可轻松同时在多个应用间切换
- 🛩️ 简约视图，可用作快速加载的浏览器起始页
- 🖱️ 选择应用启动方式：新标签页、同一标签页、剪贴板、弹出模态框或在工作区视图中打开
- 📏 可自定义布局、大小、文本、组件可见性、排序、行为等
- 🖼️ 全屏背景图片、自定义导航栏链接、HTML 页脚、标题等选项
- 🚀 易于使用 Docker、裸机或一键云部署进行设置
- ⚙️ 简单的基于单 YAML 文件的配置，并可通过 UI 配置应用
- ✨ 积极开发中，定期添加改进和新功能
- 🤏 小巧的包大小，完全响应式 UI，以及支持基本离线访问的 PWA
- 🆓 100% 免费和开源
- 🔐 高度关注隐私
- 🌈 还有更多功能...

**⬆️ 返回顶部**

## 演示 ⚡

**在线实例**: [演示 1](https://demo.dashy.to) (在线演示) ┆ [演示 2](https://live.dashy.to) (Dashy 链接) ┆ [演示 3](https://dev.dashy.to) (开发预览)

**截图**: 查看 展示区，了解社区的示例仪表板

**快速启动您的演示**: [![使用 PWD 一键部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Play--with--Docker-Deploy-2496ed.svg)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/Lissy93/dashy/master/docker-compose.yml) 或 `docker run -p 8080:8080 lissy93/dashy`

<p align="center">
  <img width="800" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy-demo2.gif" alt="演示" />
</p>

**⬆️ 返回顶部**

---

## 快速开始 🚀

> 完整设置说明，请参见: **部署**

### 从 Docker Hub 部署 🐳

您的系统需要安装 [Docker](https://docs.docker.com/get-docker/)

```
docker run -p 8080:8080 lissy93/dashy
```

或者

```docker
docker run -d \
  -p 4000:8080 \
  -v /root/my-local-conf.yml:/app/user-data/conf.yml \
  --name my-dashboard \
  --restart=always \
  lissy93/dashy:latest
```
[[Dashy on Docker Hub]](https://hub.docker.com/r/lissy93/dashy)

另请参见: Docker Compose 示例。Dashy 也可通过 GHCR 获取，并支持其他架构（`arm32v7`、`arm64v8` 等）和特定版本的标签

> 一旦您运行了 Dashy，请参见 应用管理文档 获取有关健康检查、更新、备份、Web 服务器配置、日志、性能、安全等信息。

### 从源代码部署 🔨

您的系统需要安装 [git](https://git-scm.com/downloads)、最新或 LTS 版本的 [Node.js](https://nodejs.org/) 和 _(可选)_ [Yarn](https://yarnpkg.com/)。

- 克隆仓库: `git clone https://github.com/Lissy93/dashy.git` 并 `cd dashy`
- 配置: 在 `./user-data/conf.yml` 中填写您的设置
- 安装依赖: `yarn`
- 构建: `yarn build`
- 运行: `yarn start`

> 查看文档: Dashy 的完整命令列表

## 配置 🔧

> 完整配置文档，请参见: **配置**

Dashy 通过位于 `./user-data/conf.yml` 的 YAML 文件进行配置。此外，您可以在 配置文档 中找到可用选项的完整列表。配置也可以直接通过 UI 编辑和保存。

**⬆️ 返回顶部**

---

## 主题 🎨

> 完整主题文档，请参见: **主题**

Dashy 预装了多个内置主题，您可以通过 UI 预览、应用和编辑这些主题。借助主题配置器和自定义 CSS 支持，您可以快速开发出独特外观的仪表板。

<p align="center">
  <a href="https://i.ibb.co/BVSHV1v/dashy-themes-slideshow.gif">
    <img alt="示例主题" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/theme-slideshow.gif" width="400" />
  </a>
</p>

<p align="center">
  <a href="https://i.ibb.co/cLDXj1R/dashy-theme-configurator.gif">
    <img alt="示例主题" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/theme-config-demo.gif" width="400" />
  </a>
</p>

**⬆️ 返回顶部**

---

## 图标 🧸

> 完整图标文档，请参见: **图标**

部分和项目都可以关联一个图标，在 `icon` 属性下定义。支持多种不同的图标包，您可以为任何应用或服务找到完美的缩略图。

支持以下图标类型：
- **Favicon** - 自动从应用的 Favicon 或 logo 图片获取图标
- **图标包** - 使用 [font-awesome]、[simple-icons]、[selfh.st/icons] 或 [material icons] 中的任何图标
- **Emoji** - 任何有效的 emoji 都可以用作图标
- **生成式** - 独特的自动生成图片，便于识别服务
- **URL** - 传入任何有效图片的 URL，系统会获取并渲染
- **本地** - 本地存储自定义图片并通过文件名引用
- **Homelab 图标** - 使用 [dashboard-icons] 作为常用自托管服务的 logo


[font-awesome]: https://fontawesome.com/icons
[simple-icons]: https://simpleicons.org/
[material icons]: https://github.com/Templarian/MaterialDesign
[selfh.st/icons]: https://selfh.st/icons
[dashboard-icons]: https://github.com/WalkxCode/dashboard-icons


<p align="center">
  <img width="400" src="https://i.ibb.co/GTVmZnc/dashy-example-icons.png" />
</p>


**⬆️ 返回顶部**

---

## 状态指示器 🚦

> 完整监控文档，请参见: **状态指示器**

Dashy 有一个可选功能，用于检查每个应用/服务是否在线并响应，然后显示一个小的状态指示图标。将鼠标悬停在图标上会显示响应时间和状态码等其他统计信息。

可以通过设置 `appConfig.statusCheck: true` 全局启用状态指示器，或在每个项目基础上启用/禁用。页面加载时会检查状态，但您可以通过在 `appConfig.statusCheckInterval` 下指定检查间隔（以秒为单位）来允许持续轮询。您还可以使用 `statusCheckUrl` 为状态检查使用不同的端点，如果需要，可以在 `statusCheckHeaders` 下传入自定义头部。

<p align="center">
  <img alt="状态检查演示" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/status-check-demo.gif" width="600" />
</p>

**⬆️ 返回顶部**

---

## 小工具 📊

> 完整小工具文档，请参见: **小工具**

您可以以小工具的形式显示来自服务的动态内容。有多个预构建的小工具可用于显示有用信息，并与常用的自托管服务集成，但您也可以轻松地为几乎任何应用创建自己的小工具。


<p align="center">
  <img width="600" src="https://i.ibb.co/GFjXVHy/dashy-widgets.png" />
</p>


**⬆️ 返回顶部**

---

## 身份验证 🔐

> 完整身份验证文档，请参见: **身份验证**

Dashy 完全支持使用 [Keycloak](https://www.keycloak.org/) 进行安全的单点登录，实现安全、简单的身份验证，请参见 设置文档 获取完整使用指南。

还有一个基本的身份验证功能，不需要额外设置。要启用此功能，请在 `appConfig` 下添加一个 `auth` 属性，其中包含一个 `users` 数组，每个用户都有用户名、SHA-256 哈希密码和可选的用户类型。基本身份验证还支持多种访问控制功能，包括只读访客访问和细粒度控制。


```yaml
appConfig:
  auth:
    users:
    - user: alicia
      hash: 4D1E58C90B3B94BCAD9848ECCACD6D2A8C9FBC5CA913304BBA5CDEAB36FEEFA3
      type: admin
```

也支持其他访问控制系统，请参见 替代身份验证方法 文档。

**⬆️ 返回顶部**

---

## 替代视图 👓

除了默认主页，还有：
- 简约视图，适用于用作浏览器起始页
- 工作区视图，适用于同时访问多个应用
	
您可以通过 UI 更改视图，使用右上角的切换图标，或在配置中的 `appConfig.startingView` 属性下选择默认视图。

<p align="center">
  <b>工作区视图示例</b><br>
  <img alt="工作区视图演示" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/workspace-demo.gif" width="600" />
</p>

<p align="center">
  <b>简约视图示例</b><br>
  <img alt="工作区视图演示" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/minimal-view-demo.gif" width="600" />
</p>

**⬆️ 返回顶部**

---

## 打开方式 🖱️

> 关于视图和打开方式的完整文档，请参见: **替代视图**

有几种不同的方式可以启动应用。您可以在 `target` 属性下为任何给定项目指定默认打开方式，或在 `appConfig.defaultOpeningMethod` 下设置站点范围的默认值。右键单击项目可查看所有选项。支持以下选项：
- `sametab` - 应用将在当前标签页中启动
- `newtab` - 应用将在新标签页中启动（或使用 Ctrl + 单击）
- `modal` - 在当前页面的可调整大小/可移动弹出模态框中启动应用（或使用 Alt + 单击）
- `workspace` - 切换到工作区视图并启动应用
- `clipboard` - 将应用的 URL 复制到系统剪贴板
- `top` - 在最顶层的浏览上下文中打开，如果您通过 iframe 访问 Dashy 时非常有用

**⬆️ 返回顶部**

---

## 搜索和快捷键 🔎

> 关于搜索的完整文档，请参见: **搜索和快捷键**

快速查找和启动应用是 Dashy 的主要目标。为此，Dashy 内置了即时搜索和可自定义的键盘快捷键。

要开始过滤，只需开始输入—无需选择搜索栏或使用任何特殊键。然后使用 Tab 键或方向键在结果间选择和移动，按 Enter 键启动当前选中的应用。

对于您经常使用的应用，可以设置自定义按键绑定。在某个项目上使用 `hotkey` 参数指定 0-9 之间的数字键。然后只需按该键即可启动该应用。

您还可以为给定项目添加自定义标签，使基于关键词的查找更容易。例如，在以下示例中，搜索 'Movies' 将显示 'Plex'

```yaml
  items:
  - title: Plex
    hotkey: 8
    icon: favicon
    description: 媒体库
    url: https://plex.lab.local
    tags: [ movies, videos, music ]
```

要通过 Dashy 直接搜索网络，只需在输入查询后按 Enter 键。网络搜索选项在 `appConfig.webSearch` 下设置。内置支持 10 多种搜索引擎，或 使用您自己的自定义提供商 或自托管实例。通过网络搜索，您还可以定义 bangs，当查询以特定字符序列开头时（通常以 `/`、`!` 或 `:` 开头），将结果重定向到任何给定的应用、网站或搜索引擎。

```yaml
webSearch:
  searchEngine: duckduckgo
  openingMethod: newtab
  searchBangs:
    /r: reddit
    /w: wikipedia
    /s: https://whoogle.local/search?q=
    ':wolf': wolframalpha
    ':so': stackoverflow
    ':git': github
```

随时按 `Esc` 关闭打开的应用、清除搜索字段或隐藏任何模态框。

**⬆️ 返回顶部**

---

## 配置编辑器 ⚙️
> 完整配置文档，请参见: **配置**

除了传入 YAML 配置文件，您还可以直接通过 UI 配置应用并实时预览更改。

要编辑任何部分或项目，右键单击它并选择"编辑"，或进入编辑模式（使用右上角的笔图标），然后单击页面的任何部分进行编辑。更改将立即可见，但直到单击"保存到磁盘"或"本地保存"才会保存。

在配置菜单下，您可以导出、查看、备份或重置应用配置，并在具有内置模式验证的文本编辑器中编辑原始配置文件。建议您备份配置。

<p align="center">
  <img alt="交互式编辑器演示" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/139543020-b0576d28-0830-476f-afc8-a815d4de6def.gif" width="600" />
</p>


<p align="center">
  <img alt="配置编辑器演示" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/config-editor-demo.gif" width="600" />
</p>

**⬆️ 返回顶部**

---

## 云备份与同步 ☁

> 完整备份文档，请参见: **云备份与同步**

Dashy 有一个 **可选** 的内置功能，用于将您的配置安全地备份到托管的云服务，然后在另一个实例上恢复。这不仅有助于异地备份您的配置，还使 Dashy 可以在不编写 YAML 配置文件的情况下使用。

所有数据在发送到后端之前都会进行端到端加密（在 [`CloudBackup.js`](https://github.com/Lissy93/dashy/blob/master/src/utils/CloudBackup.js) 中使用 [crypto.js](https://github.com/brix/crypto-js) 的 AES 方法完成）。然后数据被发送到 [Cloudflare worker](https://developers.cloudflare.com/workers/learning/how-workers-works) 并存储在 [KV](https://developers.cloudflare.com/workers/learning/how-kv-works) 数据存储中。

**⬆️ 返回顶部**

---

## 语言切换 🌎
> 完整国际化文档，请参见: **多语言支持**

Dashy 支持多种语言和区域设置。如果可用，您的语言应该在加载时自动检测并应用。但您也可以通过 UI（在配置 --> 切换语言下）选择语言，或在 `appConfig.language` 中设置您的语言（指定为 2 位 [ISO 639-1 代码](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)），如下所示，例如 `language: de`。

#### 支持的语言
- 🇬🇧 **英语**: `en` - _默认_
- 🇦🇪 **阿拉伯语**: `ar` - _自动生成_
- 🇧🇩 **孟加拉语**: `bn` - 由 **[@soaibsafi](https://github.com/soaibsafi)** 贡献
- 🇧🇬 **保加利亚语**: `bg` - 由 **[@asenov](https://github.com/asenov)** 贡献
- 🇨🇳 **中文**: `cn` - 由 **[@FormatToday](https://github.com/FormatToday)** 贡献
- 🇨🇿 **捷克语**: `cs` - 由 **[@Tuzi555](https://github.com/Tuzi555)** 贡献
- 🇩🇰 **丹麦语**: `da` - 由 **[@lordpansar](https://github.com/lordpansar)** 贡献
- 🇳🇱 **荷兰语**: `nl` - 由 **[@evroon](https://github.com/evroon)** 贡献
- 🇫🇷 **法语**: `fr` - 由 **[@EVOTk](https://github.com/EVOTk)** 贡献
- 🇩🇪 **德语**: `de` - 由 **[@Niklashere](https://github.com/Niklashere)** 贡献
- 🇬🇷 **希腊语**: `el` - 由 **[@aviolaris](https://github.com/aviolaris)** 贡献
- 🇮🇳 **印地语**: `hi` - _自动生成_
- 🇮🇹 **意大利语**: `it` - 由 **[@alexdelprete](https://github.com/alexdelprete)** 贡献
- 🇯🇵 **日语**: `ja` - _自动生成_
- 🇰🇷 **韩语**: `ko` - 由 **[@boggy-cs](https://github.com/boggy-cs)** 贡献
- 🇳🇴 **挪威语（博克马尔）**: `nb` - 由 **[@rubjo](https://github.com/rubjo)** 贡献
- 🇵🇱 **波兰语**: `pl` - 由 **[@skaarj1989](https://github.com/skaarj1989)** 贡献
- 🇵🇹 **葡萄牙语**: `pt` - 由 **[@LeoColman](https://github.com/LeoColman)** 贡献
- 🛰️ **加利西亚语**: `gl` - 由 **[@pvillaverde](https://github.com/pvillaverde)** 贡献
- 🇷🇺 **俄语**: `ru` - 由 **[@sasetz](https://github.com/sasetz)** 贡献
- 🇸🇰 **斯洛伐克语**: `sk` - 由 **[@Smexhy](https://github.com/Smexhy)** 贡献
- 🇸🇮 **斯洛文尼亚语**: `sl` - 由 **[@UrekD](https://github.com/UrekD)** 贡献
- 🇪🇸 **西班牙语**: `es` - 由 **[@lu4t](https://github.com/lu4t)** 贡献
- 🇸🇪 **瑞典语**: `sv` - 由 **[@BOZG](https://github.com/BOZG)** 贡献
- 🇹🇼 **繁体中文**: `zh-TW` - 由 **[@stanly0726](https://github.com/stanly0726)** 贡献
- 🇹🇷 **土耳其语**: `tr` - 由 **[@imsakg](https://github.com/imsakg)** 贡献
- 🇺🇦 **乌克兰语**: `uk` - 由 **[@allozavrr](https://github.com/allozavrr)** 贡献
- 🏴‍☠️ **海盗语**: `pirate` - 由 **[@Lissy93](https://github.com/lissy93)** 贡献

#### 添加您的语言
我希望 Dashy 能让每个人都能使用，而语言不会成为入门的障碍。如果您有几分钟空闲时间，请考虑为您的语言添加翻译。这是一项快速任务，所有文本都在 [单个 JSON 文件](https://github.com/Lissy93/dashy/tree/master/src/assets/locales) 中。由于任何缺失的文本都会回退到英语，您不需要翻译所有内容。

**⬆️ 返回顶部**

---

## 多页面支持 📃

> 完整多页面文档，请参见: **页面和部分**

在您的仪表板中，您可以拥有任意数量的子页面。要加载其他页面，请在 `pages` 下指定名称和配置文件的路径。配置文件可以是本地的（存储在 `/public` 中），也可以是远程的（位于任何可访问的位置）。

```yaml
pages:
- name: 网络服务
  path: 'networking.yml'
- name: 工作相关
  path: 'work.yml'
```

或者

```yaml
pages:
- name: 入门指南
  path: 'https://snippet.host/tvcw/raw'
- name: 家庭实验室
  path: 'https://snippet.host/tetp/raw'
- name: 浏览器起始页
  path: 'https://snippet.host/zcom/raw'
```

---

## 系统要求 📊

如果在裸机上运行，Dashy 需要 [Node](https://nodejs.org/en/) V 16.0.0 或更高版本，推荐 LTS (16.13.2)。

如果在 Docker 容器中运行，推荐的基础镜像是 Alpine (3.15)

硬件要求根据您运行 Dashy 的位置和方式而有所不同。一般来说，在裸机系统或 Docker 容器上，1GB 内存应该足够了，根据您是否使用自己的资产，1GB 磁盘空间应该足够。

如果您使用一键云部署方法，通过 CDN 提供应用或使用静态托管提供商，则没有特定要求，因为构建的应用只是一系列静态 JS 文件，非常轻量。

Dashy 也可以在低功耗的基于 ARM 的单板计算机上运行，例如 Raspberry Pi（在 Pi 3 上测试过）

**浏览器支持**
![Chrome](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/chrome_48x48.png) | ![Firefox](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/firefox_48x48.png) | ![IE](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/edge_48x48.png) | ![Opera](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/opera_48x48.png) | ![Safari](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/safari_48x48.png)
--- | --- | --- | --- | --- |
最新版 ✔ | 最新版 ✔ | 10+ ✔ | 最新版 ✔ | 6.1+ ❌ |

**⬆️ 返回顶部**

---

## 支持 🙋‍♀️

如果您在启动和运行 Dashy 时遇到困难，或有关于使用或配置的问题，请随时提问。最好的地方是通过 [讨论区](https://github.com/Lissy93/dashy/discussions)。

如果您发现了什么不正常工作的地方，请通过 [开票](https://github.com/Lissy93/dashy/issues/new/choose) 提交 bug。

最好先检查 文档、[之前的问题](https://github.com/Lissy93/dashy/issues?q=label%3A%22%F0%9F%A4%B7%E2%80%8D%E2%99%82%EF%B8%8F+Question%22+) 和 故障排除指南。

**⬆️ 返回顶部**

---

## 支持 Dashy 💖

> 完整详情和其他帮助方式，请参见: **贡献**

如果您正在使用 Dashy 并希望帮助支持其开发，那将是非常棒的！任何类型、任何规模的贡献都非常受欢迎，我们会适当地为您的努力给予信用。

目前我们需要帮助的几个领域是：
- 翻译 - 通过 添加您的语言 帮助让 Dashy 对非英语母语者可用
- 通过 [在 GitHub 上赞助 @Lissy93](https://github.com/sponsors/Lissy93) 捐赠少量资金并获得一些额外福利！
- 完成 [简短调查](https://survey.typeform.com/to/gl0L68ou) 对未来功能发表意见
- 在 [展示区](https://github.com/Lissy93/dashy/blob/master/docs/showcase.md#dashy-showcase-) 分享您的仪表板，激励他人
- 通过分享 Dashy 或您的仪表板截图来传播消息，帮助新用户发现它
- 提交 PR 添加新功能、修复 bug、更新文档、添加主题、小工具或其他内容

**⬆️ 返回顶部**
---

## 开发 🧱

> 完整开发文档，请参见: **开发**

[![在 VS Code 中打开项目](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Open_in-VS_Code-863cfc.svg)](https://open.vscode.dev/Lissy93/Dashy)
[![在 GitPod 中打开](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Open_in-GitPod-ffae33.svg)](https://gitpod.io/#github.com/lissy93/dashy.git)
[![在 GitHub Code Spaces 中打开](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Open_in-Code_20Spaces-131313.svg)](https://github.dev/Lissy93/dashy)

开始之前，您需要安装 [Git](https://git-scm.com/downloads)、[Node](https://nodejs.org/en/download/) 和可选的 [Yarn](https://yarnpkg.com/)（运行 `npm i -g yarn`）。

设置开发环境：
1. 获取代码: `git clone https://github.com/Lissy93/dashy.git` 并 `cd dashy`
2. 安装依赖: `yarn`
3. 启动开发服务器: `yarn dev`
4. 打开浏览器: `http://localhost:8080`

当您准备就绪时，可以使用 `yarn build` 构建生产应用，然后使用 `yarn start` 运行它

如果您是 Web 开发新手，我整理了一个简短的 [资源列表](https://github.com/Lissy93/dashy/blob/master/docs/developing.md#resources-for-beginners) 来帮助初学者入门

**仓库状态**:
[![开放的 PR](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/pulls)
[![总 PR 数](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/pulls?q=)
[![GitHub 提交活动](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/commits/master)
[![最后提交](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/commits/master)
[![贡献者](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/graphs/contributors)

**⬆️ 返回顶部**

---

## 文档 📘
> 完整文档，请参见: **文档目录**
#### 运行 Dashy
- 💨 快速开始 - 在 5 分钟内启动和运行 Dashy 的 TDLR 指南
- 🚀 部署 - 在各种不同环境中设置 Dashy 的完整指南
- 🔧 配置 - 配置文件中所有可用选项的完整列表
- 💻 管理 - 管理您的应用、更新、安全、Web 服务器配置等
- 🚒 故障排除 - 常见错误和问题，以及如何解决它们

#### 功能文档
- 🛡️ 身份验证 - 设置身份验证以保护您的仪表板的指南
- 🌈 替代视图 - 可用页面/视图和项目打开方法的概述
- 💾 备份与恢复 - 使用 Dashy 的云同步功能备份配置的指南
- 🧸 图标 - 部分和项目的所有可用图标类型的概述，附有示例
- 🌐 多语言支持 - 切换语言和添加新区域设置
- 🚦 状态指示器 - 使用 Dashy 监控应用的正常运行时间和状态
- 🔍 搜索和快捷键 - 搜索、启动方法 + 键盘快捷键
- 🎨 主题 - 应用、编写和修改主题 + 样式的完整指南
- 📊 小工具 - 所有动态内容小工具的列表，附有使用指南和示例

#### 开发和贡献
- 🧱 开发 - 在本地运行 Dashy 开发服务器和一般工作流程
- 🛎️ 开发指南 - 帮助新贡献者的常见开发任务
- 💖 贡献 - 如何为 Dashy 做贡献
- 🌟 展示 - 查看其他人如何使用 Dashy，并分享您的仪表板
- 🏆 致谢 - 向迄今为止做出贡献的了不起的人们致敬
- 🗞️ 发布工作流程 - 关于发布、CI 和自动化任务的信息

#### 杂项
- 🔐 隐私与安全 - 请求列表、潜在问题和安全资源
- 📄 许可证 - MIT 许可证副本
- ⚖️ 法律 - 直接依赖的许可证
- 📏 行为准则 - 贡献者公约行为准则
- 🌳 变更日志 - 最近更改的详细信息和历史版本

**⬆️ 返回顶部**

---

## 路线图 🛣️

有关即将在不久的将来发布的功能，请参见 [**当前路线图**](https://github.com/Lissy93/dashy/discussions/405)

有关过去的更新，请参见 **变更日志**

**⬆️ 返回顶部**

---

## 替代方案 🙌

一些自托管 Web 应用与 Dashy 有类似的目的。如果您正在寻找仪表板，而 Dashy 不能满足您的需求，我强烈推荐您查看这些项目！
- [Flame](https://github.com/pawelmalak/flame) 由 @pawelmalak (`MIT`)
- [HomeDash2](https://lamarios.github.io/Homedash2)
- [Homer](https://github.com/bastienwirtz/homer) (`Apache License 2.0`)
- [Organizr](https://organizr.app/) (`GPL-3.0 License`)
- [Heimdall](https://github.com/linuxserver/Heimdall) (`MIT`)
- [Smashing](https://github.com/Smashing/smashing) (`MIT`)
- 查看更多 👉 [Awesome Self-Hosted](https://github.com/awesome-selfhosted/awesome-selfhosted#personal-dashboards)

**⬆️ 返回顶部**

---
## 许可证 📜

Dashy 使用 [MIT X11](https://en.wikipedia.org/wiki/MIT_License) 许可证

```
版权所有 © 2021-2024 Alicia Sykes <https://aliciasykes.com>

特此免费授予任何获得本软件和相关文档文件（"软件"）副本的人，
无限制地处理本软件的权利，包括但不限于使用、复制、修改、合并、
发布、分发、再许可和/或销售本软件副本的权利，并允许
向其提供本软件的人员这样做，但须符合以下条件：

上述版权声明和本许可声明应包含在所有副本或
软件的重要部分中。

本软件按"原样"提供，不提供任何形式的明示或暗示保证，
包括但不限于适销性、特定用途适用性和非侵权性保证。
在任何情况下，作者或版权所有者均不对任何索赔、损害或其他责任
承担责任，无论是在合同、侵权或其他行为中，
由本软件或本软件的使用或其他交易引起。

除非本通知中另有说明，否则不得在广告或其他方面
使用 Dashy 来推广本软件的销售、使用或其他交易，
除非事先获得仓库所有者的书面授权。
```

**TDLR;** _您可以对 Dashy 做任何您想做的事情：在私人或商业环境中使用，_
_重新分发和修改它。但您必须显示此许可证并署名作者。_
_不保证此应用程序能按预期工作，作者不对任何_
_出错的事情承担责任。_
更多信息，请参见 TLDR Legal 的 [MIT 解释](https://tldrlegal.com/license/mit-license)

[![FOSSA 状态](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/git_2Bgithub.com_2FLissy93_2Fdashy.svg)](https://app.fossa.com/projects/git%2Bgithub.com%2FLissy93%2Fdashy?ref=badge_large)

**⬆️ 返回顶部**

---

<!-- 许可证 + 版权 -->
<p  align="center">
  <i>© <a href="https://aliciasykes.com">Alicia Sykes</a> 2024</i><br>
  <i>使用 <a href="https://gist.github.com/Lissy93/143d2ee01ccc5c052a17">MIT</a> 许可证</i><br>
  <a href="https://github.com/lissy93"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/octocat-clean-mini.png" /></a><br>
  <sup>感谢您的访问 :)</sup>
</p>

<!-- 恐龙很棒 -->
<!-- 
                        . - ~ ~ ~ - .
      ..     _      .-~               ~-.
     //|     \ `..~                      `.
    || |      }  }              /       \  \
(\   \\ \~^..'                 |         }  \
 \`.-~  o      /       }       |        /    \
 (__          |       /        |       /      `.
  `- - ~ ~ -._|      /_ - ~ ~ ^|      /- _      `.
              |     /          |     /     ~-.     ~- _
              |_____|          |_____|         ~ - . _ _~_-_
-->
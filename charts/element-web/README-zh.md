<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=element-web)

</div>

[![Chat](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/element-web/image/element-web_matrix.org.svg)](https://matrix.to/#/#element-web:matrix.org)
![Tests](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/element-web/image/badge.svg)
![Static Analysis](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/element-web/image/badge.svg)
[![Localazy](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/element-web/image/endpoint.svg)](https://localazy.com/p/element-web)
[![Quality Gate Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/element-web/image/measure.svg)](https://sonarcloud.io/summary/new_code?id=element-web)

# Element

Element（以前称为 Vector 和 Riot）是一个基于 [Matrix JS SDK](https://github.com/matrix-org/matrix-js-sdk) 构建的 Matrix 网页客户端。

# 支持的环境

Element 对不同环境的支持分为多个等级：

- **已支持**
  - **定义**：
    - 问题 **主动分类处理**，回归问题 **阻止发布**
  - 桌面操作系统上的 Chrome、Firefox 和 Edge 的最新两个主要版本
  - Safari 的最新两个版本
  - 桌面操作系统上的官方 Element Desktop 应用的最新发布版本
  - 桌面操作系统指 macOS、Windows 和 Linux 的桌面设备版本，这些系统仍由操作系统供应商主动支持并接收安全更新
- **尽力支持**
  - **定义**：
    - 问题 **接受提交**，回归问题 **不阻止发布**
    - Element 产品系列（包括 Element Call 和企业服务器套件）仍未正式支持这些浏览器
    - Element Web 项目及其贡献者应保持客户端功能正常，并在其他功能（例如 Element Call）无法运行时优雅降级
  - Firefox ESR 和 Chrome/Edge Extended Stable 的最新主要版本
- **社区支持**
  - **定义**：
    - 问题 **接受提交**，回归问题 **不阻止发布**
    - 欢迎社区贡献者协助支持这些问题
  - Android、iOS 和 iPadOS 上当前稳定版本的 Chrome、Firefox 和 Safari 的移动网页端
- **不支持**
  - **定义**：仅影响不支持环境的问题将被 **关闭**
  - 所有其他环境

这些支持等级的期限应持续到上述指定版本发布后，再加上 1 个应用发布周期（2 周）。对于 Firefox ESR，此期限会进一步延长，以便其能进入 Debian Stable。

如需在 Android 或 iOS 设备上使用 Element，我们目前推荐使用原生应用 [element-android](https://github.com/element-hq/element-android) 和 [element-ios](https://github.com/element-hq/element-ios)。

# 入门指南

测试 Element 最简单的方法是使用托管版本 <https://app.element.io>。  
如果你喜欢尝试最新版本，`develop` 分支会持续部署到 <https://develop.element.io>。

如需托管你自己的 Element 实例，请参阅 安装 Element Web。

如需将 Element 安装为桌面应用，请参阅下方的 作为桌面应用运行。

# 重要安全说明

## 不同域名

我们**不建议**将 Element 与你的 Matrix 服务器部署在同一个域名下。原因在于存在 XSS（跨站脚本）漏洞的风险：如果有人导致 Element 加载并渲染来自 Matrix API 的恶意用户生成内容，而由于共享域名，这些内容可能获得对 Element（或其他应用）的受信任访问权限。

我们已采取一些粗略的缓解措施来尝试防止这种情况，但最初就不应这样做。详见 <https://github.com/element-hq/element-web/issues/1977>。

## 配置最佳实践

除非你有特殊需求，当托管 Element Web 时，建议在 Web 服务器配置中添加以下内容：

- `X-Frame-Options: SAMEORIGIN` 头，防止 Element Web 被嵌套框架加载，从而防止 [点击劫持][owasp-clickjacking]。
- 在 `Content-Security-Policy` 头中添加 `frame-ancestors 'self'` 指令，作为 `X-Frame-Options` 的现代替代方案（尽管两者都应包含，因为并非所有浏览器都支持后者，请参阅 [此页面][owasp-clickjacking-csp]）。
- `X-Content-Type-Options: nosniff` 头，用于 [禁用 MIME 类型嗅探][mime-sniffing]。
- `X-XSS-Protection: 1; mode=block;` 头，为旧版浏览器提供基本的 XSS 保护。

[mime-sniffing]: https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Basics_of_HTTP/MIME_types#mime_sniffing  
[owasp-clickjacking-csp]: https://cheatsheetseries.owasp.org/cheatsheets/Clickjacking_Defense_Cheat_Sheet.html#content-security-policy-frame-ancestors-examples  
[owasp-clickjacking]: https://cheatsheetseries.owasp.org/cheatsheets/Clickjacking_Defense_Cheat_Sheet.html

如果你使用的是 nginx，配置应如下所示：

```
add_header X-Frame-Options SAMEORIGIN;
add_header X-Content-Type-Options nosniff;
add_header X-XSS-Protection "1; mode=block";
add_header Content-Security-Policy "frame-ancestors 'self'";
```

对于 Apache，配置如下：

```
Header set X-Frame-Options SAMEORIGIN
Header set X-Content-Type-Options nosniff
Header set X-XSS-Protection "1; mode=block"
Header set Content-Security-Policy "frame-ancestors 'self'"
```

注意：如果你已在其他地方设置了 `Content-Security-Policy` 头，则应修改它以包含 `frame-ancestors` 指令，而不是添加最后一行。

# 从源码构建

Element 是一个使用现代 ES6 构建的模块化 Web 应用，使用 Node.js 构建系统。请确保你已安装最新 LTS 版本的 Node.js。

建议使用 `yarn` 而不是 `npm`。如果你尚未安装，请参阅 Yarn 的 [安装指南](https://classic.yarnpkg.com/en/docs/install)。

1. 安装或更新 `node.js`，确保你的 `node` 至少是当前推荐的 LTS 版本。
2. 如果尚未安装，请安装 `yarn`。
3. 克隆仓库：`git clone https://github.com/element-hq/element-web.git`。
4. 切换到 element-web 目录：`cd element-web`。
5. 安装依赖项：`yarn install`。
   - 如果你使用的是 `develop` 分支，建议设置一个完整的开发环境（参见下方的 设置开发环境）。或者，你可以使用 <https://develop.element.io> —— develop 分支的持续集成版本。
6. 通过复制 `config.sample.json` 为 `config.json` 并修改其内容来配置应用。详情请参阅 配置文档。
7. 运行 `yarn dist` 以构建一个可部署的 tar 包。解压该文件将生成一个包含所有需要部署到 Web 服务器文件的版本特定目录。

注意：`yarn dist` 在 Windows 上不受支持，因此 Windows 用户可以运行 `yarn build`，这将构建所有必要的文件到 `webapp` 目录中。如果不使用 dist 脚本，设置中将不会显示 Element 的版本号。你可以将 `webapp` 目录挂载到你的 Web 服务器上以提供静态内容。

# 作为桌面应用运行

Element 也可以作为桌面应用运行，使用 Electron 封装。你可以从 <https://element.io/get-started> 下载预构建版本，或者自行构建。

如需自行构建，请参阅 <https://github.com/element-hq/element-desktop> 上的说明。

感谢 @aviraldg 在 Electron 集成方面的初始工作。

配置文档 中展示了如何覆盖桌面应用的默认设置（如有需要）。

# config.json

Element 支持多种设置，用于配置默认服务器、行为、主题等。详情请参阅 配置文档。

# 实验性功能（Labs）

Element 的一些功能可以通过设置中的 `Labs` 部分启用。部分功能描述请参阅 [labs.md](https://github.com/element-hq/element-web/blob/develop/docs/labs.md)。

# 缓存要求

当你在自己的 Web 服务器上部署 Element 时，以下 URL **不应被缓存**：

```
/config.*.json
/i18n
/home
/sites
/index.html
```

我们还建议你通过配置 Web 服务器返回 `Cache-Control: no-cache` 来强制浏览器在页面加载时重新验证缓存的 Element 副本。这样可以确保在部署新版本后，浏览器会在下次加载页面时获取新版本。注意，我们的 Dockerfile 中的 nginx 配置已默认包含此设置。

# 开发

请阅读以下文档：

1. 开发者指南
2. 代码风格
3. 贡献指南

# 翻译

如需添加新翻译，请参阅 翻译文档。

开发者指南请参阅 翻译开发文档。

# 问题分类

问题由社区成员和 Web 应用团队根据 [分类流程](https://github.com/element-hq/element-meta/wiki/Triage-process) 进行分类。

我们使用 [问题标签](https://github.com/element-hq/element-meta/wiki/Issue-labelling) 来整理所有提交的问题。

## 版权与许可

版权所有 (c) 2014-2017 OpenMarket Ltd  
版权所有 (c) 2017 Vector Creations Ltd  
版权所有 (c) 2017-2025 New Vector Ltd

本软件由 New Vector Ltd（Element）采用多重许可方式授权。你可以选择以下任意一种方式使用：

(1) 根据 GNU Affero 通用公共许可证（由自由软件基金会发布，版本 3 或（由你选择）任何更高版本）免费使用；或

(2) 根据 GNU 通用公共许可证（由自由软件基金会发布，版本 3 或（由你选择）任何更高版本）免费使用；或

(3) 根据你与 Element 签署的付费 Element 商业许可协议（具体条款可能因你与 Element 的协议而异）使用。

除非适用法律要求或书面同意，根据许可证分发的软件是“按原样”提供的，不提供任何形式的明示或暗示的担保或条件。请参阅许可证以了解具体的权限和限制条款。

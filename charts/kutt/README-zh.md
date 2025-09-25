<p align="center"><a href="https://kutt.it" title="kutt.it"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/logo-github.png" alt="Kutt.it"></a></p>

# Kutt.it

**Kutt** 是一个支持自定义域名的现代 URL 缩短服务。你可以创建和编辑链接、查看统计信息、管理用户等。

[https://kutt.it](https://kutt.it)

[![docker-build-release](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/badge.svg)](https://github.com/thedevs-network/kutt/actions/workflows/docker-build-release.yaml)
[![Uptime Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/1ogaa.svg)](https://status.kutt.it)
[![Contributions](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/contributions-welcome-brightgreen.svg)](https://github.com/thedevs-network/kutt/#contributing)
[![GitHub license](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/kutt.svg)](https://github.com/thedevs-network/kutt/blob/develop/LICENSE)

## 目录

- 主要功能
- 捐赠与赞助商
- 安装
- Docker
- API
- 配置
- 主题与自定义
- 浏览器扩展
- 视频
- 集成
- 贡献

## 主要功能

- 专为自托管设计：
  - 无需任何配置
  - 无需构建步骤即可轻松安装
  - 支持多种数据库（SQLite、Postgres、MySQL）
  - 可禁用注册和匿名链接
- 支持自定义域名
- 可为链接设置自定义 URL、密码、描述和过期时间
- 查看、编辑、删除和管理你的链接
- 缩短链接的私有统计信息
- 管理用户和链接的管理页面
- 可定制性和主题支持
- RESTful API

## 捐赠与赞助商

通过捐赠或成为赞助商来支持 Kutt 的开发。

[捐赠或赞助 →](https://btcpay.kutt.it/apps/L9Gc7PrnLykeRHkhsH2jHivBeEh/crowdfund)

## 安装

唯一的要求是安装 [Node.js](https://nodejs.org/)（版本 20 或更高）。默认数据库为 SQLite。你也可以选择安装 Postgres 或 MySQL/MariaDB 作为数据库，或使用 Redis 作为缓存。

首次启动应用时，系统会提示你创建一个管理员账户。

1. 克隆此仓库或[下载最新 zip 包](https://github.com/thedevs-network/kutt/releases)
2. 安装依赖：`npm install`
3. 初始化数据库：`npm run migrate`
5. 启动开发环境：`npm run dev` 或生产环境：`npm start`

## Docker

确保已安装 Docker，然后可以从项目根目录启动应用：

```sh
docker compose up
```

我们提供了多种 docker-compose 配置。使用 `docker compose -f <文件名> up` 来启动你需要的配置：

- `docker-compose.yml`：默认 Kutt 配置，使用 SQLite 作为数据库。
- `docker-compose.sqlite-redis.yml`：使用 SQLite 和 Redis 启动 Kutt。
  - 必需的环境变量：`REDIS_ENABLED`
- `docker-compose.postgres.yml`：使用 Postgres 和 Redis 启动 Kutt。
  - 必需的环境变量：`REDIS_ENABLED`, `DB_PASSWORD`, `DB_NAME`, `DB_USER`
- `docker-compose.mariadb.yml`：使用 MariaDB 和 Redis 启动 Kutt。
  - 必需的环境变量：`REDIS_ENABLED`, `DB_PASSWORD`, `DB_NAME`, `DB_USER`, `DB_PORT`

官方 Kutt Docker 镜像可在 [Docker Hub](https://hub.docker.com/r/kutt/kutt) 上找到。

## API

[查看 API 文档 →](https://docs.kutt.it)

## 配置

应用通过环境变量进行配置。你可以直接传递环境变量，或创建一个 `.env` 文件。查看 `.example.env` 文件以获取配置列表。

除了 `JWT_SECRET` 外，所有变量都是可选的，该变量在生产环境中是必需的。

你也可以通过在变量名后添加 `_FILE` 来使用文件设置变量值。例如：`JWT_SECRET_FILE=/path/to/secret_file`。

| 变量 | 描述 | 默认值 | 示例 |
| -------- | ----------- | ------- | ------- |
| `JWT_SECRET` | 用于签名认证令牌。请使用一个**很长**的**随机**字符串。 | - | - |
| `PORT` | 应用启动的端口 | `3000` | `8888` |
| `SITE_NAME` | 网站名称 | `Kutt` | `你的站点` |
| `DEFAULT_DOMAIN` | 应用运行的域名地址 | `localhost:3000` | `yoursite.com` |
| `LINK_LENGTH` | 缩短地址的长度 | `6` | `5` |
| `LINK_CUSTOM_ALPHABET` | 生成自定义地址所使用的字母表。默认值省略了 o, O, 0, i, I, l, 1, j 以避免阅读 URL 时混淆。 | (abcd..789) | `abcABC^&*()@` |
| `DISALLOW_REGISTRATION` | 禁用注册。注意：如果 `MAIL_ENABLED` 设置为 false，则注册仍会被禁用，因为注册依赖电子邮件。 | `true` | `false` |
| `DISALLOW_ANONYMOUS_LINKS` | 禁用匿名链接创建 | `true` | `false` |
| `TRUST_PROXY` | 如果应用运行在 NGINX 或 Cloudflare 等代理服务器后方，并应从代理获取 IP 地址。如果你未使用代理，请设为 false，否则用户可以伪造其 IP 地址。 | `true` | `false` |
| `DB_CLIENT` | 使用的数据库客户端。支持的客户端：`pg` 或 `pg-native`（Postgres）、`mysql2`（MySQL 或 MariaDB）、`sqlite3` 和 `better-sqlite3`（SQLite）。注意：`pg-native` 和 `sqlite3` 默认未安装，需使用 `npm` 安装后再使用。 | `better-sqlite3` | `pg` |
| `DB_FILENAME` | SQLite 数据库文件路径（仅在使用 SQLite 时有效） | `db/data` | `/var/lib/data` |
| `DB_HOST` | 数据库连接主机（仅在使用 Postgres 或 MySQL 时有效） | `localhost` | `your-db-host.com` |
| `DB_PORT` | 数据库端口（仅在使用 Postgres 或 MySQL 时有效） | `5432`（Postgres） | `3306`（MySQL） |
| `DB_NAME` | 数据库名称（仅在使用 Postgres 或 MySQL 时有效） | `kutt` | `mydb` |
| `DB_USER` | 数据库用户（仅在使用 Postgres 或 MySQL 时有效） | `postgres` | `myuser` |
| `DB_PASSWORD` | 数据库密码（仅在使用 Postgres 或 MySQL 时有效） | - | `mypassword` |
| `DB_SSL` | 是否为数据库连接启用 SSL（仅在使用 Postgres 或 MySQL 时有效） | `false` | `true` |
| `DB_POOL_MIN` | 数据库连接池最小数量（仅在使用 Postgres 或 MySQL 时有效） | `0` | `2` |
| `DB_POOL_MAX` | 数据库连接池最大数量（仅在使用 Postgres 或 MySQL 时有效） | `10` | `5` |
| `REDIS_ENABLED` | 是否使用 Redis 作为缓存 | `false` | `true` |
| `REDIS_HOST` | Redis 连接主机 | `127.0.0.1` | `your-redis-host.com` |
| `REDIS_PORT` | Redis 端口 | `6379` | `6379` |
| `REDIS_PASSWORD` | Redis 密码 | - | `mypassword` |
| `REDIS_DB` | Redis 数据库编号，范围 0 到 15。 | `0` | `1` |
| `SERVER_IP_ADDRESS` | 在设置页面显示给用户的 IP 地址。仅用于显示，无其他用途。 | - | `1.2.3.4` |
| `SERVER_CNAME_ADDRESS` | 在设置页面显示给用户的子域名。仅用于显示，无其他用途。 | - | `custom.yoursite.com` |
| `CUSTOM_DOMAIN_USE_HTTPS` | 为使用自定义域名的链接使用 HTTPS。你需要手动为这些域名生成 SSL 证书（目前版本如此）。 | `false` | `true` |
| `ENABLE_RATE_LIMIT` | 为部分 API 路由启用速率限制。如果启用了 Redis 则使用 Redis，否则使用内存。 | `false` | `true` |
| `MAIL_ENABLED` | 启用邮件功能，用于注册、验证或更改邮箱、重置密码和发送报告。如果禁用，这些功能也将被禁用。 | `false` | `true` | 
| `MAIL_HOST` | 邮件服务器主机 | - | `your-mail-server.com` |
| `MAIL_PORT` | 邮件服务器端口 | `587` | `465`（SSL） | 
| `MAIL_USER` | 邮件服务器用户 | - | `myuser` | 
| `MAIL_PASSWORD` | 用户的邮件服务器密码 | - | `mypassword` | 
| `MAIL_FROM` | 发送邮件的邮箱地址 | - | `example@yoursite.com` | 
| `MAIL_SECURE` | 是否为邮件服务器连接启用 SSL | `false` | `true` | 
| `REPORT_EMAIL` | 接收提交报告的邮箱地址 | - | `example@yoursite.com` | 
| `CONTACT_EMAIL` | 应用中显示的支持邮箱地址 | - | `example@yoursite.com` | 

## 主题与自定义

你可以添加样式、更改图片或渲染自定义 HTML。根据以下说明将内容放置在 `/custom` 文件夹中。

#### 工作原理：

custom 文件夹的结构如下：

```
custom/
├─ css/
│  ├─ custom1.css
│  ├─ custom2.css
│  ├─ ...
├─ images/
│  ├─ logo.png
│  ├─ favicon.ico
│  ├─ ...
├─ views/
│  ├─ partials/
│  │  ├─ footer.hbs
│  ├─ 404.hbs
│  ├─ ...
```

- **css**：将你的 CSS 样式文件放在此处。([查看示例 →](https://github.com/thedevs-network/kutt-customizations/tree/main/themes/crimson/css))
  - 你可以放置任意数量的样式文件：`custom1.css`, `custom2.css` 等。
  - 如果将样式文件命名为 `styles.css`，它将替换 Kutt 原始的 `styles.css` 文件。
  - 每个文件可通过 `<your-site.com>/css/<file>.css` 访问。
- **images**：将你的图片放在此处。([查看示例 →](https://github.com/thedevs-network/kutt-customizations/tree/main/themes/crimson/images))
  - 文件名应与 `/static/images/` 文件夹中的文件名一致，以替换 Kutt 原始图片。
  - 每张图片可通过 `<your-site.com>/images/<image>.<image-format>` 访问。
- **views**：自定义 HTML 模板。([查看示例 →](https://github.com/thedevs-network/kutt-customizations/tree/main/themes/crimson/views))
  - 应遵循与 `/server/views` 相同的文件命名和目录结构。
  - 虽然我们尽量保持原始文件名不变，但请注意 Kutt 的更新可能会破坏你的自定义视图。

#### 示例主题：Crimson

这是一个示例和官方主题。Crimson 包含自定义样式、图片和视图。

[获取 Crimson 主题 →](https://github.com/thedevs-network/kutt-customizations/tree/main/themes/crimson)

[查看主题和自定义列表 →](https://github.com/thedevs-network/kutt-customizations)

| 首页 | 管理页面 | 登录/注册 |
| -------- | ---------- | ------------ |
| ![crimson-homepage](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/403760284-b74fab78-5e80-4f57-8425-f0cc73e9c68d.png) | ![crimson-admin](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/403759116-a75d2430-8074-4ce4-93ec-d8bdfd75d917.png) | ![crimson-login-signup](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/kutt/image/403760424-b915eb77-3d66-4407-8e5d-b556f80ff453.png)

#### 在 Docker 中使用：

如果你是本地构建镜像，则 `/custom` 文件夹应已包含在应用中。

如果你使用的是官方镜像，请确保挂载了 `/kutt/custom` 卷或有访问权限。[查看 Docker compose 示例 →](https://github.com/thedevs-network/kutt/blob/main/docker-compose.yml#L7)

然后，将你的文件复制到该卷中。你可以使用以下 Docker 命令：

```sh
docker cp <custom文件夹路径> <kutt容器名>:/kutt
```

例如：

```sh
docker cp custom kutt-server-1:/kutt
```

复制文件或进行更改后，请确保重启 kutt 服务器容器。

## 浏览器扩展

通过以下链接下载 Kutt 的浏览器扩展程序。

- [Chrome](https://chrome.google.com/webstore/detail/kutt/pklakpjfiegjacoppcodencchehlfnpd)
- [Firefox](https://addons.mozilla.org/en-US/firefox/addon/kutt/)

## 视频

**官方视频**

- [Next.js to htmx – 一个真实示例](https://www.youtube.com/watch?v=8RL4NvYZDT4)

## 集成

- **ShareX** – 你可以在 [ShareX](https://getsharex.com/) 中使用 Kutt 作为默认的 URL 缩短服务。如果你托管了自定义实例的 Kutt，请参考 [ShareX wiki](https://github.com/thedevs-network/kutt/wiki/ShareX) 了解如何设置。
- **Alfred workflow** – 从 [alfred-kutt](https://github.com/thedevs-network/alfred-kutt) 仓库下载 Kutt 的官方 Alfred 工作流。
- **iOS 快捷指令** – 适用于苹果设备的 [Kutt 快捷指令](https://www.icloud.com/shortcuts/a829856aea2c420e97c53437e68b752b)，可通过 iOS 分享菜单或独立模式运行。由 [@caneeeeee](https://github.com/caneeeeee) 提供。

**第三方包**

| 语言        | 链接                                                                              | 描述                                          |
| ------------ | --------------------------------------------------------------------------------- | ---------------------------------------------------- |
| C# (.NET)       | [KuttSharp](https://github.com/0xaryan/KuttSharp)                                 | .NET 的 Kutt.it URL 缩短包               |
| C# (.NET)       | [Kutt.NET](https://github.com/AlphaNecron/Kutt.NET)                               | C# 的 Kutt API 封装                              |
| Python          | [kutt-cli](https://github.com/RealAmirali/kutt-cli)                               | 用 Python 编写的 Kutt 命令行客户端       |
| Ruby            | [kutt.rb](https://github.com/RealAmirali/kutt.rb)                                 | 用 Ruby 编写的 Kutt 库                         |
| Rust            | [urlshortener](https://github.com/vityafx/urlshortener-rs)                        | 用 Rust 编写的 URL 缩短库                |
| Rust            | [kutt-rs](https://github.com/robatipoor/kutt-rs)                                  | 用 Rust 编写的命令行工具                    |
| Node.js         | [node-kutt](https://github.com/ardalanamini/node-kutt)                            | Node.js 的 Kutt.it URL 缩短客户端             |
| JavaScript      | [kutt-vscode](https://github.com/mehrad77/kutt-vscode)                            | Visual Studio Code 的 Kutt 扩展            |
| Java            | [kutt-desktop](https://github.com/cipher812/kutt-desktop)                         | 跨平台的 Java 桌面版 Kutt 应用程序         |
| Go              | [kutt-go](https://github.com/raahii/kutt-go)                                      | Go 的 Kutt.it URL 缩短客户端              |
| BASH            | [GitHub Gist](https://gist.github.com/hashworks/6d6e4eae8984a5018f7692a796d570b4) | 简单的 BASH 函数访问 API               |
| BASH            | [url-shortener](https://git.tim-peters.org/Tim/url-shortener)                     | 带 GUI 的简单 BASH 脚本                          |
| Kubernetes/Helm | [ArtifactHub](https://artifacthub.io/packages/helm/christianhuth/kutt)            | 用于在 Kubernetes 集群上安装 Kutt 的 Helm Chart |

## 贡献

欢迎提交 Pull Request。你也可以发起讨论以获取反馈、请求功能或讨论想法。

特别感谢 [Thomas](https://github.com/trgwii) 和 [Muthu](https://github.com/MKRhere)。Logo 设计由 [Muthu](https://github.com/MKRhere) 完成。
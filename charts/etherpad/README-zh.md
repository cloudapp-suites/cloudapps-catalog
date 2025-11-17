# Etherpad：一个面向网页的实时协作编辑器

![Demo Etherpad Animated Jif](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/etherpad_demo.gif)

## 关于

Etherpad 是一个可扩展到**数千个同时在线用户**的实时协作编辑器。它提供完整的数据导出功能，并且运行在**你自己的服务器**上，由**你**掌控。

## 试用

维基媒体提供了一个[公共 Etherpad 实例供你试用](https://etherpad.wikimedia.org)，或者你可以[使用其他公共 Etherpad 实例来体验更多功能](https://github.com/ether/etherpad-lite/wiki/Sites-That-Run-Etherpad#sites-that-run-etherpad)

## 项目状态

我们正在寻找维护者，并且有一些资金支持。如果你能提供帮助，请联系 John McLear。

### 代码质量

[![代码质量](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/badge.svg)](https://github.com/ether/etherpad-lite/actions/workflows/codeql-analysis.yml)

### 测试

[![后端测试](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/badge.svg)](https://github.com/ether/etherpad-lite/actions/workflows/backend-tests.yml)

### 社区互动

[![Docker 下载量](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/etherpad.svg)](https://hub.docker.com/r/etherpad/etherpad)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/741309013593030667.svg)](https://discord.com/invite/daEjfhw)
[![Etherpad 插件](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/endpoint.svg)](https://static.etherpad.org/index.html)
![语言数量](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/v1.svg)
![翻译覆盖率](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/v1.svg)

## 安装

### Docker-Compose

```yaml
services:
  app:
    user: "0:0"
    image: etherpad/etherpad:latest
    tty: true
    stdin_open: true
    volumes:
      - plugins:/opt/etherpad-lite/src/plugin_packages
      - etherpad-var:/opt/etherpad-lite/var
    depends_on:
      - postgres
    environment:
      NODE_ENV: production
      ADMIN_PASSWORD: ${DOCKER_COMPOSE_APP_ADMIN_PASSWORD:-admin}
      DB_CHARSET: ${DOCKER_COMPOSE_APP_DB_CHARSET:-utf8mb4}
      DB_HOST: postgres
      DB_NAME: ${DOCKER_COMPOSE_POSTGRES_DATABASE:-etherpad}
      DB_PASS: ${DOCKER_COMPOSE_POSTGRES_PASSWORD:-admin}
      DB_PORT: ${DOCKER_COMPOSE_POSTGRES_PORT:-5432}
      DB_TYPE: "postgres"
      DB_USER: ${DOCKER_COMPOSE_POSTGRES_USER:-admin}
      # 目前，环境变量 DEFAULT_PAD_TEXT 不能为空或未设置；在最新版本的 Etherpad 中它是必须的
      DEFAULT_PAD_TEXT: ${DOCKER_COMPOSE_APP_DEFAULT_PAD_TEXT:- }
      DISABLE_IP_LOGGING: ${DOCKER_COMPOSE_APP_DISABLE_IP_LOGGING:-false}
      SOFFICE: ${DOCKER_COMPOSE_APP_SOFFICE:-null}
      TRUST_PROXY: ${DOCKER_COMPOSE_APP_TRUST_PROXY:-true}
    restart: always
    ports:
      - "${DOCKER_COMPOSE_APP_PORT_PUBLISHED:-9001}:${DOCKER_COMPOSE_APP_PORT_TARGET:-9001}"

  postgres:
    image: postgres:15-alpine
    environment:
      POSTGRES_DB: ${DOCKER_COMPOSE_POSTGRES_DATABASE:-etherpad}
      POSTGRES_PASSWORD: ${DOCKER_COMPOSE_POSTGRES_PASSWORD:-admin}
      POSTGRES_PORT: ${DOCKER_COMPOSE_POSTGRES_PORT:-5432}
      POSTGRES_USER: ${DOCKER_COMPOSE_POSTGRES_USER:-admin}
      PGDATA: /var/lib/postgresql/data/pgdata
    restart: always
    # 除非你想从主机访问该数据库实例，否则不需要暴露端口。
    # 如果有其他 PostgreSQL 容器使用相同端口，请小心
    # ports:
    #   - "5432:5432"
    volumes:
      - postgres_data:/var/lib/postgresql/data

volumes:
  postgres_data:
  plugins:
  etherpad-var:
```

### 系统要求

[Node.js](https://nodejs.org/) >= **18.18.2**。

### Windows、macOS、Linux

1. 从 [nodejs.org](https://nodejs.org/) 下载最新的 Node.js 运行环境。
2. 安装 pnpm: `npm install -g pnpm`（可能需要管理员权限）。
3. 克隆仓库: `git clone -b master`
4. 运行 `pnpm i`
5. 运行 `pnpm run build:etherpad`
6. 运行 `pnpm run prod`
7. 在浏览器中访问 `http://localhost:9001`。

### Docker 容器

关于在容器中运行 Etherpad 的信息，请查看 这里。

## 插件

Etherpad 可以通过插件进行高度定制。

![Basic install](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/etherpad_basic.png)

![Full Features](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/etherpad_full_features.png)

### 可用插件

关于可用插件列表，请参见 [插件页面](https://static.etherpad.org)。

### 插件安装

你可以通过管理界面安装插件（例如：http://127.0.0.1:9001/admin/plugins）。

或者，你也可以通过命令行安装插件：

```sh
cd /path/to/etherpad-lite
pnpm run plugins i ep_${plugin_name}
```

还可以参考 [插件 Wiki 页面](https://github.com/ether/etherpad-lite/wiki/Available-Plugins)。

### 推荐插件

在你的 Etherpad 文件夹中运行以下命令，以获得上面演示 GIF 中显示的所有功能：

```sh
pnpm run plugins i \
  ep_align \
  ep_comments_page \
  ep_embedded_hyperlinks2 \
  ep_font_color \
  ep_headings2 \
  ep_markdown \
  ep_webrtc
```

如果你需要用户认证，建议你运行一个 [OpenID Connect](https://openid.net/connect/) 身份提供者（OP），并安装以下插件：

  * [ep_openid_connect](https://github.com/ether/ep_openid_connect#readme) 用于与你的 OP 进行身份验证。
  * [ep_guest](https://github.com/ether/ep_guest#readme) 创建一个具有有限访问权限的“访客”账户（例如只读访问）。
  * [ep_user_displayname](https://github.com/ether/ep_user_displayname#readme) 自动从你的 OP 获取每个用户的显示名称。
  * [ep_stable_authorid](https://github.com/ether/ep_stable_authorid#readme) 使每个用户选择的颜色、显示名称、评论归属等与其账户强关联。

### 升级 Etherpad

在你的 Etherpad 文件夹中运行以下命令进行升级：

1. 停止正在运行的 Etherpad（手动、systemd 等）
2. 查看当前版本
```sh
git -P tag --contains
```
3. 列出可用版本
```sh
git -P tag --list "v*" --merged
```
4. 选择版本
```sh
git checkout v2.2.5
git switch -c v2.2.5
```
5. 升级 Etherpad
```sh
./bin/run.sh
```
6. 按 [CTRL-C] 停止
7. 重启你的 Etherpad 服务

## 下一步

### 调整设置

你可以在 `settings.json` 中修改设置。如果你需要处理多个设置文件，你可以通过 `bin/run.sh` 使用 `-s|--settings` 选项传递设置文件路径：这允许你从同一安装运行多个 Etherpad 实例。同样，`--credentials` 可用于提供设置覆盖文件，`--apikey` 可用于提供不同的 APIKEY.txt 文件，`--sessionkey` 可用于提供非默认的 SESSIONKEY.txt 文件。**每个配置参数也可以通过环境变量设置**，语法为 `"${ENV_VAR}"` 或 `"${ENV_VAR:default_value}"`。详细信息请参考 `settings.json.template`。一旦你访问了 `/admin` 页面，就可以通过浏览器修改设置。

如果你计划在生产环境中使用 Etherpad，建议使用专用数据库如 `mysql`，因为 `dirtyDB` 数据库驱动程序仅用于测试和/或开发目的。

### 保护你的安装

如果你在 `settings.json` 的 `users` 部分启用了身份验证，建议你**在该文件中存储哈希值而不是明文密码**。如果你运行的是生产环境安装，这一点尤其重要。

请安装 [ep_hash_auth 插件](https://www.npmjs.com/package/ep_hash_auth) 并进行配置。如果你愿意，`ep_hash_auth` 还允许你将用户存储在自定义的文件系统目录中，而无需每次修改 `settings.json` 并重启 Etherpad。

### 使用皮肤变体进行样式自定义

在浏览器中打开 http://127.0.0.1:9001/p/test#skinvariantsbuilder 并开始尝试！

![Skin Variant](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/etherpad/image/etherpad_skin_variants.gif)

## 有用的资源

[Wiki 页面](https://github.com/ether/etherpad-lite/wiki) 是你获取教程和操作指南的一站式资源。

文档可以在 `doc/` 中找到。

## 开发

### 你应该知道的内容

你可以使用 `bin/debugRun.sh` 调试 Etherpad。

你可以通过运行 `bin/fastRun.sh` 快速启动 Etherpad。这对开发者和高级用户非常方便。请注意，它将跳过依赖更新，因此在安装新依赖或升级版本后请记得运行 `bin/installDeps.sh`。

如果你想了解 Etherpad 的 `Easysync` 是如何工作的（使它真正实现实时协作的库），可以从这个 [PDF](https://github.com/ether/etherpad-lite/raw/master/doc/easysync/easysync-full-description.pdf) 开始阅读（内容复杂，但值得一读）。

### 贡献

阅读我们的 [开发者指南](https://github.com/ether/etherpad-lite/blob/master/CONTRIBUTING.md)

### HTTP API

Etherpad 被设计为易于嵌入，并提供了一个 [HTTP API](https://github.com/ether/etherpad-lite/wiki/HTTP-API)，允许你的 Web 应用程序管理 pads、用户和群组。建议使用 [现有的客户端实现](https://github.com/ether/etherpad-lite/wiki/HTTP-API-client-libraries) 来与该 API 交互。

API 的 OpenAPI（之前称为 Swagger）定义暴露在 `/api/openapi.json` 路径下。

### jQuery 插件

我们提供了一个 [jQuery 插件](https://github.com/ether/etherpad-lite-jquery-plugin)，帮助你将 pads 嵌入到你的网站中。

### 插件框架

Etherpad 提供了一个插件框架，允许你轻松添加自己的功能。默认情况下，你的 Etherpad 非常轻量，你可以根据需要自定义体验。一旦安装了 Etherpad，你应该 [访问插件页面](https://static.etherpad.org/) 来掌控你的 Etherpad。

### 翻译 / 本地化（i18n / l10n）

Etherpad 提供了所有语言的翻译，感谢 [TranslateWiki](https://translatewiki.net/) 团队的努力。

如果你需要对 [插件](https://static.etherpad.org/) 进行翻译，请向每个插件单独提交 Pull Request。

## 常见问题

访问 **[FAQ 页面](https://github.com/ether/etherpad-lite/wiki/FAQ)**。

## 联系我们

官方联系开发团队的渠道是通过 [GitHub Issues](https://github.com/ether/etherpad-lite/issues)。

对于**漏洞负责任披露**，请发邮件给维护者（a.mux@inwind.it 和 contact@etherpad.org）。

加入官方 [Etherpad Discord 频道](https://discord.com/invite/daEjfhw)。

## 许可证

[Apache License v2](http://www.apache.org/licenses/LICENSE-2.0.html)
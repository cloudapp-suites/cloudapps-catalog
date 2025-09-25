<div align="center">

[<img src="https://avatars.githubusercontent.com/u/82473144?s=200" width="100" alt="Ghostfolio logo">](https://ghostfol.io)

# Ghostfolio

**开源财富管理软件**

[**Ghostfol.io**](https://ghostfol.io) | [**在线演示**](https://ghostfol.io/en/demo) | [**Ghostfolio Premium**](https://ghostfol.io/en/pricing) | [**常见问题**](https://ghostfol.io/en/faq) |
[**博客**](https://ghostfol.io/en/blog) | [**LinkedIn**](https://www.linkedin.com/company/ghostfolio) | [**Slack**](https://join.slack.com/t/ghostfolio/shared_invite/zt-vsaan64h-F_I0fEo5M0P88lP9ibCxFg) | [**X**](https://x.com/ghostfolio_)

[![徽章：支持我](https://img.shields.io/badge/Buy%20me%20a%20coffee-Support-yellow?logo=buymeacoffee)](https://www.buymeacoffee.com/ghostfolio)
[![徽章：欢迎贡献](https://img.shields.io/badge/Contributions-Welcome-limegreen.svg)](#contributing) [![徽章：Docker 下载量](https://img.shields.io/docker/pulls/ghostfolio/ghostfolio?label=Docker%20Pulls)](https://hub.docker.com/r/ghostfolio/ghostfolio)
[![徽章：许可证 AGPL v3](https://img.shields.io/badge/License-AGPL%20v3-orange.svg)](https://www.gnu.org/licenses/agpl-3.0)

</div>

**Ghostfolio** 是一款使用 Web 技术构建的开源财富管理软件。该应用程序帮助忙碌的人们追踪股票、ETF 或加密货币，并做出基于数据的稳健投资决策。该软件专为持续运行的个人用途而设计。

<div align="center">

[<img src="./apps/client/src/assets/images/video-preview.jpg" width="600" alt="Ghostfolio 视频预告的预览图">](https://www.youtube.com/watch?v=yY6ObSQVJZk)

</div>

## Ghostfolio Premium

我们的官方 **[Ghostfolio Premium](https://ghostfol.io/en/pricing)** 云服务是入门的最简单方式。由于节省了时间，这将是大多数人的最佳选择。收入用于支付托管基础设施和专业数据提供商的运营成本，并资助持续的开发。

如果您希望在自己的基础设施上运行 Ghostfolio，请参阅 [自托管](#self-hosting) 部分的说明。

## 为什么选择 Ghostfolio？

如果您符合以下条件，Ghostfolio 就适合您：

- 💼 在多个平台上交易股票、ETF 或加密货币
- 🏦 采用买入并持有策略
- 🎯 想了解投资组合构成的洞察信息
- 👻 重视隐私和数据所有权
- 🧘 喜欢极简主义
- 🧺 关注财务资源的多样化
- 🆓 追求财务自由
- 🙅 拒绝使用电子表格
- 😎 仍在阅读这个列表

## 功能特性

- ✅ 创建、更新和删除交易
- ✅ 多账户管理
- ✅ 投资组合表现：提供 `今日`、`周至今`、`月至今`、`年初至今`、`1年`、`5年`、`最大` 的平均投资回报率（ROAI）
- ✅ 多种图表
- ✅ 静态分析以识别投资组合中的潜在风险
- ✅ 导入和导出交易
- ✅ 暗黑模式
- ✅ 禅模式
- ✅ 采用移动优先设计的渐进式 Web 应用（PWA）

<div align="center">

<img src="./apps/client/src/assets/images/screenshot.png" width="300" alt="手机上显示 Ghostfolio 应用打开的图片">

</div>

## 技术栈

Ghostfolio 是一个现代 Web 应用程序，使用 [TypeScript](https://www.typescriptlang.org) 编写，并组织为 [Nx](https://nx.dev) 工作区。

### 后端

后端基于 [NestJS](https://nestjs.com)，使用 [PostgreSQL](https://www.postgresql.org) 作为数据库，结合 [Prisma](https://www.prisma.io) 和 [Redis](https://redis.io) 用于缓存。

### 前端

前端使用 [Angular](https://angular.dev) 构建，采用 [Angular Material](https://material.angular.io)，并使用了 [Bootstrap](https://getbootstrap.com) 的工具类。

## 自托管

我们为 `linux/amd64`、`linux/arm/v7` 和 `linux/arm64` 提供了官方容器镜像，托管在 [Docker Hub](https://hub.docker.com/r/ghostfolio/ghostfolio) 上。

<div align="center">

[<img src="./apps/client/src/assets/images/button-buy-me-a-coffee.png" width="150" alt="支持我"/>](https://www.buymeacoffee.com/ghostfolio)

</div>

### 支持的环境变量

| 名称                     | 类型                  | 默认值 | 描述                                                                                                                         |
| ------------------------ | --------------------- | ------ | ---------------------------------------------------------------------------------------------------------------------------- |
| `ACCESS_TOKEN_SALT`      | `string`              |        | 用于访问令牌的随机字符串                                                                                                     |
| `API_KEY_COINGECKO_DEMO` | `string`（可选）      |        | _CoinGecko_ 演示 API 密钥                                                                                                    |
| `API_KEY_COINGECKO_PRO`  | `string`（可选）      |        | _CoinGecko_ 专业 API 密钥                                                                                                    |
| `DATABASE_URL`           | `string`              |        | 数据库连接 URL，例如 `postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@localhost:5432/${POSTGRES_DB}?sslmode=prefer` |
| `HOST`                   | `string`（可选）      | `0.0.0.0` | Ghostfolio 应用程序运行的主机                                                                                                 |
| `JWT_SECRET_KEY`         | `string`              |        | 用于 _JSON Web Tokens_（JWT）的随机字符串                                                                                      |
| `LOG_LEVELS`             | `string[]`（可选）    |        | Ghostfolio 应用程序的日志级别，例如 `["debug","error","log","warn"]`                                                          |
| `PORT`                   | `number`（可选）      | `3333` | Ghostfolio 应用程序运行的端口                                                                                                 |
| `POSTGRES_DB`            | `string`              |        | _PostgreSQL_ 数据库名称                                                                                                      |
| `POSTGRES_PASSWORD`      | `string`              |        | _PostgreSQL_ 数据库密码                                                                                                      |
| `POSTGRES_USER`          | `string`              |        | _PostgreSQL_ 数据库用户                                                                                                      |
| `REDIS_DB`               | `number`（可选）      | `0`    | _Redis_ 数据库索引                                                                                                           |
| `REDIS_HOST`             | `string`              |        | _Redis_ 运行的主机                                                                                                           |
| `REDIS_PASSWORD`         | `string`              |        | _Redis_ 的密码                                                                                                               |
| `REDIS_PORT`             | `number`              |        | _Redis_ 运行的端口                                                                                                           |
| `REQUEST_TIMEOUT`        | `number`（可选）      | `2000` | 向数据提供商发起网络请求的超时时间（毫秒）                                                                                   |

### 使用 Docker Compose 运行

#### 前提条件

- 基本的 Docker 知识
- 安装 [Docker](https://www.docker.com/products/docker-desktop)
- 创建本 Git 仓库的本地副本（克隆）
- 将 `.env.example` 文件复制为 `.env` 并填写您的数据（`cp .env.example .env`）

#### a. 运行环境

运行以下命令以从 [Docker Hub](https://hub.docker.com/r/ghostfolio/ghostfolio) 启动 Docker 镜像：

```bash
docker compose -f docker/docker-compose.yml up -d
```

#### b. 构建并运行环境

运行以下命令以构建并启动 Docker 镜像：

```bash
docker compose -f docker/docker-compose.build.yml build
docker compose -f docker/docker-compose.build.yml up -d
```

#### 初始化设置

1. 在浏览器中打开 http://localhost:3333
1. 通过 _Get Started_ 创建一个新用户（第一个用户将获得 `ADMIN` 角色）

#### 升级版本

1. 更新 _Ghostfolio_ Docker 镜像
   - 在 `docker/docker-compose.yml` 中升级 `ghostfolio/ghostfolio` Docker 镜像的版本
   - 如果设置了 `ghostfolio:latest`，请运行以下命令：
     ```bash
     docker compose -f docker/docker-compose.yml pull
     ```

1. 运行以下命令以启动新的 Docker 镜像：
   ```bash
   docker compose -f docker/docker-compose.yml up -d
   ```
   容器将在启动时自动应用所需的数据库模式迁移。

### 家用服务器系统（社区支持）

Ghostfolio 支持多种家用服务器系统，包括 [CasaOS](https://github.com/bigbeartechworld/big-bear-casaos)、[Home Assistant](https://github.com/lildude/ha-addon-ghostfolio)、[Runtipi](https://www.runtipi.io/docs/apps-available)、[TrueCharts](https://truecharts.org/charts/stable/ghostfolio)、[Umbrel](https://apps.umbrel.com/app/ghostfolio) 和 [Unraid](https://unraid.net/community/apps?q=ghostfolio)。

## 开发

有关环境设置和开发流程的详细信息，请参阅 [DEVELOPMENT.md](./DEVELOPMENT.md)。

## 公共 API

### 认证：Bearer Token

为每个请求设置如下头部：

```
"Authorization": "Bearer eyJh..."
```

您可以通过 `POST http://localhost:3333/api/v1/auth/anonymous` 获取 _Bearer Token_（请求体：`{ "accessToken": "<INSERT_SECURITY_TOKEN_OF_ACCOUNT>" }`）

已弃用：`GET http://localhost:3333/api/v1/auth/anonymous/<INSERT_SECURITY_TOKEN_OF_ACCOUNT>` 或 `curl -s http://localhost:3333/api/v1/auth/anonymous/<INSERT_SECURITY_TOKEN_OF_ACCOUNT>`。

### 健康检查（实验性）

#### 请求

`GET http://localhost:3333/api/v1/health`

**说明：** 健康检查不需要 Bearer Token

#### 响应

##### 成功

`200 OK`

```
{
  "status": "OK"
}
```

### 导入活动

#### 前提条件

使用 [Bearer Token](#authorization-bearer-token) 进行认证

#### 请求

`POST http://localhost:3333/api/v1/import`

#### 请求体

```
{
  "activities": [
    {
      "currency": "USD",
      "dataSource": "YAHOO",
      "date": "2021-09-15T00:00:00.000Z",
      "fee": 19,
      "quantity": 5,
      "symbol": "MSFT",
      "type": "BUY",
      "unitPrice": 298.58
    }
  ]
}
```

| 字段         | 类型                | 描述                                                         |
| ------------ | ------------------- | ------------------------------------------------------------ |
| `accountId`  | `string`（可选）    | 账户 ID                                                      |
| `comment`    | `string`（可选）    | 活动备注                                                     |
| `currency`   | `string`            | `CHF` \| `EUR` \| `USD` 等                                   |
| `dataSource` | `string`            | `COINGECKO` \| `MANUAL` \| `YAHOO`                           |
| `date`       | `string`            | 日期，格式为 `ISO-8601`                                      |
| `fee`        | `number`            | 活动费用                                                     |
| `quantity`   | `number`            | 活动数量                                                     |
| `symbol`     | `string`            | 活动对应的符号（需与 `dataSource` 兼容）                     |
| `type`       | `string`            | `BUY` \| `DIVIDEND` \| `FEE` \| `INTEREST` \| `LIABILITY` \| `SELL` |
| `unitPrice`  | `number`            | 每单位活动的价格                                             |

#### 响应

##### 成功

`201 Created`

##### 错误

`400 Bad Request`

```
{
  "error": "Bad Request",
  "message": [
    "activities.1 是重复的活动"
  ]
}
```

### 投资组合（实验性）

#### 前提条件

在 _My Ghostfolio_ 的 _Access_ 标签页中授予 _Public_ 类型的访问权限。

#### 请求

`GET http://localhost:3333/api/v1/public/<INSERT_ACCESS_ID>/portfolio`

**说明：** 此请求无需 Bearer Token 认证

#### 响应

##### 成功

```
{
  "performance": {
    "1d": {
      "relativeChange": 0 // 从 -1 到 1 的归一化值
    },
    "ytd": {
      "relativeChange": 0 // 从 -1 到 1 的归一化值
    },
    "max": {
      "relativeChange": 0 // 从 -1 到 1 的归一化值
    }
  }
}
```

## 社区项目

探索 Ghostfolio 的各种社区项目：https://github.com/topics/ghostfolio

您正在开发自己的项目吗？请在您的 _GitHub_ 仓库中添加 `ghostfolio` 主题，以便被列出。[了解更多 →](https://docs.github.com/en/articles/classifying-your-repository-with-topics)

## 贡献

Ghostfolio 是 **100% 免费** 且 **开源** 的。我们鼓励并支持活跃、健康的社区，接受公众的贡献 —— 包括您。

不确定该做什么？我们有一些 [想法](https://github.com/ghostfolio/ghostfolio/issues?q=is%3Aissue+is%3Aopen+label%3A%22help+wanted%22)，甚至包括一些 [新手友好型问题](https://github.com/ghostfolio/ghostfolio/issues?q=is%3Aissue+is%3Aopen+label%3A%22good+first+issue%22)。请加入 Ghostfolio 的 [Slack](https://join.slack.shared_invite/zt-vsaan64h-F_I0fEo5M0P88lP9ibCxFg) 频道，或在 _X_ 上关注 [@ghostfolio\_](https://x.com/ghostfolio_)。我们期待您的声音。

如果您喜欢支持这个项目，请获取 [**Ghostfolio Premium**](https://ghostfol.io/en/pricing) 或 [**Buy me a coffee**](https://www.buymeacoffee.com/ghostfolio)。

## 统计分析

![Alt](https://repobeats.axiom.co/api/embed/281a80b2d0c4af1162866c24c803f1f18e5ed60e.svg 'Repobeats 统计分析图')

## 许可证

© 2021 - 2025 [Ghostfolio](https://ghostfol.io)

本项目采用 [AGPLv3 许可证](https://www.gnu.org/licenses/agpl-3.0.html)。
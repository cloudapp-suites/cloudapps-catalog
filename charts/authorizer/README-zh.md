> 🚀 **EDAS 提供应用一键部署，快来体验吧！** [立即部署](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=bf6fd51d-f5d2-47b5-b5ae-cd5f5a2357c7)

<p align="center">
  <a href="https://authorizer.dev">
    <img alt="Logo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/authorizer/image/logo.png" width="60" />
  </a>
</p>
<h1 align="center">
  Authorizer
</h1>

**Authorizer** 是一个开源的身份验证和授权解决方案，适用于你的应用程序。你可以使用自己的数据库，并完全控制用户信息。你可以自托管 Authorizer 实例，并连接到任意数据库（目前支持11种以上数据库，包括 [Postgres](https://www.postgresql.org/)、[MySQL](https://www.mysql.com/)、[SQLite](https://www.sqlite.org/index.html)、[SQLServer](https://www.microsoft.com/zh-cn/sql-server/)、[YugaByte](https://www.yugabyte.com/)、[MariaDB](https://mariadb.org/)、[PlanetScale](https://planetscale.com/)、[CassandraDB](https://cassandra.apache.org/_/index.html)、[ScyllaDB](https://www.scylladb.com/)、[MongoDB](https://mongodb.com/)、[ArangoDB](https://www.arangodb.com/)）。

更多信息请查看：

- [文档](http://docs.authorizer.dev/)
- [Discord 社区](https://discord.gg/Zv2D5h6kkK)
- [贡献指南](https://github.com/authorizerdev/authorizer/blob/main/.github/CONTRIBUTING.md)

# 简介

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/authorizer/image/authorizer-arch.png" style="height:20em"/>

#### 我们提供的功能

- ✅ 使用邮箱和密码登录 / 注册
- ✅ 安全的会话管理
- ✅ 邮箱验证
- ✅ 支持 OAuth2 和 OpenID 的 API
- ✅ 安全更新用户资料的 API
- ✅ 通过邮箱找回密码流程
- ✅ 社交登录（Google、Github、Facebook、LinkedIn、Apple，更多即将上线）
- ✅ 基于角色的访问控制
- ✅ 无密码登录（通过魔法链接）
- ✅ 多因素认证
- ✅ 邮件模板
- ✅ Webhooks

## 路线图

- [VueJS SDK](https://github.com/authorizerdev/authorizer-vue)
- [Svelte SDK](https://github.com/authorizerdev/authorizer-svelte)
- [Golang SDK](https://github.com/authorizerdev/authorizer-go)
- React Native SDK
- Flutter SDK
- Android 原生 SDK
- iOS 原生 SDK
- Python SDK
- PHP SDK
- WordPress 插件
- Kubernetes Helm Chart
- [Local Stack](https://github.com/localstack/localstack)
- AMI
- Digital Ocean Droplet
- Azure
- Render
- 使用 Fly.io 的边缘部署
- 使用手机号和 OTP 短信进行无密码登录

# 快速开始

## 步骤 1：获取 Authorizer 实例
### 使用源码部署 Authorizer

本指南帮助你在本地环境中使用 Authorizer，以便在生产环境使用前进行评估。它包含在本地或独立模式下安装 Authorizer 服务的说明。

#### 使用源码安装

#### 前提条件

- 操作系统：Linux、macOS 或 Windows
- Go：(Golang)(https://golang.org/dl/) >= v1.15

#### 项目设置

1. Fork [authorizer](https://github.com/authorizerdev/authorizer) 仓库（如果你已有仓库访问权限，请跳过此步骤）
2. 克隆仓库：`git clone https://github.com/authorizerdev/authorizer.git` 或使用第1步中的 fork 地址
3. 进入 authorizer 目录：`cd authorizer`
4. 创建环境变量文件：`cp .env.sample .env`。查看所有支持的环境变量 [这里](https://docs.authorizer.dev/core/env/)
5. 构建仪表盘：`make build-dashboard`
6. 构建应用：`make build-app`
7. 构建服务端：`make clean && make`
   > 注意：如果你没有 [`make`](https://www.ibm.com/docs/en/aix/7.2?topic=concepts-make-command)，可以进入 `server` 目录并使用 `go build` 命令构建。在这种情况下，你需要手动在 `dashboard` 和 `app` 目录中使用 `npm run build` 构建。
8. 运行二进制文件：`./build/server`

### 使用二进制文件部署 Authorizer

你可以使用预编译的二进制文件部署 / 测试 Authorizer。每次 [Authorizer 发布版本](https://github.com/authorizerdev/authorizer/releases) 都包含所需的部署文件。你可以为以下操作系统下载特定版本：

- Mac OSX
- Linux

#### 下载并解压包

- 从 [发布页面](https://github.com/authorizerdev/authorizer/releases) 下载对应操作系统的包

> 注意：对于 Windows，我们建议使用 Docker 镜像运行 Authorizer。

- 使用以下命令解压：

  - Mac / Linux

  ```sh
  tar -zxf AUTHORIZER_VERSION -c authorizer
  ```

- 进入 `authorizer` 目录

  ```sh
  cd authorizer
  ```

#### 步骤 3：启动 Authorizer

- 使用以下命令启动 Authorizer：

  - Mac / Linux 用户

  ```sh
  ./build/server
  ```

> 注意：Mac 用户可能需要为二进制文件添加执行权限。可以使用以下命令：`xattr -d com.apple.quarantine build/server`

## 步骤 2：配置实例

- 在浏览器中打开 Authorizer 实例的访问地址
- 使用安全密码注册一个管理员账户
- 通过 Authorizer 仪表盘配置环境变量。更多信息请查看 环境变量文档

> 注意：`DATABASE_URL`、`DATABASE_TYPE` 和 `DATABASE_NAME` 只能通过平台环境变量配置

### 需要注意的事项

- 对于社交登录功能，你需要获取对应社交平台的 Key 和 Secret
- 如果需要用户邮箱验证，你需要配置一个 SMTP 服务器，并提供邮箱地址和密码。系统将通过该邮箱发送验证链接。只有邮箱验证通过后，用户才能访问。
  > 注意：你可以随时关闭邮箱验证功能以允许开放注册，但不建议在生产环境中使用，因为任何人都可以使用他人的邮箱注册 😅
- 为了持久化用户会话，你需要提供 Redis URL（不适用于 Railway 应用）。如果你不配置 Redis 服务器，会话将在实例重启后丢失。为了提高授权请求/中间件的响应速度，我们建议将 Redis 部署在与 Authorizer 服务相同的基础设施或网络中。

## 测试

- 测试说明请查看 [这里](https://github.com/authorizerdev/authorizer/blob/main/.github/CONTRIBUTING.md#testing)

## 集成到你的网站中

以下示例演示了如何使用 `@authorizerdev/authorizer-js` 的 CDN 版本，几秒钟内即可为你的网站添加登录功能。你也可以使用 ES 模块版本的 `@authorizerdev/authorizer-js` 或特定框架的版本，如 `@authorizerdev/authorizer-react`

### 将以下代码复制到 `html` 文件中

> **注意：** 将下面代码中的 `AUTHORIZER_URL` 替换为你自己的 Authorizer 地址。你也可以根据需要修改登出按钮组件

```html
<script src="https://unpkg.com/@authorizerdev/authorizer-js/lib/authorizer.min.js"></script>

<script type="text/javascript">
	const authorizerRef = new authorizerdev.Authorizer({
		authorizerURL: `YOUR_AUTHORIZER_INSTANCE_URL`,
		redirectURL: window.location.origin,
		clientID: 'YOUR_CLIENT_ID', // 从 Authorizer 仪表盘获取 client id
	});

	// 根据你的应用选择按钮选择器
	const logoutBtn = document.getElementById('logout');
	logoutBtn.addEventListener('click', async function () {
		await authorizerRef.logout();
		window.location.href = '/';
	});

	async function onLoad() {
		const res = await authorizerRef.authorize({
			response_type: 'code',
			use_refresh_token: false,
		});
		if (res && res.access_token) {
			// 你可以在这里使用用户信息，例如：
			const user = await authorizerRef.getProfile({
				Authorization: `Bearer ${res.access_token}`,
			});
			const userSection = document.getElementById('user');
			const logoutSection = document.getElementById('logout-section');
			logoutSection.classList.toggle('hide');
			userSection.innerHTML = `欢迎，${user.email}`;
		}
	}
	onLoad();
</script>
```
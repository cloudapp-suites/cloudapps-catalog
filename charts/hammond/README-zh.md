<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=hammond)

</div>

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <!-- <a href="https://github.com/akhilrex/hammond">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a> -->

  <h1 align="center" style="margin-bottom:0">Hammond</h1>
  <p align="center">当前版本 - 2022.07.06</p>

  <p align="center">
    一个支持多用户的自托管车辆费用追踪系统。
    <br />
    <a href="https://github.com/akhilrex/hammond"><strong>查看文档 »</strong></a>
    <br />
    <br />
    <!-- <a href="https://github.com/akhilrex/hammond">查看演示</a>
    · -->
    <a href="https://github.com/akhilrex/hammond/issues">报告Bug</a>
    ·
    <a href="https://github.com/akhilrex/hammond/issues">请求功能</a>
        ·
    <a href="Screenshots.md">截图</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## 目录

- 关于本项目
  - 动机
  - 使用的技术
  - 功能
- 安装
- 贡献
- 许可证
- 路线图
- 联系

<!-- ABOUT THE PROJECT -->

## 关于本项目

Hammond 是一个自托管的车辆管理系统，用于追踪所有车辆的燃油及其他相关费用。它支持多个用户共享多辆车。它是已停止更新的 Clarkson 项目的逻辑继任者。

_开发者注：本项目正在积极开发中，意味着我会频繁发布更新。建议使用类似 [watchtower](https://github.com/containrrr/watchtower) 的工具，它会在新版本发布时自动更新你的容器，或者你也可以手动定期使用最新镜像重建容器。_

__同时欢迎查看我的其他自托管开源项目 - [Podgrab](https://github.com/akhilrex/podgrab) - 一个播客下载、归档管理与播放器。__

### 动机与开发者说明

我原本在寻找一个燃油费用追踪系统，偶然发现了 Clarkson。虽然它能满足大部分需求，但已经很久没有更新了。由于我之前的开源项目 [Podgrab](http://github.com/akhilrex/podgrab) 已经变得非常稳定，我有了一些空闲时间，最初的想法是为 Clarkson 项目做贡献。但很快我发现 Clarkson 的架构已经难以扩展，必须进行完全重写。因此我决定开发 Hammond —— Clarkson 的继任者。

当前版本的 Hammond 使用 Go 编写后端，Vue.js 编写前端。最初我曾考虑前后端使用相同的技术栈，以便用户和其他开发者更容易使用、部署和贡献代码。因此 Hammond 的第一个版本使用了 NestJS 后端，并集成了 GraphQL、Prisma 等现代功能。但最终我决定使用 Go 重写后端以减小容器体积。无论怎么优化，Node_modules 的体积总会给容器带来额外负担。我将所有工具部署在 Raspberry Pi 上，因此尽可能减小容器体积是合理的选择。

最初我也考虑过使用两个容器（一个用于后端，一个用于前端），以便独立维护和更新。但为了简化部署，我最终放弃了这个想法。尽管大多数自托管用户具备一定的技术能力，但一个可以“启动即忘”的单容器方案显然更受欢迎。

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/hammond/image/screenshot.jpg) 更多截图

### 使用的技术

- [Go](https://golang.org/)
- [Go-Gin](https://github.com/gin-gonic/gin)
- [GORM](https://github.com/go-gorm/gorm)
- [SQLite](https://www.sqlite.org/index.html)
- [VueJS](https://vuejs.org/)
- [Vuex](https://vuex.vuejs.org/)
- [Buefy](https://buefy.org/)

### 功能

- 从 Clarkson 迁移数据
- 添加/管理多辆车
- 添加/管理多个用户
- 追踪燃油及其他费用
- 多用户共享车辆
- 为车辆保存附件
- 快速录入（拍照收据或加油机界面以便后续录入）
- 车辆级和整体报表
- 从 Fuelly 导入数据（更多应用即将支持）

## 安装

运行 Hammond 最简单的方式是使用 Docker 容器。

### 使用 Docker

用于测试和评估的简单设置（不挂载卷）

```sh
  docker run -d -p 3000:3000 --name=hammond akhilrex/hammond
```

将本地卷挂载到容器

```sh
   docker run -d -p 3000:3000 --name=hammond -v "/host/path/to/assets:/assets" -v "/host/path/to/config:/config"  akhilrex/hammond
```

### 使用 Docker-Compose

修改提供的 [docker compose 文件](https://github.com/akhilrex/hammond/blob/master/docker-compose.yml)，更新卷和端口绑定后运行以下命令：

```yaml
version: '2.1'
services:
  hammond:
    image: akhilrex/hammond
    container_name: hammond
    volumes:
      - /path/to/config:/config
      - /path/to/data:/assets
    ports:
      - 3000:3000
    restart: unless-stopped
```

```sh
   docker-compose up -d
```

### 从源码构建 / Ubuntu 安装

虽然我个人认为使用 Docker 容器是使用 Hammond 的最佳方式，但社区中仍有许多人对 Docker 不太熟悉，希望在 Linux 服务器上原生运行。请参考以下链接获取从源码构建的指南：

从源码构建 / Ubuntu 安装指南

### 环境变量

| 名称 | 描述                                                                                                                | 默认值 |
| ---- | -------------------------------------------------------------------------------------------------------------------------- | ------- |
| JWT_SECRET | 用于签名 JWT token 的密钥。有一个默认值，但建议更改为其他值 | 一个需要更改的强密钥 | 
| PORT | 更改应用的内部端口。如果更改此值，可能还需要修改 Docker 配置 | (空) |

### 安装设置

首次安装后打开 Hammond 时，你可以选择从现有的 Clarkson 实例导入数据，或新建一个实例。

#### 从 Clarkson 迁移

你需要确保 Hammond 可以访问 Clarkson 的数据库。如果无法直接访问，你可以备份 Clarkson 数据库，并使用临时容器将其托管到 Hammond 可访问的位置。解决访问问题后，你需要输入 Clarkson 数据库的连接字符串，格式如下：

```
        user:pass@tcp(127.0.0.1:3306)/dbname?charset=utf8mb4&parseTime=True&loc=Local
```

你也可以在界面上测试连接。

注意：从 Clarkson 迁移的所有用户密码将被重置为 `hammond`

#### 新建设置

你需要提供你的姓名、邮箱和密码，以便创建管理员账户。

完成后你将被引导至登录页面。

请先访问设置页面，修改相关设置，然后再添加车辆和费用。

## 贡献

### 开发环境搭建

如果你想为项目做贡献，首先需要搭建开发环境。

Fork 并克隆项目。将项目下载到本地后，打开终端并进入 `server/` 目录。

在 `server/` 目录下运行命令 `go run main.go`。
经过一些初始化设置后，
服务将在 `3000` 端口监听。

接着，打开一个新的终端。进入 `ui/` 目录并运行 `npm install`。
这将安装前端所需的所有依赖。
命令执行完成后，运行 `npm run dev`。经过一些输出后，
前端将可以通过 `http://localhost:8080` 访问。

如果你直接进入登录界面，请尝试关闭页面并重新打开。
首次运行项目时，你应该会看到一个设置向导。

按照提示完成新安装的配置即可。

## 许可证

本项目采用 GPL-3.0 协议发布。详见 `LICENSE` 文件。

## 路线图

- [ ] 更多报表
- [ ] 车辆特定提醒（保养等）
- [ ] Windows/Linux/MacOS 原生安装包

<!-- CONTACT -->

## 联系

Akhil Gupta - [@akhilrex](https://twitter.com/akhilrex)

项目链接: [https://github.com/akhilrex/hammond](https://github.com/akhilrex/hammond)
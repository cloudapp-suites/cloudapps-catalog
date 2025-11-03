<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=f0e29f51-6bb9-4245-98fc-deaebcf47b92)

</div>

# pgweb

简单、基于网页、跨平台的 PostgreSQL 数据库浏览器。

[![Release](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/pgweb/image/pgweb.svg)](https://github.com/sosedoff/pgweb/releases)
[![Linux Build](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/pgweb/image/badge.svg)](https://github.com/sosedoff/pgweb/actions?query=branch%3Amain)
[![Go Report Card](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/pgweb/image/68747470733a2f2f676f7265706f7274636172642e636f6d2f62616467652f6769746875622e636f6d2f736f7365646f66662f7067776562.svg)](https://goreportcard.com/report/github.com/sosedoff/pgweb)
[![GoDoc](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/pgweb/image/68747470733a2f2f676f646f632e6f72672f6769746875622e636f6d2f736f7365646f66662f70677765623f7374617475732e737667.svg)](https://godoc.org/github.com/sosedoff/pgweb)
[![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/pgweb/image/pgweb.svg)](https://hub.docker.com/r/sosedoff/pgweb/)

## 概述

Pgweb 是一个基于网页的 PostgreSQL 数据库浏览器，使用 Go 编写，适用于 Mac、Linux 和 Windows 系统。以一个无依赖的单一可执行文件形式分发，使用非常简单，功能恰到好处。

[查看应用截图](https://github.com/sosedoff/pgweb/blob/main/SCREENS.md)

## 功能特性

- 跨平台：支持 Mac/Linux/Windows（64 位）。
- 简单安装（以单一可执行文件分发）。
- 无依赖。
- 支持 PostgreSQL 9.1 及以上版本。
- 支持原生 SSH 隧道。
- 支持多个数据库会话。
- 执行并分析自定义 SQL 查询。
- 表和查询结果可导出为 CSV/JSON/XML。
- 查询历史记录。
- 服务器书签功能。

更多细节请访问 [WIKI](https://github.com/sosedoff/pgweb/wiki)。

## 演示

访问 https://pgweb-demo.fly.dev/ 查看 Pgweb 的实际运行效果。

## 安装

- 支持的操作系统可下载 [预编译二进制文件](https://github.com/sosedoff/pgweb/releases)。
- 更多安装选项请参考 [这里](https://github.com/sosedoff/pgweb/wiki/Installation)。

## 使用方法

启动服务：

```
pgweb
```

也可以提供连接参数：

```
pgweb --host localhost --user myuser --db mydb
```

也支持使用连接 URL 方式：

```
pgweb --url postgres://user:password@host:port/database?sslmode=[mode]
pgweb --url "postgres:///database?host=/absolute/path/to/unix/socket/dir"
```

### 多数据库会话

要启用 Pgweb 中的多个数据库会话，请使用以下命令启动服务：

```
pgweb --sessions
```

或者设置环境变量：

```
PGWEB_SESSIONS=1 pgweb
```

## 测试

运行测试前，请确保你的 `localhost:5432` 接口上运行着 PostgreSQL 服务。同时，你需要拥有一个可在本地创建新数据库的 `postgres` 用户。测试期间请确保 Pgweb 服务没有运行。

执行测试套件：

```
make test
```

如果你本地安装了 Docker，也可以使用以下命令对所有支持的 PostgreSQL 版本运行测试：

```
make test-all
```

## 贡献

- Fork 本仓库。
- 创建新的功能分支用于新增功能或修复 Bug。
- 提交你的修改。
- 运行测试套件。
- 推送代码并发起 Pull Request。
- 使用 [issues](https://github.com/sosedoff/pgweb/issues) 提出任何问题。
- 查看 [wiki](https://github.com/sosedoff/pgweb/wiki) 获取额外文档。

## 许可证

采用 MIT 许可证（MIT）。详见 LICENSE 文件。
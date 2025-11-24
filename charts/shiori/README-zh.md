<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=shiori)

</div>


# Shiori

[![IC](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/shiori/image/badge.svg)](https://github.com/go-shiori/shiori/actions/workflows/push.yml)
[![Go Report Card](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/shiori/image/68747470733a2f2f676f7265706f7274636172642e636f6d2f62616467652f6769746875622e636f6d2f676f2d7368696f72692f7368696f7269.svg)](https://goreportcard.com/report/github.com/go-shiori/shiori)
[![#shiori-general:matrix.org](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/shiori/image/matrix-_23shiori-orange.svg)](https://matrix.to/#/#shiori:matrix.org)
[![Containers](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/shiori/image/v1.svg)](https://github.com/go-shiori/shiori/pkgs/container/shiori)

**请查看我们的最新 [公告](https://github.com/go-shiori/shiori/discussions/categories/announcements)**

Shiori 是一个使用 Go 语言编写的简单书签管理器，目标是作为 [Pocket][pocket] 的一个简易克隆。你可以将其作为命令行程序或 Web 应用程序使用。该应用程序以单个二进制文件的形式分发，这意味着它可以轻松安装和使用。

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/shiori/image/cover.png)

## 功能

- 基本的书签管理功能，如添加、编辑、删除和搜索。
- 支持从 Netscape 书签文件导入和导出书签。
- 支持从 Pocket 导入书签。
- 简洁明了的命令行界面。
- 简单美观的 Web 界面，适合不想使用命令行应用的用户。
- 由于采用单个二进制文件格式，便于携带。
- 支持使用 sqlite3、PostgreSQL、MariaDB 和 MySQL 作为数据库。
- 在可能的情况下，默认情况下 `shiori` 会解析网页的可读内容，并创建网页的离线存档。
- [BETA] 支持 Firefox 和 Chrome 的 [浏览器扩展][web-extension]。

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/shiori/image/comparison.png)

## 文档

所有文档可在 [docs 文件夹][documentation] 中找到。如果你认为其中存在不完整或错误的信息，请随时提交 Pull Request 进行修改。

## 许可证

Shiori 按照 [MIT 许可证][mit] 进行分发，这意味着你可以自由使用和修改它。不过，如果你对其进行了增强，请尽可能提交 Pull Request。

[documentation]: https://github.com/go-shiori/shiori/blob/master/docs/index.md
[mit]: https://choosealicense.com/licenses/mit/
[web-extension]: https://github.com/go-shiori/shiori-web-ext
[screenshot]: https://raw.githubusercontent.com/go-shiori/shiori/master/docs/assets/screenshots/cover.png
[mode-comparison]: https://raw.githubusercontent.com/go-shiori/shiori/master/docs/assets/screenshots/comparison.png
[pocket]: https://getpocket.com/
[256]: https://github.com/go-shiori/shiori/issues/256
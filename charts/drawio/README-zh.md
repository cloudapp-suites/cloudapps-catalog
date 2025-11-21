<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=drawio)

</div>

关于
-----

**drawio-desktop** 是一个基于 [Electron](https://electronjs.org/) 的图表绘制桌面应用程序，封装了 [核心 draw.io 编辑器](https://github.com/jgraph/drawio)。

可从 [发布页面](https://github.com/jgraph/drawio-desktop/releases) 下载已构建的二进制文件。

**我可以免费使用此应用程序吗？** 可以，在 Apache 2.0 许可证下。只要您不修改代码，并接受软件“按原样”提供，即可用于任何用途。

安全
--------

draw.io 桌面版设计为完全与互联网隔离，仅更新过程例外。该过程在启动时检查 github.com 是否有新版本，并从 GitHub 拥有的 AWS S3 存储桶下载更新。所有 JavaScript 文件均为本地包含，内容安全策略（CSP）禁止执行远程加载的 JavaScript。

绝不会将图表数据发送到外部，也不会发送任何有关应用程序使用情况的分析数据。界面的网页部分设有内容安全策略，确保即使意外情况下也无法发生外部传输。

安全性和应用隔离是 draw.io 桌面版的主要目标。如果您请求的功能涉及默认启用的外部连接，答案将是否定的。

支持
-------

支持服务在合理的商业约束范围内提供，但没有任何合同约束力。所有支持均通过本仓库进行。非付费用户不享有私有工单支持服务。

购买用于 Confluence 或 Jira 的 draw.io 不代表您有权获得 draw.io 桌面版的商业支持。

开发
----------

**draw.io** 是 **drawio-desktop** 的一个 git 子模块。要获取两者，您需要递归克隆：

`git clone --recursive https://github.com/jgraph/drawio-desktop.git`

运行步骤：
1. `npm install`（在本仓库的根目录下）
2. [内部使用] 若需在开发模式下开发/调试，请导出环境变量 `DRAWIO_ENV=dev`。
3. 在本仓库的根目录下运行 `npm start` 启动应用。如需调试，请使用 `npm start --enable-logging`。

注意：如果使用符号链接指向 drawio 仓库（而非子模块），请同时将 `drawio/src/main/webapp` 内的 `node_modules` 目录也创建符号链接。

发布流程：
1. 更新 draw.io 子模块并推送更改。推送至 origin 前请添加版本标签。
2. 等待构建完成（https://travis-ci.org/jgraph/drawio-desktop 和 https://ci.appveyor.com/project/davidjgraph/drawio-desktop）
3. 访问 https://github.com/jgraph/drawio-desktop/releases，编辑预发布版本。
4. 下载 Windows 安装程序和便携版，使用以下命令签名：`signtool sign /a /tr http://rfc3161timestamp.globalsign.com/advanced /td SHA256 c:/path/to/your/file.exe`
5. 重新上传已签名的文件，命名为 `draw.io-windows-installer-x.y.z.exe` 和 `draw.io-windows-no-installer-x.y.z.exe`
6. 添加发布说明
7. 发布版本

*注意*：在 Windows 版本中，当同时使用 x64 和 ia32 架构时，结果是一个包含两种架构的大文件。因此我们将其分开发布。

本地存储（Local Storage）和会话存储（Session Storage）保存在 AppData 文件夹中：

- macOS: `~/Library/Application Support/draw.io`
- Windows: `C:\Users\<USER-NAME>\AppData\Roaming\draw.io\`

不开放贡献
---------------------

draw.io 不接受外部贡献（除非维护者特别允许，这种情况极为罕见）。

该项目的复杂程度意味着即使是简单的更改也可能破坏大量其他组件。所需的测试工作量远超初看所想。如果我们收到 Pull Request，基本上也只能弃用并按照我们的方式重新实现。

我们感谢社区的参与、错误报告和功能请求。我们并不想显得不友好，但为了项目的长期可持续性，我们决定长期保持该项目不接受外部贡献。
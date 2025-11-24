<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=duplicati)

</div>


# Duplicati

English | **中文** | 日本語

[中文官网](https://duplicati.com)

在云存储服务上安全地存储加密备份！

[![Open Collective 上的支持者](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/duplicati/image/68747470733a2f2f6f70656e636f6c6c6563746976652e636f6d2f6475706c69636174692f6261636b6572732f62616467652e737667.svg)](#backers) [![Open Collective 上的赞助商](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/duplicati/image/68747470733a2f2f6f70656e636f6c6c6563746976652e636f6d2f6475706c69636174692f73706f6e736f72732f62616467652e737667.svg)](#sponsors) [![Travis-CI 上的构建状态](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/duplicati/image/duplicati.svg)](https://travis-ci.org/duplicati/duplicati)
[![覆盖率状态](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/duplicati/image/badge.svg)](https://coveralls.io/github/duplicati/duplicati?branch=HEAD)
[![许可](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/duplicati/image/duplicati.svg)](https://github.com/duplicati/duplicati/blob/master/LICENSE)

Duplicati 是一个免费、开源的备份客户端，可以安全地将加密、增量、压缩的备份存储在云存储服务和远程文件服务器上。它与以下服务兼容：

&nbsp;&nbsp; _亚马逊 S3、[IDrive e2](https://www.idrive.com/e2/duplicati "使用 Duplicati 与 IDrive e2")、[Backblaze (B2)](https://www.backblaze.com/blog/duplicati-backups-cloud-storage/ "Duplicati 与 Backblaze B2 云存储")、Box、Dropbox、FTP、Google Cloud 和 Drive、MEGA、Microsoft Azure 和 OneDrive、Rackspace Cloud Files、OpenStack Storage (Swift)、Storj DCS、SSH (SFTP)、WebDAV、阿里云对象存储(OSS)、腾讯云对象存储 (COS)、[以及更多！](https://docs.duplicati.com/backup-destinations/destination-overview)_

Duplicati 根据 MIT 许可证授权，并可用于 Windows、macOS 和 Linux。

# 下载

[点击此处下载最新的 Duplicati 测试版。](https://duplicati.com/download)

测试版将自动通知您更新，并允许您通过单击（或在终端中的命令）升级。
要获取更多[前沿版本，查看最新发布](https://github.com/duplicati/duplicati/releases)或在 UI 或命令行中选择另一个更新渠道。

所有发布版本都使用公钥 [3DAC703D](https://keys.openpgp.org/search?q=0xC20E90473DAC703D) 进行 GPG 签名。最新的签名文件和最新的 ASCII 签名文件也可以在 [Duplicati 下载页面](https://github.com/duplicati/duplicati/releases) 获取。

# 支持

Duplicati 由一个[活跃的社区支持，您可以通过我们的论坛与他们联系](https://forum.duplicati.com)。

我们有一个很棒的 [Duplicati 手册](https://docs.duplicati.com)，您也可以[为其做出贡献](https://github.com/duplicati/documentation)。

# 功能

- Duplicati 使用 AES-256 加密（或 GNU Privacy Guard）在上传之前加密所有数据。
- Duplicati 最初上传完整备份，之后存储较小的增量更新，以节省带宽和存储空间。
- 计划程序自动保持备份的最新状态。
- 集成的更新器会通知您新版本发布
- 加密的备份文件被传输到像 FTP、WebDAV、SSH (SFTP)、Amazon S3 等目标。
- Duplicati 允许备份文件夹、文档类型（如文档或图像）或自定义过滤规则。
- Duplicati 有易于使用的用户界面和命令行工具。
- Duplicati 可以使用 Windows 下的卷快照服务 (VSS) 或 Linux 下的逻辑卷管理器 (LVM) 对打开或锁定的文件进行正确备份。这允许 Duplicati 在 Outlook 运行时备份 Microsoft Outlook PST 文件。
- 过滤器、删除规则、传输和带宽选项等

# 为什么使用 Duplicati？

保护您的数据安全，将其存储在远处，定期更新您的备份！
这是一个简单的规则，但许多备份解决方案今天都无法做到。
但 Duplicati 做到了！

保护您的数据安全！网络上的坏人似乎到处寻找有趣的数据。但人们不想在任何地方看到他们的私人数据。Duplicati 提供强大的加密，确保您的数据对他人看起来像垃圾。通过精心选择的密码，您的备份文件在公共网络服务器上比您在家里的未加密文件更安全。

将您的备份存储在远处！当备份与其原始数据一起被摧毁时，最好的备份也是无用的。假设一场火灾摧毁了您的办公室 - 您的备份能幸存下来吗？Duplicati 将备份存储在各种远程文件服务器上，并支持增量备份，因此只需传输更改的部分。这使得使用远离原始数据的目的地变得容易。

定期备份！最糟糕的情况是，您的备份过时了，仅仅是因为有人忘了在正确的时间备份。Duplicati 有内置的计划程序，因此很容易拥有定期、最新的备份。此外，Duplicati 使用文件压缩，并能够存储增量备份以节省存储空间和带宽。

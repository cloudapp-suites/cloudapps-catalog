<p align="center">
  <img title="portainer" src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/portainer/image/portainer-github-banner.png' />
</p>

**Portainer 社区版（Community Edition）** 是一个轻量级的容器化应用服务交付平台，可用于管理 Docker、Swarm、Kubernetes 和 ACI 环境。它设计简洁，部署和使用都非常简单。该应用允许您通过智能图形界面（GUI）和/或功能丰富的 API 来管理所有编排器资源（包括容器、镜像、卷、网络等）。

Portainer 由单个容器组成，可在任何集群上运行。它可以作为 Linux 容器或 Windows 原生容器进行部署。

**Portainer 企业版（Business Edition）** 在开源版本的基础上构建，包含一系列高级功能和服务（如基于角色的访问控制 RBAC 和技术支持），专门满足企业用户的需求。

- [比较 Portainer CE 与 Portainer BE](https://portainer.io/products)
- [Take5 – 免费获取 5 个节点的 Portainer 企业版，永久使用](https://portainer.io/pricing/take5)
- [Portainer BE 安装指南](https://install.portainer.io)

## 演示

您可以试用公共演示实例：http://demo.portainer.io/（使用用户名 **admin** 和密码 **tryportainer** 登录）。

请注意，公共演示集群 **每 15 分钟重置一次**。

## 最新版本

Portainer CE 会定期更新，我们目标是每隔几个月发布一次更新。

**Portainer 的最新版本为 2.9.x**。Portainer 当前处于第 2 版本系列，第二个数字表示发布的月份。

## 快速开始

- [部署 Portainer](https://docs.portainer.io/v/ce-2.9/start/install)
- [文档](https://documentation.portainer.io)
- [参与项目贡献](https://documentation.portainer.io/contributing/instructions/)

## 功能特性

查看 [此表格](https://www.portainer.io/products) 了解 Portainer CE 的全部功能，并与 Portainer 企业版进行对比。

- [用于 Docker / Docker Swarm 的 Portainer CE](https://www.portainer.io/solutions/docker)
- [用于 Kubernetes 的 Portainer CE](https://www.portainer.io/solutions/kubernetes-ui)
- [用于 Azure ACI 的 Portainer CE](https://www.portainer.io/solutions/serverless-containers)

## 获取帮助

Portainer CE 是一个开源项目，由社区提供支持。您也可以在 portainer.io 购买受支持的企业版本。

了解更多关于 Portainer 社区支持渠道的信息，请点击 [此处](https://www.portainer.io/community_help)。

- 问题反馈：https://github.com/portainer/portainer/issues
- Slack（聊天）：[https://portainer.slack.com/](https://join.slack.com/t/portainer/shared_invite/zt-txh3ljab-52QHTyjCqbe5RibC2lcjKA)

您可以通过访问 community.portainer.io 加入 Portainer 社区，提前获知相关活动、内容及其他 Portainer 相关资讯。

## 报告漏洞与贡献代码

- 想要报告漏洞或提出新功能建议？请提交 [一个问题](https://github.com/portainer/portainer/issues/new)。
- 想要帮助我们开发 **_portainer_**？请遵循我们的 [贡献指南](https://documentation.portainer.io/contributing/instructions/) 在本地构建并提交 Pull Request。

## 安全

- 在 Portainer，我们支持对安全问题进行[负责任的披露](https://zh.wikipedia.org/wiki/负责任的披露)。如果您发现安全问题，请发送邮件至 <security@portainer.io> 进行报告。

## 加入我们

如果您是一名开发者，且能理解本仓库中的代码，我们非常期待您的加入！我们一直在寻找优秀的开发人员，无论是自由职业者还是全职员工。请将您的信息发送至 info@portainer.io，或访问我们的 [招聘页面](https://portainer.io/careers)。

## 隐私政策

**为了确保我们将开发重点放在正确的地方，我们需要了解哪些功能最常被使用。为此，我们使用托管在德国、完全符合 GDPR 规范的 [Matomo Analytics](https://matomo.org/) 工具来收集数据。**

当 Portainer 首次启动时，您可以选择 **禁用分析功能**。如果您未选择禁用，则我们会根据 [隐私政策](https://www.portainer.io/documentation/in-app-analytics-and-privacy-policy/) 收集匿名使用数据。**请注意**，我们不会在任何时间发送或存储任何个人身份信息，所收集的数据仅用于帮助我们改进 Portainer。

## 限制

Portainer 仅支持“当前版本减去两个版本”范围内的 Docker 版本。更早的版本可能可以运行，但不在支持范围内。

## 许可证

Portainer 采用 zlib 许可证发布。详见 [LICENSE](./LICENSE) 文件。

Portainer 还包含来自其他开源项目的代码。完整列表请参见 [ATTRIBUTIONS.md](./ATTRIBUTIONS.md) 文件。
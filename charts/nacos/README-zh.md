<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/Nacos_Logo.png" width="50%" syt height="50%" />

# Nacos：动态 *命*名与*配*置*服*务

[![Gitter](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/nacos.svg)](https://gitter.im/alibaba/nacos?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)   [![License](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/license-Apache_202-4EB1BA.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![Gitter](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/nacos.svg)](https://travis-ci.org/alibaba/nacos)
[![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/Nacos-检查您的贡献-orange.svg)](https://opensource.alibaba.com/contribution_leaderboard/details?projectValue=nacos)
[![Ask DeepWiki](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/badge.svg)](https://deepwiki.com/alibaba/nacos)

-------

## 它能做什么

Nacos（官网地址：[nacos.io](https://nacos.io)）是一个易于使用的平台，专为动态服务发现、配置管理和服务治理而设计。它帮助您轻松构建云原生应用和微服务架构。

在 Nacos 中，服务是核心要素。Nacos 支持几乎所有类型的服务，例如，[Dubbo/gRPC 服务](https://nacos.io/docs/latest/ecology/use-nacos-with-dubbo/)、[Spring Cloud RESTful 服务](https://nacos.io/docs/latest/ecology/use-nacos-with-spring-cloud/) 或 [Kubernetes 服务](https://nacos.io/docs/latest/quickstart/quick-start-kubernetes/)。

Nacos 提供四大核心功能：

* **服务发现与健康检查** 
    
    Nacos 让服务能够轻松地注册自身，并通过 DNS 或 HTTP 接口发现其他服务。Nacos 还提供对服务的实时健康检查，防止请求被发送到不健康的主机或服务实例。

* **动态配置管理**
  
    动态配置服务允许您以集中化和动态的方式，在所有环境中统一管理所有服务的配置。当配置更新时，Nacos 消除了重新部署应用程序和服务的需求，使配置变更更加高效和敏捷。

* **动态 DNS 服务**
    
    Nacos 支持权重路由，让您更轻松地在数据中心生产环境中实现中台负载均衡、灵活的路由策略、流量控制以及简单的 DNS 解析服务。它帮助您轻松实现基于 DNS 的服务发现，并避免应用程序与特定厂商的服务发现 API 耦合。

* **服务与元数据管理**
	
    Nacos 提供了一个易于使用的服务仪表板，帮助您管理服务的元数据、配置、Kubernetes DNS、服务健康状况以及指标统计信息。
 

## 快速开始
启动您的第一个项目非常简单。

### 在云端部署 Nacos

您可以将 Nacos 部署在云端，这是最简单且最便捷的启动方式。

请参考以下 [Nacos 部署指南](https://cn.aliyun.com/product/aliware/mse?spm=nacos-website.topbar.0.0.0)，获取更多信息并快速部署一个稳定且开箱即用的 Nacos 服务器。


### 使用提供的启动包启动

#### 步骤 1：下载二进制包

您可以从 [最新稳定版本](https://github.com/alibaba/nacos/releases) 下载安装包。

以 `nacos-server-1.0.0.zip` 版本为例：
```sh
unzip nacos-server-1.0.0.zip
cd nacos/bin 
``` 

#### 步骤 2：启动服务器

在 **Linux/Unix/Mac** 平台上，运行以下命令以单机模式启动服务器：
```sh
sh startup.sh -m standalone
```

在 **Windows** 平台上，运行以下命令以单机模式启动服务器。或者，您也可以双击 `startup.cmd` 文件来运行 NacosServer。
```
startup.cmd -m standalone
```

更多详细信息，请参见 [快速入门](https://nacos.io/docs/latest/quickstart/quick-start/)。

## 其他开源项目的快速入门：
* [使用 Nacos 命令行与控制台快速入门](https://nacos.io/docs/latest/quickstart/quick-start/)

* [与 Dubbo 集成的快速入门](https://nacos.io/docs/latest/ecology/use-nacos-with-dubbo/)

* [与 Spring Cloud 集成的快速入门](https://nacos.io/docs/latest/ecology/use-nacos-with-spring-cloud/)

* [与 Kubernetes 集成的快速入门](https://nacos.io/docs/latest/quickstart/quick-start-kubernetes/)


## 文档

您可以通过 [Nacos 官网](https://nacos.io/docs/latest/overview/) 查看完整的文档内容。

您还可以在线阅读这本电子书：[NACOS 架构与原理](https://nacos.io/docs/ebook/kbyo6n/)。

所有最新的公告和长期通知也可在 [GitHub notice issue](https://github.com/alibaba/nacos/labels/notice) 中找到。

## 贡献代码

欢迎各位开发者参与 Nacos 项目的贡献。请查阅 [CONTRIBUTING](./CONTRIBUTING.md) 了解如何为本项目做贡献。

### 我该如何参与贡献？

* 查看标记了 [`good first issue`](https://github.com/alibaba/nacos/issues?q=is%3Aopen+is%3Aissue+label%3A%22good+first+issue%22) 或 [`contribution welcome`](https://github.com/alibaba/nacos/issues?q=is%3Aopen+is%3Aissue+label%3A%22contribution+welcome%22) 标签的议题。
* 回答 [issues](https://github.com/alibaba/nacos/issues) 中的问题。
* 修复 [issues](https://github.com/alibaba/nacos/issues) 中报告的 Bug，并提交 Pull Request。
* 审核现有的 [Pull Request](https://github.com/alibaba/nacos/pulls)。
* 改进 [网站](https://github.com/nacos-group/nacos-group.github.io)，通常我们需要：
  * 博客文章
  * 文档翻译
  * Nacos 在企业系统中集成的应用案例。

## 其他相关项目仓库

* [nacos-spring-project](https://github.com/nacos-group/nacos-spring-project) 提供了与 Spring 框架的集成能力。
* [nacos-group](https://github.com/nacos-group) 是存放 Nacos 生态工具的仓库，如 SDK、同步工具等。
* [spring-cloud-alibaba](https://github.com/spring-cloud-incubator/spring-cloud-alibaba) 提供了基于阿里巴巴中间件（包含 Nacos）的一站式应用开发解决方案。

## 联系我们

* [Gitter](https://gitter.im/alibaba/nacos)：Nacos 社区即时通讯、协作与交流平台。
* [Twitter](https://twitter.com/nacos2)：关注 Twitter 上最新的 Nacos 动态。
* [Weibo](https://weibo.com/u/6574374908)：关注微博（中国版 Twitter）上最新的 Nacos 动态。
* [Nacos Segmentfault](https://segmentfault.com/t/nacos)：在 Segmentfault 获取最新通知并获得及时帮助。
* 邮件列表：
     * users-nacos@googlegroups.com：Nacos 用户通用讨论组。
     * dev-nacos@googlegroups.com：Nacos 开发者讨论组（涉及 API、功能设计等）。
     * commits-nacos@googlegroups.com：提交通知组，消息频率非常高。
* 加入钉钉群（群1：21708933 已满，群2：30438813 已满，群3：31222241 已满，群4：12810027056）。

### 钉钉群二维码

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/1750054497446-f834cba6-fa83-4421-b202-a0dc1d5cc28b.png)

### 钉钉 MCP 群二维码

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/1750054500395-e271cbe4-2dd8-4723-8cd0-bd8a731b812a.png)

### 微信群二维码

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/1750054421702-a7d1421a-ab8e-42da-bc59-01b5d287b290.png)

## 企业服务
如果您需要 Nacos 企业级技术支持，或购买云产品服务，可通过扫描下方钉钉群二维码加入讨论。您也可以直接通过阿里云提供的微服务引擎（MSE）进行开通和使用。
https://cn.aliyun.com/product/aliware/mse?spm=nacos-website.topbar.0.0.0

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/nacos/image/O1CN01RTfN7q1KUzX4TcH08___6000000001168-2-tps-864-814.png" width="500">


## 下载

- [Nacos 官方网站](https://nacos.io/download/nacos-server)
- [GitHub Release](https://github.com/alibaba/nacos/releases)

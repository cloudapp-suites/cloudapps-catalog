<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=higress)

</div>

<a name="readme-top"></a>
<h1 align="center">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/higress/image/O1CN01NwxLDd20nxfGBjxmZ___6000000006895-2-tps-960-290.png" alt="Higress" width="240" height="72.5">
  <br>
  AI 网关
</h1>
<h4 align="center"> AI 原生 API 网关 </h4>

<div align="center">
    
[![Build Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/higress/image/badge.svg)](https://github.com/alibaba/higress/actions)
[![license](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/higress/image/higress.svg)](https://www.apache.org/licenses/LICENSE-2.0.html)
[![discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/higress/image/1364956090566971515.svg)](https://discord.gg/tSbww9VDaM)

</div>

[**官方网站**](https://higress.ai/en/) &nbsp; |
&nbsp; [**文档**](https://higress.cn/en/docs/latest/overview/what-is-higress/) &nbsp; |
&nbsp; [**博客**](https://higress.cn/en/blog/) &nbsp; |
&nbsp; [**MCP 服务器快速入门**](https://higress.cn/en/ai/mcp-quick-start/) &nbsp; |
&nbsp; [**开发者指南**](https://higress.cn/en/docs/latest/dev/architecture/) &nbsp; |
&nbsp; [**Wasm 插件中心**](https://higress.cn/en/plugin/) &nbsp; |

<p>
   English | <a href="README_ZH.md">中文</a> | <a href="README_JP.md">日本語</a>
</p>

## 什么是 Higress？

Higress 是一个基于 Istio 和 Envoy 构建的云原生 API 网关，支持使用 Go/Rust/JS 编写的 Wasm 插件进行扩展。它提供了数十个开箱即用的通用插件，并自带可视化控制台（可在此处 [体验演示](http://demo.higress.io/)）。

### 核心应用场景

Higress 的 AI 网关能力支持国内外所有[主流模型提供商](https://github.com/alibaba/higress/tree/main/plugins/wasm-go/extensions/ai-proxy/provider)。同时，它通过插件机制支持托管 MCP（Model Context Protocol）服务器，使 AI Agent 能够轻松调用各类工具和服务。借助 [openapi-to-mcp 工具](https://github.com/higress-group/openapi-to-mcpserver)，你可以快速将 OpenAPI 规范转换为远程 MCP 服务器并进行托管。Higress 对 LLM API 和 MCP API 提供统一管理。

**🌟 立即访问 [https://mcp.higress.ai/](https://mcp.higress.ai/)**，亲身体验由 Higress 托管的远程 MCP 服务器：

![Higress MCP Server Platform](https://img.alicdn.com/imgextra/i2/O1CN01nmVa0a1aChgpyyWOX_!!6000000003294-0-tps-3430-1742.jpg)

### 企业应用

Higress 起源于阿里巴巴内部，旨在解决 Tengine 重启影响长连接服务以及 gRPC/Dubbo 负载均衡能力不足的问题。在阿里云内部，Higress 的 AI 网关能力支撑了通义百炼模型工场、机器学习 PAI 平台等核心 AI 应用及其他关键 AI 服务。阿里云基于 Higress 构建了其云原生 API 网关产品，为大量企业客户提供具备 99.99% 高可用保障的网关服务能力。

点击下方按钮安装企业版 Higress：

[![Deploy on AlibabaCloud](https://img.alicdn.com/imgextra/i1/O1CN01e6vwe71EWTHoZEcpK_!!6000000000359-55-tps-170-40.svg)](https://www.aliyun.com/product/apigateway?spm=higress-github.topbar.0.0.0)


如果你正在使用开源版 Higress 并希望获得企业级支持，可以联系项目维护者 johnlanni 的邮箱：**zty98751@alibaba-inc.com** 或社交媒体账号（微信 ID：**nomadao**，钉钉 ID：**chengtanzty**）。添加好友时请备注 **Higress** :)

## 概览

- [**快速开始**](#quick-start)    
- [**功能亮点**](#feature-showcase)
- [**应用场景**](#use-cases)
- [**核心优势**](#core-advantages)
- [**社区**](#community)

## 快速开始

Higress 可通过 Docker 快速启动，方便个人开发者本地学习或搭建简单站点：

```bash
# 创建工作目录
mkdir higress; cd higress
# 启动 higress，配置文件将写入工作目录
docker run -d --rm --name higress-ai -v ${PWD}:/data \
        -p 8001:8001 -p 8080:8080 -p 8443:8443  \
        higress-registry.cn-hangzhou.cr.aliyuncs.com/higress/all-in-one:latest
```

端口说明：

- 端口 8001：Higress UI 控制台入口
- 端口 8080：网关 HTTP 协议入口
- 端口 8443：网关 HTTPS 协议入口

> 所有 Higress Docker 镜像均使用 Higress 自有的镜像仓库，不受 Docker Hub 限流影响。
> 此外，镜像的提交与更新均受到安全扫描机制保护（由阿里云 ACR 提供），可用于生产环境，安全性高。
> 
> 如果从 `higress-registry.cn-hangzhou.cr.aliyuncs.com` 拉取镜像超时，可尝试替换为以下镜像加速源：
> 
> **东南亚**: `higress-registry.ap-southeast-7.cr.aliyuncs.com`

其他安装方式（如 K8s 下的 Helm 部署）请参考官方 [快速入门文档](https://higress.io/en-us/docs/user/quickstart)。

若在云端部署，建议使用 [企业版](https://www.aliyun.com/product/apigateway?spm=higress-github.topbar.0.0.0)


## 应用场景

- **MCP 服务器托管**:

  Higress 通过插件机制托管 MCP 服务器，使 AI Agent 能够轻松调用各种工具和服务。通过 [openapi-to-mcp 工具](https://github.com/higress-group/openapi-to-mcpserver)，你可以快速将 OpenAPI 规范转换为远程 MCP 服务器。

  ![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/higress/image/O1CN01wv8H4g1mS4MUzC1QC___6000000004952-2-tps-1764-597.png)

  使用 Higress 托管 MCP 服务器的核心优势：
  - 统一的身份认证与授权机制
  - 细粒度的速率限制，防止滥用
  - 完整的调用审计日志
  - 丰富的可观测性以监控性能
  - 通过 Higress 插件机制简化部署
  - 动态更新，无中断且不掉连接

     [了解更多...](https://higress.cn/en/ai/mcp-quick-start/?spm=36971b57.7beea2de.0.0.d85f20a94jsWGm)

- **AI 网关**:

  Higress 使用统一协议对接所有 LLM 模型提供商，具备 AI 可观测性、多模型负载均衡、Token 限流和缓存能力：

  ![](https://img.alicdn.com/imgextra/i2/O1CN01izmBNX1jbHT7lP3Yr_!!6000000004566-0-tps-1920-1080.jpg)

- **Kubernetes Ingress 控制器**:

  Higress 可作为功能丰富的 Ingress 控制器，兼容 K8s Nginx Ingress 控制器的多种注解。

  即将支持 [Gateway API](https://gateway-api.sigs.k8s.io/)，并支持从 Ingress API 平滑迁移至 Gateway API。

- **微服务网关**:

  Higress 可作为微服务网关，支持从 Nacos、ZooKeeper、Consul、Eureka 等多种服务注册中心发现微服务。

  深度集成 [Dubbo](https://github.com/apache/dubbo)、[Nacos](https://github.com/alibaba/nacos)、[Sentinel](https://github.com/alibaba/Sentinel) 等微服务技术栈。

- **安全网关**:

  Higress 可作为安全网关，支持 WAF 及多种认证策略，如 key-auth、hmac-auth、jwt-auth、basic-auth、oidc 等。

## 核心优势

- **生产级就绪**

  起源于阿里巴巴内部产品，经过两年以上生产环境验证，支持每秒数十万请求的大规模场景。

  彻底消除 Nginx 重载带来的流量抖动，配置变更毫秒级生效且对业务透明，特别适合 AI 等长连接业务场景。

- **流式处理**

  支持请求/响应体的完整流式处理，Wasm 插件可轻松自定义处理 SSE（Server-Sent Events）等流式协议。

  在 AI 等高带宽场景下，可显著降低内存开销。

- **易于扩展**

  提供丰富的官方插件库，覆盖 AI、流量治理、安全防护等常见功能，满足超过 90% 的业务场景需求。

  专注 Wasm 插件扩展，通过沙箱隔离保障内存安全，支持多种编程语言，插件版本可独立升级，实现网关逻辑的无损热更新。

- **安全易用**

  基于 Ingress API 和 Gateway API 标准，提供开箱即用的 UI 控制台、WAF 防护插件、IP/Cookie CC 防护插件。

  支持对接 Let's Encrypt 实现免费证书自动签发与续期，可在 K8s 外部部署，单条 Docker 命令即可启动，便于个人开发者使用。

## 社区

加入我们的 Discord 社区！在这里你可以与 Higress 开发者和其他热情用户交流互动。

[![discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/higress/image/1364956090566971515.svg)](https://discord.gg/tSbww9VDaM)


### 致谢

Higress 的诞生离不开社区中众多开源项目的宝贵贡献。我们特别感谢 Envoy 和 Istio 项目。

### 相关仓库

- Higress Console: https://github.com/higress-group/higress-console
- Higress Standalone: https://github.com/higress-group/higress-standalone

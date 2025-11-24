<div align="center">

 **EDAS provides one-click application deployment. Try it now!** 

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=himarket)

</div>


<a name="readme-top"></a>
<h1 align="center">
    <img width="406" height="96" alt="image" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/e0956234-1a97-42c6-852d-411fa02c3f01" />
  <br>
  HiMarket AI Open Platform
</h1>

[![Ask DeepWiki](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/badge.svg)](https://deepwiki.com/higress-group/himarket)

## What is HiMarket?

HiMarket is an out-of-the-box AI open platform solution that can be used to build enterprise-level AI capability markets and developer ecosystem centers.

It consists of three core components that perfectly match the needs of different roles within an enterprise:

1. AI Open Platform Admin Console (for Admins/Operators): Here, diverse AI capabilities such as underlying model services, MCP Servers, and Agents are easily packaged into standardized "AI Products" in the form of APIs, complete with comprehensive documentation and examples, and then published to the portal with one click.
2. AI Open Platform Portal (for Developers/Enterprise Internal Users): The portal is the "storefront"面向内外开发者. Developers can complete developer registration, create consumers, obtain credentials, browse and subscribe to AI products, conduct online testing, and clearly monitor their call status and costs.
3. AI Gateway: As a sub-project of the Higress community, the Higress AI Gateway carries capabilities such as authentication, security, flow control, protocol conversion, and observability for all AI calls.

## Usage Guide

The EDAS version has built-in demo consoles for Higress and Nacos for Himarket, enabling out-of-the-box usability.

Himarket default username/password: admin/admin
Higress default username/password: admin/admin
Nacos default username/password: nacos/nacos

### HiMarket Admin Console

#### Register Administrator

Visit `http://localhost:5174` and register an administrator account on first access.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/9e5c8350-5a82-489e-827c-c809f5a16d29)

#### Import Higress Instance

Select [Instance Management] - [Gateway Instance] - [Import Gateway Instance] - [Higress Gateway] to import the Higress gateway instance. Taking http://demo.higress.io as an example, both the username and password are admin.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/a4876341-595c-497f-bc59-51f36f5ed18a)

#### Create Portal

Select [Portal] - [Create Portal] to create a portal named himarket-demo.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/5d0b466f-d6d8-4f24-bb23-1133311911f8)

Click on the portal card to enter the portal configuration. Keep other configurations as default options. In [Setting] - [Domain Management] - [Bind Domain], bind a localhost domain for development self-testing. Other menus in Quick Start can be ignored for now. Here's a brief introduction to their functions:

- Published API Products. Manage API Products published in the portal.
- Developers. Manage portal Developers and Consumers associated with Developers.
- Settings.
  - Configure basic portal information.
  - Control whether Developer registration approval and API Product subscription are automatically approved in the portal.
  - Third-party login supported by the portal. Supports standard OIDC configurations such as Aliyun, Google, Github, etc.

#### Create API Product

Select [API Products] - [Create API Product] to create an API Product named demo-api.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/d3d1f0fe-124b-4397-855d-c704e64c1f32)

The initial state of the API Product is "To be configured" and requires operations such as Link API and publishing to the portal.

#### Link API

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/3431e4cc-683c-4cb5-9adb-e463bc540c1d)

Link an MCP service of the gateway. The data source comes from Higress MCP service management. API Config will also automatically synchronize configurations in Higress.

#### Usage Guide

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/bf4bd230-57ab-4b91-b309-1e0cbf88ef21)

Custom documentation information can be edited in the usage guide.

#### Publish to Portal

After the API Product is ready, you can choose to publish it to the specified portal.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/acccaf9e-baa5-46d4-a6c3-c2386845941e)

At this point, a Higress MCP Server has been successfully published to the portal.

### HiMarket Portal

The HiMarket portal is designed with multi-tenancy and identifies different portal instances through domain names.

The portal will have a default assigned domain name, but domain name resolution needs to be completed by the user. For example, if portal-68ac4564bdb292ee9261ff4a.api.portal.local is automatically assigned, it needs to be resolved to the corresponding IP of api-portal-frontend.

Since a localhost domain has already been additionally configured for the test portal, you can also directly access the frontend through localhost:5173.

#### Register Developer

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/6d071297-4f9e-4518-919a-34591c3a9fb4)

Since automatic approval was not enabled in the portal settings before, after registering an account, you need to wait for the administrator backend to approve the developer. After approval, you can log in to the frontend using the registered account.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/79d5abaa-3eaf-4d58-aa84-58aed5784050)

Visiting the MCP portal shows the recently published MCP Server

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/d50d0f61-d7b0-4a4b-93b0-7fe259950992)

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/7eabf879-f155-4fd1-b516-9072915a182f)

#### Create Consumer

In the design of the AI open platform, the consumer Developer represents a general user identity, and users need to hold corresponding credentials to apply for API Product subscription. The concept of credentials in the AI open platform is called Consumer. Developer and Consumer have a one-to-many relationship.

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/e98be911-1889-4aa7-973b-9f2222d14c3f)

After creating a consumer, you can apply for API Product subscription

![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/17d79309-3b58-42f1-8f96-163b6df23853)

In the portal's default configuration, subscription approval is disabled by default, meaning that after developers apply, they will be automatically approved.

#### Make Calls

With the consumer's credentials and configuring the connection address of the MCP Server in the portal, you can initiate calls to the MCP Server.

### Related Repositories

- Higress: https://github.com/alibaba/higress
- Higress Console: https://github.com/higress-group/higress-console

### Star History

[![Star History](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/himarket/image/starhistory.svg)](https://star-history.com/#higress-group/himarket&Date)

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
    <a href="#readme-top" style="text-decoration: none; color: #007bff; font-weight: bold;">
        ↑ Back to Top ↑
    </a>
</p>
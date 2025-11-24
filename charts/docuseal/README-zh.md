<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=docuseal)

</div>

<h1 align="center" style="border-bottom: none">
  <div>
    <a href="https://www.docuseal.com">
      <img  alt="DocuSeal" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/docuseal/image/c12cd051-81cd-4402-bc3a-92f2cfdc1b06.svg" width="80" />
      <br>
    </a>
    DocuSeal
  </div>
</h1>
<h3 align="center">
  开源文档填写与签署平台
</h3>
<p align="center">
  <a href="https://hub.docker.com/r/docuseal/docuseal">
    <img alt="Docker版本" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/docuseal/image/docuseal.svg">
  </a>
  <a href="https://discord.gg/qygYCDGck9">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/docuseal/image/1125112641170448454.svg"/>
  </a>
  <a href="https://twitter.com/intent/follow?screen_name=docusealco">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/docuseal/image/docusealco.svg" alt="关注 @docusealco" />
  </a>
</p>
<p>
DocuSeal 是一个开源平台，提供安全高效的数字文档签署和处理功能。您可以创建 PDF 表单，通过一个易于使用、移动端优化的网页工具，在任何设备上在线填写和签署。
</p>
<h2 align="center">
  <a href="https://demo.docuseal.tech">✨ 在线演示</a>
  <span>|</span>
  <a href="https://docuseal.com/sign_up">☁️ 云端试用</a>
</h2>

[![演示](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/docuseal/image/251969508-d8703ea3-361a-423f-8bfe-eff1bd9dbe14.jpg)](https://demo.docuseal.tech)

## 功能特性
- PDF 表单字段构建器（所见即所得）
- 支持 12 种字段类型（签名、日期、文件、复选框等）
- 每个文档支持多个签署人
- 通过 SMTP 发送自动化邮件
- 文件存储支持本地磁盘、AWS S3、Google Storage、Azure Cloud
- 自动 PDF 电子签名
- PDF 签名验证
- 用户管理
- 移动端优化
- 支持 6 种界面语言，签署支持 14 种语言
- 提供 API 和 Webhooks 集成
- 部署简单，几分钟内即可完成

## 专业功能
- 公司 Logo 和白标功能
- 用户角色管理
- 自动提醒功能
- 通过短信进行邀请和身份验证
- 条件字段和公式
- 支持通过 CSV、XLSX 表格批量发送
- 单点登录（SSO） / SAML
- 使用 HTML API 创建模板 ([指南](https://www.docuseal.com/guides/create-pdf-document-fillable-form-with-html-api))
- 使用 PDF 或 DOCX 文件和字段标签 API 创建模板 ([指南](https://www.docuseal.com/guides/use-embedded-text-field-tags-in-the-pdf-to-create-a-fillable-form))
- 嵌入式签署表单 ([React](https://github.com/docusealco/docuseal-react), [Vue](https://github.com/docusealco/docuseal-vue), [Angular](https://github.com/docusealco/docuseal-angular) 或 [JavaScript](https://www.docuseal.com/docs/embedded))
- 嵌入式文档表单构建器 ([React](https://github.com/docusealco/docuseal-react), [Vue](https://github.com/docusealco/docuseal-vue), [Angular](https://github.com/docusealco/docuseal-angular) 或 [JavaScript](https://www.docuseal.com/docs/embedded))
- [了解更多](https://www.docuseal.com/pricing)

#### Docker

```sh
docker run --name docuseal -p 3000:3000 -v.:/data docuseal/docuseal
```

默认情况下，DocuSeal 的 Docker 容器使用 SQLite 数据库存储数据和配置。您也可以通过设置 `DATABASE_URL` 环境变量来使用 PostgreSQL 或 MySQL 数据库。

#### Docker Compose

将 docker-compose.yml 下载到您的私有服务器：
```sh
curl https://raw.githubusercontent.com/docusealco/docuseal/master/docker-compose.yml > docker-compose.yml
```

使用 Docker Compose 在自定义域名下通过 HTTPS 运行应用（请确保您的 DNS 指向服务器，以便 Caddy 自动颁发 SSL 证书）：
```sh
sudo HOST=your-domain-name.com docker compose up
```

## 适用于企业
### 使用 DocuSeal 将文档签署无缝集成到您的 Web 或移动应用中

在 DocuSeal，我们拥有专业的技术和经验，能够帮助您将文档创建、填写、签署和处理无缝集成到您的产品中。我们专注于与多个行业合作，包括 **银行、医疗、交通、房地产、电子商务、KYC、CRM 以及其他需要批量文档签署的软件产品**。通过使用 DocuSeal，我们能够帮助您降低电子文档开发和处理的总体成本，同时确保符合本地电子文档相关法律的安全性和合规性。

[预约会议](https://www.docuseal.com/contact)

## 许可协议

本项目采用 AGPLv3 协议发布。更多信息请参阅 [LICENSE](https://github.com/docusealco/docuseal/blob/master/LICENSE)。
除非另有说明，所有文件均 © 2023 DocuSeal LLC。

## 工具

- [签名生成器](https://www.docuseal.com/online-signature)
- [在线签署文档](https://www.docuseal.com/sign-documents-online)
- [在线填写 PDF](https://www.docuseal.com/fill-pdf)
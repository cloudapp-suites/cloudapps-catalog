<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=reactive-resume)

</div>

![Reactive Resume](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/68747470733a2f2f692e696d6775722e636f6d2f464663346e795a2e6a7067)

![App Version](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/Reactive-Resume.svg)
[![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/reactive-resume.svg)](https://hub.docker.com/repository/docker/amruthpillai/reactive-resume)
[![GitHub Sponsors](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/AmruthPillai.svg)](https://github.com/sponsors/AmruthPillai)
[![Crowdin](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/localized.svg)](https://crowdin.com/project/reactive-resume)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/1173518977851473940.svg)](https://discord.gg/hzwkZbyvUW)

# Reactive Resume

一个免费、开源的简历制作工具，简化了创建、更新和分享简历的过程。

### [前往应用](https://rxresu.me/) | [文档](https://docs.rxresu.me/)

## 简介

Reactive Resume 是一个免费、开源的简历制作工具，它简化了创建、更新和分享简历的过程。平台完全无用户追踪和广告，隐私保护是我们的首要任务。该平台极其易于使用，如果您希望完全掌控自己的数据，也可以在不到 30 秒的时间内完成自托管部署。

它支持多种语言，并具备实时编辑、数十种模板、拖放式自定义、以及与 OpenAI 集成以提升写作能力等功能。

您可以将简历的个性化链接分享给潜在雇主，追踪简历的浏览量或下载量，并通过拖放方式自定义页面布局。平台还支持多种字体选项，并提供数十种模板供选择。当然，也提供了暗色模式，以获得更舒适的阅读体验。

立即使用 Reactive Resume 创建令人印象深刻的简历吧！

## 功能特性

- **永久免费**且开源
- 无遥测、用户追踪或广告
- 您可以在不到 30 秒内完成应用的自托管部署
- **支持多种语言** ([帮助添加或改进您的语言](https://translate.rxresu.me/))
- 使用您的电子邮件地址（或临时邮箱，没有问题）即可创建账户
- 还可以通过 GitHub 或 Google 账户登录，并支持设置双重验证以增强安全性
- 在一个账户下创建任意数量的简历，根据每个职位描述优化简历，以获得更高的 ATS 分数
- **自带 OpenAI API 密钥**，解锁一键优化写作、修正拼写语法或更改文本语气等功能
- 使用 ChatGPT 将简历翻译为任意语言并重新导入，以便更轻松地编辑
- 可轻松创建单页简历或多页简历
- 自定义颜色和布局，为简历添加个性化元素
- 通过拖放操作自由调整页面布局
- 如果现有模板不符合需求，可创建特定于您所在行业的自定义模块
- 记录仅您可见的简历专属备注
- 锁定简历以防止进一步修改（适用于主模板）
- **提供数十种模板**，从专业风格到现代风格应有尽有
- 支持使用标准化的 EuroPass 设计模板创建简历
- 支持将简历打印为 A4 或 Letter 页面格式
- 可使用 [Google Fonts](https://fonts.google.com/) 上提供的任意字体设计简历
- **将简历生成个性化链接**分享给公司或招聘人员，以便他们获取最新版本
- 可追踪公开简历的浏览量或下载量
- 使用当前最先进的、经过 GitHub 开源社区验证和同行评审的可靠技术构建
- **MIT 许可证**，只要注明原始作者，您可以自由使用代码
- 当然，还有暗色模式 🌓

## 使用的技术

- React (Vite)，用于前端
- NestJS，用于后端
- Postgres（主数据库）
- Prisma ORM，只需对代码进行少量修改即可切换至其他关系型数据库
- Minio（用于对象存储：存储头像、简历 PDF 和预览文件）
- Browserless（用于无头浏览器，生成 PDF 和预览）
- SMTP 服务器（用于发送密码重置邮件）
- GitHub/Google OAuth（用于快速用户认证）
- LinguiJS 和 Crowdin（用于翻译管理和本地化）

## 许可证

Reactive Resume 采用 MIT 许可证 进行打包和分发，允许商业用途、分发、修改和私人使用，前提是所有软件副本都包含相同的许可证和版权声明。

_来自社区，服务社区。_  
由 [Amruth Pillai](https://www.amruthpillai.com/) 创作的个人项目

<p>
  <a href="https://www.digitalocean.com/?utm_medium=opensource&utm_source=Reactive-Resume">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/reactive-resume/image/DO_Powered_by_Badge_blue.svg" width="200px">
  </a>
</p>
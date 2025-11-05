<br />

<p align="center">
  <a href="https://www.twenty.com">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/twenty/image/logo.svg" width="100px" alt="Twenty 标志" />
  </a>
</p>

<h2 align="center">#1 开源客户关系管理（CRM）系统</h2>

<p align="center"><a href="https://twenty.com">🌐 官网</a> · <a href="https://twenty.com/developers">📚 文档</a> · <a href="https://github.com/orgs/twentyhq/projects/1"><img src="./packages/twenty-website/public/images/readme/planner-icon.svg" width="12" height="12"/> 路线图 </a> · <a href="https://discord.gg/cx5n4Jzs57"><img src="./packages/twenty-website/public/images/readme/discord-icon.svg" width="12" height="12"/> Discord</a> · <a href="https://www.figma.com/file/xt8O9mFeLl46C5InWwoMrN/Twenty"><img src="./packages/twenty-website/public/images/readme/figma-icon.png"  width="12" height="12"/> Figma</a></p> 
<br />


<p align="center">
  <a href="https://www.twenty.com">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/github-cover-dark.png" />
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/github-cover-light.png" />
      <img src="./packages/twenty-website/public/images/readme/github-cover-light.png" alt="封面" />
    </picture>
  </a>
</p>


# 这个世界还需要另一个CRM吗？

我们开发 Twenty 是出于以下三个原因：

**CRM 太昂贵，用户被锁定其中。** 企业利用锁定的客户数据来抬高价格。这本不应该如此。

**需要一个全新的开始来打造更好的体验。** 我们可以从过去的错误中学习，借鉴 Notion、Airtable 或 Linear 等工具中的新 UX 模式，打造一个统一的体验。

**我们相信开源和社区的力量。** 数以百计的开发者已经在共同构建 Twenty。一旦我们支持插件功能，一个完整的生态系统将围绕它成长。

<br />

# 使用 Twenty 可以做什么

如果您有特定需求，请随时创建 issue 来标记。

以下是我们目前已实现的一些功能：

+ 使用筛选、排序、分组、看板视图和表格视图个性化布局
+ 自定义对象和字段
+ 通过自定义角色创建和管理权限
+ 通过触发器和动作自动化工作流程
+ 邮件、日历事件、文件等功能


## 使用筛选、排序、分组、看板视图和表格视图个性化布局

<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/views-dark.png" />
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/views-light.png" />
      <img src="./packages/twenty-website/public/images/readme/views-light.png" alt="看板视图" />
    </picture>
</p>

## 自定义对象和字段

<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/data-model-dark.png" />
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/data-model-light.png" />
      <img src="./packages/twenty-website/public/images/readme/data-model-light.png" alt="设置自定义对象" />
    </picture>
</p>

## 通过自定义角色创建和管理权限

<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/permissions-dark.png" />
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/permissions-light.png" />
      <img src="./packages/twenty-website/public/images/readme/permissions-light.png" alt="权限管理" />
    </picture>
</p>

## 通过触发器和动作自动化工作流程

<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/workflows-dark.png" />
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/workflows-light.png" />
      <img src="./packages/twenty-website/public/images/readme/workflows-light.png" alt="工作流程" />
    </picture>
</p>

## 邮件、日历事件、文件等功能

<p align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/plus-other-features-dark.png" />
      <source media="(prefers-color-scheme: light)" srcset="https://raw.githubusercontent.com/twentyhq/twenty/refs/heads/main/packages/twenty-website/public/images/readme/plus-other-features-light.png" />
      <img src="./packages/twenty-website/public/images/readme/plus-other-features-light.png" alt="其他功能" />
    </picture>
</p>

<br />

# 技术栈
- [TypeScript](https://www.typescriptlang.org/)
- [Nx](https://nx.dev/)
- [NestJS](https://nestjs.com/)，配合 [BullMQ](https://bullmq.io/)、[PostgreSQL](https://www.postgresql.org/)、[Redis](https://redis.io/)
- [React](https://reactjs.org/)，配合 [Recoil](https://recoiljs.org/)、[Emotion](https://emotion.sh/) 和 [Lingui](https://lingui.dev/)
迎 [贡献](https://github.com/twentyhq/twenty/contribute)！
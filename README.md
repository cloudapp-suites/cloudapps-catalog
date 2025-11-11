<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace)

</div>

# cloudapps-catalog
CloudApps application catalog, and can be deployed to EDAS quickly.

# 应用首页接入开源应用指南

## 1. 提交流程概述
贡献者需要向 GitHub 仓库 `https://github.com/cloudapp-suites/cloudapps-catalog` 提交一个 Pull Request (PR)。

PR 中必须包含以下核心文件和目录结构：

1. 【必填】</font>**应用目录**: 包含应用的 Chart 包文件。
2. 【必填 github_url字段】</font>`.cloudapp/metadata.json`: 包含应用的元数据信息。
3. 【非必填】`README.md`: 应用的英文介绍文档。
4. 【非必填】`README-zh.md`: 应用的中文介绍文档（可选，如不提供，系统将自动从github仓库获取）。

## 2. 应用目录结构示例
应用目录应遵循标准的 Helm Chart 结构，并包含一个额外的 `.cloudapp` 目录用于存放元数据。以下以 `dify` 应用为例：

```plain
dify/
├── .cloudapp/
│   └── metadata.json
├── Chart.yaml
├── README-zh.md
├── README.md
├── templates/
│   ├── _helpers.tpl
│   ├── api-deployment.yaml
│   ├── ... (其他 Kubernetes 资源模板)
│   └── worker-deployment.yaml
└── values.yaml
```

**关键文件说明：**

| 文件/目录 | 描述 |
| :--- | :--- |
| `dify/` | 应用的根目录，名称即为 Chart 包名。 |
| `.cloudapp/metadata.json` | **必须**，应用的详细元数据配置，用于目录展示和检索。 |
| `Chart.yaml` | **必须**，Helm Chart 的标准配置文件。 |
| `templates/` | **必须**，包含所有 Kubernetes 资源模板。 |
| `values.yaml` | **必须**，包含 Chart 的默认配置值。 |


## 3. `metadata.json` 元数据配置
`metadata.json` 文件是应用在 CloudApps 目录中展示的核心数据源。**github_url 字段必填，其他如不填写默认自动生成**

### 3.1. 字段要求
| 字段名 | 类型 | 是否必须 | 描述 | 备注 |
| :--- | :--- | :--- | :--- | :--- |
| `name` | String | **是** | Chart 包的名称，应与应用目录名一致。 | 示例: `"dify"` |
| `display_name` | String | **是** | 应用在目录页面上展示的名称。 | 示例: `"Dify"` |
| `description` | Object | **是** | 应用的简短描述，需提供中英文版本。 | 格式: `{"zh": "...", "en": "..."}` |
| `feature` | Object | **是** | 应用的产品优势和功能列表，需提供中英文版本。 | 格式: `{"zh": "## 产品优势:\n...", "en": "## Benefits:\n..."}` |
| `github_url` | String | **是** | **原始应用**的 GitHub 仓库地址。 | **用户必须提供**，系统不会自动生成。 |
| `readme` | Object | **是** | README 文件的路径映射。 | **固定格式**：`{"zh": "./README-zh.md", "en": "./README.md"}` |
| `pic_url` | String | **是** | 应用在目录中展示的图片 URL。 | 示例: `https://.../dify/image/GitHub_README_if.png` |
| `license` | String | **是** | 应用的许可证类型。 | 示例: `"MIT"` |
| `language` | String | **是** | 应用的主要技术栈或编程语言。 | 示例: `"Python"` |
| `official_address` | String | 否 | 应用的官方网站地址。 | 示例: `""` (可留空) |
| `product_document` | String | 否 | 应用的官方文档地址。 | 示例: `"https://docs.dify.ai"` |
| `tags` | Array | 否 | 应用的标签列表。 | **仅支持** `AI` 和 `Microservices` 两个值，不相关可留空。 |
| `categories` | Array | 否 | 应用的自定义分类标签列表。 | 可自定义，用于更细致的分类和检索。 |
| `alternative_products` | Array | 否 | 替代产品的展示名称。 | 仅已上线的应用会显示在目录页面上。 |


### 3.2. 示例
以下是 `dify` 应用的 `metadata.json` 示例（为简洁起见，`description` 和 `feature` 内容已省略）：

```json
{
  "name": "dify",
  "display_name": "Dify",
  "description": {
    "zh": "Dify 是一个用于构建大语言模型（LLM）应用的开源平台...",
    "en": "Dify is an open-source platform for building LLM-based applications..."
  },
  "feature": {
    "zh": "## 产品优势:\n\n- 提供可视化界面...",
    "en": "## Benefits:\n\n- Offers a visual interface..."
  },
  "github_url": "https://github.com/langgenius/dify",
  "readme": {
    "zh": "./README-zh.md",
    "en": "./README-zh.md"
  },
  "alternative_products": [
    "n8n",
    "AutoGen Studio",
    "Ragflow",
    "AnythingLLM",
    "Coze Studio"
  ],
  "tags": [
    "AI"
  ],
  "official_address": "",
  "product_document": "https://docs.dify.ai",
  "categories": [
    "Open Source",
    "Prompt Engineering",
    "Large Language Models",
    "Model Management",
    "LLM",
    "AI Applications",
    "AI Workflow",
    "Backend Service",
    "Agent Framework",
    "RAG Pipeline",
    "LLMOps",
    "Monitoring and Analysis",
    "RAG",
    "Prompt Orchestration",
    "Agent Capabilities",
    "AI Platform"
  ],
  "pic_url": "https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dify/image/GitHub_README_if.png",
  "license": "Custom License",
  "language": "Python"
}
```



注意：其中 description 和 feature 均为 markdown 格式

```json
"## 产品优势:\n\n- 轻量级且生产就绪的微服务，专为通知传递设计。\n- 支持无状态和有状态的通知配置。\n- 易于集成到现有系统，配置简单。\n- 内置网页界面，用于测试和管理配置。\n- 支持自定义插件和第三方 Webhook 字段映射。\n\n## 功能列表:\n\n- 通过统一 API 向 100 多个服务发送通知。\n- 使用唯一密钥存储和管理 Apprise 配置。\n- 利用标签选择性地通知服务组。\n- 支持附件，包括本地文件和远程 URL。\n- 提供 RESTful API 端点用于触发通知和管理配置。\n- Prometheus 指标端点用于可观测性。\n- 健康检查端点用于服务器状态监控。\n- 可通过环境变量进行高级配置。\n- 支持 Docker 和 Kubernetes 部署。\n- 第三方 Webhook 负载字段映射功能以提升兼容性。",
```

![](https://intranetproxy.alipay.com/skylark/lark/0/2025/png/142456461/1761200481302-7ac50d72-9f10-4e5c-8047-b807a319cd25.png)

## 4. 后续步骤（非贡献者执行）
1. **执行项目数据初始化流水线**: PR 合并后，将执行数据初始化流水线，将应用数据导入目录系统。
2. `values-adapter.yaml`** 文件**:
    - 该文件用于定义向用户展示的、可直接修改的配置项。
    - 目前该文件手动生成，以确保配置项的准确性和用户友好性。
3. 镜像上传指定仓库

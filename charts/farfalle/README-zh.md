<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=farfalle)

</div>


# Farfalle

开源的 AI 驱动搜索引擎（Perplexity 克隆）

支持运行本地大语言模型（**llama3**、**gemma**、**mistral**、**phi3**），通过 **LiteLLM** 使用自定义模型，或使用云模型（**Groq/Llama3**、**OpenAI/gpt4-o**）

https://github.com/rashadphz/farfalle/assets/20783686/9527a8c9-a13b-4e53-9cda-a3ab28d671b2

如有任何问题，请随时通过 [Twitter](https://twitter.com/rashadphz) 联系我，或 [创建一个 issue](https://github.com/rashadphz/farfalle/issues/new)。

## 💻 在线演示

[farfalle.dev](https://farfalle.dev/)（仅限云模型）

## 📖 概览

- 🛠️ 技术栈
- 🏃🏿‍♂️ 本地快速开始
- 🚀 部署

## 🛣️ 路线图

- [x] 添加通过 Ollama 使用本地 LLM 的支持
- [x] 配置 Docker 部署
- [x] 添加对 [searxng](https://github.com/searxng/searxng) 的支持，消除对外部依赖的需要
- [x] 创建预构建的 Docker 镜像
- [x] 添加通过 LiteLLM 使用自定义 LLM 的支持
- [x] 聊天历史记录
- [x] 专家搜索
- [ ] 与本地文件聊天

## 🛠️ 技术栈

- 前端: [Next.js](https://nextjs.org/)
- 后端: [FastAPI](https://fastapi.tiangolo.com/)
- 搜索 API: [SearXNG](https://github.com/searxng/searxng), [Tavily](https://tavily.com/), [Serper](https://serper.dev/), [Bing](https://www.microsoft.com/en-us/bing/apis/bing-web-search-api)
- 日志: [Logfire](https://pydantic.dev/logfire)
- 限流: [Redis](https://redis.io/)
- 组件: [shadcn/ui](https://ui.shadcn.com/)

## 功能

- 使用多个搜索服务进行搜索（Tavily, Searxng, Serper, Bing）
- 使用云模型回答问题（OpenAI/gpt4-o, OpenAI/gpt3.5-turbo, Groq/Llama3）
- 使用本地模型回答问题（llama3, mistral, gemma, phi3）
- 通过 [LiteLLM](https://litellm.vercel.app/docs/providers) 使用任意自定义模型回答问题
- 使用能够规划和执行搜索的智能代理以获得更好的搜索结果

## 🏃🏿‍♂️ 本地快速开始

### 前提条件

- [Docker](https://docs.docker.com/get-docker/)
- [Ollama](https://ollama.com/download)（如果运行本地模型）
  - 下载任意支持的模型：**llama3**, **mistral**, **gemma**, **phi3**
  - 启动 ollama 服务：`ollama serve`

### 获取 API 密钥

- [Tavily (可选)](https://app.tavily.com/home)
- [Serper (可选)](https://serper.dev/dashboard)
- [OpenAI (可选)](https://platform.openai.com/api-keys)
- [Bing (可选)](https://www.microsoft.com/en-us/bing/apis/bing-web-search-api)
- [Groq (可选)](https://console.groq.com/keys)

### 快速开始：
```
git clone https://github.com/rashadphz/farfalle.git
cd farfalle && cp .env-template .env
```
修改 `.env` 文件并填入你的 API 密钥（可选，仅在不使用 Ollama 时需要）

启动应用：
```
docker-compose -f docker-compose.dev.yaml up -d
```

等待应用启动后访问 [http://localhost:3000](http://localhost:3000)

如需自定义配置说明，请查看 custom-setup-instructions.md

## 将 Farfalle 用作默认搜索引擎

要将 Farfalle 设为默认搜索引擎，请按照以下步骤操作：
1. 打开浏览器设置
2. 进入“搜索引擎”设置
3. 使用以下 URL 创建一个新的搜索引擎条目：http://localhost:3000/?q=%s
4. 添加该搜索引擎
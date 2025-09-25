<a name="readme-top"></a>

<p align="center">
  <a href="https://anythingllm.com"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/anything-llm/image/wordmark.png" alt="AnythingLLM logo"></a>
</p>

<p align="center">
    <b>AnythingLLM:</b> The all-in-one AI app you were looking for.<br />
    Chat with your docs, use AI Agents, hyper-configurable, multi-user, & no frustrating setup required.
</p>

<p align="center">
  <a href="https://discord.gg/6UyHPeGZAC" target="_blank">
      <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/anything-llm/image/chat-mintplex_labs-blue.svg" alt="Discord">
  </a> |
  <a href="https://github.com/Mintplex-Labs/anything-llm/blob/master/LICENSE" target="_blank">
      <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/anything-llm/image/v1.svg" alt="License">
  </a> |
  <a href="https://docs.anythingllm.com" target="_blank">
    Docs
  </a> |
   <a href="https://my.mintplexlabs.com/aio-checkout?product=anythingllm" target="_blank">
    Hosted Instance
  </a>
</p>

<p align="center">
  <b>English</b> · <a href='./locales/README.zh-CN.md'>简体中文</a> · <a href='./locales/README.ja-JP.md'>日本語</a>
</p>

<p align="center">
👉 AnythingLLM for desktop (Mac, Windows, & Linux)! <a href="https://anythingllm.com/download" target="_blank"> Download Now</a>
</p>

A full-stack application that enables you to turn any document, resource, or piece of content into context that any LLM can use as a reference during chatting. This application allows you to pick and choose which LLM or Vector Database you want to use as well as supporting multi-user management and permissions.

![Chatting](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/anything-llm/image/demo.gif)

<details>
<summary><kbd>Watch the demo!</kbd></summary>

![Watch the video](https://youtu.be/f95rGD9trL0)

</details>

### Product Overview

AnythingLLM is a full-stack application where you can use commercial off-the-shelf LLMs or popular open source LLMs and vectorDB solutions to build a private ChatGPT with no compromises that you can run locally as well as host remotely and be able to chat intelligently with any documents you provide it.

AnythingLLM divides your documents into objects called `workspaces`. A Workspace functions a lot like a thread, but with the addition of containerization of your documents. Workspaces can share documents, but they do not talk to each other so you can keep your context for each workspace clean.

## Cool features of AnythingLLM

- 🆕 [**Full MCP-compatibility**](https://docs.anythingllm.com/mcp-compatibility/overview)
- 🆕 [**No-code AI Agent builder**](https://docs.anythingllm.com/agent-flows/overview)
- 🖼️ **Multi-modal support (both closed and open-source LLMs!)**
- [**Custom AI Agents**](https://docs.anythingllm.com/agent/custom/introduction)
- 👤 Multi-user instance support and permissioning _Docker version only_
- 🦾 Agents inside your workspace (browse the web, etc)
- 💬 [Custom Embeddable Chat widget for your website](https://github.com/Mintplex-Labs/anythingllm-embed/blob/main/README.md) _Docker version only_
- 📖 Multiple document type support (PDF, TXT, DOCX, etc)
- Simple chat UI with Drag-n-Drop functionality and clear citations.
- 100% Cloud deployment ready.
- Works with all popular closed and open-source LLM providers.
- Built-in cost & time-saving measures for managing very large documents compared to any other chat UI.
- Full Developer API for custom integrations!
- Much more...install and find out!

### Supported LLMs, Embedder Models, Speech models, and Vector Databases

**Large Language Models (LLMs):**

- Any open-source llama.cpp compatible model
- [OpenAI](https://openai.com)
- [OpenAI (Generic)](https://openai.com)
- [Azure OpenAI](https://azure.microsoft.com/en-us/products/ai-services/openai-service)
- [AWS Bedrock](https://aws.amazon.com/bedrock/)
- [Anthropic](https://www.anthropic.com/)
- [NVIDIA NIM (chat models)](https://build.nvidia.com/explore/discover)
- [Google Gemini Pro](https://ai.google.dev/)
- [Hugging Face (chat models)](https://huggingface.co/)
- [Ollama (chat models)](https://ollama.ai/)
- [LM Studio (all models)](https://lmstudio.ai)
- [LocalAI (all models)](https://localai.io/)
- [Together AI (chat models)](https://www.together.ai/)
- [Fireworks AI  (chat models)](https://fireworks.ai/)
- [Perplexity (chat models)](https://www.perplexity.ai/)
- [OpenRouter (chat models)](https://openrouter.ai/)
- [DeepSeek (chat models)](https://deepseek.com/)
- [Mistral](https://mistral.ai/)
- [Groq](https://groq.com/)
- [Cohere](https://cohere.com/)
- [KoboldCPP](https://github.com/LostRuins/koboldcpp)
- [LiteLLM](https://github.com/BerriAI/litellm)
- [Text Generation Web UI](https://github.com/oobabooga/text-generation-webui)
- [Apipie](https://apipie.ai/)
- [xAI](https://x.ai/)
- [Novita AI (chat models)](https://novita.ai/model-api/product/llm-api?utm_source=github_anything-llm&utm_medium=github_readme&utm_campaign=link)
- [PPIO](https://ppinfra.com?utm_source=github_anything-llm)
- [Moonshot AI](https://www.moonshot.ai/)

**Embedder models:**

- AnythingLLM Native Embedder (default)
- [OpenAI](https://openai.com)
- [Azure OpenAI](https://azure.microsoft.com/en-us/products/ai-services/openai-service)
- [LocalAI (all)](https://localai.io/)
- [Ollama (all)](https://ollama.ai/)
- [LM Studio (all)](https://lmstudio.ai)
- [Cohere](https://cohere.com/)

**Audio Transcription models:**

- [AnythingLLM Built-in](https://github.com/Mintplex-Labs/anything-llm/tree/master/server/storage/models#audiovideo-transcription) (default)
- [OpenAI](https://openai.com/)

**TTS (text-to-speech) support:**

- Native Browser Built-in (default)
- [PiperTTSLocal - runs in browser](https://github.com/rhasspy/piper)
- [OpenAI TTS](https://platform.openai.com/docs/guides/text-to-speech/voice-options)
- [ElevenLabs](https://elevenlabs.io/)
- Any OpenAI Compatible TTS service.

**STT (speech-to-text) support:**

- Native Browser Built-in (default)

**Vector Databases:**

- [LanceDB](https://github.com/lancedb/lancedb) (default)
- [PGVector](https://github.com/pgvector/pgvector)
- [Astra DB](https://www.datastax.com/products/datastax-astra)
- [Pinecone](https://pinecone.io)
- [Chroma](https://trychroma.com)
- [Weaviate](https://weaviate.io)
- [Qdrant](https://qdrant.tech)
- [Milvus](https://milvus.io)
- [Zilliz](https://zilliz.com)

### Technical Overview

This monorepo consists of six main sections:

- `frontend`: A viteJS + React frontend that you can run to easily create and manage all your content the LLM can use.
- `server`: A NodeJS express server to handle all the interactions and do all the vectorDB management and LLM interactions.
- `collector`: NodeJS express server that processes and parses documents from the UI.
- `docker`: Docker instructions and build process + information for building from source.
- `embed`: Submodule for generation & creation of the [web embed widget](https://github.com/Mintplex-Labs/anythingllm-embed).
- `browser-extension`: Submodule for the [chrome browser extension](https://github.com/Mintplex-Labs/anythingllm-extension).

## How to setup for development

- `yarn setup` To fill in the required `.env` files you'll need in each of the application sections (from root of repo).
  - Go fill those out before proceeding. Ensure `server/.env.development` is filled or else things won't work right.
- `yarn dev:server` To boot the server locally (from root of repo).
- `yarn dev:frontend` To boot the frontend locally (from root of repo).
- `yarn dev:collector` To then run the document collector (from root of repo).

Learn about documents

Learn about vector caching

## External Apps & Integrations

_These are apps that are not maintained by Mintplex Labs, but are compatible with AnythingLLM. A listing here is not an endorsement._

- [Midori AI Subsystem Manager](https://io.midori-ai.xyz/subsystem/anythingllm/) - A streamlined and efficient way to deploy AI systems using Docker container technology.
- [Coolify](https://coolify.io/docs/services/anythingllm/) - Deploy AnythingLLM with a single click.
- [GPTLocalhost for Microsoft Word](https://gptlocalhost.com/demo/) - A local Word Add-in for you to use AnythingLLM in Microsoft Word.

## Telemetry & Privacy

AnythingLLM by Mintplex Labs Inc contains a telemetry feature that collects anonymous usage information.

<details>
<summary><kbd>More about Telemetry & Privacy for AnythingLLM</kbd></summary>

### Why?

We use this information to help us understand how AnythingLLM is used, to help us prioritize work on new features and bug fixes, and to help us improve AnythingLLM's performance and stability.

### Opting out

Set `DISABLE_TELEMETRY` in your server or docker .env settings to "true" to opt out of telemetry. You can also do this in-app by going to the sidebar > `Privacy` and disabling telemetry.

### What do you explicitly track?

We will only track usage details that help us make product and roadmap decisions, specifically:

- Type of your installation (Docker or Desktop)

- When a document is added or removed. No information _about_ the document. Just that the event occurred. This gives us an idea of use.

- Type of vector database in use. This helps us prioritize changes when updates arrive for that provider.

- Type of LLM provider & model tag in use. This helps us prioritize changes when updates arrive for that provider or model, or combination thereof. eg: reasoning vs regular, multi-modal models, etc.

- When a chat is sent. This is the most regular "event" and gives us an idea of the daily-activity of this project across all installations. Again, only the **event** is sent - we have no information on the nature or content of the chat itself.

You can verify these claims by finding all locations `Telemetry.sendTelemetry` is called. Additionally these events are written to the output log so you can also see the specific data which was sent - if enabled. **No IP or other identifying information is collected**. The Telemetry provider is [PostHog](https://posthog.com/) - an open-source telemetry collection service.

We take privacy very seriously, and we hope you understand that we want to learn how our tool is used, without using annoying popup surveys, so we can build something worth using. The anonymous data is _never_ shared with third parties, ever.

[View all telemetry events in source code](https://github.com/search?q=repo%3AMintplex-Labs%2Fanything-llm%20.sendTelemetry\(&type=code)

</details>

## 👋 Contributing

- Contributing to AnythingLLM - How to contribute to AnythingLLM.

## 🔗 More Products

- **[VectorAdmin][vector-admin]:** An all-in-one GUI & tool-suite for managing vector databases.
- **[OpenAI Assistant Swarm][assistant-swarm]:** Turn your entire library of OpenAI assistants into one single army commanded from a single agent.

<div align="right">

[![][back-to-top]](#readme-top)

</div>

---

Copyright © 2025 [Mintplex Labs][profile-link]. <br />
This project is MIT licensed.

<!-- LINK GROUP -->

[back-to-top]: https://img.shields.io/badge/-BACK_TO_TOP-222628?style=flat-square
[profile-link]: https://github.com/mintplex-labs
[vector-admin]: https://github.com/mintplex-labs/vector-admin
[assistant-swarm]: https://github.com/Mintplex-Labs/openai-assistant-swarm
[docker-btn]: ./images/deployBtns/docker.png
[docker-deploy]: ./docker/HOW_TO_USE_DOCKER.md
[aws-btn]: ./images/deployBtns/aws.png
[aws-deploy]: ./cloud-deployments/aws/cloudformation/DEPLOY.md
[gcp-btn]: https://deploy.cloud.run/button.svg
[gcp-deploy]: ./cloud-deployments/gcp/deployment/DEPLOY.md
[do-btn]: https://www.deploytodo.com/do-btn-blue.svg
[do-deploy]: ./cloud-deployments/digitalocean/terraform/DEPLOY.md
[render-btn]: https://render.com/images/deploy-to-render-button.svg
[render-deploy]: https://render.com/deploy?repo=https://github.com/Mintplex-Labs/anything-llm&branch=render
[render-btn]: https://render.com/images/deploy-to-render-button.svg
[render-deploy]: https://render.com/deploy?repo=https://github.com/Mintplex-Labs/anything-llm&branch=render
[railway-btn]: https://railway.app/button.svg
[railway-deploy]: https://railway.app/template/HNSCS1?referralCode=WFgJkn
[repocloud-btn]: https://d16t0pc4846x52.cloudfront.net/deploylobe.svg
[repocloud-deploy]: https://repocloud.io/details/?app_id=276
[elestio-btn]: https://elest.io/images/logos/deploy-to-elestio-btn.png
[elestio-deploy]: https://elest.io/open-source/anythingllm

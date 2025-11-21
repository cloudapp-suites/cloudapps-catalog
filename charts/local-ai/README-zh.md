<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=local-ai)

</div>

<h1 align="center">
  <br>
  <img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/logo.png"> <br>
<br>
</h1>

<p align="center">
<a href='https://github.com/go-skynet/LocalAI/releases'>
<img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/LocalAI.svg'>
</a>
</p>

<p align="center">
<a href="https://hub.docker.com/r/localai/localai" target="blank">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/dockerhub-images-important.svg" alt="LocalAI Docker hub"/>
</a>
<a href="https://quay.io/repository/go-skynet/local-ai?tab=tags&tag=latest" target="blank">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/quay.io-images-important.svg" alt="LocalAI Quay.io"/>
</a>
</p>

<p align="center">
<a href="https://twitter.com/LocalAI_API" target="blank">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/X-_23000000.svg" alt="Follow LocalAI_API"/>
</a>
</p>
> :bulb: 获取帮助 - [❓常见问题](https://localai.io/faq/) [💭讨论区](https://github.com/go-skynet/LocalAI/discussions) [:speech_balloon: Discord](https://discord.gg/uJAeKSAGDy) [:book: 文档网站](https://localai.io/)
>
> [💻 快速开始](https://localai.io/basics/getting_started/) [🖼️ 模型](https://models.localai.io/) [🚀 路线图](https://github.com/mudler/LocalAI/issues?q=is%3Aissue+is%3Aopen+label%3Aroadmap) [🛫 示例](https://github.com/mudler/LocalAI-examples) 在以下平台尝试：
[![Telegram](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/Telegram-2CA5E0.svg)](https://t.me/localaiofficial_bot)

**LocalAI** 是免费的开源 OpenAI 替代方案。LocalAI 作为与 OpenAI（Elevenlabs、Anthropic 等）API 规范兼容的即插即用 REST API，用于本地 AI 推理。它允许你在消费级硬件上通过本地或本地部署运行大语言模型（LLM）、生成图像、音频（以及更多功能），支持多种模型家族，无需 GPU。该项目由 [Ettore Di Giacinto](https://github.com/mudler) 创建并维护。

## 📚🆕 Local Stack 家族

🆕 LocalAI 现已成为一套综合性 AI 工具套件的一部分，各工具可协同工作：

<table>
  <tr>
    <td width="50%" valign="top">
      <a href="https://github.com/mudler/LocalAGI">
        <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/logo_2.png" width="300" alt="LocalAGI Logo">
      </a>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/mudler/LocalAGI">LocalAGI</a></h3>
      <p>一个强大的本地 AI 代理管理平台，可作为 OpenAI 响应 API 的即插即用替代品，并增强了代理功能。</p>
    </td>
  </tr>
  <tr>
    <td width="50%" valign="top">
      <a href="https://github.com/mudler/LocalRecall">
        <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/localrecall_horizontal.png" width="300" alt="LocalRecall Logo">
      </a>
    </td>
    <td width="50%" valign="top">
      <h3><a href="https://github.com/mudler/LocalRecall">LocalRecall</a></h3>
      <p>一个 RESTful API 和知识库管理系统，为 AI 代理提供持久化记忆和存储能力。</p>
    </td>
  </tr>
</table>

## 截图


| 对话界面 | 生成音频 |
| --- | --- |
| ![Screenshot 2025-03-31 at 12-01-36 LocalAI - Talk](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_tts.png) | ![Screenshot 2025-03-31 at 12-01-29 LocalAI - Generate audio with voice-en-us-ryan-low](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_tts.png) |

| 模型概览 | 生成图像 |
| --- | --- |
| ![Screenshot 2025-03-31 at 12-01-20 LocalAI - Models](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_gallery.png) | ![Screenshot 2025-03-31 at 12-31-41 LocalAI - Generate images with flux 1-dev](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_image.png) |

| 聊天界面 | 主页 |
| --- | --- |
| ![Screenshot 2025-03-31 at 11-57-44 LocalAI - Chat with localai-functioncall-qwen2 5-7b-v0 5](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_chat.png) | ![Screenshot 2025-03-31 at 11-57-23 LocalAI API - c2a39e3 (c2a39e3639227cfd94ffffe9f5691239acc275a8)](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_home.png) |

| 登录 | Swarm |
| --- | --- |
|![Screenshot 2025-03-31 at 12-09-59 ](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_login.png) | ![Screenshot 2025-03-31 at 12-10-39 LocalAI - P2P dashboard](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/local-ai/image/screenshot_p2p.png) |

## 📰 最新项目动态

- 2025年10月： 🔌 新增 [模型上下文协议 (MCP)](https://localai.io/docs/features/mcp/) 支持，实现与外部工具的代理功能
- 2025年9月：推出适用于 MacOS 和 Linux 的新启动器应用，扩展支持 Mac 和 Nvidia L4T 设备的多个后端。新增模型：MLX-Audio、WAN 2.2。WebUI 改进，基于 Python 的后端现在自带便携式 Python 环境。
- 2025年8月：MLX、MLX-VLM、Diffusers 和 llama.cpp 现在支持 Mac M1/M2/M3+ 芯片（在模型库中标注 `development` 后缀）： https://github.com/mudler/LocalAI/pull/6049 https://github.com/mudler/LocalAI/pull/6119 https://github.com/mudler/LocalAI/pull/6121 https://github.com/mudler/LocalAI/pull/6060
- 2025年7-8月： 🔍 新增 [目标检测](https://localai.io/features/object-detection/) 功能，集成 [rf-detr](https://github.com/roboflow/rf-detr)
- 2025年7月：所有后端已迁移出主二进制文件。LocalAI 现在更轻量、小巧，并会自动下载运行模型所需的后端。[阅读发布说明](https://github.com/mudler/LocalAI/releases/tag/v3.2.0)
- 2025年6月：新增 [后端管理](https://github.com/mudler/LocalAI/pull/5607) 功能。注意：extras 镜像将在下一个版本中弃用！请阅读 [后端管理 PR](https://github.com/mudler/LocalAI/pull/5607)。
- 2025年5月：llama.cpp 后端新增 [音频输入](https://github.com/mudler/LocalAI/pull/5466) 和 [重排序](https://github.com/mudler/LocalAI/pull/5396) 功能，[实时 API](https://github.com/mudler/LocalAI/pull/5392)，支持 Gemma、SmollVLM 及更多多模态模型（可在模型库中获取）。
- 2025年5月：重要更新：镜像名称变更 [参见发布说明](https://github.com/mudler/LocalAI/releases/tag/v2.29.0)
- 2025年4月：品牌重塑，WebUI 增强
- 2025年4月：[LocalAGI](https://github.com/mudler/LocalAGI) 和 [LocalRecall](https://github.com/mudler/LocalRecall) 正式加入 LocalAI 家族套件
- 2025年4月：WebUI 全面改版，AIO 镜像更新
- 2025年2月：后端清理，重大变更，新增后端（kokoro、OutelTTS、faster-whisper），Nvidia L4T 镜像
- 2025年1月：发布 LocalAI 模型：https://huggingface.co/mudler/LocalAI-functioncall-phi-4-v0.3，diffusers 支持 SANA：https://github.com/mudler/LocalAI/pull/4603
- 2024年12月：新增 stablediffusion.cpp 后端（ggml）( https://github.com/mudler/LocalAI/pull/4289 )
- 2024年11月：新增 Bark.cpp 后端 ( https://github.com/mudler/LocalAI/pull/4287 )
- 2024年11月：API 新增语音活动检测模型 (**VAD**)：https://github.com/mudler/LocalAI/pull/4204
- 2024年10月：示例移至 [LocalAI-examples](https://github.com/mudler/LocalAI-examples)
- 2024年8月： 🆕 FLUX-1，[P2P 浏览器](https://explorer.localai.io)
- 2024年7月： 🔥🔥 🆕 P2P 仪表板，LocalAI 联邦模式和 AI Swarm：https://github.com/mudler/LocalAI/pull/2723。P2P 全球社区池：https://github.com/mudler/LocalAI/issues/3113
- 2024年5月： 🔥🔥 去中心化 P2P llama.cpp： https://github.com/mudler/LocalAI/pull/2343 (peer2peer llama.cpp!) 👉 文档 https://localai.io/features/distribute/
- 2024年5月： 🔥🔥 分布式推理：https://github.com/mudler/LocalAI/pull/2324
- 2024年4月：重排序 API：https://github.com/mudler/LocalAI/pull/2121

路线图事项：[问题列表](https://github.com/mudler/LocalAI/issues?q=is%3Aissue+is%3Aopen+label%3Aroadmap)

## 🚀 [功能特性](https://localai.io/features/)

- 🧩 [后端画廊](https://localai.io/backends/)：动态安装/卸载后端，基于 OCI 镜像驱动——完全可定制且可通过 API 控制。
- 📖 [使用 GPTs 进行文本生成](https://localai.io/features/text-generation/) (`llama.cpp`, `transformers`, `vllm` ... [:book: 更多](https://localai.io/model-compatibility/index.html#model-compatibility-table))
- 🗣 [文本转音频](https://localai.io/features/text-to-audio/)
- 🔈 [音频转文本](https://localai.io/features/audio-to-text/) （使用 `whisper.cpp` 进行音频转录）
- 🎨 [图像生成](https://localai.io/features/image-generation)
- 🔥 [类似 OpenAI 的工具 API](https://localai.io/features/openai-functions/) 
- 🧠 [为向量数据库生成嵌入](https://localai.io/features/embeddings/)
- ✍️ [受限语法](https://localai.io/features/constrained_grammars/)
- 🖼️ [直接从 Huggingface 下载模型](https://localai.io/models/)
- 🥽 [视觉 API](https://localai.io/features/gpt-vision/)
- 🔍 [目标检测](https://localai.io/features/object-detection/)
- 📈 [重排序 API](https://localai.io/features/reranker/)
- 🆕🖧 [P2P 推理](https://localai.io/features/distribute/)
- 🆕🔌 [模型上下文协议 (MCP)](https://localai.io/docs/features/mcp/) - 支持外部工具的代理功能及 [LocalAGI 的代理能力](https://github.com/mudler/LocalAGI)
- 🔊 语音活动检测（Silero-VAD 支持）
- 🌍 集成 WebUI！

## 🧩 支持的后端与加速

LocalAI 支持广泛的 AI 后端，并提供多种加速选项：

### 文本生成与语言模型
| 后端 | 描述 | 加速支持 |
|---------|-------------|---------------------|
| **llama.cpp** | C/C++ 中的 LLM 推理 | CUDA 11/12, ROCm, Intel SYCL, Vulkan, Metal, CPU |
| **vLLM** | 使用 PagedAttention 的快速 LLM 推理 | CUDA 12, ROCm, Intel |
| **transformers** | HuggingFace transformers 框架 | CUDA 11/12, ROCm, Intel, CPU |
| **exllama2** | GPTQ 推理库 | CUDA 12 |
| **MLX** | Apple Silicon 上的 LLM 推理 | Metal (M1/M2/M3+) |
| **MLX-VLM** | Apple Silicon 上的视觉-语言模型 | Metal (M1/M2/M3+) |

### 音频与语音处理
| 后端 | 描述 | 加速支持 |
|---------|-------------|---------------------|
| **whisper.cpp** | C/C++ 实现的 OpenAI Whisper | CUDA 12, ROCm, Intel SYCL, Vulkan, CPU |
| **faster-whisper** | 使用 CTranslate2 的快速 Whisper | CUDA 12, ROCm, Intel, CPU |
| **bark** | 文本到音频生成 | CUDA 12, ROCm, Intel |
| **bark-cpp** | Bark 的 C++ 实现 | CUDA, Metal, CPU |
| **coqui** | 支持 1100+ 种语言的高级 TTS | CUDA 12, ROCm, Intel, CPU |
| **kokoro** | 轻量级 TTS 模型 | CUDA 12, ROCm, Intel, CPU |
| **chatterbox** | 生产级 TTS | CUDA 11/12, CPU |
| **piper** | 快速神经 TTS 系统 | CPU |
| **kitten-tts** | Kitten TTS 模型 | CPU |
| **silero-vad** | 语音活动检测 | CPU |
| **neutts** | 支持语音克隆的文本转语音 | CUDA 12, ROCm, CPU |

### 图像与视频生成
| 后端 | 描述 | 加速支持 |
|---------|-------------|---------------------|
| **stablediffusion.cpp** | C/C++ 实现的 Stable Diffusion | CUDA 12, Intel SYCL, Vulkan, CPU |
| **diffusers** | HuggingFace 扩散模型 | CUDA 11/12, ROCm, Intel, Metal, CPU |

### 专用 AI 任务
| 后端 | 描述 | 加速支持 |
|---------|-------------|---------------------|
| **rfdetr** | 实时目标检测 | CUDA 12, Intel, CPU |
| **rerankers** | 文档重排序 API | CUDA 11/12, ROCm, Intel, CPU |
| **local-store** | 向量数据库 | CPU |
| **huggingface** | HuggingFace API 集成 | 基于 API |

### 硬件加速矩阵

| 加速类型 | 支持的后端 | 硬件支持 |
|-------------------|-------------------|------------------|
| **NVIDIA CUDA 11** | llama.cpp, whisper, stablediffusion, diffusers, rerankers, bark, chatterbox | Nvidia 硬件 |
| **NVIDIA CUDA 12** | 所有支持 CUDA 的后端 | Nvidia 硬件 |
| **AMD ROCm** | llama.cpp, whisper, vllm, transformers, diffusers, rerankers, coqui, kokoro, bark, neutts | AMD 显卡 |
| **Intel oneAPI** | llama.cpp, whisper, stablediffusion, vllm, transformers, diffusers, rfdetr, rerankers, exllama2, coqui, kokoro, bark | Intel Arc, Intel iGPUs |
| **Apple Metal** | llama.cpp, whisper, diffusers, MLX, MLX-VLM, bark-cpp | Apple M1/M2/M3+ |
| **Vulkan** | llama.cpp, whisper, stablediffusion | 跨平台 GPU |
| **NVIDIA Jetson** | llama.cpp, whisper, stablediffusion, diffusers, rfdetr | ARM64 嵌入式 AI |
| **CPU 优化** | 所有后端 | AVX/AVX2/AVX512，支持量化 |

### 🔗 社区与集成

构建和部署自定义容器：
- https://github.com/sozercan/aikit

WebUI：
- https://github.com/Jirubizu/localai-admin
- https://github.com/go-skynet/LocalAI-frontend
- QA-Pilot（一个利用 LocalAI 大模型快速理解并导航 GitHub 代码库的交互式聊天项目） https://github.com/reid41/QA-Pilot

代理库：
- https://github.com/mudler/cogito

MCPs：
- https://github.com/mudler/MCPs

模型库：
- https://github.com/go-skynet/model-gallery

语音：
- https://github.com/richiejp/VoxInput

其他：
- Helm chart https://github.com/go-skynet/helm-charts
- VSCode 扩展 https://github.com/badgooooor/localai-vscode-plugin
- Langchain: https://python.langchain.com/docs/integrations/providers/localai/
- 终端工具 https://github.com/djcopley/ShellOracle
- 本地智能助手 https://github.com/mudler/LocalAGI
- Home Assistant https://github.com/sammcj/homeassistant-localai / https://github.com/drndos/hass-openai-custom-conversation / https://github.com/valentinfrlch/ha-gpt4vision
- Discord 机器人 https://github.com/mudler/LocalAGI/tree/main/examples/discord
- Slack 机器人 https://github.com/mudler/LocalAGI/tree/main/examples/slack
- Shell-Pilot（通过纯 shell 脚本在你的 Linux 或 MacOS 系统上使用 LocalAI 模型进行交互） https://github.com/reid41/shell-pilot
- Telegram 机器人 https://github.com/mudler/LocalAI/tree/master/examples/telegram-bot
- 另一个 Telegram 机器人 https://github.com/JackBekket/Hellper
- 自动生成文档 https://github.com/JackBekket/Reflexia
- GitHub 机器人，结合代码和文档上下文回答问题 https://github.com/JackBekket/GitHelper
- GitHub Actions: https://github.com/marketplace/actions/start-localai
- 示例：https://github.com/mudler/LocalAI/tree/master/examples/

### 🔗 资源

- [LLM 微调指南](https://localai.io/docs/advanced/fine-tuning/)
- [如何本地构建](https://localai.io/basics/build/index.html)
- [如何在 Kubernetes 中安装](https://localai.io/basics/getting_started/index.html#run-localai-in-kubernetes)
- [集成 LocalAI 的项目](https://localai.io/docs/integrations/)
- [操作指南部分](https://io.midori-ai.xyz/howtos/)（由社区整理）

## :book: 🎥 [媒体、博客、社交](https://localai.io/basics/news/#media-blogs-social)

- [在 Visual Studio Code 中运行 LocalAI (SUSE)](https://www.suse.com/c/running-ai-locally/)
- 🆕 [在 Jetson Nano 开发套件上运行 LocalAI](https://mudler.pm/posts/local-ai-jetson-nano-devkit/)
- [使用 Pulumi 在 AWS EKS 上运行 LocalAI](https://www.pulumi.com/blog/low-code-llm-apps-with-local-ai-flowise-and-pulumi/)
- [在 AWS 上运行 LocalAI](https://staleks.hashnode.dev/installing-localai-on-aws-ec2-instance)
- [创建一个 Slack 机器人，为团队和开源项目解答文档问题](https://mudler.pm/posts/smart-slackbot-for-teams/)
- [LocalAI 与 k8sgpt 结合](https://www.youtube.com/watch?v=PKrDNuJ_dfE)
- [使用 LangChain、LocalAI、Chroma 和 GPT4All 在本地对文档进行问答](https://mudler.pm/posts/localai-question-answering/)
- [使用 k8sgpt 与 LocalAI 的教程](https://medium.com/@tyler_97636/k8sgpt-localai-unlock-kubernetes-superpowers-for-free-584790de9b65)

## 引用

若你在下游项目中使用了本仓库或数据，请考虑引用：

```
@misc{localai,
  author = {Ettore Di Giacinto},
  title = {LocalAI: The free, Open source OpenAI alternative},
  year = {2023},
  publisher = {GitHub},
  journal = {GitHub repository},
  howpublished = {\url{https://github.com/go-skynet/LocalAI}},
```

## 📖 许可证

LocalAI 是由 [Ettore Di Giacinto](https://github.com/mudler/) 创建的社区驱动项目。

MIT 许可证 - 作者 Ettore Di Giacinto <mudler@localai.io>

## 🙇 致谢

LocalAI 的成功离不开社区中已有优秀软件的帮助。谢谢你们！

- [llama.cpp](https://github.com/ggerganov/llama.cpp)
- https://github.com/tatsu-lab/stanford_alpaca
- https://github.com/cornelk/llama-go 提供初始思路
- https://github.com/antimatter15/alpaca.cpp
- https://github.com/EdVince/Stable-Diffusion-NCNN
- https://github.com/ggerganov/whisper.cpp
- https://github.com/rhasspy/piper

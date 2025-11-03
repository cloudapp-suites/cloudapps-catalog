<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=b083f5df-e374-4bd7-8ddf-e1f659833992)

</div>

<div align="center">

<a href='#企业版'>
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/ent.svg" alt="icon"/>
</a>

<h1 align="center">NextChat</h1>

一键免费部署你的私人 ChatGPT 网页应用，支持 Claude, GPT4 & Gemini Pro 模型。

[NextChatAI](https://nextchat.club?utm_source=readme) / 企业版 / [演示 Demo](https://chat-gpt-next-web.vercel.app/) / [反馈 Issues](https://github.com/Yidadaa/ChatGPT-Next-Web/issues) / [加入 Discord](https://discord.gg/zrhvHCr79N)

</div>

## Sponsor AI API

<a href='https://302.ai/'>
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/460442675-a03edf82-2031-4f23-bdb8-bfc0bfd168a4.png" width="100%" alt="icon"/>
</a>

[302.AI](https://302.ai/) 是一个按需付费的AI应用平台，提供市面上最全的AI API和AI在线应用。

## 企业版

满足您公司私有化部署和定制需求

- **品牌定制**：企业量身定制 VI/UI，与企业品牌形象无缝契合
- **资源集成**：由企业管理人员统一配置和管理数十种 AI 资源，团队成员开箱即用
- **权限管理**：成员权限、资源权限、知识库权限层级分明，企业级 Admin Panel 统一控制
- **知识接入**：企业内部知识库与 AI 能力相结合，比通用 AI 更贴近企业自身业务需求
- **安全审计**：自动拦截敏感提问，支持追溯全部历史对话记录，让 AI 也能遵循企业信息安全规范
- **私有部署**：企业级私有部署，支持各类主流私有云部署，确保数据安全和隐私保护
- **持续更新**：提供多模态、智能体等前沿能力持续更新升级服务，常用常新、持续先进

企业版咨询: **business@nextchat.dev**

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/435371843-e0aa334f-4c13-4dc9-8310-e3b09fa4b9f3.png">

## 截图

![Settings](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/settings.png)

![More](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/more.png)

<div align="center">

![主界面](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/cover.png)

</div>

## 保持更新

如果你按照上述步骤一键部署了自己的项目，可能会发现总是提示“存在更新”的问题，这是由于 Vercel 会默认为你创建一个新项目而不是 fork 本项目，这会导致无法正确地检测更新。
推荐你按照下列步骤重新部署：

- 删除掉原先的仓库；
- 使用页面右上角的 fork 按钮，fork 本项目；
- 在 Vercel 重新选择并部署，请查看详细教程。

### 打开自动更新

> 如果你遇到了 Upstream Sync 执行错误，请手动 Sync Fork 一次！

当你 fork 项目之后，由于 Github 的限制，需要手动去你 fork 后的项目的 Actions 页面启用 Workflows，并启用 Upstream Sync Action，启用之后即可开启每小时定时自动更新：

![自动更新](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/enable-actions.jpg)

![启用自动更新](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/enable-actions-sync.jpg)

### 手动更新代码

如果你想让手动立即更新，可以查看 [Github 的文档](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork) 了解如何让 fork 的项目与上游代码同步。

你可以 star/watch 本项目或者 follow 作者来及时获得新功能更新通知。

## 配置页面访问密码

> 配置密码后，用户需要在设置页手动填写访问码才可以正常聊天，否则会通过消息提示未授权状态。

> **警告**：请务必将密码的位数设置得足够长，最好 7 位以上，否则[会被爆破](https://github.com/Yidadaa/ChatGPT-Next-Web/issues/518)。

本项目提供有限的权限控制功能，请在 Vercel 项目控制面板的环境变量页增加名为 `CODE` 的环境变量，值为用英文逗号分隔的自定义密码：

```
code1,code2,code3
```

增加或修改该环境变量后，请**重新部署**项目使改动生效。

## 环境变量

> 本项目大多数配置项都通过环境变量来设置，教程：如何修改 Vercel 环境变量。

### `OPENAI_API_KEY` （必填项）

OpenAI 密钥，你在 openai 账户页面申请的 api key，使用英文逗号隔开多个 key，这样可以随机轮询这些 key。

### `CODE` （可选）

访问密码，可选，可以使用逗号隔开多个密码。

**警告**：如果不填写此项，则任何人都可以直接使用你部署后的网站，可能会导致你的 token 被急速消耗完毕，建议填写此选项。

### `BASE_URL` （可选）

> Default: `https://api.openai.com`

> Examples: `http://your-openai-proxy.com`

OpenAI 接口代理 URL，如果你手动配置了 openai 接口代理，请填写此选项。

> 如果遇到 ssl 证书问题，请将 `BASE_URL` 的协议设置为 http。

### `OPENAI_ORG_ID` （可选）

指定 OpenAI 中的组织 ID。

### `AZURE_URL` （可选）

> 形如：https://{azure-resource-url}/openai

Azure 部署地址。

### `AZURE_API_KEY` （可选）

Azure 密钥。

### `AZURE_API_VERSION` （可选）

Azure Api 版本，你可以在这里找到：[Azure 文档](https://learn.microsoft.com/en-us/azure/ai-services/openai/reference#chat-completions)。

### `GOOGLE_API_KEY` (可选)

Google Gemini Pro 密钥.

### `GOOGLE_URL` (可选)

Google Gemini Pro Api Url.

### `ANTHROPIC_API_KEY` (可选)

anthropic claude Api Key.

### `ANTHROPIC_API_VERSION` (可选)

anthropic claude Api version.

### `ANTHROPIC_URL` (可选)

anthropic claude Api Url.

### `BAIDU_API_KEY` (可选)

Baidu Api Key.

### `BAIDU_SECRET_KEY` (可选)

Baidu Secret Key.

### `BAIDU_URL` (可选)

Baidu Api Url.

### `BYTEDANCE_API_KEY` (可选)

ByteDance Api Key.

### `BYTEDANCE_URL` (可选)

ByteDance Api Url.

### `ALIBABA_API_KEY` (可选)

阿里云（千问）Api Key.

### `ALIBABA_URL` (可选)

阿里云（千问）Api Url.

### `IFLYTEK_URL` (可选)

讯飞星火Api Url.

### `IFLYTEK_API_KEY` (可选)

讯飞星火Api Key.

### `IFLYTEK_API_SECRET` (可选)

讯飞星火Api Secret.

### `CHATGLM_API_KEY` (可选)

ChatGLM Api Key.

### `CHATGLM_URL` (可选)

ChatGLM Api Url.

### `DEEPSEEK_API_KEY` (可选)

DeepSeek Api Key.

### `DEEPSEEK_URL` (可选)

DeepSeek Api Url.

### `HIDE_USER_API_KEY` （可选）

如果你不想让用户自行填入 API Key，将此环境变量设置为 1 即可。

### `DISABLE_GPT4` （可选）

如果你不想让用户使用 GPT-4，将此环境变量设置为 1 即可。

### `ENABLE_BALANCE_QUERY` （可选）

如果你想启用余额查询功能，将此环境变量设置为 1 即可。

### `DISABLE_FAST_LINK` （可选）

如果你想禁用从链接解析预制设置，将此环境变量设置为 1 即可。

### `WHITE_WEBDAV_ENDPOINTS` (可选)

如果你想增加允许访问的webdav服务地址，可以使用该选项，格式要求：

- 每一个地址必须是一个完整的 endpoint
  > `https://xxxx/xxx`
- 多个地址以`,`相连

### `CUSTOM_MODELS` （可选）

> 示例：`+qwen-7b-chat,+glm-6b,-gpt-3.5-turbo,gpt-4-1106-preview=gpt-4-turbo` 表示增加 `qwen-7b-chat` 和 `glm-6b` 到模型列表，而从列表中删除 `gpt-3.5-turbo`，并将 `gpt-4-1106-preview` 模型名字展示为 `gpt-4-turbo`。
> 如果你想先禁用所有模型，再启用指定模型，可以使用 `-all,+gpt-3.5-turbo`，则表示仅启用 `gpt-3.5-turbo`

用来控制模型列表，使用 `+` 增加一个模型，使用 `-` 来隐藏一个模型，使用 `模型名=展示名` 来自定义模型的展示名，用英文逗号隔开。

在Azure的模式下，支持使用`modelName@Azure=deploymentName`的方式配置模型名称和部署名称(deploy-name)

> 示例：`+gpt-3.5-turbo@Azure=gpt35`这个配置会在模型列表显示一个`gpt35(Azure)`的选项。
> 如果你只能使用Azure模式，那么设置 `-all,+gpt-3.5-turbo@Azure=gpt35` 则可以让对话的默认使用 `gpt35(Azure)`

在ByteDance的模式下，支持使用`modelName@bytedance=deploymentName`的方式配置模型名称和部署名称(deploy-name)

> 示例: `+Doubao-lite-4k@bytedance=ep-xxxxx-xxx`这个配置会在模型列表显示一个`Doubao-lite-4k(ByteDance)`的选项

### `DEFAULT_MODEL` （可选）

更改默认模型

### `VISION_MODELS` (可选)

> 默认值：空
> 示例：`gpt-4-vision,claude-3-opus,my-custom-model` 表示为这些模型添加视觉能力，作为对默认模式匹配的补充（默认会检测包含"vision"、"claude-3"、"gemini-1.5"等关键词的模型）。

在默认模式匹配之外，添加更多具有视觉能力的模型。多个模型用逗号分隔。

### `DEFAULT_INPUT_TEMPLATE` （可选）

自定义默认的 template，用于初始化『设置』中的『用户输入预处理』配置项

### `STABILITY_API_KEY` (optional)

Stability API密钥

### `STABILITY_URL` (optional)

自定义的Stability API请求地址

### `ENABLE_MCP` (optional)

启用MCP（Model Context Protocol）功能

### `SILICONFLOW_API_KEY` (optional)

SiliconFlow API Key.

### `SILICONFLOW_URL` (optional)

SiliconFlow API URL.

### `AI302_API_KEY` (optional)

302.AI API Key.

### `AI302_URL` (optional)

302.AI API URL.

## 开发

点击下方按钮，开始二次开发：

[![Open in Gitpod](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/chatgpt-next-web/image/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/Yidadaa/ChatGPT-Next-Web)

在开始写代码之前，需要在项目根目录新建一个 `.env.local` 文件，里面填入环境变量：

```
OPENAI_API_KEY=<your api key here>

# 中国大陆用户，可以使用本项目自带的代理进行开发，你也可以自由选择其他代理地址
BASE_URL=https://b.nextweb.fun/api/proxy
```

### 本地开发

1. 安装 nodejs 18 和 yarn，具体细节请询问 ChatGPT；
2. 执行 `yarn install && yarn dev` 即可。⚠️ 注意：此命令仅用于本地开发，不要用于部署！
3. 如果你想本地部署，请使用 `yarn install && yarn build && yarn start` 命令，你可以配合 pm2 来守护进程，防止被杀死，详情询问 ChatGPT。

### 容器部署 （推荐）

> Docker 版本需要在 20 及其以上，否则会提示找不到镜像。

> ⚠️ 注意：docker 版本在大多数时间都会落后最新的版本 1 到 2 天，所以部署后会持续出现“存在更新”的提示，属于正常现象。

```shell
docker pull yidadaa/chatgpt-next-web

docker run -d -p 3000:3000 \
   -e OPENAI_API_KEY=sk-xxxx \
   -e CODE=页面访问密码 \
   yidadaa/chatgpt-next-web
```

你也可以指定 proxy：

```shell
docker run -d -p 3000:3000 \
   -e OPENAI_API_KEY=sk-xxxx \
   -e CODE=页面访问密码 \
   --net=host \
   -e PROXY_URL=http://127.0.0.1:7890 \
   yidadaa/chatgpt-next-web
```

如需启用 MCP 功能，可以使用：

```shell
docker run -d -p 3000:3000 \
   -e OPENAI_API_KEY=sk-xxxx \
   -e CODE=页面访问密码 \
   -e ENABLE_MCP=true \
   yidadaa/chatgpt-next-web
```

如果你的本地代理需要账号密码，可以使用：

```shell
-e PROXY_URL="http://127.0.0.1:7890 user password"
```

如果你需要指定其他环境变量，请自行在上述命令中增加 `-e 环境变量=环境变量值` 来指定。

### 本地部署

在控制台运行下方命令：

```shell
bash <(curl -s https://raw.githubusercontent.com/Yidadaa/ChatGPT-Next-Web/main/scripts/setup.sh)
```

⚠️ 注意：如果你安装过程中遇到了问题，请使用 docker 部署。

## 鸣谢

### 捐赠者

> 见英文版。

### 贡献者

[见项目贡献者列表](https://github.com/Yidadaa/ChatGPT-Next-Web/graphs/contributors)

### 相关项目

- [one-api](https://github.com/songquanpeng/one-api): 一站式大模型额度管理平台，支持市面上所有主流大语言模型

## 开源协议

[MIT](https://opensource.org/license/mit/)

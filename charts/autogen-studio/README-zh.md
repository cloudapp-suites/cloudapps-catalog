<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=autogen-studio)

</div>

<a name="readme-top"></a>

<div align="center">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/ag.svg" alt="AutoGen Logo" width="100">

[![Twitter](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/cloudposse.svg)](https://twitter.com/pyautogen)
[![LinkedIn](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/LinkedIn-Company.svg)](https://www.linkedin.com/company/105812540)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/discord-chat-green.svg)](https://aka.ms/autogen-discord)
[![Documentation](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Documentation-AutoGen-blue.svg)](https://microsoft.github.io/autogen/)
[![Blog](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Blog-AutoGen-blue.svg)](https://devblogs.microsoft.com/autogen/)

</div>

<div align="center" style="background-color: rgba(255, 235, 59, 0.5); padding: 10px; border-radius: 5px; margin: 20px 0;">
  <strong>重要提示：</strong> 这是官方项目。我们不隶属于任何分支或初创公司。请参阅我们的 <a href="https://x.com/pyautogen/status/1857264760951296210">声明</a>。
</div>

# AutoGen

**AutoGen** 是一个用于创建多智能体AI应用的框架，这些应用可以自主运行，也可以与人类协作。

## 安装

AutoGen 需要 **Python 3.10 或更高版本**。

```bash
# 从扩展中安装 AgentChat 和 OpenAI 客户端
pip install -U "autogen-agentchat" "autogen-ext[openai]"
```

当前稳定版本为 v0.4。如果您是从 AutoGen v0.2 升级，请参考 [迁移指南](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/migration-guide.html) 以获取详细的代码和配置更新说明。

```bash
# 安装无代码 GUI 的 AutoGen Studio
pip install -U "autogenstudio"
```

## 快速入门

### Hello World

使用 OpenAI 的 GPT-4o 模型创建一个助手智能体。查看[其他支持的模型](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/tutorial/models.html)。

```python
import asyncio
from autogen_agentchat.agents import AssistantAgent
from autogen_ext.models.openai import OpenAIChatCompletionClient

async def main() -> None:
    model_client = OpenAIChatCompletionClient(model="gpt-4o")
    agent = AssistantAgent("assistant", model_client=model_client)
    print(await agent.run(task="Say 'Hello World!'"))
    await model_client.close()

asyncio.run(main())
```

### 网络浏览智能体团队

创建一个包含网络冲浪智能体和用户代理智能体的群聊团队，用于执行网络浏览任务。您需要安装 [playwright](https://playwright.dev/python/docs/library)。

```python
# pip install -U autogen-agentchat autogen-ext[openai,web-surfer]
# playwright install
import asyncio
from autogen_agentchat.agents import UserProxyAgent
from autogen_agentchat.conditions import TextMentionTermination
from autogen_agentchat.teams import RoundRobinGroupChat
from autogen_agentchat.ui import Console
from autogen_ext.models.openai import OpenAIChatCompletionClient
from autogen_ext.agents.web_surfer import MultimodalWebSurfer

async def main() -> None:
    model_client = OpenAIChatCompletionClient(model="gpt-4o")
    # 网络冲浪者将打开一个 Chromium 浏览器窗口以执行网络浏览任务。
    web_surfer = MultimodalWebSurfer("web_surfer", model_client, headless=False, animate_actions=True)
    # 用户代理智能体用于在每次网络冲浪步骤后获取用户输入。
    # 注意：您可以按 Enter 键跳过输入。
    user_proxy = UserProxyAgent("user_proxy")
    # 终止条件设置为当用户输入 'exit' 时结束对话。
    termination = TextMentionTermination("exit", sources=["user_proxy"])
    # 网络冲浪者和用户代理轮流进行对话。
    team = RoundRobinGroupChat([web_surfer, user_proxy], termination_condition=termination)
    try:
        # 启动团队并等待其终止。
        await Console(team.run_stream(task="查找有关 AutoGen 的信息并编写一个简短摘要。"))
    finally:
        await web_surfer.close()
        await model_client.close()

asyncio.run(main())
```

### AutoGen Studio

使用 AutoGen Studio 无需编写代码即可原型设计和运行多智能体工作流。

```bash
# 在 http://localhost:8080 上运行 AutoGen Studio
autogenstudio ui --port 8080 --appdir ./my-app
```

## 为什么选择 AutoGen？

<div align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/autogen-landing.jpg" alt="AutoGen Landing" width="500">
</div>

AutoGen 生态系统提供了创建 AI 智能体所需的一切，特别是多智能体工作流——包括框架、开发工具和应用程序。

该 _框架_ 采用分层和可扩展的设计。各层职责明确划分，并建立在下层之上。这种设计使您可以在不同的抽象级别使用该框架，从高级 API 到低级组件。

- Core API 实现了消息传递、事件驱动的智能体，以及灵活强大的本地和分布式运行时。它还支持 .NET 和 Python 的跨语言支持。
- AgentChat API 实现了一个更简单但有特定设计取向的 API，用于快速原型设计。此 API 建立在 Core API 之上，最接近 v0.2 用户所熟悉的内容，并支持常见的多智能体模式，如双智能体聊天或群聊。
- Extensions API 使第一方和第三方扩展能够持续扩展框架功能。它支持特定的 LLM 客户端实现（例如 OpenAI、AzureOpenAI），以及代码执行等功能。

该生态系统还支持两个关键的 _开发工具_：

<div align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/ags_screen.png" alt="AutoGen Studio 截图" width="500">
</div>

- AutoGen Studio 提供了一个无代码的 GUI，用于构建多智能体应用程序。
- AutoGen Bench 提供了一个基准测试套件，用于评估智能体性能。

您可以使用 AutoGen 框架和开发工具为您的领域创建应用程序。例如，Magentic-One 是一个使用 AgentChat API 和 Extensions API 构建的最先进的多智能体团队，可以处理需要网络浏览、代码执行和文件处理的各种任务。

通过 AutoGen，您可以加入并为一个蓬勃发展的生态系统做出贡献。我们每周都会举办办公时间会议和维护者及社区成员的讲座。我们还有一个 [Discord 服务器](https://aka.ms/autogen-discord) 用于实时聊天，GitHub 讨论区用于问答，以及一个博客用于教程和更新。

## 接下来去哪里？

<div align="center">

|               | [![Python](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/AutoGen-Python-blue.svg)](./python)                                                                                                                                                                                                                                                                                                                | [![.NET](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4175746f47656e2d2e4e45542d677265656e3f6c6f676f3d2e6e6574266c6f676f436f6c6f723d7768697465.svg)](./dotnet) | [![Studio](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/AutoGen-Studio-purple.svg)](./python/packages/autogen-studio)                     |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 安装          | [![安装](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Install-blue.svg)](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/installation.html)                                                                                                                                                                                                                                                                    | [![安装](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Install-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/core/installation.html) | [![安装](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Install-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/installation.html) |
| 快速开始      | [![快速开始](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Quickstart-blue.svg)](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/quickstart.html#)                                                                                                                                                                                                                                                            | [![快速开始](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Quickstart-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/core/index.html) | [![使用](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Quickstart-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/usage.html#)        |
| 教程          | [![教程](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Tutorial-blue.svg)](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/tutorial/index.html)                                                                                                                                                                                                                                                            | [![教程](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Tutorial-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/core/tutorial.html) | [![使用](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Tutorial-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/usage.html#)        |
| API 参考      | [![文档](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Docs-blue.svg)](https://microsoft.github.io/autogen/stable/reference/index.html#)                                                                                                                                                                                                                                                                                                    | [![文档](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Docs-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/api/Microsoft.AutoGen.Contracts.html) | [![文档](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Docs-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/usage.html)               |
| 包            | [![PyPi autogen-core](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogen--core-blue.svg)](https://pypi.org/project/autogen-core/) <br> [![PyPi autogen-agentchat](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogen--agentchat-blue.svg)](https://pypi.org/project/autogen-agentchat/) <br> [![PyPi autogen-ext](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogen--ext-blue.svg)](https://pypi.org/project/autogen-ext/) | [![NuGet Contracts](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/NuGet-Contracts-green.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.Contracts/) <br> [![NuGet Core](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/NuGet-Core-green.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.Core/) <br> [![NuGet Core.Grpc](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4e754765742d436f72652e477270632d677265656e3f6c6f676f3d6e75676574.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.Core.Grpc/) <br> [![NuGet RuntimeGateway.Grpc](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4e754765742d52756e74696d65476174657761792e477270632d677265656e3f6c6f676f3d6e75676574.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.RuntimeGateway.Grpc/) | [![PyPi autogenstudio](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogenstudio-purple.svg)](https://pypi.org/project/autogenstudio/)                       |

</div>

有兴趣贡献吗？请参阅 CONTRIBUTING.md 以获取如何开始的指南。我们欢迎各种类型的贡献，包括错误修复、新功能和文档改进。加入我们的社区，帮助我们使 AutoGen 更加完善！

有问题吗？请查看我们的 常见问题解答 (FAQ) 以获取常见问题的答案。如果您找不到所需内容，可以在我们的 [GitHub Discussions](https://github.com/microsoft/autogen/discussions) 中提问，或加入我们的 [Discord 服务器](https://aka.ms/autogen-discord) 以获得实时支持。您还可以阅读我们的 [博客](https://devblogs.microsoft.com/autogen/) 以获取更新。

## 法律声明

微软和任何贡献者授予您一个许可，允许您根据 [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/legalcode) 使用本仓库中的微软文档和其他内容，请参见 LICENSE 文件，并授予您根据 [MIT License](https://opensource.org/licenses/MIT) 使用本仓库中的代码的许可，请参见 LICENSE-CODE 文件。

本文档中提到的 Microsoft、Windows、Microsoft Azure 和/或其他 Microsoft 产品和服务可能是 Microsoft 在美国和/或其他国家的商标或注册商标。本项目的许可证不授予您使用任何 Microsoft 名称、标志或商标的权利。Microsoft 的一般商标指南可在 <http://go.microsoft.com/fwlink/?LinkID=254653> 找到。

隐私信息可在 <https://go.microsoft.com/fwlink/?LinkId=521839> 找到

Microsoft 和任何贡献者保留所有其他权利，无论是在各自的版权、专利或商标下，无论是通过暗示、禁止反言或其他方式。

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
  <a href="#readme-top" style="text-decoration: none; color: blue; font-weight: bold;">
    ↑ 返回顶部 ↑
  </a>
</p>

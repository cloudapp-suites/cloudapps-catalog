<div align="center">

 **EDAS provides one-click application deployment. Try it now!** 

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=autogen-studio)

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
  <strong>Important:</strong> This is the official project. We are not affiliated with any fork or startup. See our <a href="https://x.com/pyautogen/status/1857264760951296210">statement</a>.
</div>

# AutoGen

**AutoGen** is a framework for creating multi-agent AI applications that can act autonomously or work alongside humans.

## Installation

AutoGen requires **Python 3.10 or later**.

```bash
# Install AgentChat and OpenAI client from Extensions
pip install -U "autogen-agentchat" "autogen-ext[openai]"
```

The current stable version is v0.4. If you are upgrading from AutoGen v0.2, please refer to the [Migration Guide](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/migration-guide.html) for detailed instructions on how to update your code and configurations.

```bash
# Install AutoGen Studio for no-code GUI
pip install -U "autogenstudio"
```

## Quickstart

### Hello World

Create an assistant agent using OpenAI's GPT-4o model. See [other supported models](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/tutorial/models.html).

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

### Web Browsing Agent Team

Create a group chat team with a web surfer agent and a user proxy agent
for web browsing tasks. You need to install [playwright](https://playwright.dev/python/docs/library).

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
    # The web surfer will open a Chromium browser window to perform web browsing tasks.
    web_surfer = MultimodalWebSurfer("web_surfer", model_client, headless=False, animate_actions=True)
    # The user proxy agent is used to get user input after each step of the web surfer.
    # NOTE: you can skip input by pressing Enter.
    user_proxy = UserProxyAgent("user_proxy")
    # The termination condition is set to end the conversation when the user types 'exit'.
    termination = TextMentionTermination("exit", sources=["user_proxy"])
    # Web surfer and user proxy take turns in a round-robin fashion.
    team = RoundRobinGroupChat([web_surfer, user_proxy], termination_condition=termination)
    try:
        # Start the team and wait for it to terminate.
        await Console(team.run_stream(task="Find information about AutoGen and write a short summary."))
    finally:
        await web_surfer.close()
        await model_client.close()

asyncio.run(main())
```

### AutoGen Studio

Use AutoGen Studio to prototype and run multi-agent workflows without writing code.

```bash
# Run AutoGen Studio on http://localhost:8080
autogenstudio ui --port 8080 --appdir ./my-app
```

## Why Use AutoGen?

<div align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/autogen-landing.jpg" alt="AutoGen Landing" width="500">
</div>

The AutoGen ecosystem provides everything you need to create AI agents, especially multi-agent workflows -- framework, developer tools, and applications.

The _framework_ uses a layered and extensible design. Layers have clearly divided responsibilities and build on top of layers below. This design enables you to use the framework at different levels of abstraction, from high-level APIs to low-level components.

- Core API implements message passing, event-driven agents, and local and distributed runtime for flexibility and power. It also support cross-language support for .NET and Python.
- AgentChat API implements a simpler but opinionated API for rapid prototyping. This API is built on top of the Core API and is closest to what users of v0.2 are familiar with and supports common multi-agent patterns such as two-agent chat or group chats.
- Extensions API enables first- and third-party extensions continuously expanding framework capabilities. It support specific implementation of LLM clients (e.g., OpenAI, AzureOpenAI), and capabilities such as code execution.

The ecosystem also supports two essential _developer tools_:

<div align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/ags_screen.png" alt="AutoGen Studio Screenshot" width="500">
</div>

- AutoGen Studio provides a no-code GUI for building multi-agent applications.
- AutoGen Bench provides a benchmarking suite for evaluating agent performance.

You can use the AutoGen framework and developer tools to create applications for your domain. For example, Magentic-One is a state-of-the-art multi-agent team built using AgentChat API and Extensions API that can handle a variety of tasks that require web browsing, code execution, and file handling.

With AutoGen you get to join and contribute to a thriving ecosystem. We host weekly office hours and talks with maintainers and community. We also have a [Discord server](https://aka.ms/autogen-discord) for real-time chat, GitHub Discussions for Q&A, and a blog for tutorials and updates.

## Where to go next?

<div align="center">

|               | [![Python](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/AutoGen-Python-blue.svg)](./python)                                                                                                                                                                                                                                                                                                                | [![.NET](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4175746f47656e2d2e4e45542d677265656e3f6c6f676f3d2e6e6574266c6f676f436f6c6f723d7768697465.svg)](./dotnet) | [![Studio](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/AutoGen-Studio-purple.svg)](./python/packages/autogen-studio)                     |
| ------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Installation  | [![Installation](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Install-blue.svg)](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/installation.html)                                                                                                                                                                                                                                                            | [![Install](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Install-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/core/installation.html) | [![Install](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Install-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/installation.html) |
| Quickstart    | [![Quickstart](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Quickstart-blue.svg)](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/quickstart.html#)                                                                                                                                                                                                                                                            | [![Quickstart](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Quickstart-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/core/index.html) | [![Usage](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Quickstart-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/usage.html#)        |
| Tutorial      | [![Tutorial](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Tutorial-blue.svg)](https://microsoft.github.io/autogen/stable/user-guide/agentchat-user-guide/tutorial/index.html)                                                                                                                                                                                                                                                            | [![Tutorial](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Tutorial-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/core/tutorial.html) | [![Usage](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Tutorial-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/usage.html#)        |
| API Reference | [![API](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Docs-blue.svg)](https://microsoft.github.io/autogen/stable/reference/index.html#)                                                                                                                                                                                                                                                                                                    | [![API](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Docs-green.svg)](https://microsoft.github.io/autogen/dotnet/dev/api/Microsoft.AutoGen.Contracts.html) | [![API](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/Docs-purple.svg)](https://microsoft.github.io/autogen/stable/user-guide/autogenstudio-user-guide/usage.html)               |
| Packages      | [![PyPi autogen-core](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogen--core-blue.svg)](https://pypi.org/project/autogen-core/) <br> [![PyPi autogen-agentchat](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogen--agentchat-blue.svg)](https://pypi.org/project/autogen-agentchat/) <br> [![PyPi autogen-ext](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogen--ext-blue.svg)](https://pypi.org/project/autogen-ext/) | [![NuGet Contracts](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/NuGet-Contracts-green.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.Contracts/) <br> [![NuGet Core](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/NuGet-Core-green.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.Core/) <br> [![NuGet Core.Grpc](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4e754765742d436f72652e477270632d677265656e3f6c6f676f3d6e75676574.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.Core.Grpc/) <br> [![NuGet RuntimeGateway.Grpc](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4e754765742d52756e74696d65476174657761792e477270632d677265656e3f6c6f676f3d6e75676574.svg)](https://www.nuget.org/packages/Microsoft.AutoGen.RuntimeGateway.Grpc/) | [![PyPi autogenstudio](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/autogen-studio/image/PyPi-autogenstudio-purple.svg)](https://pypi.org/project/autogenstudio/)                       |

</div>

Interested in contributing? See CONTRIBUTING.md for guidelines on how to get started. We welcome contributions of all kinds, including bug fixes, new features, and documentation improvements. Join our community and help us make AutoGen better!

Have questions? Check out our Frequently Asked Questions (FAQ) for answers to common queries. If you don't find what you're looking for, feel free to ask in our [GitHub Discussions](https://github.com/microsoft/autogen/discussions) or join our [Discord server](https://aka.ms/autogen-discord) for real-time support. You can also read our [blog](https://devblogs.microsoft.com/autogen/) for updates.

## Legal Notices

Microsoft and any contributors grant you a license to the Microsoft documentation and other content
in this repository under the [Creative Commons Attribution 4.0 International Public License](https://creativecommons.org/licenses/by/4.0/legalcode),
see the LICENSE file, and grant you a license to any code in the repository under the [MIT License](https://opensource.org/licenses/MIT), see the
LICENSE-CODE file.

Microsoft, Windows, Microsoft Azure, and/or other Microsoft products and services referenced in the documentation
may be either trademarks or registered trademarks of Microsoft in the United States and/or other countries.
The licenses for this project do not grant you rights to use any Microsoft names, logos, or trademarks.
Microsoft's general trademark guidelines can be found at <http://go.microsoft.com/fwlink/?LinkID=254653>.

Privacy information can be found at <https://go.microsoft.com/fwlink/?LinkId=521839>

Microsoft and any contributors reserve all other rights, whether under their respective copyrights, patents,
or trademarks, whether by implication, estoppel, or otherwise.

<p align="right" style="font-size: 14px; color: #555; margin-top: 20px;">
  <a href="#readme-top" style="text-decoration: none; color: blue; font-weight: bold;">
    ↑ Back to Top ↑
  </a>
</p>

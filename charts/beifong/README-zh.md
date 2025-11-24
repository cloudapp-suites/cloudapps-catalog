<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=beifong)

</div>

# 🦉 Beifong：您的无垃圾、个性化信息和播客

![image](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/beifong/image/b2f24f12-6f80-46fa-aa31-ee42e17765b1)

Beifong 管理您信任的文章和社交媒体平台来源。它从您信任和策划的内容生成播客。它处理从数据收集和分析到脚本和视觉效果制作的完整流程。

▶️ [观看演示视频高清版](https://www.canva.com/design/DAGoUfv8ICM/Oj-vJ19AvZYDa2SwJrCWKw/watch?utm_content=D[…]share&utm_medium=link2&utm_source=uniquelinks&utlId=h2508379667)

▶️ [在 YouTube 上观看演示](https://youtu.be/dB8FZY3x9EY)

🔗 [博客](https://arun477.github.io/posts/beifong_podcast_generator/)

## 目录

- [入门指南](#入门指南)
  - [系统要求](#系统要求)
  - [初始设置和安装](#初始设置和安装)
  - [环境配置](#环境配置)
  - [启动应用程序](#启动应用程序)
- [如何使用 Beifong](#如何使用-beifong)
  - [三种使用方法](#三种使用方法)
- [内容处理系统](#内容处理系统)
  - [内置内容处理器](#内置内容处理器)
  - [创建自定义内容处理器](#创建自定义内容处理器)
- [AI 代理和工具](#ai-代理和工具)
  - [代理架构概述](#代理架构概述)
  - [添加自定义工具](#添加自定义工具)
  - [配置代理行为](#配置代理行为)
- [网络搜索和浏览器自动化](#网络搜索和浏览器自动化)
  - [搜索命令](#搜索命令)
  - [社交媒体登录会话](#社交媒体登录会话)
  - [高级持久会话配置](#高级持久会话配置)
- [社交媒体监控](#社交媒体监控)
  - [支持的平台](#支持的平台)
  - [设置计划的提要收集](#设置计划的提要收集)
  - [查看 AI 见解](#查看-ai-见解)
  - [配置自定义提要](#配置自定义提要)
  - [添加新的社交媒体账户](#添加新的社交媒体账户)
  - [调度最佳实践](#调度最佳实践)
- [音频和语音生成](#音频和语音生成)
  - [支持的 TTS 引擎](#支持的-tts-引擎)
  - [添加新语音引擎](#添加新语音引擎)
- [集成](#集成)
  - [Slack 集成](#slack-集成)
  - [设置 Slack 应用](#设置-slack-应用)
  - [所需的 Slack 权限](#所需的-slack-权限)
  - [环境配置](#环境配置-1)
  - [运行 Slack 集成](#运行-slack-集成)
- [数据存储和文件管理](#数据存储和文件管理)
  - [数据库存储](#数据库存储)
  - [媒体资产管理](#媒体资产管理)
  - [管理存储增长](#管理存储增长)
- [部署和访问选项](#部署和访问选项)
  - [本地网络访问](#本地网络访问)
  - [远程访问解决方案](#远程访问解决方案)
  - [安全](#安全)
- [云选项](#云选项)
  - [Beifong 云功能](#beifong-云功能)
- [故障排除](#故障排除)
  - [Kokoro 库安装问题](#kokoro-库安装问题)
  - [Browseruse 安装问题](#browseruse-安装问题)
  - [FAISS 库安装问题](#faiss-库安装问题)
  - [基于浏览器的数据收集问题](#基于浏览器的数据收集问题)
- [更新](#更新)

## 入门指南

### 系统要求

安装 Beifong 前，请确保您具备：

- Python 3.11+
- Redis 服务器
- OpenAI API 密钥
- （可选）ElevenLabs API 密钥

### 初始设置和安装

```bash
# 克隆仓库
git clone https://github.com/arun477/beifong.git
cd beifong

# 创建虚拟环境
cd beifong
python -m venv venv
source venv/bin/activate

# 安装依赖项
pip install -r requirements.txt

# 安装浏览器
python -m playwright install

# （可选但推荐）下载演示内容
# 如果尚未在 beifong 目录中，请导航到该目录
cd beifong  # 如果已经在 beifong 文件夹中则跳过
# 这将用示例数据、策划的源提要和资产填充系统
python bootstrap_demo.py
```

### 环境配置

在 [/beifong](file:///Users/xzw/PycharmProjects/charts-store-up_%E5%89%AF%E6%9C%AC/beifong) 目录中创建一个包含您的 API 密钥的 `.env` 文件：

```
OPENAI_API_KEY=your_openai_api_key
ELEVENSLAB_API_KEY=your_elevenlabs_api_key  # 可选
REDIS_HOST=localhost
REDIS_PORT=6379
REDIS_DB=0
```

### 启动应用程序

在单独的终端中启动所有必需的服务（但请确保在启动其他服务之前先启动 python main.py，因为首次运行将进行数据库初始化）：

⚠️ 在启动每个脚本之前，请确保在所有终端中激活虚拟环境。

```bash
source venv/bin/activate
```

```bash
# 终端 1：启动主后端（首次运行可能需要 2 到 3 分钟，因为需要设置过程）
cd beifong
python main.py

# 终端 2：启动调度器
cd beifong
python -m scheduler

# 终端 3：启动聊天工作者
cd beifong
python -m celery_worker

# 验证 Redis 是否正在运行
redis-cli ping
```

#### 可选：前端开发模式

```bash
# 导航到 web 目录
cd web

# 安装依赖项
npm install

# 启动开发服务器
npm start
```

## 如何使用 Beifong

### 三种使用方法

Beifong 提供了灵活的系统交互方式：

1. **交互式 Web UI** - 用于内容管理和播客生成的 Web 界面
2. **API 集成** - 用于自定义应用程序和工作流的编程访问
3. **自动调度** - 设置重复任务以实现免手动的内容处理

## 内容处理系统

### 内置内容处理器

Beifong 包含几个专门针对不同内容源的处理器：

- **RSS 提要处理器** - 监控 RSS 提要中的新文章和内容
- **URL 内容处理器** - 从网页提取和处理内容
- **AI 内容分析器** - 对内容进行分类、总结和分析质量
- **向量嵌入处理器** - 为内容创建可搜索的向量表示
- **FAISS 搜索索引器** - 构建用于内容发现的搜索索引
- **播客脚本生成器** - 从策划的内容创建完整的播客剧集
- **X.com 社交处理器** - 爬取和处理您的 X.com 社交媒体提要
- **Facebook 社交处理器** - 爬取和处理您的 Facebook 社交媒体提要

### 创建自定义内容处理器

通过添加自己的内容处理器来扩展 Beifong 的功能：

#### 第 1 步：创建您的处理器模块

```python
# processors/my_custom_processor.py
def process_custom_task(parameter1=None, parameter2=None):
    # 您的处理逻辑在这里
    stats = {"processed": 0, "success": 0, "errors": 0}
    # 处理实现
    return stats

if __name__ == "__main__":
    stats = process_custom_task()
    print(f"已处理: {stats['processed']}, 成功: {stats['success']}")
```

#### 第 2 步：注册您的处理器

在 `models/tasks_schemas.py` 中将您的处理器添加到系统中：

```python
class TaskType(str, Enum):
    # 现有的任务类型...
    my_custom_processor = "my_custom_processor"

TASK_TYPES = {
    # 现有类型...
    "my_custom_processor": {
        "name": "我的自定义处理器",
        "command": "python -m processors.my_custom_processor",
        "description": "执行自定义处理任务",
    },
}
```

#### 第 3 步：部署您的处理器

使用 API 或 UI 创建一个带有自定义处理器类型的新任务。

## AI 代理和工具

### 代理架构概述

Beifong 的 AI 系统基于 [agno](https://github.com/agno-agi/agno) 框架构建，包括：

- **搜索工具** - 语义搜索、关键字搜索和基于浏览器的网络研究
- **内容生成工具** - 自动脚本编写、横幅创建和音频制作
- **持久会话状态** - 在交互之间保持对话上下文
- **工具编排** - 自动管理多步骤工作流

### 添加自定义工具

使用自定义工具扩展代理的功能：

```python
# tools/my_custom_tool.py
from agno.agent import Agent

def my_custom_tool(agent: Agent, param1: str, param2: str) -> str:
    """工具描述在这里"""
    agent.session_state["my_key"] = "my_value"
    # 工具实现
    result = f"已处理 {param1} 和 {param2}"
    return result
```

在 `services/celery_tasks.py` 中注册您的工具：

```python
# 添加导入
from tools.my_custom_tool import my_custom_tool
# 添加到工具列表
tools = [my_custom_tool]
```

### 配置代理行为

在 `db/agent_config_v2.py` 中修改代理的指令和行为：

```python
# 更新指令以修改代理的行为
# 添加自定义时请小心保留核心流程阶段
```

## 网络搜索和浏览器自动化

Beifong 的搜索代理通过 [browseruse](https://browser-use.com/) 库具有完整的浏览器自动化功能，能够从任何网站进行网络研究和自动化数据收集。

### 搜索命令

您可以给代理特定的搜索指令，例如：
- *"转到我的 X.com 并收集顶级正面和信息性提要"*
- *"浏览 Reddit 以获取本周关于 AI 发展的讨论"*
- *"搜索 LinkedIn 以获取最近关于数据科学趋势的帖子"*
- *"访问新闻网站并收集有关可再生能源的文章"*

代理将导航网站，与页面元素交互，并自动提取所需信息。

### 社交媒体登录会话

对于需要身份验证的网站（X.com、Facebook、LinkedIn 等），您需要建立登录会话：

**设置社交媒体会话：**

1. 在 Beifong Web 界面中**导航到社交标签**
2. 在设置部分下**点击"设置会话"**
3. **登录过程** - 将打开一个浏览器窗口，在其中您：
   - 正常登录您的社交媒体账户
   - 完成任何验证步骤
   - 完成后关闭浏览器
4. **会话持久性** - Beifong 将在未来的自动搜索中使用这些经过身份验证的会话

### 高级持久会话配置

对于持久的登录会话和高级浏览器管理：

**持久会话路径配置：**
- 默认浏览器会话存储在 `browsers/playwright_persistent_profile_web` 文件夹中
- 对于持久会话路径，请修改 `tools/web_search` 以使用 `db/config.py` 中的 `get_browser_session_path()` 函数

**重要持久会话管理说明：**
- **避免并发使用** - 确保没有其他进程同时使用相同的浏览器会话
- **社交监视处理器** 通常使用 `get_browser_session_path()` 函数中的路径
- **禁用冲突进程** - 如果使用持久会话路径，请在 Voyager 部分关闭社交监控
- **未来分离** - 会话管理将在即将发布的更新中分离为单个会话

**持久会话故障排除：**
- 如果登录会话过期，请重复社交标签设置过程
- 如果遇到身份验证问题，请清除浏览器数据
- 确保一次只有一个进程访问浏览器会话

## 社交媒体监控

### 支持的平台

Beifong 目前支持对以下平台的自动监控：

- **X.com (Twitter)** - 收集和分析您的社交媒体提要
- **Facebook.com** - 监控您的 Facebook 时间线和互动

### 设置计划的提要收集

要自动收集您的社交媒体提要：

1. 在 Beifong Web 界面中**导航到 Voyager 标签**
2. **为社交媒体监控创建计划任务**
3. **配置收集频率** - 设置您希望收集提要的频率
4. **选择平台** - 在 X.com 或 Facebook.com 处理器之间进行选择

### 查看 AI 见解

收集社交媒体提要后：

1. 在 Web 界面中**导航到社交标签**
2. **查看综合分析** - 每个帖子都通过 AI 进行分析，提供：
   - 内容情感分析
   - 主题分类
   - 参与度见解
   - 相关性评分
3. **浏览完整见解** - 所有收集的社交媒体内容的详细分析

### 配置自定义提要

您可以轻松自定义要监控的提要：

**修改提要源：**
- 导航到 [/tools/social/](file:///Users/xzw/PycharmProjects/charts-store-up_%E5%89%AF%E6%9C%AC/tools/social/) 目录
- 更新社交媒体处理器中的 URL
- **监控特定个人资料** - 配置以跟踪特定的 X.com 个人资料或 Facebook 页面
- **自定义提要类型** - 适应 URL 以获取不同类型的内容提要

**URL 配置示例：**
- 跟踪特定的 X.com 用户：修改 URL 以定位特定的个人资料
- 监控 Facebook 页面：配置特定 Facebook 提要的 URL
- 自定义标签监控：设置 URL 以跟踪特定的标签或主题

### 添加新的社交媒体账户

Beifong 支持轻松扩展到其他平台：

**当前支持：**
- X.com (Twitter)
- Facebook.com

**易于集成的选项：**
- **LinkedIn**
- **Reddit** 
- **其他平台** - 大多数社交媒体平台都可以使用相同框架集成，但您必须编写自定义爬虫或使用 API。

**未来更新：**
- 下一版本将包含更多流行社交媒体平台的内置连接器
- 支持每个平台的多个账户管理

### 调度最佳实践

**重要的调度注意事项：**

⚠️ **避免并发执行** - 调度多个社交媒体提要收集任务时，确保它们不会同时运行。所有社交媒体处理器共享相同的持久浏览器会话。

**推荐的调度方法：**
- **错开收集时间** - 在不同时间调度 X.com 和 Facebook.com 收集
- **允许处理间隙** - 在不同的社交媒体任务之间留出足够的时间
- **监控执行时间** - 跟踪每个收集所需的时间以避免重叠

**安全调度示例：**
- X.com 提要收集：每 2 小时的 :00 分钟
- Facebook.com 提要收集：每 2 小时的 :30 分钟

**未来改进：**
- 下一版本将为每个社交媒体账户提供单独的持久浏览器会话
- 这将消除仔细调度的需要，并允许从多个平台并发收集

## 音频和语音生成

### 支持的 TTS 引擎

Beifong 支持多种文本到语音选项：

**商业选项：**
- **OpenAI TTS** 
- **ElevenLabs** 

**开源选项：**
- **Kokoro**

### 添加新语音引擎

TTS 系统支持集成额外的引擎：

**潜在的下一个开源集成选项：**
- **[Dia TTS](https://yummy-fir-7a4.notion.site/dia)** 
- **[CSM](https://github.com/SesameAILabs/csm)** 
- **[Orpheus-TTS](https://github.com/canopyai/Orpheus-TTS)** 

通过 **utils** 目录中的 tts_selector 引擎界面添加自定义 TTS 引擎。

## 集成

Beifong 可以与其他平台集成。

### Slack 集成

Beifong 的 Slack 集成使您能够直接从 Slack 工作区与 AI 代理交互。与 Beifong 的每次对话都会为会话创建一个专用的 Slack 线程。

**主要功能：**
- 在 Slack 频道中直接与 BeifongAI 消息交流

### 设置 Slack 应用

要将 Beifong 与您的 Slack 工作区集成，您需要在 Socket Mode 中创建一个 Slack 应用：

#### 第 1 步：创建 Slack 应用

1. 访问 [Slack API Apps](https://api.slack.com/apps) 并点击"Create New App"
2. 选择"From scratch"并提供：
   - **应用名称**：BeifongAI（或您喜欢的名称）
   - **工作区**：选择您的目标 Slack 工作区
3. **启用 Socket Mode**：
   - 在左侧边栏中导航到"Socket Mode"
   - 将"Enable Socket Mode"切换为 ON
   - 使用 `connections:write` 范围生成应用级令牌
   - 保存**应用级令牌**（这是您的 `SLACK_APP_TOKEN`）

#### 第 2 步：配置机器人用户

1. 在左侧边栏中导航到"OAuth & Permissions"
2. 滚动到"Bot Token Scopes"并添加所需的权限（见下一节）
3. 点击"Install to Workspace"并授权应用
4. 复制**Bot User OAuth Token**（这是您的 `SLACK_BOT_TOKEN`）

#### 第 3 步：启用事件订阅

1. 在左侧边栏中导航到"Event Subscriptions"
2. 将"Enable Events"切换为 ON
3. 添加所需的机器人事件（见下面的权限部分）

### 所需的 Slack 权限

您的 Slack 应用需要特定权限才能与 Beifong 正确配合：

#### OAuth & Permissions - Bot Token Scopes

在"OAuth & Permissions" → "Bot Token Scopes"下添加以下范围：

- **`app_mentions:read`** - 查看应用所在对话中直接提及 @BeifongAI 的消息
- **`assistant:write`** - 允许 BeifongAI 作为应用代理操作
- **`channels:history`** - 查看 BeifongAI 已加入的公共频道中的消息和其他内容
- **`channels:read`** - 查看工作区中公共频道的基本信息
- **`chat:write`** - 以 @BeifongAI 身份发送消息
- **`files:read`** - 查看 BeifongAI 已加入的频道和对话中共享的文件
- **`files:write`** - 以 @BeifongAI 身份上传、编辑和删除文件
- **`im:read`** - 查看 BeifongAI 已加入的私信的基本信息
- **`im:write`** - 与人员开始私信

#### Event Subscriptions - Bot Events

在"Event Subscriptions" → "Subscribe to bot events"下，添加：

- **`app_mention`** - 订阅仅提及您的应用或机器人的消息事件
  - *所需范围：`app_mentions:read`*
- **`message.channels`** - 向频道发布了消息
  - *所需范围：`channels:history`*

### 环境配置

将您的 Slack 令牌添加到 [/beifong](file:///Users/xzw/PycharmProjects/charts-store-up_%E5%89%AF%E6%9C%AC/beifong) 目录中的 `.env` 文件：

```env
# 现有的环境变量...
OPENAI_API_KEY=your_openai_api_key
ELEVENSLAB_API_KEY=your_elevenlabs_api_key  # 可选

# Slack 集成
SLACK_BOT_TOKEN=xoxb-your-bot-user-oauth-token
SLACK_APP_TOKEN=xapp-your-app-level-token

# Redis 配置
REDIS_HOST=localhost
REDIS_PORT=6379
REDIS_DB=0
```

### 运行 Slack 集成

配置好 Slack 应用和环境变量后：

#### 第 1 步：在工作区中安装应用

1. 确保您的 Slack 应用已安装在您的工作区中
2. 将 BeifongAI 添加到您想要使用的频道
3. 您也可以向 BeifongAI 发送私信

#### 第 2 步：启动 Slack 集成

```bash
# 导航到 beifong 目录
cd beifong

# 确保您的环境已激活
source venv/bin/activate

# 运行 Slack 集成脚本
python -m integrations.slack.chat
```

#### 第 3 步：与 BeifongAI 交互

**在 Slack 频道中：**
- 提及 @BeifongAI 以开始对话
- 每次提都会为上下文连续性创建一个新线程
- 示例：`@BeifongAI 您能帮我分析一下关于 AI 发展的最新新闻吗？`

**参考文档：**
- [Slack Socket Mode API](https://api.slack.com/apis/socket-mode)

## 数据存储和文件管理

### 数据库存储

所有应用程序数据库都在 **databases** 目录中组织，便于管理和备份。

### 媒体资产管理

生成的播客、音频文件和视觉资产存储在 **podcasts** 目录中。

### 管理存储增长

如果资产存储增长，请考虑这些存储优化策略：

**云存储集成：**
- 使用 s3fs 将 S3 存储桶挂载为本地文件夹以存储媒体资产
- 在 `.env` 中配置自定义存储路径以使用更大的驱动器

**自动清理：**
- 设置定期归档旧播客剧集
- 实现临时录音和未使用资产的自动清理
- 为不同类型的内容配置保留策略

**存储监控：**
- 监控磁盘使用情况，因为您的内容库在增长
- 为存储容量阈值设置警报

**注意：** 更高效的存储管理和云连接器将在下一版本中添加。

## 部署和访问选项

### 本地网络访问

```bash
# 使用网络访问启动后端
cd beifong
python main.py --host 0.0.0.0 --port 7000
```

这使得应用程序可以通过您机器的 IP 地址在本地网络上访问。

### 远程访问解决方案

从本地网络外部访问 Beifong（解决方法）：

#### SSH 端口转发
```bash
# 将本地端口转发到远程机器
ssh -L 7000:localhost:7000 username@your-server-ip
```

#### Ngrok 隧道
```bash
# 创建临时公共隧道
ngrok http 7000
```
提供一个临时的公共 URL，转发到您的本地实例。

### 安全

Beifong 尚未包含认证层。认证将在下一版本中添加。

## 云选项

### Beifong 云功能
即将推出！

✅ Beifong 的云版本

✅ 更多社交媒体连接器

✅ 更多 API 选项。Claude, Gemini, OpenAI, Ollama

✅ 更多样式的播客定制

✅ 更多语音选项

✅ 更好的数据收集和存储管理

✅ 认证层

## 故障排除

### Kokoro 库安装问题

如果由于 Kokoro 库导致安装失败，您可以跳过安装此库，仅在需要时作为 TTS 引擎安装。Kokoro 是可选的，仅在您想使用它进行文本到语音生成时才需要。

有关 Kokoro 的更多信息，请查看参考：https://github.com/hexgrad/kokoro

### Browseruse 安装问题

如果由于 browseruse 导致安装失败，请确保 Playwright 版本已正确安装。浏览器自动化功能依赖于正确设置 Playwright。

更多参考和故障排除：https://github.com/browser-use/browser-use

### FAISS 库安装问题

如果 FAISS 库安装失败，您可以安全地忽略此错误并跳过安装 FAISS。仅在您想使用语义搜索功能时才需要此库。如果您不需要语义搜索功能，则可以安全地忽略 FAISS 安装失败。

参考：https://github.com/facebookresearch/faiss

### 基于浏览器的数据收集问题

一些数据收集功能依赖于浏览器自动化，在服务器环境中有时无法正常工作。虽然 Beifong 仍会运行，但某些浏览器依赖功能在没有适当浏览器设置的服务器环境中可能无法工作。

## 更新

🚀 **[仓库](https://github.com/arun477/beifong)**
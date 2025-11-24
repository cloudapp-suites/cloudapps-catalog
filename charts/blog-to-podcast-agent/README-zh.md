<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=blog-to-podcast-agent)

</div>

> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

## 📰 ➡️ 🎙️ 博客转播客代理
这是一个基于Streamlit的应用程序，允许用户将任何博客文章转换为播客。该应用使用OpenAI的GPT-4模型进行摘要，使用Firecrawl抓取博客内容，并使用ElevenLabs API生成音频。用户只需输入博客URL，应用就会根据博客生成一集播客。

## 功能特性

- **博客抓取**：使用Firecrawl API抓取任何公开博客URL的完整内容。

- **摘要生成**：使用OpenAI GPT-4创建引人入胜且简洁的博客摘要（在2000个字符以内）。

- **播客生成**：使用ElevenLabs语音API将摘要转换为音频播客。

- **API密钥集成**：需要OpenAI、Firecrawl和ElevenLabs API密钥才能运行，通过侧边栏安全输入。

## 设置

### 要求

1. **API密钥**：
    - **OpenAI API密钥**：在OpenAI注册以获取您的API密钥。

    - **ElevenLabs API密钥**：从ElevenLabs获取您的ElevenLabs API密钥。

    - **Firecrawl API密钥**：从Firecrawl获取您的Firecrawl API密钥。

2. **Python 3.8+**：确保您已安装Python 3.8或更高版本。

### 安装
1. 克隆此仓库：
   ```bash
   git clone https://github.com/Shubhamsaboo/awesome-llm-apps
   cd ai_agent_tutorials/ai_blog_to_podcast_agent
   ```

2. 安装所需的Python包：
   ```bash
   pip install -r requirements.txt
   ```
### 运行应用

1. 启动Streamlit应用：
   ```bash
   streamlit run blog_to_podcast_agent.py
   ```

2. 在应用界面中：
    - 在侧边栏中输入您的OpenAI、ElevenLabs和Firecrawl API密钥。

    - 输入您想要转换的博客URL。

    - 点击"🎙️ 生成播客"。

    - 收听生成的播客或下载它。
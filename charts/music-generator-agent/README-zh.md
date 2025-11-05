> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

## ModelsLab 音乐生成器

这是一个基于 Streamlit 的应用程序，允许用户使用 ModelsLab API 和 OpenAI 的 GPT-4 模型生成音乐。用户可以输入描述他们想要生成的音乐类型的提示，应用程序将根据给定的提示生成 MP3 格式的音乐轨道。

## 功能

- **音乐生成**：输入详细的音乐生成提示（流派、乐器、情绪等），应用程序将生成音乐轨道。
- **MP3 输出**：生成的音乐将以 MP3 格式提供，可在线收听或下载。
- **用户友好界面**：简洁明了的 Streamlit 用户界面，易于使用。
- **API 密钥集成**：需要 OpenAI 和 ModelsLab API 密钥才能运行。API 密钥在侧边栏中输入以进行身份验证。

## 设置

### 要求

1. **API 密钥**：
   - **OpenAI API 密钥**：在 [OpenAI](https://platform.openai.com/api-keys) 注册以获取您的 API 密钥。
   - **ModelsLab API 密钥**：在 [ModelsLab](https://modelslab.com/dashboard/api-keys) 注册以获取您的 API 密钥。

2. **Python 3.8+**：确保您已安装 Python 3.8 或更高版本。

### 安装
1. 克隆此仓库：
   ```bash
   git clone https://github.com/Shubhamsaboo/awesome-llm-apps
   cd ai_agent_tutorials/ai_models_lab_music_generator_agent
   ```

2. 安装所需的 Python 包：
   ```bash
   pip install -r requirements.txt
   ```
### 运行应用程序

1. 启动 Streamlit 应用：
   ```bash
   streamlit run models_lab_music_generator_agent.py
   ```

2. 在应用程序界面中：
   - 输入音乐生成提示
   - 点击"生成音乐"
   - 播放音乐并下载
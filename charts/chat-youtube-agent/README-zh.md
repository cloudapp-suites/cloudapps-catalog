> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

## 📽️ 与YouTube视频对话

基于LLM和RAG技术的YouTube视频对话应用，使用OpenAI的gpt-4o、mem0/embedchain作为记忆模块以及youtube-transcript-api。该应用利用检索增强生成（RAG）技术，根据上传视频的内容提供准确的问题答案。

### 功能特性

- 输入YouTube视频URL
- 对视频内容提出问题
- 使用RAG和所选LLM获得准确答案

### 如何开始？

1. 克隆GitHub仓库

```bash
git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
cd awesome-llm-apps/chat_with_X_tutorials/chat_with_youtube_videos
```
2. 安装所需依赖：

```bash
pip install -r requirements.txt
```
3. 获取您的OpenAI API密钥

- 注册[OpenAI账户](https://platform.openai.com/)（或您选择的其他LLM提供商）并获取API密钥。

4. 运行Streamlit应用
```bash
streamlit run chat_youtube.py
```
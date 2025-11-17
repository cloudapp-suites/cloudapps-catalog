> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

## 📄 与PDF聊天

使用RAG的LLM应用程序，只需30行Python代码即可与PDF聊天。该应用程序使用检索增强生成（RAG）来根据上传的PDF内容提供准确的答案。

### 功能

- 上传PDF文档
- 提出关于PDF内容的问题
- 使用RAG和所选LLM获得准确答案

### 如何开始？

1. 克隆GitHub仓库

```bash
git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
cd awesome-llm-apps/chat_with_X_tutorials/chat_with_pdf
```
2. 安装所需依赖

```bash
pip install -r requirements.txt
```
3. 获取您的OpenAI API密钥

- 注册[OpenAI账户](https://platform.openai.com/)（或您选择的LLM提供商）并获取您的API密钥。

4. 运行Streamlit应用程序
```bash
streamlit run chat_pdf.py
```
### 交互式应用演示
https://github.com/Shubhamsaboo/awesome-llm-apps/assets/31396011/12bdfc11-c877-4fc7-9e70-63f21d2eb977
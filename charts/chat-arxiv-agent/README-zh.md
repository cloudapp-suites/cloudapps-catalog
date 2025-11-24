<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=chat-arxiv-agent)

</div>

> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

# 🔎 与Arxiv研究论文对话
这个Streamlit应用程序使您能够使用GPT-4o与arXiv（一个庞大的学术文章库）进行交互式对话。通过这个RAG应用程序，您可以轻松访问和探索arXiv中包含的丰富知识。

## 功能
- 与arXiv进行对话式交互
- 访问和探索大量研究论文
- 利用OpenAI GPT-4o提供智能响应

## 如何开始？

1. 克隆GitHub仓库

```bash
git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
cd awesome-llm-apps/chat_with_X_tutorials/chat_with_research_papers
```
2. 安装所需依赖：

```bash
pip install -r requirements.txt
```
3. 获取您的OpenAI API密钥

- 注册一个[OpenAI账户](https://platform.openai.com/)（或您选择的LLM提供商）并获取您的API密钥。

4. 运行Streamlit应用程序
```bash
streamlit run chat_arxiv.py
```
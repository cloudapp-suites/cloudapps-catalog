<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=ai-deep-research-agent)

</div>

> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

# 基于OpenAI Agents SDK和Firecrawl的深度研究助手

一个强大的研究助理，利用OpenAI Agents SDK和Firecrawl的深度研究功能，对任何主题和问题进行全面的网络研究。

## 功能特点

- **深度网络研究**：自动搜索网络，提取内容并综合研究成果
- **增强分析**：使用OpenAI Agents SDK，通过额外的上下文和见解详细阐述研究结果
- **交互式界面**：简洁的Streamlit界面，便于交互操作
- **可下载报告**：将研究成果导出为markdown文件

## 工作原理

1. **输入阶段**：用户提供研究主题和API凭证
2. **研究阶段**：工具使用Firecrawl搜索网络并提取相关信息
3. **分析阶段**：根据研究发现生成初步研究报告
4. **深化阶段**：第二个代理对初始报告进行详细阐述，增加深度和背景信息
5. **输出阶段**：将深化后的报告呈现给用户并可供下载

## 环境要求

- Python 3.8+
- OpenAI API密钥
- Firecrawl API密钥
- 所需的Python包（参见[requirements.txt](file:///Users/xzw/PycharmProjects/charts-store-up_%E5%89%AF%E6%9C%AC/charts/ai-deep-research-agent/requirements.txt)）

## 安装步骤

1. 克隆此仓库：
   ```bash
   git clone  https://github.com/Shubhamsaboo/awesome-llm-apps.git
   cd advanced_ai_agents/single_agent_apps/ai_deep_research_agent
   ```

2. 安装所需软件包：
   ```bash
   pip install -r requirements.txt
   ```

## 使用方法

1. 运行Streamlit应用：
   ```bash
   streamlit run deep_research_openai.py
   ```

2. 在侧边栏输入您的API密钥：
   - OpenAI API密钥
   - Firecrawl API密钥

3. 在主输入框中输入您的研究主题

4. 点击"开始研究"并等待过程完成

5. 查看并下载您深化后的研究报告

## 示例研究主题

- "量子计算的最新发展"
- "气候变化对海洋生态系统的影响"
- "可再生能源存储技术的进步"
- "人工智能中的伦理考量"
- "远程工作技术的新兴趋势"

## 技术细节

该应用程序使用两个专门的代理：

1. **研究代理**：利用Firecrawl的深度研究端点从多个网络来源收集全面的信息。

2. **深化代理**：通过添加详细的解释、示例、案例研究和实际影响来增强初步研究。

Firecrawl深度研究工具执行多次网络搜索、内容提取和分析，以提供对主题的全面覆盖。
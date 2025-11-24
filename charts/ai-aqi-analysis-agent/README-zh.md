<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=ai-aqi-analysis-agent)

</div>

> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

# 🌍 AQI 分析代理

AQI 分析代理是一个强大的空气质量监测和健康建议工具，由 Firecrawl 和 Agno 的 AI 代理框架提供支持。该应用程序通过分析实时空气质量数据并提供个性化的健康建议，帮助用户就户外活动做出明智的决策。

## 功能

- **多代理系统**
    - **AQI 分析器**: 获取并处理实时空气质量数据
    - **健康建议代理**: 生成个性化健康建议

- **空气质量指标**：
  - 整体空气质量指数 (AQI)
  - 颗粒物 (PM2.5 和 PM10)
  - 一氧化碳 (CO) 浓度
  - 温度
  - 湿度
  - 风速

- **综合分析**：
  - 实时数据可视化
  - 健康影响评估
  - 活动安全建议
  - 户外活动的最佳时间建议
  - 天气条件关联性

- **交互功能**：
  - 基于位置的分析
  - 医疗状况考虑
  - 特定活动建议
  - 可下载报告
  - 快速测试的示例查询

## 运行方法

请按照以下步骤设置并运行应用程序：

1. **克隆仓库**：
   ```bash
   git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
   cd ai_agent_tutorials/ai_aqi_analysis_agent
   ```

2. **安装依赖项**：
    ```bash
    pip install -r requirements.txt
    ```

3. **设置您的 API 密钥**：
    - 从以下网址获取 OpenAI API 密钥：https://platform.openai.com/api-keys
    - 从以下网址获取 Firecrawl API 密钥：[Firecrawl 网站](https://www.firecrawl.dev/app/api-keys)

4. **运行 Gradio 应用程序**：
    ```bash
    python ai_aqi_analysis_agent.py
    ```

5. **访问 Web 界面**：
    - 终端将显示两个 URL：
      - 本地 URL：`http://127.0.0.1:7860`（用于本地访问）
      - 公共 URL：`https://xxx-xxx-xxx.gradio.live`（用于临时公共访问）
    - 点击任一 URL 在浏览器中打开 Web 界面

## 使用说明

1. 在 API 配置部分输入您的 API 密钥
2. 输入位置详情：
   - 城市名称
   - 州/省（对于联邦属地/美国城市可选）
   - 国家
3. 提供个人信息：
   - 医疗状况（可选）
   - 计划的户外活动
4. 点击"分析并获取建议"以接收：
   - 当前空气质量数据
   - 健康影响分析
   - 活动安全建议
5. 尝试示例查询进行快速测试

## 注意事项

空气质量数据是使用 Firecrawl 的网络爬虫功能获取的。由于缓存和速率限制，数据可能与网站上的实时值不完全匹配。如需最准确的实时数据，请直接查看源网站。
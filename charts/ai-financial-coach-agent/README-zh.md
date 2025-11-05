> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

# 基于 Google ADK 的 AI 财务教练代理 💰

**AI 财务教练** 是一个由 Google ADK（代理开发工具包）框架驱动的个性化财务顾问应用。该应用基于用户输入的收入、支出、债务和财务目标，提供全面的财务分析和建议。

## 功能特性

- **多代理财务分析系统**
    - 预算分析代理：分析消费模式并推荐优化方案
    - 储蓄策略代理：制定个性化的储蓄计划和应急基金策略
    - 债务减免代理：使用雪崩法和雪球法开发优化的债务偿还策略

- **支出分析**：
  - 支持 CSV 上传和手动支出录入
  - CSV 交易分析，包含日期、类别和金额跟踪
  - 按类别的支出可视化分解
  - 自动支出分类和模式检测

- **储蓄建议**：
  - 应急资金规模设定和构建策略
  - 跨不同目标的自定义储蓄分配
  - 实用的自动化技术以实现持续储蓄
  - 进度跟踪和里程碑建议

- **债务管理**：
  - 多重债务处理与利率优化
  - 雪崩法和雪球法之间的比较
  - 可视化债务偿还时间线和利息节省分析
  - 可操作的债务减免建议

- **交互式可视化**：
  - 支出分解饼图
  - 收入与支出对比柱状图
  - 债务对比图表
  - 进度跟踪指标


## 运行方法

请按照以下步骤设置和运行应用程序：

1. **获取 API 密钥**：
   - 从 Google AI Studio 获取免费的 Gemini API 密钥：https://aistudio.google.com/apikey
   - 在项目根目录下创建 `.env` 文件并添加您的 API 密钥：
     ```
     GOOGLE_API_KEY=your_api_key_here
     ```

2. **克隆仓库**：
   ```bash
   git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
   cd awesome-llm-apps/advanced_ai_agents/multi_agent_apps/ai_financial_coach_agent/
   ```

3. **安装依赖项**：
   ```bash
   pip install -r requirements.txt
   ```

4. **运行 Streamlit 应用**：
   ```bash
   streamlit run ai_financial_coach_agent.py
   ```

## CSV 文件格式

应用程序接受具有以下必需列的 CSV 文件：
- `Date`：交易日期，格式为 YYYY-MM-DD
- `Category`：支出类别
- `Amount`：交易金额（支持货币符号和逗号格式）

示例：
```csv
Date,Category,Amount
2024-01-01,Housing,1200.00
2024-01-02,Food,150.50
2024-01-03,Transportation,45.00
```

可以从应用程序侧边栏直接下载模板 CSV 文件。
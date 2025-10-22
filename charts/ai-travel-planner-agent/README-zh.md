## 🌍 MCP 旅行规划代理团队

一个基于 Streamlit 的复杂 AI 旅行规划应用程序，使用多个 MCP 服务器和 Google Maps 集成创建极其详细、个性化的旅行行程。该应用使用 Airbnb MCP 获取真实的住宿数据，并使用自定义的 Google Maps MCP 进行精确的距离计算和位置服务。

## ✨ 功能特点

### 🤖 AI 驱动的旅行规划
- **极其详细的行程**：创建包含具体时间安排、地址和费用的全面日程计划
- **距离计算**：使用 Google Maps MCP 计算所有地点之间的精确距离和旅行时间
- **实时住宿数据**：与 Airbnb MCP 集成获取当前价格和可用性信息
- **个性化推荐**：根据用户偏好和预算限制定制行程

### 🏨 Airbnb MCP 集成
- **真实住宿列表**：提供当前的价格和可用性信息
- **房源详情**：包括设施、客人评价和预订可用性
- **预算意识推荐**：根据位置和偏好筛选
- **直接预订信息**：提供实时房价

### 🗺️ Google Maps MCP 集成
- **精确距离计算**：计算行程中所有地点之间的距离
- **旅行时间估算**：用于交通规划
- **位置服务**：提供兴趣点和导航信息
- **地址验证**：验证所有推荐地点的地址
- **交通优化**：提供逐步导航指导

### 🔍 Google 搜索集成
- **当前天气预报**：提供详细的着装建议
- **餐厅研究**：提供具体地址、价格范围和评价
- **景点详情**：包括开放时间、门票价格和最佳游览时间
- **当地见解**：提供文化和旅游信息
- **实用旅行提示**：包括货币兑换和安全信息

### 📅 其他功能
- **日历导出**：将行程下载为 .ics 文件，可导入 Google 日历、苹果日历或 Outlook
- **综合费用明细**：对所有旅行组成部分进行详细的预算分析
- **缓冲时间规划**：在时间安排中包含旅行时间和意外延误
- **多种住宿选择**：提供 3 种住宿选择，标明与市中心的距离

## 设置

### 要求

1. **API 密钥**（两者均必需）：
    - **OpenAI API 密钥**：从 [OpenAI 平台](https://platform.openai.com/api-keys)获取您的 API 密钥
    - **Google Maps API 密钥**：从 [Google Cloud 控制台](https://console.cloud.google.com/apis/credentials)获取您的 API 密钥

2. **Python 3.8+**：确保您已安装 Python 3.8 或更高版本。

3. **MCP 服务器**：应用会自动连接到：
    - **Airbnb MCP 服务器**：提供真实的 Airbnb 列表和价格数据
    - **自定义 Google Maps MCP**：实现精确的距离计算和位置服务

### 安装

1. 克隆此仓库：
   ```bash
   git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
   cd awesome-llm-apps/mcp_ai_agents/ai_travel_planner_mcp_agent_team
   ```

2. 安装所需的 Python 包：
   ```bash
   pip install -r requirements.txt
   ```

### 运行应用

1. 启动 Streamlit 应用：
   ```bash
   streamlit run app.py
   ```

2. 在应用界面中：
   - 在侧边栏输入您的 **OpenAI API 密钥**
   - 在侧边栏输入您的 **Google Maps API 密钥**
   - 指定目的地、旅行时长、预算和偏好
   - 点击"🎯 生成行程"创建您的详细旅行计划

3. **可选**：将您的行程下载为日历文件(.ics)，可导入 Google 日历、苹果日历或 Outlook

## 故障排除

### 常见问题及解决方案

- **"错误：[错误信息]"**：检查您的网络连接和 API 密钥
  - 验证 OpenAI 和 Google Maps API 密钥是否正确输入
  - 几分钟后重试 - MCP 服务器可能暂时不可用

- **缺少距离信息**：Google Maps MCP 连接问题
  - 检查您的 Google Maps API 密钥有效性
  - 确保您的 API 密钥具有 Maps API 的必要权限
  - 尝试刷新页面并重新输入密钥

- **响应缓慢**：MCP 服务器需要时间响应
  - 应用配置了 60 秒超时
  - 等待过程完成 - 详细行程需要时间生成

- **网络/防火墙问题**：某些企业网络可能会阻止 MCP 连接
  - 尝试使用不同的网络
  - 必要时使用 VPN
  - 如果 MCP 服务器无法访问，应用将显示连接错误

### API 密钥问题

- **OpenAI API 密钥**：确保您的 OpenAI 账户有余额且密钥有效
- **Google Maps API 密钥**：确保密钥已启用 Maps API 并正确设置计费

### 工具状态

应用将显示成功使用的数据源：
- 🏨 **"您的旅行行程已准备就绪，包含 Airbnb 数据！"** = Airbnb MCP 连接成功
- 📝 **"使用通用知识提供建议"** = Airbnb MCP 失败，使用通用知识作为后备方案

**该应用设计为可靠运行！** 即使 MCP 连接失败，它也会使用可用工具和信息生成全面的行程。

## 项目结构

```
├── app.py              # 集成 MCP 的主要 Streamlit 应用程序
├── requirements.txt    # Python 依赖项
└── README.md          # 此文档
```

## 工作原理

AI 旅行规划代理团队使用复杂的多步骤流程来创建极其详细的旅行行程：

### 🤖 AI 代理架构
- **GPT-4o 模型**：以高级推理能力驱动智能旅行规划
- **多 MCP 集成**：结合 Airbnb 和 Google Maps MCP 服务器实现实时数据
- **Google 搜索工具**：提供当前天气、评价和当地见解
- **直接响应生成**：创建完整行程而无需询问澄清问题
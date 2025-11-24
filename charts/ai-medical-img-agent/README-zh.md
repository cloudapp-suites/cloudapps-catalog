<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=ai-medical-img-agent)

</div>

> ⚠️ 注意：该应用使用 openai/gemini 等外部服务，对服务器所在地网络有要求。请使用合适的集群进行部署，如 新加坡 集群，并确保对外服务网络可用。

# 🩻 医学影像诊断代理

基于 agno 构建的医学影像诊断代理，由 Gemini 2.0 Flash 提供支持，可提供对各种扫描的医学图像的 AI 辅助分析。该代理充当医学影像诊断专家，分析各种类型的医学图像和视频，提供详细的诊断见解和解释。

## 功能

- **全面的图像分析**
  - 图像类型识别（X光、MRI、CT扫描、超声波）
  - 解剖区域检测
  - 关键发现和观察
  - 潜在异常检测
  - 图像质量评估
  - 研究和参考

## 运行方法

1. **设置环境**
   ```bash
   # 克隆仓库
   git clone https://github.com/Shubhamsaboo/awesome-llm-apps.git
   cd ai_agent_tutorials/ai_medical_imaging_agent

   # 安装依赖
   pip install -r requirements.txt
   ```

2. **配置 API 密钥**
   - 从 [Google AI Studio](https://aistudio.google.com) 获取 Google API 密钥

3. **运行应用程序**
   ```bash
   streamlit run ai_medical_imaging.py
   ```

## 分析组件

- **图像类型和区域**
  - 识别成像方式
  - 指定解剖区域

- **关键发现**
  - 系统性列出观察结果
  - 详细的外观描述
  - 异常突出显示

- **诊断评估**
  - 潜在诊断排名
  - 鉴别诊断
  - 严重程度评估

- **患者友好的解释**
  - 简化术语
  - 详细的第一性原理解释
  - 视觉参考点

## 注意事项

- 使用 Gemini 2.0 Flash 进行分析
- 需要稳定的互联网连接
- 免费 API 使用额度 - google 每天提供 1,500 次免费请求！
- 仅用于教育和开发目的
- 不能替代专业医学诊断

## 免责声明

此工具仅用于教育和信息目的。所有分析应由合格的医疗保健专业人员审查。不要仅基于此分析做出医疗决定。
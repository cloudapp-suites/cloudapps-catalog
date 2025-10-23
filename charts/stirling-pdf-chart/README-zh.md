> 🚀 **EDAS 提供应用一键部署，快来体验吧！** [立即部署](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=48e0f27f-b651-4edd-b63d-6b06dc0cfeb9)

<p align="center"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/stirling-pdf-chart/image/stirling.png" width="80"></p>
<h1 align="center">Stirling-PDF</h1>

[![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/stirling-pdf-chart/image/s-pdf.svg)](https://hub.docker.com/r/frooodle/s-pdf)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/stirling-pdf-chart/image/1068636748814483718.svg)](https://discord.gg/HYmhKj45pU)
[![OpenSSF Scorecard](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/stirling-pdf-chart/image/68747470733a2f2f6170692e73636f7265636172642e6465762f70726f6a656374732f6769746875622e636f6d2f537469726c696e672d546f6f6c732f537469726c696e672d5044462f6261646765.svg)](https://scorecard.dev/viewer/?uri=github.com/Stirling-Tools/Stirling-PDF)
[![GitHub Repo stars](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/stirling-pdf-chart/image/stirling-pdf.svg)](https://github.com/Stirling-Tools/stirling-pdf)

[Stirling-PDF](https://www.stirlingpdf.com) 是一个功能强大、可本地部署的基于 Web 的 PDF 操作工具，使用 Docker 构建。它支持对 PDF 文件执行各种操作，包括拆分、合并、转换、重新排序、添加图片、旋转、压缩等。这款本地部署的 Web 应用程序已发展出一套全面的功能，满足您所有的 PDF 需求。

所有文件和 PDF 数据要么仅存在于客户端，要么仅在任务执行期间驻留在服务器内存中，或者仅为了执行任务而临时存储在文件中。用户下载任何文件时，该文件早已从服务器上删除。

官网地址：[https://stirlingpdf.com](https://stirlingpdf.com)

完整文档请访问 [https://docs.stirlingpdf.com/](https://docs.stirlingpdf.com/)

![stirling-home](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/stirling-pdf-chart/image/stirling-home.jpg)

## 功能特性

- 支持 50 多种 PDF 操作
- 并行文件处理和下载
- 支持暗黑模式
- 自定义下载选项
- 自定义“流水线”以自动队列方式运行多个功能
- 提供 API 接口以便与外部脚本集成
- 可选的登录和身份验证支持（详见[文档](https://docs.stirlingpdf.com/Advanced%20Configuration/System%20and%20Security)）
- 数据库备份与导入（详见[文档](https://docs.stirlingpdf.com/Advanced%20Configuration/DATABASE)）
- 企业级功能如 SSO（详见[文档](https://docs.stirlingpdf.com/Advanced%20Configuration/Single%20Sign-On%20Configuration)）

## PDF 功能

### 页面操作

- 查看和编辑 PDF - 支持自定义查看、排序和搜索多页 PDF，并提供页面注释、绘图、添加文本和图片等编辑功能（使用 PDF.js、Joxit 和 Liberation 字体）
- 提供用于合并、拆分、旋转、移动 PDF 及其页面的完整交互式图形界面
- 将多个 PDF 合并成一个文件
- 按指定页码拆分 PDF，或提取所有页面为独立文件
- 重新排列 PDF 页面顺序
- 按 90 度增量旋转 PDF
- 删除页面
- 多页布局（将 PDF 格式化为多页页面）
- 按设定百分比缩放页面内容
- 调整对比度
- 裁剪 PDF
- 自动拆分 PDF（支持物理扫描的分页标记）
- 提取页面
- 将 PDF 转换为单页
- 将 PDF 叠加在一起
- 将 PDF 转换为单页
- 按章节拆分 PDF

### 转换操作

- PDF 与图像之间的相互转换
- 将任意常见文件转换为 PDF（使用 LibreOffice）
- 将 PDF 转换为 Word、PowerPoint 等格式（使用 LibreOffice）
- 将 HTML 转换为 PDF
- 将 PDF 转换为 XML
- 将 PDF 转换为 CSV
- 将 URL 转换为 PDF
- 将 Markdown 转换为 PDF

### 安全与权限

- 添加和删除密码
- 更改/设置 PDF 权限
- 添加水印
- 对 PDF 进行认证/签名
- 清理 PDF
- 自动模糊文本

### 其他操作

- 添加/生成/书写签名
- 按大小或 PDF 拆分
- 修复 PDF
- 检测并删除空白页
- 对比两个 PDF 并显示文本差异
- 向 PDF 添加图片
- 压缩 PDF 以减小文件体积（使用 qpdf）
- 从 PDF 中提取图片
- 从 PDF 中移除图片
- 从扫描件中提取图片
- 移除注释
- 添加页码
- 通过检测 PDF 标题文本自动重命名文件
- 对 PDF 进行 OCR（使用 Tesseract OCR）
- 转换为 PDF/A（使用 LibreOffice）
- 编辑元数据
- 扁平化 PDF
- 获取 PDF 的所有信息并可导出为 JSON
- 显示/检测嵌入的 JavaScript

# 📖 开始使用

请访问我们的完整文档 [docs.stirlingpdf.com](https://docs.stirlingpdf.com) 获取以下内容：

- 所有平台的安装指南
- 配置选项
- 功能文档
- API 参考
- 安全设置
- 企业功能

## 支持的语言

Stirling-PDF 当前支持 40 种语言！

| 语言                                     | 进度                                   |
| ---------------------------------------- | -------------------------------------- |
| 阿拉伯语 (العربية) (ar_AR)                | [63%](https://geps.dev/progress/63)   |
| 阿塞拜疆语 (Azərbaycan Dili) (az_AZ)     | [63%](https://geps.dev/progress/63)   |
| 巴斯克语 (Euskara) (eu_ES)              | [37%](https://geps.dev/progress/37)   |
| 保加利亚语 (Български) (bg_BG)           | [70%](https://geps.dev/progress/70)   |
| 加泰罗尼亚语 (Català) (ca_CA)           | [69%](https://geps.dev/progress/69)   |
| 克罗地亚语 (Hrvatski) (hr_HR)           | [62%](https://geps.dev/progress/62)   |
| 捷克语 (Česky) (cs_CZ)                  | [71%](https://geps.dev/progress/71)   |
| 丹麦语 (Dansk) (da_DK)                  | [63%](https://geps.dev/progress/63)   |
| 荷兰语 (Nederlands) (nl_NL)             | [61%](https://geps.dev/progress/61)   |
| 英语 (English) (en_GB)                  | [100%](https://geps.dev/progress/100) |
| 美式英语 (en_US)                        | [100%](https://geps.dev/progress/100) |
| 法语 (Français) (fr_FR)                 | [91%](https://geps.dev/progress/91)   |
| 德语 (Deutsch) (de_DE)                  | [100%](https://geps.dev/progress/100) |
| 希腊语 (Ελληνικά) (el_GR)               | [69%](https://geps.dev/progress/69)   |
| 印地语 (हिंदी) (hi_IN)                   | [68%](https://geps.dev/progress/68)   |
| 匈牙利语 (Magyar) (hu_HU)               | [99%](https://geps.dev/progress/99)   |
| 印度尼西亚语 (Bahasa Indonesia) (id_ID) | [63%](https://geps.dev/progress/63)   |
| 爱尔兰语 (Gaeilge) (ga_IE)              | [70%](https://geps.dev/progress/70)   |
| 意大利语 (Italiano) (it_IT)             | [98%](https://geps.dev/progress/98)   |
| 日语 (日本語) (ja_JP)                   | [95%](https://geps.dev/progress/95)   |
| 韩语 (한국어) (ko_KR)                   | [69%](https://geps.dev/progress/69)   |
| 挪威语 (Norsk) (no_NB)                  | [67%](https://geps.dev/progress/67)   |
| 波斯语 (فارسی) (fa_IR)                  | [66%](https://geps.dev/progress/66)   |
| 波兰语 (Polski) (pl_PL)                 | [73%](https://geps.dev/progress/73)   |
| 葡萄牙语 (Português) (pt_PT)            | [70%](https://geps.dev/progress/70)   |
| 巴西葡萄牙语 (Português) (pt_BR)        | [77%](https://geps.dev/progress/77)   |
| 罗马尼亚语 (Română) (ro_RO)            | [59%](https://geps.dev/progress/59)   |
| 俄语 (Русский) (ru_RU)                  | [90%](https://geps.dev/progress/90)   |
| 塞尔维亚语（拉丁字母）(Srpski) (sr_LATN_RS) | [97%](https://geps.dev/progress/97) |
| 简体中文 (简体中文) (zh_CN)             | [95%](https://geps.dev/progress/95)   |
| 斯洛伐克语 (Slovensky) (sk_SK)          | [53%](https://geps.dev/progress/53)   |
| 斯洛文尼亚语 (Slovenščina) (sl_SI)      | [73%](https://geps.dev/progress/73)   |
| 西班牙语 (Español) (es_ES)              | [75%](https://geps.dev/progress/75)   |
| 瑞典语 (Svenska) (sv_SE)                | [67%](https://geps.dev/progress/67)   |
| 泰语 (ไทย) (th_TH)                       | [60%](https://geps.dev/progress/60)   |
| 藏语 (བོད་ཡིག་) (bo_CN)                 | [66%](https://geps.dev/progress/66) |
| 繁体中文 (繁體中文) (zh_TW)              | [99%](https://geps.dev/progress/99)   |
| 土耳其语 (Türkçe) (tr_TR)               | [82%](https://geps.dev/progress/82)   |
| 乌克兰语 (Українська) (uk_UA)           | [72%](https://geps.dev/progress/72)   |
| 越南语 (Tiếng Việt) (vi_VN)             | [58%](https://geps.dev/progress/58)   |
| 马拉雅拉姆语 (മലയാളം) (ml_IN)         | [75%](https://geps.dev/progress/75)   |

## Stirling PDF 企业版

Stirling PDF 提供企业版软件。它基于相同出色的软件，但增加了更多功能、支持和服务。
请查看我们的 [企业版文档](https://docs.stirlingpdf.com/Pro)

## 🤝 想要贡献代码？

加入我们的社区：
- 贡献指南
- 翻译指南（如何添加自定义语言）
- 开发者指南
- [问题跟踪](https://github.com/Stirling-Tools/Stirling-PDF/issues)
- [Discord 社区](https://discord.gg/HYmhKj45pU)
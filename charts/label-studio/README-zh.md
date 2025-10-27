<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=89afd8a9-7023-44ba-8064-a87a9f0616d4)

</div>

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/ls_github_header.png"/>

![GitHub](https://img.shields.io/github/license/heartexlabs/label-studio?logo=heartex) ![label-studio:build](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/badge.svg) ![GitHub release](https://img.shields.io/github/v/release/heartexlabs/label-studio?include_prereleases)

[官网](https://labelstud.io/) • [文档](https://labelstud.io/guide/) • [Twitter](https://twitter.com/heartexlabs) • [加入Slack社区 <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/slack-mini.png" width="18px"/>](https://slack.labelstudio.heartex.com/?source=github-1)

## 什么是 Label Studio？

Label Studio 是一个开源的数据标注工具。它允许你使用简单直观的界面对音频、文本、图像、视频和时间序列等多种数据类型进行标注，并导出为多种模型格式。你可以使用它来准备原始数据或改进现有训练数据，从而获得更精确的机器学习模型。

- 尝试 Label Studio
- Label Studio 能为你带来什么
- Label Studio 中包含的数据标注模板
- 使用 Label Studio 设置机器学习模型
- 将 Label Studio 与现有工具集成

![Label Studio 标注不同类型数据的GIF](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/annotation_examples.gif)

如果你有自定义数据集？你可以根据需求定制 Label Studio。阅读这篇[介绍性博客文章](https://towardsdatascience.com/introducing-label-studio-a-swiss-army-knife-of-data-labeling-140c1be92881)了解更多。

## Label Studio 能为你带来什么

![Label Studio 数据管理器网格视图截图（显示图像）](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/labelstudio-ui.gif)

- **多用户标注**：支持注册和登录，你的标注会与你的账户绑定。
- **多个项目**：在一个实例中管理所有数据集。
- **简洁的设计**：帮助你专注于任务，而不是学习如何使用软件。
- **可配置的标签格式**：可以自定义界面以满足特定的标注需求。
- **支持多种数据类型**：包括图像、音频、文本、HTML、时间序列和视频。
- **支持从文件或云存储导入**：支持 Amazon AWS S3、Google Cloud Storage、JSON、CSV、TSV、RAR 和 ZIP 等格式。
- **与机器学习模型集成**：可以可视化并比较不同模型的预测结果，并进行预标注。
- **嵌入到数据管道中**：REST API 使得它易于集成到你的数据流程中。

## Label Studio 中包含的数据标注模板

Label Studio 提供了多种模板来帮助你标注数据，你也可以使用专门设计的配置语言创建自己的模板。最常见的模板和使用场景包括：

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/templates-categories.jpg" />

## 使用 Label Studio 设置机器学习模型

使用 Label Studio 的机器学习 SDK 连接你最喜欢的机器学习模型。请按照以下步骤操作：

1. 启动你自己的机器学习后端服务器。详见 [更详细的说明](https://github.com/heartexlabs/label-studio-ml-backend)。
2. 在项目设置中的模型页面上将 Label Studio 连接到该服务器。

这将使你能够：

- **预标注**：使用模型预测对数据进行标注。
- **在线学习**：在创建新标注的同时重新训练模型。
- **主动学习**：仅标注数据中最复杂的示例。

## 将 Label Studio 与现有工具集成

你可以将 Label Studio 作为机器学习工作流中的独立部分使用，或将前端或后端集成到现有工具中。

* 使用 [Label Studio 前端](https://github.com/heartexlabs/label-studio-frontend) 作为一个独立的 React 库。详见 [前端库文档](https://labelstud.io/guide/frontend.html)。

## 生态系统

| 项目 | 描述 |
|---|---|
| label-studio | 作为 pip 包分发的服务器 |
| [label-studio-frontend](https://github.com/heartexlabs/label-studio-frontend) | React 和 JavaScript 前端，可在浏览器中独立运行或嵌入到你的应用中 |
| [data-manager](https://github.com/heartexlabs/dm2) | 用于管理数据的 React 和 JavaScript 前端。包含 Label Studio 前端，依赖 label-studio 服务器或具有预期 API 方法的自定义后端 |
| [label-studio-converter](https://github.com/heartexlabs/label-studio-converter) | 将标签编码为你喜欢的机器学习库所需的格式 |
| [label-studio-transformers](https://github.com/heartexlabs/label-studio-transformers) | 已连接并配置好用于 Label Studio 的 Transformers 库 |

## 路线图

你想使用 **最酷的功能 X**，但 Label Studio 当前不支持？请查看 我们的公开路线图！

## 引用

```tex
@misc{Label Studio,
  title={{Label Studio}: 数据标注软件},
  url={https://github.com/heartexlabs/label-studio},
  note={开源软件，可从 https://github.com/heartexlabs/label-studio 获取},
  author={
    Maxim Tkachenko 和
    Mikhail Malyuk 和
    Andrey Holmanyuk 和
    Nikolai Liubimov},
  year={2020-2022},
}
```

## 许可证

本软件采用 Apache 2.0 许可证 授权 © [Heartex](https://www.heartex.ai/)。2020-2021

<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/label-studio/image/opossum_looking.png" title="大家好！" height="140" width="140" />
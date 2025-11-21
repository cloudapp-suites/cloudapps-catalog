<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=cyberchef)

</div>


# CyberChef

[![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/cyberchef/image/badge.svg)](https://github.com/gchq/CyberChef/actions?query=workflow%3A%22Master+Build%2C+Test+%26+Deploy%22)
[![npm](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/cyberchef/image/cyberchef.svg)](https://www.npmjs.com/package/cyberchef)
[![](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/cyberchef/image/license-Apache_202.0-blue.svg)](https://github.com/gchq/CyberChef/blob/master/LICENSE)
[![Gitter](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/cyberchef/image/CyberChef.svg)](https://gitter.im/gchq/CyberChef?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)

#### *网络瑞士军刀*

CyberChef 是一个简单、直观的网页应用，可在浏览器中执行各种“网络”操作。这些操作包括简单的编码（如 XOR 和 Base64）、更复杂的加密（如 AES、DES 和 Blowfish）、创建二进制和十六进制转储、数据压缩与解压缩、计算哈希值和校验和、IPv6 和 X.509 解析、更改字符编码等，功能非常丰富。

该工具旨在让技术人员和非技术人员都能以复杂的方式操作数据，而无需处理复杂的工具或算法。它由一名分析师在几年的时间里利用其 10% 的创新时间构思、设计、开发并逐步改进。

## 在线演示

CyberChef 仍在积极开发中。因此，它不应被视为一个完成的产品。仍然需要进行测试和修复错误、添加新功能以及编写更多文档。欢迎贡献！

CyberChef 中的加密操作不应被依赖于提供任何情况下的安全性。我们不对其正确性提供任何保证。

[在线演示地址][https://gchq.github.io/CyberChef/] - 玩得开心！

## 工作原理

CyberChef 主要包含四个区域：

 1. 右上角的 **输入** 框，您可以在此粘贴、输入或拖入要操作的文本或文件。
 2. 右下角的 **输出** 框，用于显示处理结果。
 3. 最左侧的 **操作** 列表，您可以在分类列表中或通过搜索找到 CyberChef 支持的所有操作。
 4. 中间的 **配方** 区域，您可以在此拖动所需的操作，并指定参数和选项。

您可以以简单或复杂的方式使用任意数量的操作。以下是一些示例：

 - [解码一个 Base64 编码的字符串][2]
 - [将日期和时间转换为不同的时区][3]
 - [解析一个 Teredo IPv6 地址][4]
 - [将数据从十六进制转储转换，然后解压缩][5]
 - [解密并反汇编 shellcode][6]
 - [将多个时间戳显示为完整日期][7]
 - [对不同类型的数据执行不同的操作][8]
 - [使用输入的一部分作为操作的参数][9]
 - [执行 AES 解密，并从密文流的开头提取 IV][10]
 - [自动检测多层嵌套编码][12]

## 特性

 - 拖放功能
     - 操作可以自由拖入、拖出或重新排序。
     - 最大 2GB 的文件可以直接拖放到输入框中加载到浏览器。
 - 自动烘焙
     - 当您修改输入或配方时，CyberChef 会自动“烘焙”并立即生成输出。
     - 如果影响性能（例如输入非常大），可以关闭此功能并手动操作。
 - 自动编码检测
     - CyberChef 使用 [多种技术](https://github.com/gchq/CyberChef/wiki/Automatic-detection-of-encoded-data-using-CyberChef-Magic) 尝试自动检测数据所使用的编码方式。如果找到合适的操作可以解析您的数据，输出字段中会显示“魔法”图标，点击即可解码。
 - 断点
     - 您可以在配方中的任何操作上设置断点，以在执行前暂停。
     - 您还可以逐个操作逐步执行，查看每个阶段的数据状态。
 - 保存和加载配方
     - 如果您创建了一个很棒的配方，只需点击“保存配方”即可将其保存到本地存储中，下次访问 CyberChef 时仍然可用。
     - 您也可以复制包含配方和输入的 URL，方便与他人分享。
 - 搜索
     - 如果您知道所需操作的名称或相关词汇，只需在搜索框中输入，匹配的操作会立即显示。
 - 高亮显示
     - 当您在输入或输出中高亮文本时，会显示偏移量和长度值，并且如果可能，相应的数据会在输出或输入中高亮显示（例如：[在输入中高亮“question”一词以查看其在输出中的位置][11]）。
 - 保存到文件和从文件加载
     - 您可以随时将输出保存为文件，或者通过拖放操作将文件加载到输入字段中。支持最大约 2GB 的文件（取决于您的浏览器），但对如此大的数据执行某些操作可能会非常耗时。
 - CyberChef 完全基于客户端
     - 请注意，您的配方配置或输入（文本或文件）不会发送到 CyberChef 的服务器 - 所有处理都在您的浏览器中本地完成。
     - 由于此特性，CyberChef 可以下载并在本地运行。您可以使用应用左上角的链接下载完整的 CyberChef，放入虚拟机、与他人共享，或在封闭网络中托管。

## 深度链接

通过操作 CyberChef 的 URL 哈希，您可以更改页面打开时的初始设置。
格式为：`https://gchq.github.io/CyberChef/#recipe=Operation()&input=...`

支持的参数有 `recipe`、`input`（Base64 编码）和 `theme`。

## 浏览器支持

CyberChef 支持以下浏览器：

 - Google Chrome 50+
 - Mozilla Firefox 38+

## Node.js 支持

CyberChef 完全支持 Node.js `v16`。更多信息请参见 ["Node API" wiki 页面](https://github.com/gchq/CyberChef/wiki/Node-API)

## 贡献

向 CyberChef 贡献新操作非常简单！快速入门脚本将引导您完成整个过程。如果您能编写基本的 JavaScript，就可以编写 CyberChef 操作。

安装指南、添加新操作和主题的教程、仓库结构描述、可用数据类型和编码规范都可以在 ["贡献" wiki 页面](https://github.com/gchq/CyberChef/wiki/Contributing) 找到。

 - 将您的更改推送到您的 fork。
 - 提交一个拉取请求。如果是第一次提交，您将在拉取请求中被提示通过 CLA 助手签署 [GCHQ 贡献者许可协议](https://cla-assistant.io/gchq/CyberChef)。这还将询问您是否愿意让 GCHQ 联系您以表达对贡献的感谢或提供 GCHQ 的工作机会。

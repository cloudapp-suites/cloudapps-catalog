# 自动检测网站更改 — 实时监控网页变化

监控网站更新 — 通过 Discord、电子邮件、Slack、Telegram、Webhook 等方式接收通知。

**检测网页内容变化并即时提醒。**

适用于监控价格变化、内容编辑、条件变化等场景。

[<img src="https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/screenshot.png" style="max-width:100%;" alt="网站页面更改监控"  title="网站页面更改监控"  />](https://changedetection.io?src=github)

[![发布版本][release-shield]][release-link] [![Docker 下载量][docker-pulls]][docker-link] [![许可证][license-shield]](LICENSE.md)

![changedetection.io](https://github.com/dgtlmoon/changedetection.io/actions/workflows/test-only.yml/badge.svg?branch=master)

[**立即开始网站页面更改监控。没时间？试试我们的 $8.99/月订阅服务，使用我们的代理并获得支持！**](https://changedetection.io) ，**价格仅为其他网站更改监控服务的一半！**


- 内置 Chrome 浏览器。
- 无需安装，注册后通过浏览器登录即可访问。
- 超快速设置，无需注册。
- 立即开始监控并接收网站更改通知。
- 查看我们的 [教程和操作指南页面获取更多灵感](https://changedetection.io/tutorials) 

### 使用可视化选择器工具定位网页特定部分。

在连接到 <a href="https://github.com/dgtlmoon/changedetection.io/wiki/Playwright-content-fetcher">Playwright 内容抓取器</a> 时可用（包含在我们的订阅服务中）

[<img src="https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/visualselector-anim.gif" style="max-width:100%;" alt="选择要监控更改的网页部分和元素"  title="选择要监控更改的网页部分和元素" />](https://changedetection.io?src=github)

### 轻松查看更改内容，按字、行或单个字符进行检查。

[<img src="https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/screenshot-diff.png" style="max-width:100%;" alt="自托管网页更改监控上下文差异"  title="自托管网页更改监控上下文差异" />](https://changedetection.io?src=github)


### 执行交互式浏览器步骤

填写文本框、点击按钮等，设置你的更改检测场景。

使用 **浏览器步骤** 配置，在执行更改检测之前添加基本步骤，例如登录网站、将商品添加到购物车、接受 Cookie 登录、输入日期和优化搜索。

[<img src="https://github.com/dgtlmoon/changedetection.io/raw/master/docs/browsersteps-anim.gif" style="max-width:100%;" alt="使用交互式浏览器步骤进行网站更改检测，检测登录和密码后的更改、搜索查询等"  title="使用交互式浏览器步骤进行网站更改检测，检测登录和密码后的更改、搜索查询等" />](https://changedetection.io?src=github)

在运行完 **浏览器步骤** 后，访问 **可视化选择器** 标签页，以进一步细化你感兴趣的内容。
需要启用 Playwright。

### 出色的补货和价格变化通知

启用 _"单个产品页面的补货与价格检测"_ 选项，以激活最佳的产品价格监控方式。这将提取 HTML 页面中的任何元数据，并为你提供多种选项来跟踪产品价格。

轻松地从仪表板组织和监控产品价格，在产品价格变化或重新补货时获取提醒和通知！

[<img src="https://github.com/dgtlmoon/changedetection.io/raw/master/docs/restock-overview.png" style="max-width:100%;" alt="直接从 UI 轻松关注产品价格变化"  title="直接从 UI 轻松关注产品价格变化" />](https://changedetection.io?src=github)

设置价格变化通知参数，包括最高价、最低价、价格变化百分比等。
随时了解待售产品的价格下降。

[<img src="https://github.com/dgtlmoon/changedetection.io/raw/master/docs/restock-settings.png" style="max-width:100%;" alt="设置最高价、最低价和价格变化百分比通知值"  title="设置最高价、最低价和价格变化百分比通知值" />](https://changedetection.io?src=github)



### 示例使用场景

- 产品和服务的价格发生变化
- _缺货通知_ 和 _补货通知_
- 监控和跟踪 PDF 文件更改，了解 PDF 文件文本变化。
- 政府部门更新（变更通常仅在他们的网站上）
- 新软件发布、安全公告（当你不在他们的邮件列表中时）
- 有变化的音乐节
- Discogs 补货警报和监控
- 房地产列表变化
- 在你最喜欢的威士忌打折时或有其他特别优惠时第一时间知道
- 来自政府网站的 COVID 相关新闻
- 大学/组织的网站新闻
- 检测和监控 JSON API 响应的变化 
- JSON API 监控和警报
- 法律和其他文档的变化
- 当网站上出现特定文本时通过通知触发 API 调用
- 使用 JSON 过滤器和 JSON 通知将 API 调用粘合在一起
- 根据网页内容变化创建 RSS 源
- 监控 HTML 源代码以发现意外更改，加强你的 PCI 合规性
- 你有一组非常敏感的 URL 需要监控，且你 _不_ 想使用付费替代方案。（记住，_你_ 就是产品）
- 当 Twitter 搜索结果中出现特定关键词时接收通知
- 主动搜索工作机会，当公司更新其职业页面时接收通知，搜索职位门户中的关键词。
- 当 Bamboo HR 和其他求职平台上出现新的职位空缺时接收警报
- 网站篡改监控
- 宝可卡补货追踪器 / 宝可 TCG 追踪器
- RegTech - 领先于监管变化，确保监管合规

_需要实际的 Chrome 运行器并支持 JavaScript？我们支持通过 WebDriver 和 Playwright 抓取！</a>_

#### 关键功能

- 多种触发过滤器，例如 "按文本触发"、"按选择器移除文本"、"忽略文本"、"提取文本"，还支持正则表达式！
- 支持使用 xPath 1 和 xPath 2、CSS 选择器、JSONPath 或 jq 轻松监控复杂 JSON
- 在快速非 JS 和基于 Chrome JS 的 "抓取器" 之间切换
- 跟踪 PDF 文件中的变化（监控 PDF 中的文本变化，也监控 PDF 文件大小和校验和）
- 轻松指定站点应检查的频率
- 在提取文本之前执行 JS（适用于登录，参见 UI 中的示例！）
- 覆盖请求头，指定 `POST` 或 `GET` 和其他方法
- 使用 "可视化选择器" 帮助定位特定元素
- 可配置每个监控的 [代理](https://github.com/dgtlmoon/changedetection.io/wiki/Proxy-configuration)
- 在检测到网页更改时随通知发送屏幕截图

我们 [推荐并使用 Bright Data](https://brightdata.grsm.io/n0r16zf7eivq) 全球代理服务，使用我们的注册链接，Bright Data 将匹配任何首次存款高达 $150。

请 :star: 星标 :star: 这个项目并帮助它成长！ https://github.com/dgtlmoon/changedetection.io/

### 条件网页更改

轻松 [配置条件操作](https://changedetection.io/tutorial/conditional-actions-web-page-changes)，例如，仅在价格高于或低于预设金额时触发，或 [当网页包含（或不包含）某个关键词时](https://changedetection.io/tutorial/how-monitor-keywords-any-website)

<img src="https://github.com/dgtlmoon/changedetection.io/raw/master/docs/web-page-change-conditions.png" style="max-width:80%;" alt="条件网页更改"  title="条件网页更改"  />

### 按任意时区安排网页监控，按星期几和时间限制。

轻松设置重新检查计划，例如你可以将网页更改检测限制在工作时间内。
或者基于外国时区（例如，你想在外国的 09:00 AM 检查最新新闻头条），

<img src="https://github.com/dgtlmoon/changedetection.io/raw/master/docs/scheduler.png" style="max-width:80%;" alt="如何根据计划监控网页更改"  title="如何根据计划监控网页更改"  />

包括快速快捷按钮，用于设置 **仅工作时间** 或 **周末** 的计划。

### 我们有一个 Chrome 扩展！

轻松将当前网页添加到你的 changedetection.io 工具中，只需安装扩展并点击 "同步" 以将其连接到你现有的 changedetection.io 安装。

[<img src="https://github.com/dgtlmoon/changedetection.io/raw/master/docs/chrome-extension-screenshot.png" style="max-width:80%;" alt="Chrome 扩展，轻松将当前网页添加到检测更改中。"  title="Chrome 扩展，轻松将当前网页添加到检测更改中。"  />](https://chromewebstore.google.com/detail/changedetectionio-website/kefcfmgmlhmankjmnbijimhofdjekbop)

[前往 Chrome 网上应用店下载扩展。](https://chromewebstore.google.com/detail/changedetectionio-website/kefcfmgmlhmankjmnbijimhofdjekbop) （或者查看 [GitHub 仓库](https://github.com/dgtlmoon/changedetection.io-browser-extension) ）

## 过滤器

内置支持 XPath(1.0)、JSONPath、jq 和 CSS！你可以根据需要尽可能具体，使用从各种 XPath 元素查询创建工具导出的 XPath。
（我们支持 LXML `re:test`, `re:match` 和 `re:replace`。）

## 通知

ChangeDetection.io 支持大量通知（包括电子邮件、office365、自定义 API 等），当检测到网页更改时，这要归功于 <a href="https://github.com/caronc/apprise">apprise</a> 库。
只需在该监控的 _[编辑]_ 标签页中设置一个或多个通知 URL。

仅举几个例子：

    discord://webhook_id/webhook_token
    flock://app_token/g:channel_id
    gitter://token/room
    gchat://workspace/key/token
    msteams://TokenA/TokenB/TokenC/
    o365://TenantID:AccountEmail/ClientID/ClientSecret/TargetEmail
    rocket://user:password@hostname/#Channel
    mailto://user:pass@example.com?to=receivingAddress@example.com
    json://someserver.com/custom-api
    syslog://
 
<a href="https://github.com/caronc/apprise#popular-notification-services">以及这个列表中的所有其他内容！</a>

<img src="https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/screenshot-notifications.png" style="max-width:100%;" alt="自托管网页更改监控通知"  title="自托管网页更改监控通知"  />

现在你还可以自定义你的通知内容，并使用 <a target="_new" href="https://jinja.palletsprojects.com/en/3.0.x/templates/">Jinja2 模板</a> 自定义标题和正文！

## JSON API 监控

通过使用 JSONPath 或 jq 过滤、解析和重构 JSON，轻松检测和监控 JSON API 中的数据。

![image](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/json-filter-field-example.png)

这将重新解析 JSON 并对文本应用格式化，使得监控和检测 JSON API 结果中的更改变得非常容易。

![image](https://raw.githubusercontent.com/dgtlmoon/changedetection.io/master/docs/json-diff-example.png)

### JSONPath 还是 jq？

对于更复杂的解析、过滤和修改 JSON 数据，建议使用 jq，因为它内置了操作符和函数。有关 jq 的更多信息，请参阅 [文档](https://stedolan.github.io/jq/manual/)。

`jq` 的一个巨大优势是，你可以在 JSON 过滤器中使用逻辑，例如过滤器只显示具有大于/小于等值的项目。

请参阅维基 https://github.com/dgtlmoon/changedetection.io/wiki/JSON-Selector-Filter-help 获取更多信息和示例

### 解析嵌入在 HTML 中的 JSON！

当你启用 `json:` 或 `jq:` 过滤器时，你甚至可以自动提取和解析嵌入在 HTML 页面中的 JSON！这对于基于 JSON 构建内容的网站（如许多电子商务网站）非常方便。

```
<html>
...
<script type="application/ld+json">

{
   "@context":"http://schema.org/",
   "@type":"Product",
   "offers":{
      "@type":"Offer",
      "availability":"http://schema.org/InStock",
      "price":"3949.99",
      "priceCurrency":"USD",
      "url":"https://www.newegg.com/p/3D5-000D-001T1"
   },
   "description":"Cobratype King Cobra Hero Desktop Gaming PC",
   "name":"Cobratype King Cobra Hero Desktop Gaming PC",
   "sku":"3D5-000D-001T1",
   "itemCondition":"NewCondition"
}
</script>
```  

`json:$..price` 或 `jq:..price` 将给出 `3949.99`，或者你可以提取整个结构（使用 JSONpath 测试网站进行验证）

该应用程序还支持自动通知你它可以跟踪此信息


## 代理配置

请参阅维基 https://github.com/dgtlmoon/changedetection.io/wiki/Proxy-configuration ，我们还支持尽可能使用 [Bright Data 代理服务](https://github.com/dgtlmoon/changedetection.io/wiki/Proxy-configuration#brightdata-proxy-support) 和 [Oxylabs](https://oxylabs.go2cloud.org/SH2d) 代理服务。

## 支持 Raspberry Pi？

支持 Raspberry Pi 和 linux/arm/v6 linux/arm/v7 arm64 设备！请参阅维基中的 [详细信息](https://github.com/dgtlmoon/changedetection.io/wiki/Fetching-pages-with-WebDriver)

## 导入支持

轻松 [以 Excel .xslx 文件格式导入你要监控更改的网站列表](https://changedetection.io/tutorial/how-import-your-website-change-detection-lists-excel)，或粘贴纯文本格式的网站 URL 列表。

建议使用 Excel 导入 - 这样你可以更好地组织网站的标签/组和其他功能。


## API 支持

支持通过我们的 API 管理网站监控列表 [点击此处查看 API 文档](https://changedetection.io/docs/api_v1/index.html)

## 支持我们

你是否使用 changedetection.io 来赚钱？它是否为你节省了时间和金钱？它是否让生活更轻松、更不紧张？请记住，我们是在本应从事实际有偿工作的时候编写此软件的，我们和你一样需要购买食物和支付房租。


考虑购买一个官方支持的 [网站更改监控订阅服务](https://changedetection.io?src=github) ，即使你不使用它，你仍然会因为帮助了这个项目而感到温暖。 (谁知道呢，你可能会用上它！)

## 商业支持

我提供商业支持，这款软件被网络安全、航空航天、数据科学和数据记者等专业人士所依赖，仅举几例，请发送邮件至 dgtlmoon@gmail.com 进行任何咨询，我非常乐意与您的组织合作，进一步拓展 changedetection.io 的可能性。


[release-shield]: https://img.shields.io:/github/v/release/dgtlmoon/changedetection.io?style=for-the-badge
[docker-pulls]: https://img.shields.io/docker/pulls/dgtlmoon/changedetection.io?style=for-the-badge
[test-shield]: https://github.com/dgtlmoon/changedetection.io/actions/workflows/test-only.yml/badge.svg?branch=master

[license-shield]: https://img.shields.io/github/license/dgtlmoon/changedetection.io.svg?style=for-the-badge
[release-link]: https://github.com/dgtlmoon/changedetection.io/releases
[docker-link]: https://hub.docker.com/r/dgtlmoon/changedetection.io

## 商业许可

如果您以任何形式将本软件作为任何商业安排的一部分进行转售（无论是部分还是全部），您必须遵守我们代码仓库中的 COMMERCIAL_LICENCE.md，请联系 dgtlmoon@gmail.com 和 contact@changedetection.io 。

## 第三方许可

changedetectionio.html_tools.elementpath_tostring: Copyright (c), 2018-2021, SISSA (Scuola Internazionale Superiore di Studi Avanzati), 授权使用 [MIT 许可证](https://github.com/sissaschool/elementpath/blob/master/LICENSE)

## 贡献者

感谢以下杰出的项目贡献者

- Constantin Hong https://github.com/Constantin1489
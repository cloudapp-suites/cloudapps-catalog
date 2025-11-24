<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=apprise-api)

</div>


# Apprise API

通过用户友好的API在网络上利用[Apprise](https://github.com/caronc/apprise)。

- 向100多种服务发送通知。
- 一个极其轻量级的Apprise网关。
- 随时可用的生产级微服务。
- 一个简单的网站，用于验证和测试您的配置。

Apprise API旨在轻松适应现有的（和新的）寻找简单通知解决方案的生态系统。

[![Paypal](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/paypal-donate-green.svg)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=MHANV39UZNQ5E)
[![Follow](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/l2gnux.svg)](https://twitter.com/l2gnux/)<br/>
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/558793703356104724.svg)](https://discord.gg/MMPeN2D)
[![Build Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/badge.svg)](https://github.com/caronc/apprise-api/actions/workflows/tests.yml)
[![CodeCov Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/badge.svg)](https://codecov.io/github/caronc/apprise-api)
[![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/apprise.svg)](https://hub.docker.com/r/caronc/apprise)

## 屏幕截图

有一个小型的内置*配置管理器*，可以通过您的网络浏览器选择性地访问，允许您创建和保存任意数量的配置。每个配置都通过您决定的唯一`{KEY}`进行区分：<br/>
![GUI使用密钥的屏幕截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/Screenshot-1.png)<br/>

以下是您可以将Apprise URL分配给您的`{KEY}`的屏幕截图。您可以定义TEXT或YAML [Apprise配置](https://github.com/caronc/apprise/wiki/config)。<br/>
![GUI配置的屏幕截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/Screenshot-2.png)

以下是查看选项卡的屏幕截图，您可以在其中预览从定义的配置中加载的Apprise URL。它还允许您查看与它们关联的标签（如果有）。如果您选择通过此API发送测试通知，您可以提前从这里选择要定位的标签。<br/>
![GUI审查的屏幕截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/Screenshot-3.png)

配置完成后，您将能够使用*通知*选项卡向您在配置中定义的一个或多个服务发送测试消息。您还可以从预分配给已定义URL的标签（如果有）中进行选择。如果您没有为配置的URL定义任何标签，则无需在此处标识任何标签。您可以使用标签`all`来通知所有服务，无论它们是否被分配了其他标签（如果有的话）。<br/>
![GUI通知的屏幕截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/apprise-api/image/Screenshot-4.png)

归根结底，GUI只是为开发人员提供了一个用户友好的界面，如果他们愿意，可以直接与相同的API进行交互。

## 安装

以下选项应允许您从浏览器访问API：`http://localhost:8000/`。

使用[dockerhub](https://hub.docker.com/r/caronc/apprise)您可以执行以下操作：

```bash
# 获取容器
docker pull caronc/apprise:latest

# 启动它：
# /config/store 用于持久存储，如果您不打算使用它，
#                则不必挂载。
# /config 用于写入通过API生成的所有配置文件的位置
# /plugin 用于添加您自己的自定义apprise插件的位置。
#         如果您不打算使用它，则不必挂载。
# /attach 用于文件附件
#
# 以下示例将APPRISE_WORKER_COUNT设置为较小的值（覆盖
# 完整的生产环境设置）。对于轻量级自托管解决方案，
# 这可能就足够了。
#
# 将APPRISE_STATEFUL_MODE设置为simple允许您将定义的{key}
# 直接映射到`/config`路径中的文件。在简单的家庭配置中，
# 这有时是理想的期望。
#
# 如果您希望覆盖默认的1000，请设置您的用户ID或组ID
# 在以下示例中，我们确保它以创建容器的用户身份运行

docker run --name apprise \
   -p 8000:8000 \
   -e PUID=$(id -u) \
   -e PGID=$(id -g) \
   -v /path/to/local/config:/config \
   -v /path/to/local/plugin:/plugin \
   -v /path/to/local/attach:/attach \
   -e APPRISE_STATEFUL_MODE=simple \
   -e APPRISE_WORKER_COUNT=1 \
   -d caronc/apprise:latest
```

您也可以选择在检出源代码后构建自己的自定义版本。当您想要对源代码进行更改并进行尝试时，这有时很有用。
一个常见的更改是更新Dockerfile以指向Apprise的主分支而不是使用稳定版本。
```bash
# 按照您喜欢的方式设置环境
docker build -t apprise/local:latest -f Dockerfile .

# 设置您希望存储配置的目录：
mkdir -p /etc/apprise

# 启动您的实例
docker run --name apprise \
   -p 8000:8000 \
   -e PUID=$(id -u) \
   -e PGID=$(id -g) \
   -e APPRISE_STATEFUL_MODE=simple \
   -e APPRISE_WORKER_COUNT=1 \
   -v /etc/apprise:/config \
   -d apprise/local:latest

# 将路径更改为所需的路径，您也可以
# 只执行以下操作：
mkdir -p config store
docker run --name apprise \
   -p 8000:8000 \
   -e PUID=$(id -u) \
   -e PGID=$(id -g) \
   -e APPRISE_STATEFUL_MODE=simple \
   -e APPRISE_WORKER_COUNT=1 \
   -v ./config:/config \
   -d apprise/local:latest
```
`docker-compose.yml`文件已经设置好，为您提供即时的生产就绪模拟环境：

```bash
# Docker Compose
docker-compose up
```

## Dockerfile详情

支持以下架构：`amd64`、`arm/v7`和`arm64`。可以使用以下标签：
- `latest`：指向最新的稳定构建。
- `edge`：指向最后一次推送到主分支的内容。

## Apprise URLs

📣 为了触发通知，您首先需要定义一个或多个[Apprise URLs](https://github.com/caronc/apprise/wiki)来支持您希望利用的服务。访问<https://github.com/caronc/apprise/wiki>查看当前支持的服务的不断增长的列表。

## API详情

### 健康检查

您可以通过访问`/status`对服务器配置执行状态或健康检查。

| 路径         | 方法 | 描述 |
|------------- | ------ | ----------- |
| `/status` |  GET  | 简单地返回服务器状态。如果服务器正常工作，服务器http响应代码为`200`，如果有意外问题则为`417`。您可以将`Accept`头设置为`application/json`或`text/plain`以获得不同的响应输出。

以下是简单文本响应的示例：
```bash
# 请求一般文本响应
# 如果一切正常，输出将显示`OK`，否则将返回
# 以下一个或多个内容，用逗号分隔：
#  - ATTACH_PERMISSION_ISSUE: 无法写入附件（可能是权限问题）
#  - CONFIG_PERMISSION_ISSUE: 无法写入配置（可能是权限问题）
#  - STORE_PERMISSION_ISSUE: 无法写入持久存储（可能是权限问题）
curl -X GET http://localhost:8000/status
```

以下是JSON响应的示例：
```bash
curl -X GET -H "Accept: application/json" http://localhost:8000/status
```
上述输出可能如下所示：
```json
{
  "attach_lock": false,
  "config_lock": false,
  "status": {
    "persistent_storage": true,
    "can_write_config": true,
    "can_write_attach": true,
    "details": ["OK"]
  }
}
```

- `attach_lock`始终交叉引用`APPRISE_ATTACH_SIZE`是否为`0`（零）或更小。
- `config_lock`始终交叉引用`APPRISE_CONFIG_LOCK`是否启用。
- `status.persistent_storage`定义是否启用了持久存储。如果环境变量`APPRISE_STORAGE_PATH`为空，则此值始终读取为`false`，并且不会影响`status.details`
- `status.can_write_config`定义配置目录是否可写。如果环境变量`APPRISE_STATEFUL_MODE`设置为`disabled`，则此值始终读取为`false`，并且不会影响`status.details`
- `status.can_write_attach`定义附件目录是否可写。如果环境变量`APPRISE_ATTACH_SIZE`。此值始终读取为`false`，并且不会影响`status.details`。
- `status.details`标识整体状态。如果此处有多个问题要报告，它们都会显示在此列表中。在有序的工作环境中，这将始终设置为`OK`，http响应类型将为`200`。

### 无状态解决方案

有些人可能只希望有一个不需要使用任何持久存储的sidecar解决方案。以下API端点可用于直接将您选择的通知发送到任何[Apprise支持的服务](https://github.com/caronc/apprise/wiki)，而无需任何基于存储的要求：

| 路径         | 方法 | 描述 |
|------------- | ------ | ----------- |
| `/notify/` |  POST  | 将一个或多个通知发送到作为有效载荷一部分标识的URL，或在环境变量`APPRISE_STATELESS_URLS`中标识的URL。<br/>*有效载荷参数*<br/>📌 **urls**: 一个或多个标识通知应发送到何处的URL。如果未指定此字段，则自动假定`settings.APPRISE_STATELESS_URLS`值或`APPRISE_STATELESS_URLS`环境变量。<br/>📌 **body**: 您的消息正文。这是一个必需字段。<br/>📌 **title**: 可选地定义与*body*一起的标题。<br/>📌 **type**: 定义您想要发送的消息类型。有效选项是`info`、`success`、`warning`和`failure`。如果未指定*type*，则使用默认值`info`。<br/>📌 **format**: 可选地标识您提供给Apprise的数据的文本格式。有效选项是`text`、`markdown`、`html`。如果未指定任何内容，则默认值为`text`。

以下是使用`/notify/`发送通知的*无状态*示例：

```bash
# 直接发送您的通知
curl -X POST -d 'urls=mailto://user:pass@gmail.com&body=test message' \
    http://localhost:8000/notify

# 发送带附件的通知：
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F 'body=test message' \
    -F attach=@Screenshot-1.png \
    http://localhost:8000/notify

# 发送多个附件；只需确保attach关键字是唯一的：
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F 'body=test message' \
    -F attach1=@Screenshot-1.png \
    -F attach2=@/my/path/to/Apprise.doc \
    http://localhost:8000/notify

# 此示例显示了如何将body放在其他参数中
# 在GET参数中而不是有效载荷中作为另一个选项。
curl -X POST -d 'urls=mailto://user:pass@gmail.com&body=test message' \
    -F @/path/to/your/attachment \
    http://localhost:8000/notify

# 如果提供了附件，则不需要body：
curl -X POST -d 'urls=mailto://user:pass@gmail.com' \
    -F @/path/to/your/attachment \
    http://localhost:8000/notify

# 使用JSON直接发送您的通知
curl -X POST -d '{"urls": "mailto://user:pass@gmail.com", "body":"test message"}' \
    -H "Content-Type: application/json" \
    http://localhost:8000/notify

# attach=是attachment=的别名
# 发送带URL附件的通知
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F attach=attach=https://raw.githubusercontent.com/caronc/apprise/master/apprise/assets/themes/default/apprise-logo.png \
    http://localhost:8000/notify
```

您还可以发送URL形式的通知。Apprise将下载该项目，以便将其发送给所有应该收到通知的端点。
```bash
# 使用'attachment'参数并发送网络请求
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F attachment=https://i.redd.it/my2t4d2fx0u31.jpg \
    http://localhost:8000/notify

# 要发送多个URL，以下方法可行：
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F attachment=https://i.redd.it/my2t4d2fx0u31.jpg \
    -F attachment=https://path/to/another/remote/file.pdf \
    http://localhost:8000/notify

# 最后，可以随意混合匹配本地文件和外部文件：
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F attachment=https://i.redd.it/my2t4d2fx0u31.jpg \
    -F attachment=https://path/to/another/remote/file.pdf \
    -F @/path/to/your/local/file/attachment \
    http://localhost:8000/notify
```

### 持久（有状态）存储解决方案

您可以预保存所有Apprise配置和/或Apprise URL集，并将其与您选择的`{KEY}`关联。设置后，配置将持久保存，供`apprise` [CLI工具](https://github.com/caronc/apprise/wiki/CLI_Usage)或您设置的任何其他自定义集成检索。内置网站带有用户界面，您也可以使用它来利用这些API调用。那些希望围绕此构建自己应用程序的人可以使用以下API端点：

| 路径         | 方法 | 描述 |
|------------- | ------ | ----------- |
| `/add/{KEY}` |  POST  | 将Apprise配置（或URL集）保存到持久存储中。<br/>*有效载荷参数*<br/>📌 **urls**: 在此处定义一个或多个Apprise URL。使用逗号和/或空格分隔一个URL与下一个。<br/>📌 **config**: 提供YAML或TEXT格式的Apprise配置的内容。<br/>📌 **format**: 仅当您指定了*config*参数时才需要此字段。用于告诉服务器您传递的是哪种受支持的（Apprise）配置类型。有效选项是*text*和*yaml*。如果设置了`APPRISE_CONFIG_LOCK`，此路径将不起作用。
| `/del/{KEY}` |  POST  | 从持久存储中删除Apprise配置。如果设置了`APPRISE_CONFIG_LOCK`，此路径将不起作用。
| `/get/{KEY}` |  POST  | 从持久存储中返回Apprise配置。这可以直接与*Apprise CLI*和/或*AppriseConfig()*对象一起使用（[详见此处](https://github.com/caronc/apprise/wiki/config)）。如果设置了`APPRISE_CONFIG_LOCK`，此路径将不起作用。
| `/notify/{KEY}` |  POST  | 向您之前配置的与*{KEY}*关联的所有端点发送通知。<br/>*有效载荷参数*<br/>📌 **body**: 您的消息正文。这是*唯一*必需的字段。<br/>📌 **title**: 可选地定义与*body*一起的标题。<br/>📌 **type**: 定义您想要发送的消息类型。有效选项是`info`、`success`、`warning`和`failure`。如果未指定*type*，则使用默认值`info`。<br/>📌 **tag**: 可选地仅通知相应标记的那些。使用逗号（`,`）对标签进行`OR`操作，使用空格（` `）对标签进行`AND`操作。有关此内容的更多详细信息请参见下面的文档。<br/>📌 **format**: 可选地标识您提供给Apprise的数据的文本格式。有效选项是`text`、`markdown`、`html`。如果未指定任何内容，则默认值为`text`。
| `/json/urls/{KEY}` |  GET  | 返回一个JSON响应对象，其中包含与指定密钥关联的所有URL和标签。
| `/details` |  GET  | 将`Accept`头设置为`application/json`并检索包含所有支持的Apprise URL的JSON响应对象。详见[此处](https://github.com/caronc/apprise/wiki/Development_Apprise_Details#apprise-details)
| `/metrics` |  GET  | Prometheus端点，用于_基本_指标收集和分析和/或可观察性。

例如，`/json/urls/{KEY}`响应可能返回如下内容：

```json
{
   "tags": ["devops", "admin", "me"],
   "urls": [
      {
         "url": "slack://TokenA/TokenB/TokenC",
         "tags": ["devops", "admin"]
      },
      {
         "url": "discord://WebhookID/WebhookToken",
         "tags": ["devops"]
      },
      {
         "url": "mailto://user:pass@gmail.com",
         "tags": ["me"]
      }
   ]
}
```

您可以向`/json/urls/{KEY}`传递属性，如`privacy=1`，在返回响应时隐藏密码和秘密令牌。您还可以设置`tag=`并基于逗号分隔的标签集过滤返回的结果。如果未指定`tag=`，则默认使用`tag=all`。

请注意，如果设置了`APPRISE_CONFIG_LOCK`，则始终强制执行`privacy=1`，以防止凭据泄露。

以下是使用`curl`的示例，说明如何向与标签`abc123`关联的所有人发送通知（使用`/notify/{key}`）：

```bash
# 向定义为'abc123'的{key}发送通知
curl -X POST -d "body=test message" \
    http://localhost:8000/notify/abc123

# 以下是使用JSON的相同请求：
curl -X POST -d '{"body":"test message"}' \
    -H "Content-Type: application/json" \
    http://localhost:8000/notify/abc123

# 发送附件：
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F 'body=test message' \
    -F attach1=@Screenshot-1.png \
    -F attach2=@/my/path/to/Apprise.doc \
    http://localhost:8000/notify/abc123

# attach=是attachment=的别名
# 发送带URL附件的通知
curl -X POST \
    -F 'urls=mailto://user:pass@gmail.com' \
    -F attach=attach=https://raw.githubusercontent.com/caronc/apprise/master/apprise/assets/themes/default/apprise-logo.png \
    http://localhost:8000/notify/abc123
```

🏷️ 利用*标签*允许您将一个或多个标签（或类别）与您的Apprise URL关联。通过这样做，通知只需要通过易于记忆的通知标签名称来引用，如`devops`、`admin`、`family`等。您可以非常容易地将多个通知服务组合在同一个*标签*下，从而一次通知一组服务。这是通过配置文件（[在此处记录](https://github.com/caronc/apprise/wiki/config)）实现的，这些配置文件可以保存到先前与`{KEY}`关联的持久存储中。

```bash
# 向定义为'abc123'的{KEY}发送通知
# 但仅通知与'devops'标签关联的URL
curl -X POST -d 'tag=devops&body=test message' \
    http://localhost:8000/notify/abc123

# 以下是使用JSON的相同请求：
curl -X POST -d '{"tag":"devops", "body":"test message"}' \
    -H "Content-Type: application/json" \
    http://localhost:8000/notify/abc123
```

### 标签

标签是使Apprise超级方便和易于使用的东西之一。您不仅可以将一个或多个通知组合在一起（都共享相同的标签），还可以为同一URL分配多个标签，并通过精心制作和选择的标签表达式触发它。

|  示例              | 效果                         |
| --------------------- | ------------------------------ |
| TagA                  |  TagA
| TagA, TagB            |  TagA **OR** TagB
| TagA TagC, TagB       |  (TagA **AND** TagC) **OR** TagB
| TagB TagC             |  TagB **AND** TagC

```bash
# 'AND' 示例
# 向定义为'abc123'的{KEY}发送通知
# 通知与'devops'和'after-hours'标签关联的URL
# '空格'充当'AND'。您也可以使用'+'字符（代替空格
# 来实现相同的结果）
curl -X POST -d '{"tag":"devops after-hours", "body":"repo outage"}' \
    -H "Content-Type: application/json" \
    http://localhost:8000/notify/abc123

# 'OR' 示例
# 向定义为'def456'的{KEY}发送通知
# 通知与'dev' OR 'qa'标签关联的URL
# '逗号'充当'OR'。逗号周围的空格被忽略（如果
# 已定义）。您也可以使用'+'字符（代替空格来实现
# 相同的结果）
curl -X POST -d '{"tag":"dev, qa", "body":"bug #000123 is back :("}' \
    -H "Content-Type: application/json" \
    http://localhost:8000/notify/def456

# 'AND'和'OR' 示例
# 向定义为'projectX'的{KEY}发送通知
# 通知与'leaders AND teamA'以及另外
# 'leaders AND teamB'关联的URL。
curl -X POST -d '{"tag":"leaders teamA, leaders teamB", "body":"meeting now"}' \
    -H "Content-Type: application/json" \
    http://localhost:8000/notify/projectX
```
### API响应代码

|  HTTP代码 | 名称                  | 效果                         |
| ---------- | --------------------- | ------------------------------ |
| 200        | ok                    | 通知已发送
| 204        | 无内容            | 找不到指定`{KEY}`的配置（或配置为空）
| 400        | 错误请求           | 您的API调用不符合此处记录的内容
| 405        | 方法不被接受   | 您的API调用标识了由于服务器配置而被禁用的操作（例如`apprise://` `APPRISE_RECURSION_MAX`超出限制）。
| 424        | 依赖失败     | 至少有一个通知无法发送。这可能是由于<br/> - 并非所有预期要执行的通知都能成功执行（由于上游故障）。<br/>您未标识与配置中定义的内容关联的标签。<br/>您指定的标签与配置中定义的标签不匹配。
| 431        | 字段过大      | 如果您的有效载荷大于3MB（默认值）时可能发生这种情况。请参见`APPRISE_UPLOAD_MAX_MEMORY_SIZE`进行调整。
| 500        | 内部服务器错误 | 如果保存配置到磁盘时出现问题（通常是权限问题），可能会发生这种情况。

### API说明

- `{KEY}`必须是1-128个字母数字字符长度。除此之外，还接受下划线（`_`）和破折号（`-`）。
  - 如果您希望向其他人开放平台，请考虑使用`sha1`、`sha512`、`uuid`等密钥来保护共享命名空间。或者在受控环境中保持简单，只需使用默认字符串`apprise`作为您的密钥（如上面示例所示）。您可以通过设置`APPRISE_DEFAULT_CONFIG_ID`来覆盖此默认值（见下文）。
- 指定`Content-Type`为`application/json`以使用JSON支持，否则默认期望的格式是`application/x-www-form-urlencoded`（无论是否指定）。
- 使用此API不需要身份验证（或SSL加密）；这是设计使然。这里的意图是成为一个轻量级和快速的微服务。
- 如果您选择使用可选的持久存储（挂载为`/config`），则没有其他依赖项（如数据库要求等）。

### 环境变量

使用环境变量允许您提供对默认设置的覆盖。

| 变量             | 描述 |
|--------------------- | ----------- |
| `PUID` | 您希望Apprise实例在后台运行的用户ID。如果未另行指定，默认为`1000`。
| `PGID` | 您希望Apprise实例在后台运行的组ID。如果未另行指定，默认为`1000`。
| `IPV4_ONLY` | 强制仅使用IPv4环境（默认支持IPv4和IPv6）。如果同时设置了`IPV6_ONLY`，则不执行任何操作，因为这会创建模糊的设置。
| `IPV6_ONLY` | 强制仅使用IPv6环境（默认支持IPv4和IPv6）。如果同时设置了`IPV4_ONLY`，则不执行任何操作，因为这会创建模糊的设置。
| `APPRISE_DEFAULT_THEME` | 可以设置为`light`或`dark`；如果未另行提供，默认为`light`。主题也可以在网站内切换。
| `APPRISE_DEFAULT_CONFIG_ID` | 默认为`apprise`。这是您通过网站访问配置管理器时始终默认的配置ID。
| `APPRISE_CONFIG_DIR` | 定义所有保存的配置文件的（可选）持久存储位置。默认情况下：<br/> - 仅使用_Django_ `manage runserver`脚本时，配置写入`apprise_api/var/config`目录。但对于容器，路径为`/config`。
| `APPRISE_STORAGE_DIR` | 定义所有保存的缓存文件的（可选）持久存储位置。默认情况下，持久存储写入`<APPRISE_CONFIG_DIR>/store`。
| `APPRISE_STORAGE_MODE` | 定义要使用的存储模式。如果未识别到`APPRISE_STORGE_DIR`，则在所有情况下都将其设置为`memory`，无论它可能被设置为什么。可能的选项是：<br/>📌 **auto**: 这也是默认值。仅在需要时写入缓存文件。<br/>📌 **memory**: 禁用持久存储；本地内存用于简单的内部引用。这实际上是Apprise 1.8.1及更早版本的行为。<br/>📌 **flush**: 比`auto`更占用I/O。如果以任何方式更改内容，则不断将内容写入磁盘。此模式仍处于实验阶段。
| `APPRISE_STORAGE_UID_LENGTH` | 定义用于标识Apprise URL的唯一键长度。默认设置为`8`。值不能设置为小于`2`或大于`64`。
| `APPRISE_STATELESS_STORAGE` | 允许无状态URL（除了有状态URL）也利用持久存储。默认为`no`，但可以通过简单地定义全局变量来设置为`yes`。
| `APPRISE_ATTACH_DIR` | 上传附件放置的目录。默认情况下：<br/> - 仅使用_Django_ `manage runserver`脚本时，附件写入`apprise_api/var/attach`目录。但对于容器，路径为`/attach`。
| `APPRISE_ATTACH_SIZE` | 覆盖附件大小（以MB为单位定义）。默认设置为`200`（兆字节）。您可以将其设置为最大值`500`，这是目前NginX（内部托管服务）的限制。如果将其设置为零（`0`），即使提供了附件也不会传递。
| `APPRISE_UPLOAD_MAX_MEMORY_SIZE` | 覆盖内存中接受的有效载荷大小（以MB为单位定义）。默认设置为`3`（兆字节）。HTTP有效载荷（不包括附件）没有理由超过此限制。此值仅对那些有例外情况的边缘案例用户可配置。
| `APPRISE_STATELESS_URLS` | 对于非持久性解决方案，您可以利用此全局变量。使用此变量定义在使用API调用`/notify`时要通知的默认Apprise URL集。如果在调用`/notify`时未定义`{KEY}`，则使用此处定义的URL。默认情况下，此变量未定义任何内容。
| `APPRISE_STATEFUL_MODE` | 可以设置为以下可能的模式：<br/>📌 **hash**: 这也是默认值。它以哈希格式存储服务器配置，可以轻松索引和压缩。<br/>📌 **simple**: 配置直接写入磁盘，使用`{KEY}.cfg`（如果基于`TEXT`）和`{KEY}.yml`（如果基于`YAML`）。<br/>📌 **disabled**: 直接拒绝任何对服务器有状态存储的读/写查询。有效地完全关闭Apprise有状态功能。
| `APPRISE_CONFIG_LOCK` | 锁定您的API托管，使您无法再删除/更新/访问有状态信息。在对`/notify`进行有状态调用时仍会引用您的配置。此开关的理念是允许某人设置其（Apprise）配置，然后作为一种额外的安全策略，他们可以选择锁定其配置（处于只读状态）。使用Apprise CLI工具的人仍然可以这样做，但`--config`（`-c`）开关将不再成功引用此访问点。但您可以毫无问题地使用`apprise://`插件（[详见此处](https://github.com/caronc/apprise/wiki/Notify_apprise_api)）。默认为`no`，但可以通过简单地定义全局变量来设置为`yes`。
| `APPRISE_ADMIN` | 启用管理模式。这消除了用户和管理员之间的区别，并允许列出存储的配置键（当`STATEFUL_MODE`设置为`simple`时）。默认为`no`，可以设置为`yes`。
| `APPRISE_DENY_SERVICES` | 逗号分隔的条目集，标识要拒绝访问的插件。您只需要标识与插件关联的一个模式条目即可禁用所有内容。因此，如果您想禁用`glib`插件，您不需要额外包含`qt`，因为它包含在（`dbus`）包中；因此指定`qt`也会禁用`glib`模块（另一种实现相同任务的方法）。要排除/禁用多个上游服务，只需指定用逗号（`,`）或空格（` `）分隔的附加条目。如果标识了`APPRISE_ALLOW_SERVICES`，则忽略`APPRISE_DENY_SERVICES`条目。默认情况下，这初始化为`windows, dbus, gnome, macosx, syslog`（阻止在docker容器内发出本地操作）
| `APPRISE_ALLOW_SERVICES` | 逗号分隔的条目集，标识允许访问的插件。您只能使用字母数字字符，因为这是Apprise Schemas（schema://）的限制。要专门包含多个上游服务，只需指定用逗号（`,`）或空格（` `）分隔的附加条目。如果标识了`APPRISE_ALLOW_SERVICES`，则忽略`APPRISE_DENY_SERVICES`条目。
| `APPRISE_ATTACH_ALLOW_URLS` | 逗号分隔的条目集，标识Apprise API应始终接受的HTTP附件URL。使用通配符如`*`和`?`来帮助构建您标识的URL/主机。使用空格和/或逗号标识多个条目。默认设置为`*`（接受所有提供的URL）。
| `APPRISE_ATTACH_DENY_URLS` | 逗号分隔的条目集，标识Apprise API应始终拒绝的HTTP附件URL。使用通配符如`*`和`?`来帮助构建您标识的URL/主机。`APPRISE_ATTACH_DENY_URLS`始终在`APPRISE_ATTACH_ALLOW_URLS`列表之前处理。使用空格和/或逗号标识多个条目。默认设置为`127.0.* localhost*`。
 默认情况下
| `SECRET_KEY`       | 一个Django变量，作为大多数需要安全性的内容的*盐*。此API在将配置文件写入磁盘时使用它进行哈希序列（仅限`hash`模式）。
| `ALLOWED_HOSTS`    | 表示此API可以服务的主机/域名的字符串列表。这是一种安全措施，以防止HTTP主机头攻击，即使在许多看似安全的Web服务器配置下也可能发生。默认设置为`*`，允许任何主机。使用空格分隔多个主机。
| `APPRISE_PLUGIN_PATHS` | Apprise支持定义您自己的`schema://`定义并加载它们。要了解更多关于如何创建自己的自定义内容，请查看[此处链接](https://github.com/caronc/apprise/wiki/decorator_notify)。您可以在此处定义一个或多个路径（用逗号`,`分隔）。默认情况下扫描`apprise_api/var/plugin`目录（不包含任何内容）。您可以随意将其设置为空字符串以禁用任何自定义插件加载。
| `APPRISE_RECURSION_MAX` | 这定义了一个Apprise API服务器可以（递归地）调用另一个服务器的次数。这是为了支持和缓解通过[the `apprise://` schema](https://github.com/caronc/apprise/wiki/Notify_apprise_api)的滥用，对于那些选择使用它的人。当正确利用时，您可以增加此（递归最大）值，并成功地通过许多附加API服务器负载平衡处理许多通知请求。默认情况下，此值设置为`1`（一）。
| `APPRISE_WEBHOOK_URL` | 定义Apprise应在每次发出通知调用时`POST`结果的Webhook。这必须是`http://`或`https://` URI格式。默认情况下未指定URL，也不执行webhook。
| `APPRISE_WORKER_COUNT` | 覆盖要运行的工作进程数。默认情况下，这是根据`(2 * CPUS_DETECTED) + 1`计算的[如Gunicorn网站建议](https://docs.gunicorn.org/en/stable/design.html#how-many-workers)。业余爱好者和/或只是设置Apprise以支持其家庭（轻量级使用）的用户可能希望将此值设置为`1`，以限制Apprise服务器为其自身准备的资源。
| `APPRISE_WORKER_TIMEOUT` | 覆盖工作进程超时值（以秒为单位）；默认情况下为`300`（5分钟），这应该有足够的时间发送所有待处理的通知。
| `BASE_URL`    | 那些在需要子路径才能访问此API的代理后面托管API的人也应该在此处指定此路径。默认情况下，这根本没有设置。
| `LOG_LEVEL`    | 调整控制台的日志级别。可能的值是`CRITICAL`、`ERROR`、`WARNING`、`INFO`和`DEBUG`。
| `DEBUG`            | 默认为`no`，但可以通过简单地定义全局变量来设置为`yes`。

## Nginx覆盖

您可以覆盖的2个文件是：
1. `/etc/nginx/location-override.conf`，包含在所有Apprise API NginX `location`引用中。
1. `/etc/nginx/server-override.conf`，包含在Apprise API `server`引用中。

### 身份验证
在后台，Apprise-API运行一个小的NginX实例。它允许您注入自己的配置。您可能希望添加的一件事是基本身份验证。

下面我们创建一些我们希望应用于Apprise API的nginx指令：
```nginx
# 我们的override.conf文件：
auth_basic            "Apprise API受限区域";
auth_basic_user_file  /etc/nginx/.htpasswd;
```

现在让我们设置一个简单的密码文件（有关htpasswd文件的更多信息，请参见[此处](https://docs.nginx.com/nginx/admin-guide/security-controls/configuring-http-basic-authentication/)
```bash
# 为我们用户'foobar'创建一个；以下将提示您输入
# 您想要提供的密码：
htpasswd -c apprise_api.htpasswd foobar

# 注意：上面的-c仅在首次创建数据库时需要
```

现在我们可以使用这个新的身份验证信息创建我们的docker容器：
```bash
# 创建包含基本身份验证的容器：
docker run --name apprise \
   -p 8000:8000 \
   -e PUID=$(id -u) \
   -e PGID=$(id -g) \
   -v /path/to/local/config:/config \
   -v /path/to/local/attach:/attach \
   -v ./override.conf:/etc/nginx/location-override.conf:ro \
   -v ./apprise_api.htpasswd:/etc/nginx/.htpasswd:ro \
   -e APPRISE_STATEFUL_MODE=simple \
   -e APPRISE_WORKER_COUNT=1 \
   -d caronc/apprise:latest
```

访问http://localhost:8000查看是否按预期工作。如果您按照上面的示例操作，您应该以用户`foobar`身份登录，使用您提供的凭据。

您可以通过省略`-c`开关向现有数据库添加更多帐户：
```bash
# 添加另一个帐户
htpasswd apprise_api.htpasswd user2
```

## Kubernetes部署

感谢@steled，以下是一个潜在的Kubernetes部署配置示例：
```yaml
apiVersion: v1
kind: Namespace
metadata:
  labels:
    name: apprise
  name: apprise
---
apiVersion: v1
kind: ConfigMap
metadata:
  labels:
    name: apprise
  name: apprise-api-override-conf-config
  namespace: apprise
data:
  location-override.conf: |
    auth_basic            "Apprise API受限区域";
    auth_basic_user_file  /etc/nginx/.htpasswd;
---
apiVersion: v1
kind: Secret
metadata:
  labels:
    name: apprise
  name: apprise-api-htpasswd-secret
  namespace: apprise
data:
  .htpasswd: <base64_encoded> # 添加以下命令的输出：htpasswd -c apprise_api.htpasswd <USERNAME> && cat apprise_api.htpasswd | base64
---
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  labels:
    name: apprise
  name: apprise-data
  namespace: apprise
spec:
  accessModes:
  - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi
---
apiVersion: v1
kind: Service
metadata:
  labels:
    name: apprise
  name: apprise
  namespace: apprise
spec:
  ports:
  - name: http
    port: 80
    protocol: TCP
    targetPort: 8000
  selector:
    name: apprise
  type: ClusterIP
---
apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    name: apprise
  name: apprise
  namespace: apprise
spec:
  replicas: 1
  selector:
    matchLabels:
      name: apprise
  strategy:
    type: Recreate
  template:
    metadata:
      labels:
        name: apprise
    spec:
      containers:
        - env:
            - name: APPRISE_STATEFUL_MODE
              value: simple
            - name: PGID
              value: "1000"
            - name: PUID
              value: "1000"
          image: caronc/apprise:1.1
          name: apprise
          ports:
            - containerPort: 8000
              protocol: TCP
          resources:
            limits:
              cpu: "500m"
              memory: "512Mi"
            requests:
              cpu: "250m"
              memory: "128Mi"
          volumeMounts:
            - mountPath: /config
              name: apprise-data
            - mountPath: /plugin
              name: apprise-data
            - mountPath: /attach
              name: apprise-data
            # 如果不需要/不使用，可以删除以下mountPath
            - mountPath: /etc/nginx/.htpasswd
              name: apprise-api-htpasswd-secret-volume
              readOnly: true
              subPath: .htpasswd
            # 如果不需要/不使用，可以删除以下mountPath
            - mountPath: /etc/nginx/location-override.conf
              name: apprise-api-override-conf-config-volume
              readOnly: true
              subPath: location-override.conf
      restartPolicy: Always
      volumes:
        - name: apprise-data
          persistentVolumeClaim:
            claimName: apprise-data
        # 如果不需要/不使用，可以删除以下卷
        - name: apprise-api-htpasswd-secret-volume
          secret:
            secretName: apprise-api-htpasswd-secret
        # 如果不需要/不使用，可以删除以下卷
        - name: apprise-api-override-conf-config-volume
          configMap:
            name: apprise-api-override-conf-config
```

## 开发环境
以下应为您提供一个工作开发环境进行测试：

```bash
# 在您克隆此存储库的同一目录中创建虚拟环境：
python -m venv .

# 现在激活它：
. ./bin/activate

# 安装依赖项
pip install -r dev-requirements.txt -r requirements.txt

# 运行开发服务器（调试模式），可从浏览器访问：
# -> http://localhost:8000/
./manage.py runserver

```

一些其他有用的开发说明：

```bash
# 检查任何lint错误
flake8 apprise_api

# 运行单元测试
pytest apprise_api
```

## Apprise集成

首先您需要安装它：
```bash
# 在您的环境中安装apprise
pip install apprise
```

### Apprise CLI拉取示例

您希望轮询API以获取配置的场景：

```bash
# Apprise CLI的简单示例
# 拉取先前存储的配置
apprise -vvv --body="test message" \
   --config=http://localhost:8000/get/{KEY}
```

如果访问的服务器上未设置`APPRISE_CONFIG_LOCK`，您还可以利用Apprise配置文件中支持的`import`参数：

```nginx
# Linux用户可以将其放在~/.apprise中
# Windows用户可以将此信息放在%APPDATA%/Apprise/apprise中

# 将{KEY}替换为您在API上配置的apprise密钥
import http://localhost:8000/get/{KEY}
```

现在您将自动获取配置文件，而无需使用`--config`开关：

```bash
# 配置自动从我们的服务器加载。
apprise -vvv --body="my notification"
```

如果您使用了标签，则可以像这样通知特定服务：

```bash
# 配置自动从我们的服务器加载。
apprise -vvv --tag=devops \
   --body="告诉James GitLab又宕机了。"
```

如果您的服务器设置了`APPRISE_CONFIG_LOCK`，您仍然可以利用[the `apprise://` plugin](https://github.com/caronc/apprise/wiki/Notify_apprise_api)来触发我们预保存的通知：
```bash
# 将{KEY}替换为您在API上配置的apprise密钥
apprise -vvv --body="如果有人想要，大厅里有甜甜圈" \
   apprise://localhost:8000/{KEY}
```

或者我们可以在配置文件中设置它，甚至将我们的本地标签与上游标签关联起来，如下所示：

```nginx
# Linux用户可以将其放在~/.apprise中
# Windows用户可以将此信息放在%APPDATA%/Apprise/apprise中

# 将{KEY}替换为您在API上配置的apprise密钥
devteam=apprise://localhost:8000/{KEY}?tags=devteam

# 唯一的限制是您需要将本地服务器上的标签映射到您希望传递给
# Apprise服务器的标签，使用这种方法。
# 在上面我们使用标签`devteam`将本地关键字`devteam`与apprise服务器关联起来
```

我们现在可以像这样触发对我们的开发团队的通知：

```bash
# 触发我们的服务：
apprise -vvv --tag=devteam \
    --body="伙计们，别忘了明天早上的审计。"
```

### AppriseConfig()拉取示例

使用[Apprise Python库](https://github.com/caronc/apprise)，您可以轻松访问并加载从此API保存的配置，以便用于未来的通知。

```python
import apprise

# 将我们的配置指向此API服务器：
config = apprise.AppriseConfig()

# 以下仅在未设置APPRISE_CONFIG_LOCK时有效
# 如果设置了APPRISE_CONFIG_LOCK，您可以选择利用apprise://
# URL代替。
config.add('http://localhost:8000/get/{KEY}')

# 创建我们的Apprise实例
a = apprise.Apprise()

# 存储我们的新配置
a.add(config)

# 发送测试消息
a.notify('test message')
```

## 第三方Webhook支持
可以理解的是，第三方应用程序并不总是能够发布此API工具期望的格式。要解决此问题，您可以在处理之前重新映射字段。例如；考虑我们期望以下最小有效载荷项目用于有状态通知：
```json
{
    "body": "消息正文"
}
```

但是如果您使用的工具只能发送：
```json
{
   "subject": "我的标题",
   "payload": "我的正文"
}
```

在这种情况下，我们希望将`subject`映射到`title`，将`payload`映射到`body`。这可以通过在准备有效载荷时使用`:`（冒号）参数轻松完成：

```bash
# 注意以`:`（冒号）为前缀的关键字参数。这些
# 指示API将有效载荷（我们可能无法控制）
# 映射到Apprise API期望的内容。
#
# 我们还将`subject`转换为`title`：
curl -X POST \
    -F "subject=消息标题" \
    -F "payload=消息正文" \
    "http://localhost:8000/notify/{KEY}?:subject=title&:payload=body"

```

以下是JSON版本并测试无状态查询（需要至少`urls`和`body`）：
```bash
# 我们还将`subject`转换为`title`：
curl -X POST -d '{"href": "mailto://user:pass@gmail.com", "subject":"我的标题", "payload":"正文"}' \
    -H "Content-Type: application/json" \
    "http://localhost:8000/notify/{KEY}?:subject=title&:payload=body&:href=urls"
```

冒号`:`前缀是启动重新映射规则引擎的开关。您可以使用规则引擎做3件可能的事情：
1. `:existing_key=expected_key`：将现有（预期的）有效载荷键重命名为Apprise期望的键
1. `:existing_key=`：通过设置无值，现有键将完全从有效载荷中删除
1. `:expected_key=要给它的值`：您还可以将预期的apprise键固定为预生成的字符串值。

## 指标收集与分析
通过`/metrics`参考点添加了基本的Prometheus支持。

<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=whiteboard)

</div>

# 白板

这是一个轻量级的 NodeJS 协作白板/绘图板，可以轻松进行自定义...

![start](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/whiteboard/image/start.png)

## 白板演示

[点击此处](https://cloud13.de/testwhiteboard/)（每晚重置）

## 一些功能

- 绘图时显示远程用户的光标
- 每个用户的撤销 / 重做功能
- 从电脑和浏览器中拖放 / 复制粘贴图片或 PDF
- 调整图片大小、移动、旋转并在画布或背景上绘制
- 编写文本和便签
- 将白板保存为图片和 JSON
- 按住 "Shift" 键时绘图可绘制角度线（使用直线工具）
- 按住 "Shift" 键时绘图可绘制正方形（使用矩形工具）
- 显示参与设备中最小屏幕的指示器
- 所有功能的快捷键
- REST API
- 支持 PC、平板和手机使用

## 使用此白板的项目

- [Meetzi](https://meetzi.de/) - WebRtc 会议工具
- [LAMS](https://www.lamsfoundation.org) - 管理和交付在线协作学习活动
- [Accelerator](https://github.com/cracker0dks/Accelerator) - WebRtc 会议工具
- 您的项目在这里...

## 默认键盘快捷键

使用键盘快捷键可以在使用白板时提高效率。

如果您使用 XP-Pen Artist、Huion Kamvas 和 Wacom Cintiq 等交互式显示器，这些快捷键尤其有用。这些设备具有快速按钮（6-8 个按钮和滚动）。默认情况下，这些显示器上的按钮映射到标准的 Photoshop 键盘快捷键。可以配置这些按键以在其他软件中有效工作。

以下是可以在文件 ./src/js/keybinds.js 中覆盖的预定义快捷键：

| 功能                                                           | Windows 和 Linux    | macOS                   |
| ---------------------------------------------------------------- | -------------------- | ----------------------- |
| 清空白板                                                       | Ctrl + Shift + Del   | Command + Shift + Del   |
| 撤销上一步操作                                                 | Ctrl + Z             | Command + Z             |
| 重做上一次撤销                                                 | Ctrl + Y             | Command + Y             |
| 选择区域                                                       | Ctrl + X             | Command + X             |
| 获取鼠标                                                       | Ctrl + M             | Command + M             |
| 获取笔                                                         | Ctrl + P             | Command + P             |
| 使用平移工具（手）                                             | Ctrl + Space         | Command + Space         |
| 绘制直线                                                       | Ctrl + L             | Command + L             |
| 绘制矩形                                                       | Ctrl + R             | Command + R             |
| 绘制圆形                                                       | Ctrl + C             | Command + C             |
| 在直线、矩形和圆形之间切换                                     | Ctrl + Shift + F     | Command + Shift + F     |
| 在笔和橡皮擦之间切换                                           | Ctrl + Shift + X     | Command + Shift + X     |
| 在主颜色（黑色、蓝色、绿色、黄色和红色）之间切换               | Ctrl + Shift + R     | Command + Shift + R     |
| 输入文本                                                       | Ctrl + A             | Command + A             |
| 使用橡皮擦                                                     | Ctrl + E             | Command + E             |
| 增加线条粗细                                                   | Ctrl + 上箭头        | Command + 上箭头        |
| 减小线条粗细                                                   | Ctrl + 下箭头        | Command + 下箭头        |
| 颜色选择器                                                     | Ctrl + Shift + C     | Command + Shift + C     |
| 设置黑色                                                       | Ctrl + Shift + 1     | Command + Shift + 1     |
| 设置蓝色                                                       | Ctrl + Shift + 2     | Command + Shift + 2     |
| 设置绿色                                                       | Ctrl + Shift + 3     | Command + Shift + 3     |
| 设置黄色                                                       | Ctrl + Shift + 4     | Command + Shift + 4     |
| 设置红色                                                       | Ctrl + Shift + 5     | Command + Shift + 5     |
| 将白板保存为图片                                               | Ctrl + S             | Command + S             |
| 将白板保存为 JSON                                              | Ctrl + Shift + K     | Command + Shift + K     |
| 将白板保存到 WebDav                                            | Ctrl + Shift + I (i) | Command + Shift + I (i) |
| 将保存的 JSON 加载到白板                                       | Ctrl + Shift + J     | Command + Shift + J     |
| 分享白板                                                       | Ctrl + Shift + S     | Command + Shift + S     |
| 隐藏或显示工具栏                                               | Tab                  | Tab                     |
| 向上移动选中对象                                               | 上箭头               | 上箭头                  |
| 向下移动选中对象                                               | 下箭头               | 下箭头                  |
| 向左移动选中对象                                               | 左箭头               | 左箭头                  |
| 向右移动选中对象                                               | 右箭头               | 右箭头                  |
| 放置对象                                                       | Ctrl + Enter         | Command + Enter         |
| 将图片添加到背景                                               | Shift + Enter        | Shift + Enter           |
| 取消所有操作                                                   | Escape               | Escape                  |
| 删除选中对象                                                   | Delete               | Delete                  |
| 当笔工具激活时使用直线工具（不可更改）                         | Shift (按住)         | Shift (按住)            |

## URL 参数

使用 GET 参数调用您的网站以更改 WhiteboardID 或用户名

`http://YOURIP:8080?whiteboardid=MYID&username=MYNAME`

- whiteboardid => 所有相同 ID 的人都在同一个白板上绘图
- username => 绘图时其他人将看到的名称
- title => 更改浏览器标签页的名称
- randomid => 如果设置为 true，且未提供白板 ID，则会生成一个随机的白板 ID
- copyfromwid => 设置您要复制的白板 ID。仅当当前白板为空时才会复制内容。

## 配置

该项目的许多设置都可以通过一个简单的 `yaml` 文件进行设置，以更改某些行为或调整性能。

### 配置文件

要使用自定义设置运行项目：

1. 根据 `config.default.yml` 的内容创建一个 `config.run.yml` 文件
2. 修改设置
3. 使用自定义配置运行项目（它将与默认配置合并）：

- 本地运行: `node scripts/server.js --config=./config.run.yml`
- Docker 运行: `docker run -d -p 8080:8080 -v $(pwd)/config.run.yml:/config.run.yml:ro rofl256/whiteboard --config=/config.run.yml`

### 亮点

#### 安全 - AccessToken (可选)

为了防止知道或猜测到基础 URL 的客户端滥用服务器上传文件等操作，您可以在服务器启动时设置一个 accesstoken（参见 这里）。

然后在客户端也设置相同的 token：

<b>客户端（使用和不使用 Docker）:</b> `http://YOURIP:8080?accesstoken=mySecToken&whiteboardid=MYID&username=MYNAME`

完成！

#### REST API

您可以通过 REST API 完全控制白板。通过访问 `[yourRootWhiteboardUrl]/apidoc/index.html` 来探索和测试您服务器版本的 API。
您可以在这里查看演示白板的 API：[DemoAPI](https://cloud13.de/testwhiteboard/apidoc/index.html)

注意：此 API 是新推出的，因此请确保使用最新的白板版本。

#### WebDAV (可选)

此功能允许您的用户将白板直接保存为图片到 WebDAV 服务器（Nextcloud），而无需下载。

要启用此功能，请在 配置文件 中将 `enableWebdav` 设置为 `true`。

然后在客户端也设置相同的参数：

<b>客户端（使用和不使用 Docker）:</b> `http://YOURIP:8080?webdav=true&whiteboardid=MYID&username=MYNAME`

刷新页面，您会注意到顶部面板中多了一个保存按钮。设置您的 WebDav 参数，即可使用！

注意：对于大多数 Owncloud/Nextcloud 安装，您需要将 WebDav 服务器 URL 设置为：https://YourDomain.tl/remote.php/webdav/

完成！

### 还有更多（性能等）

还有许多其他设置可以调整。所有设置都在 默认配置文件 中有描述。

## 您可能想知道的内容

- 如果您重启服务器，白板数据将会丢失，除非在配置文件中启用 "enableFileDatabase" 或导出白板以防止数据丢失。
- 您应该能够在不修改 whiteboard.js 的情况下自定义布局（请查看 index.html 和 main.js）。

## Nginx 反向代理配置

将以下内容添加到您的 server 配置部分：

```
    location /whiteboard/ {
        proxy_set_header HOST $host;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection upgrade;
        proxy_pass http://YOURIP:8080/;
    }
```

以在 /whiteboard 路径下运行。别忘了将 YOURIP 更改为您的实际 IP！

## Apache 反向代理配置

```
<VirtualHost example.org:443>
...
# Proxy /whiteboard/ to whiteboard container
ProxyPass "/whiteboard/" "http://YOURIP:8080/"
ProxyPassReverse "/whiteboard/" "http://YOURIP:8080/"
...
</VirtualHost>
```

以在 /whiteboard 路径下运行。别忘了将 YOURIP 更改为您的实际 IP！

## Nextcloud 集成

1. 在您的服务器上安装此应用
2. 在您的 Nextcloud 中启用并进入 "外部站点"（应用）
3. 添加指向您的服务器的链接：`https://YOURIP/whiteboard/?whiteboardid=WHITEBOARDNAME&username={uid}`
   如果需要，您可以通过更改 URL 中的 WHITEBOARDNAME 为每个组提供自己的白板。

注意：如果您的 Nextcloud 服务器运行在 HTTPS 上，您可能需要用 HTTPS 提供此应用。为此，建议在此应用后运行反向代理。（如上所示）

#### （可选）在 Nextcloud 中设置白板图标

![start](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/whiteboard/image/iconPrev.jpg)

将 /doc/nextcloud_icons/ 目录下的两个图标上传到您的 Nextcloud 的 "外部站点" 管理部分。然后将其设置为链接的符号。

**_ MIT License _**
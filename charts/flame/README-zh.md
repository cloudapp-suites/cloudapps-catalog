# 火焰（Flame）

![主页截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flame/image/home.png)

## 描述

Flame 是你服务器上的自托管起始页。它的设计深受 [SUI](https://github.com/jeroenpardon/sui) 的启发（而且影响很大）。Flame 非常易于安装和使用。通过内置的编辑器，你可以直接在应用中快速搭建属于你自己的应用中心，无需手动编辑任何文件。

## 功能
- 📝 使用内置的图形界面编辑器，直接在应用中创建、更新和删除你的应用程序和书签
- 📌 将你喜爱的项目固定到主页，以便快速访问
- 🔍 集成搜索栏，支持本地过滤、11 个网页搜索引擎，以及自定义添加搜索引擎
- 🔑 认证系统，保护你的设置、应用和书签
- 🔨 提供数十种界面定制选项，包括支持自定义 CSS、15 个内置配色主题以及自定义主题构建器
- ☀️ 天气小部件，显示当前温度、云层覆盖情况和动态天气状态
- 🐳 Docker 集成，可自动根据容器标签识别并添加应用

## 截图

![Apps screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flame/image/apps.png)

![Bookmarks screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flame/image/bookmarks.png)

![Settings screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flame/image/settings.png)

![Themes screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/flame/image/themes.png)

## 使用说明

### 认证

访问 [项目 Wiki](https://github.com/pawelmalak/flame/wiki/Authentication) 了解更多关于认证的信息

### 搜索栏

#### 搜索功能

默认的搜索设置是搜索你所有的应用和书签。如果你想使用特定的搜索引擎进行搜索，你需要在搜索词前加上对应的前缀。例如，使用 Google 搜索 "what is docker"，你可以输入：`/g what is docker`。

关于支持的搜索引擎列表、快捷方式及更多搜索功能，请访问 [项目 Wiki](https://github.com/pawelmalak/flame/wiki/Search-bar)。

### 设置天气模块

1. 从 [Weather API](https://www.weatherapi.com/pricing.aspx) 获取 API 密钥。
   > 免费计划每月允许 100 万次调用。Flame 每月调用次数少于 3000 次。
2. 获取你所在位置的经纬度。你可以从 [latlong.net](https://www.latlong.net/convert-address-to-lat-long.html) 获取。
3. 输入并保存数据。天气小部件现在将更新，并在主页上显示。

### Docker 集成

要使用 Docker 集成功能，每个容器必须包含以下标签：

```yml
labels:
  - flame.type=application # "app" 也可以
  - flame.name=My container
  - flame.url=https://example.com
  - flame.icon=icon-name # 可选，默认为 "docker"
# - flame.icon=custom 用于自定义图标上传
```

> 要使此功能生效，必须启用“使用 Docker API”选项。你可以在 设置 > Docker 中找到该选项。

你也可以在同一个标签中设置多个应用，使用分号 `;` 分隔。

```yml
labels:
  - flame.type=application
  - flame.name=First App;Second App
  - flame.url=https://example1.com;https://example2.com
  - flame.icon=icon-name1;icon-name2
```

如果你想使用远程 Docker 主机，请在目标主机上执行以下步骤：

- 打开文件 `/lib/systemd/system/docker.service`，查找 `ExecStart` 并修改其值：

```text
ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:${PORT} -H unix:///var/run/docker.sock
```

> 上述命令将 Docker 引擎绑定到 Unix 套接字以及你选择的 TCP 端口。"0.0.0.0" 表示 Docker 引擎接受来自所有 IP 地址的连接。

- 重启守护进程和 Docker 服务：

```shell
sudo systemctl daemon-reload
sudo service docker restart
```

- 测试是否正常工作：

```shell
curl http://${IP}:${PORT}/version
```

### Kubernetes 集成

要使用 Kubernetes 集成功能，每个 Ingress 必须包含以下注解：

```yml
metadata:
  annotations:
  - flame.pawelmalak/type=application # "app" 也可以
  - flame.pawelmalak/name=My container
  - flame.pawelmalak/url=https://example.com
  - flame.pawelmalak/icon=icon-name # 可选，默认为 "kubernetes"
```

> 要使此功能生效，必须启用“使用 Kubernetes Ingress API”选项。你可以在 设置 > Docker 中找到该选项。

### 导入 HTML 书签（实验性功能）

- 要求
  - python3
  - pip 包：Pillow, beautifulsoup4
- 在运行脚本前请备份你的 `db.sqlite`！
- 已知问题：
  - 生成的图标有时不正确

```bash
pip3 install Pillow, beautifulsoup4

cd flame/.dev
python3 bookmarks_importer.py --bookmarks <书签.html路径> --data <Flame 数据文件夹路径>
```

### 自定义 CSS 和主题

请参阅项目 Wiki 中的 [自定义 CSS](https://github.com/pawelmalak/flame/wiki/Custom-CSS) 和 [使用 CSS 自定义主题](https://github.com/pawelmalak/flame/wiki/Custom-theme-with-CSS)。
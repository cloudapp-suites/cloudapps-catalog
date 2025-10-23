> 🚀 **EDAS 提供应用一键部署，快来体验吧！** [立即部署](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=122ea776-e9b5-4938-aee7-df38834985a9)

<h1 align="center">
 <img
  width="180"
  alt="Homer's donut"
  src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/homer/image/logo.png">
    <br/>
    Homer
</h1>

<h4 align="center">
 一个非常简单的静态<strong>HOM</strong>epage，适用于你的服务<strong>ER</strong>，只需一个简单的 <code>yaml</code> 配置文件即可轻松管理你的服务。
</h4>
<p align="center">
 <a href="https://opensource.org/licenses/Apache-2.0"><img
  alt="License: Apache 2"
  src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/homer/image/License-Apache_202.0-blue.svg"></a>
  <a href="https://github.com/bastienwirtz/homer/releases/latest/download/homer.zip"><img
  alt="Download homer static build"
  src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/homarr/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f446f776e6c6f61642d686f6d65722e7a69702d6f72616e6765.svg"></a>
 <a href="https://twitter.com/acdlite/status/974390255393505280"><img
  alt="speed-blazing"
  src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/homarr/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f73706565642d626c617a696e672532302546302539462539342541352d726564.svg"></a>
 <a href="https://github.com/awesome-selfhosted/awesome-selfhosted"><img
  alt="Awesome"
  src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/homarr/68747470733a2f2f63646e2e7261776769742e636f6d2f73696e647265736f726875732f617765736f6d652f643733303566333864323966656437386661383536353265336136336531353464643865383832392f6d656469612f62616467652e737667.svg"></a>
</p>

<p align="center">
 <strong>
  <a href="https://homer-demo.netlify.app">演示</a>
  •
  <a href="https://hub.docker.com/r/b4bz/homer">Docker Hub</a>
  •
  <a href="#get-started">开始使用</a>
 </strong>
</p>

## 特性

- ⚡️ 轻量级且快速
- 🥱 低维护或无需维护
- 📄 基于简单的 [yaml](http://yaml.org/) 配置文件
- ➕ 可安装（PWA）
- 🧠 智能卡片
- 🔍 模糊搜索
- 📂 多页面与项目分组
- 🎨 主题自定义
- ⌨️ 键盘快捷键：
  - <kbd>/</kbd> 开始搜索。
  - <kbd>Escape</kbd> 停止搜索。
  - <kbd>Enter</kbd> 打开第一个匹配结果（支持书签的 `_target` 属性）。
  - <kbd>Alt</kbd>（或 <kbd>Option</kbd>）+ <kbd>Enter</kbd> 在新标签页中打开第一个匹配结果。

## 目录

- 开始使用
- Kubernetes 安装
- 配置
- 主题
- 智能卡片
- 技巧与窍门
- 开发
- 故障排查

## 开始使用

Homer 是一个完全静态的 HTML/JS 仪表板，基于一个简单的 YAML 配置文件。有关配置（`assets/config.yml`）选项的更多信息，请参阅文档。

它需要通过 HTTP 服务器提供服务，**如果你直接通过 file:// 协议打开 index.html 文件将无法正常工作**。

### 使用 Docker

配置目录通过绑定挂载的方式，便于维护你的仪表板。

**使用 `docker run` 启动容器**

```sh
# 确保你的本地配置目录存在
docker run -d \
  --name homer \
  -p 8080:8080 \
  --mount type=bind,source="/path/to/config/dir",target=/www/assets \
  --restart=unless-stopped \
  b4bz/homer:latest
```

> [!NOTE]  
> 容器默认使用 UID 和 GID 为 1000 的用户运行，如果需要，可以在 Docker 命令中添加 `--user <your-UID>:<your-GID>` 来调整。请确保这与你的 assets 目录的权限匹配。

**或使用 `docker-compose`**

```yaml
services:
  homer:
    image: b4bz/homer
    container_name: homer
    volumes:
      - /path/to/config/dir:/www/assets # 确保你的本地配置目录存在
    ports:
      - 8080:8080
    user: 1000:1000 # 默认
    environment:
      - INIT_ASSETS=1 # 默认，要求配置目录对容器用户可写（见 user 选项）
    restart: unless-stopped
```

**环境变量：**

- **`INIT_ASSETS`**（默认：`1`）
安装示例配置文件和资源（如 favicon 等），帮助你快速开始。

- **`SUBFOLDER`**（默认：`null`）
如果你希望将 Homer 部署在子路径下（例如：<http://my-domain/homer>），请设置为该子路径（例如 `/homer`）。

- **`PORT`**（默认：`8080`）
如果你想将 Homer 的默认端口从 `8080` 更改为其他端口。

- **`IPV6_DISABLE`**（默认：`0`）
设置为 `1` 以禁用 IPv6 支持。

### 使用发布包（预构建，即开即用）

从 [发布页面](https://github.com/bastienwirtz/homer/releases) 下载并解压最新版本（`homer.zip`），将 `assets/config.yml.dist` 重命名为 `assets/config.yml`，然后通过 Web 服务器提供服务。

```sh
wget https://github.com/bastienwirtz/homer/releases/latest/download/homer.zip
unzip homer.zip -d homer
cd homer
cp assets/config.yml.dist assets/config.yml
pnpx http-server # 或 python -m http.server 8010 或其他 Web 服务器
```

### 手动构建

```sh
pnpm install
pnpm build
```

构建完成后，你的仪表板将在 `/dist` 目录中可用。

<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=bytestash)

</div>

# ByteStash
<p align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bytestash/image/logo192.png" />
</p>

ByteStash 是一个自托管的 Web 应用程序，旨在高效地存储、整理和管理你的代码片段。它支持创建、编辑和筛选代码片段，帮助你在一个安全的地方集中管理自己的代码。

![ByteStash 应用](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bytestash/image/app-image.png)

## 演示
体验由 PikaPods 提供支持的 [ByteStash 演示](https://bytestash-demo.pikapod.net/)！  
用户名：demo  
密码：demodemo

## 功能
- **创建和编辑代码片段**：通过直观的界面轻松添加新代码片段或更新已有片段。
- **按语言和内容筛选**：通过编程语言或内容中的关键词快速查找所需的代码片段。
- **安全存储**：所有代码片段均安全地存储在 SQLite 数据库中，确保代码仅对你可见且安全可靠。

## 使用方法
### Unraid
ByteStash 已上线 Unraid 应用商店！你可以从[这里](https://unraid.net/community/apps)安装。

### PikaPods
你也可以通过 [PikaPods](https://www.pikapods.com/) 实现[一键安装](https://www.pikapods.com/pods?run=bytestash)，价格从每月 1 美元起。

### Docker
你也可以通过 docker-compose 文件手动部署 ByteStash：
```yaml
services:
  bytestash:
    image: "ghcr.io/jordan-dalby/bytestash:latest"
    restart: always
    volumes:
      - /your/snippet/path:/data/snippets
    ports:
      - "5000:5000"
    environment:
      # 详见 https://github.com/jordan-dalby/ByteStash/wiki/FAQ#environment-variables
      BASE_PATH: ""
      JWT_SECRET: your-secret
      TOKEN_EXPIRY: 24h
      ALLOW_NEW_ACCOUNTS: "true"
      DEBUG: "true"
      DISABLE_ACCOUNTS: "false"
      DISABLE_INTERNAL_ACCOUNTS: "false"

      # 详见 https://github.com/jordan-dalby/ByteStash/wiki/Single-Sign%E2%80%90on-Setup
      OIDC_ENABLED: "false"
      OIDC_DISPLAY_NAME: ""
      OIDC_ISSUER_URL: ""
      OIDC_CLIENT_ID: ""
      OIDC_CLIENT_SECRET: ""
      OIDC_SCOPES: ""
```

## 技术栈
- 前端：React, Tailwind CSS
- 后端：Node.js, Express
- 容器化：Docker

## API 文档
启动服务器后，你可以通过 Swagger UI 浏览 API 文档。在浏览器中打开 `/api-docs` 即可查看所有接口的详细说明。

## 贡献
欢迎贡献代码！如有改进或修复 bug，请提交 Pull Request 或创建 Issue。
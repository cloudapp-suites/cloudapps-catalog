<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=cockpit)

</div>

# Cockpit CMS - 无头内容管理

![cockpit banner](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/cockpit-HQ/image/c8d4daf1-86cc-45c9-be24-5c6a6a2ca8ca)

> **现代化、灵活的 CMS，适应你的工作流**

Cockpit 是一个无头 CMS，提供灵活性，让你以自己的方式构建内容驱动的应用程序。无论你是在创建网站、移动应用还是物联网应用，Cockpit 都能为你提供所需的内容基础设施。

## ✨ 开发者选择 Cockpit 的原因

- **🚀 原生无头设计** - 可搭配任意前端技术（React、Vue、Flutter 等）
- **📊 灵活的内容模型** - 支持集合、单例和树形结构，并可自定义字段
- **🔗 GraphQL 与 REST API** - 提供现代 API，支持实时功能  
- **🌍 多语言支持** - 内建国际化功能，适用于全球应用
- **🎨 无厂商锁定** - 数据归你所有，可自由部署到任意平台
- **⚡ 性能优先** - 可选 MongoDB 或 SQLite 作为后端数据库

## 🚀 使用指南

启动后，访问 `http://your-ip/install` 并按照提示记录密码，并完成安装。

## 🛠️ 核心功能

| 功能 | 描述 | 
|---------|-------------|
| **内容建模** | 支持集合、单例、树结构，包含 20+ 种字段类型 |
| **资源管理** | 图像处理、视频缩略图生成、CDN 集成 |
| **用户管理** | 角色、权限控制、双因素认证（2FA）、API 令牌 |
| **多语言** | 支持本地化内容及回退机制 |
| **开发者工具** | GraphQL Playground、REST 文档、CLI 命令 |
| **可扩展性** | 自定义字段、插件、钩子函数、事件系统 |
| **多租户支持** | 支持多个站点和客户的“空间”隔离 |

## 📋 系统要求

- **PHP** >= 8.3，需启用 PDO 和 GD 扩展
- **数据库** SQLite（默认）或 MongoDB
- **Web 服务器** Apache（启用 mod_rewrite）或 Nginx
- **权限** `/storage` 目录需具备写入权限

请确保 `$_SERVER['DOCUMENT_ROOT']` 已正确配置。

## 🌐 API 示例

### REST API

```bash
# 获取所有已发布的博客文章
curl "https://yoursite.com/api/content/items/blog?filter={tags:'cms'}"

# 按 ID 获取单篇文章
curl "https://yoursite.com/api/content/item/blog/60f1b2b3c4d5e6f7a8b9c0d1"

# 创建新文章
curl -X POST "https://yoursite.com/api/content/item/blog" \
  -H "Cockpit-Token: your-token" \
  -H "Content-Type: application/json" \
  -d '{"title":"新文章","content":"内容在这里","tags":["cms"]}'
```

### GraphQL

```graphql
# 查询带分页的博客文章
query GetBlogPosts($limit: Int, $skip: Int) {
  blog(limit: $limit, skip: $skip, filter: {tags: "cms"}) {
    _id
    title
    content
    _created
    _modified
  }
}

# 创建新博客文章  
mutation CreatePost($data: JSON!) {
  saveContentItem(model: "blog", data: $data) {
    _id
    title
  }
}
```

## 🔗 资源链接

- **[文档](https://getcockpit.com/documentation)** - 完整指南和 API 参考
- **[GitHub](https://github.com/cockpit-hq/cockpit)** - 源码与问题追踪
- **[社区论坛](https://discourse.getcockpit.com)** - 获取帮助并分享知识

## 📱 应用场景

- **无头网站** - 结合 JAMstack 的静态网站
- **移动应用** - 使用原生或混合框架开发 iOS/Android 应用  
- **电子商务** - 商品目录与内容管理
- **企业官网** - 多语言企业网站
- **物联网仪表盘** - 为智能设备和显示屏提供内容
- **多租户 SaaS** - 平台级内容基础设施

## 🐳 Docker

使用容器在任何环境中实现一致且可扩展的部署。

### 使用 Docker 快速启动

```bash
# 使用 SQLite 运行（开发环境）
docker run -d \
  --name cockpit \
  -p 8080:80 \
  -v cockpit_storage:/var/www/html/storage \
  cockpithq/cockpit:core-latest

# 访问地址：http://localhost:8080/install
```

### 生产环境使用 MongoDB 的配置

```yaml
# docker-compose.yml
version: '3.8'
services:
  cockpit:
    image: cockpithq/cockpit:core-latest
    ports:
      - "80:80"
    environment:
      - COCKPIT_DATABASE_SERVER=mongodb://mongo:27017
      - COCKPIT_DATABASE_NAME=cockpit
    volumes:
      - ./storage:/var/www/html/storage
      - ./config:/var/www/html/config
    depends_on:
      - mongo
      
  mongo:
    image: mongo:8
    volumes:
      - mongo_data:/data/db
    environment:
      - MONGO_INITDB_DATABASE=cockpit

volumes:
  mongo_data:
```

### 配置说明

创建 `config/config.php` 文件并挂载，以连接 MongoDB：

```php
<?php
// config/config.php
return [
    'database' => [
        'server' => $_ENV['COCKPIT_DATABASE_SERVER'] ?? 'mongodb://mongo:27017',
        'database' => $_ENV['COCKPIT_DATABASE_NAME'] ?? 'cockpit'
    ],
    'sec-key' => $_ENV['COCKPIT_SEC_KEY'] ?? 'your-random-security-key'
];
```

**通过 Docker Compose 挂载配置文件：**
```yaml
volumes:
  - ./config:/var/www/html/config
```

**或创建自定义 Docker 镜像：**
```dockerfile
FROM cockpithq/cockpit:core-latest
COPY ./config/config.php /var/www/html/config/config.php
```

### 可用标签

- `core-latest` - 最新稳定版本
- `core-{version}` - 特定版本标签
- `pro-latest` - 最新 Pro 稳定版本
- `pro-{version}` - 特定 Pro 版本标签

访问 [Docker Hub](https://hub.docker.com/r/cockpithq/cockpit/tags) 查看所有可用标签。
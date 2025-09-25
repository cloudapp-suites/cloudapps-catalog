# ![](https://avatars1.githubusercontent.com/u/8237355?v=2&s=50) Grav

[![PHPStan](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/grav/image/PHPStan-已启用-brightgreen.svg)](https://github.com/phpstan/phpstan)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/grav/image/501836936584101899.svg)](https://chat.getgrav.org)
 [![PHP Tests](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/grav/image/badge.svg)](https://github.com/getgrav/grav/actions?query=workflow%3A%22PHP+Tests%22) [![OpenCollective](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/grav/image/68747470733a2f2f6f70656e636f6c6c6563746976652e636f6d2f677261762f74696572732f6261636b6572732f62616467652e7376673f6c6162656c3d4261636b65727326636f6c6f723d627269676874677265656e.svg)](#backers) [![OpenCollective](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/grav/image/68747470733a2f2f6f70656e636f6c6c6563746976652e636f6d2f677261762f74696572732f737570706f72746572732f62616467652e7376673f6c6162656c3d537570706f727465727326636f6c6f723d627269676874677265656e.svg)](#supporters) [![OpenCollective](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/grav/image/68747470733a2f2f6f70656e636f6c6c6563746976652e636f6d2f677261762f74696572732f73706f6e736f72732f62616467652e7376673f6c6162656c3d53706f6e736f727326636f6c6f723d627269676874677265656e.svg)](#sponsors)

Grav 是一个**快速**、**简洁**、**灵活**的基于文件的 Web 平台。**无需任何安装**，只需解压 ZIP 压缩包，即可立即运行。它遵循与其他扁平文件 CMS 平台类似的原则，但在设计理念上与大多数平台有所不同。Grav 配备了强大的**包管理系统**，可以轻松安装和升级插件和主题，并且可以轻松更新 Grav 本身。

Grav 的底层架构设计采用了成熟且 _业界领先_ 的技术，以确保 Grav 易于使用且易于扩展。其中一些关键技术包括：

* [Twig 模板引擎](https://twig.symfony.com/)：用于强大地控制用户界面
* [Markdown](https://zh.wikipedia.org/wiki/Markdown)：用于简化内容创建
* [YAML](https://yaml.org)：用于简单配置
* [Parsedown](https://parsedown.org/)：用于快速支持 Markdown 和 Markdown Extra
* [Doctrine 缓存](https://www.doctrine-project.org/projects/doctrine-orm/en/latest/reference/caching.html)：用于性能优化
* [Pimple 依赖注入容器](https://github.com/silexphp/Pimple)：用于扩展性和可维护性
* [Symfony 事件分发器](https://symfony.com/doc/current/components/event_dispatcher/introduction.html)：用于插件事件处理
* [Symfony 控制台组件](https://symfony.com/doc/current/components/console/introduction.html)：用于命令行接口
* [Gregwar 图像库](https://github.com/Gregwar/Image)：用于动态图像处理

# 系统要求

- PHP 7.3.6 或更高版本。请查看 [所需模块列表](https://learn.getgrav.org/basics/requirements#php-requirements)
- 查看 [Apache](https://learn.getgrav.org/basics/requirements#apache-requirements) 或 [IIS](https://learn.getgrav.org/basics/requirements#iis-requirements) 的要求

# 文档

完整文档请访问 [learn.getgrav.org](https://learn.getgrav.org)。

# 快速开始

以下是获取 Grav 的几种方式：

### 下载 Grav 安装包

你可以从 [getgrav.org 的下载页面](https://getgrav.org/downloads) 下载一个**预构建**的安装包。

### 使用 Composer

你可以使用以下命令创建一个包含最新**稳定版** Grav 的项目：

```
$ composer create-project getgrav/grav ~/webroot/grav
```

### 从 GitHub 获取

1. 从 [https://github.com/getgrav/grav]() 克隆 Grav 仓库到服务器 webroot 中的文件夹，例如 `~/webroot/grav`。打开**终端**或**控制台**并进入 webroot 文件夹：
   ```
   $ cd ~/webroot
   $ git clone https://github.com/getgrav/grav.git
   ```

2. 使用 [Grav CLI 工具](https://learn.getgrav.org/advanced/grav-cli) `bin/grav` 安装**插件**和**主题**依赖：
   ```
   $ cd ~/webroot/grav
   $ bin/grav install
   ```

更多安装信息请查看 [安装指南](https://learn.getgrav.org/basics/installation)。

# 添加功能

你可以从 [下载页面](https://getgrav.org/downloads) 的相应标签页手动下载 [插件](https://getgrav.org/downloads/plugins) 或 [主题](https://getgrav.org/downloads/themes)，但推荐使用 [Grav 包管理器](https://learn.getgrav.org/advanced/grav-gpm) 或 `GPM`：

```
$ bin/gpm index
```

这将显示所有可用插件，你可以使用以下命令安装一个或多个插件：

```
$ bin/gpm install <插件/主题>
```

# 更新

要更新 Grav，请使用 [Grav 包管理器](https://learn.getgrav.org/advanced/grav-gpm) 或 `GPM`：

```
$ bin/gpm selfupgrade
```

更新插件和主题：

```
$ bin/gpm update
```

## 从旧版本升级

* [升级到 Grav 1.7](https://learn.getgrav.org/16/advanced/grav-development/grav-17-upgrade-guide)
* [升级到 Grav 1.6](https://learn.getgrav.org/16/advanced/grav-development/grav-16-upgrade-guide)
* [从 Grav <1.6 升级](https://learn.getgrav.org/16/advanced/grav-development/grav-15-upgrade-guide)

# 贡献

我们非常欢迎对 Grav 的任何形式的贡献，无论是与 bug、语法相关，还是建议或改进！请参考 贡献指南 获取更多相关信息。

## 安全问题

如果你发现与 Grav 或其插件相关的潜在安全问题，请发送邮件至 contact@getgrav.org 联系核心团队，我们将尽快处理。

# 入门指南

* [什么是 Grav？](https://learn.getgrav.org/basics/what-is-grav)
* 几秒钟内 [安装](https://learn.getgrav.org/basics/installation) Grav
* 了解 [配置](https://learn.getgrav.org/basics/grav-configuration)
* 浏览我们提供的免费 [示例网站](https://getgrav.org/downloads/skeletons)
* 如果有疑问，请加入我们的 [Discord 聊天室](https://chat.getgrav.org)!
* 玩得开心！

# 探索更多

* 查看我们的 [基础教程](https://learn.getgrav.org/basics/basic-tutorial)
* 深入了解 [高级](https://learn.getgrav.org/advanced) 功能
* 学习 [Grav CLI](https://learn.getgrav.org/cli-console/grav-cli)
* 查看 [Grav 食谱](https://learn.getgrav.org/cookbook) 中的示例
* 更多 [Grav 精选资源](https://github.com/getgrav/awesome-grav)

# 许可证

请查看 LICENSE


[gitflow-model]: http://nvie.com/posts/a-successful-git-branching-model/
[gitflow-extensions]: https://github.com/nvie/gitflow

# 运行测试

首先在 Grav 根目录下运行 `composer install` 安装开发依赖。

然后运行 `composer test` 来执行单元测试，这些测试在任何环境下都应能成功执行。
Windows 用户应使用 `composer test-windows` 命令。
你也可以运行单个单元测试文件，例如：
```
composer test tests/unit/Grav/Common/AssetsTest.php
```

要运行 phpstan 测试，请执行以下命令：

* `composer phpstan` 执行全局测试
* `composer phpstan-framework` 执行更严格的测试
* `composer phpstan-plugins` 测试所有已安装插件
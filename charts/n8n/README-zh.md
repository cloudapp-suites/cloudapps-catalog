<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=adba7482-dfaa-43ef-959f-a4fc8f0c6995)

</div>

![Banner 图片](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/n8n/image/173569848-c624317f-42b1-45a6-ab09-f0ea3c247648.png)

# n8n - 面向技术团队的安全工作流自动化工具

n8n 是一个工作流自动化平台，它为技术团队提供了编码的灵活性和无代码工具的速度。拥有 400 多个集成、原生 AI 能力以及公平代码许可协议，n8n 让你能够构建强大的自动化流程，同时完全掌控你的数据和部署。

![n8n.io - 截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/n8n/image/n8n-screenshot-readme.png)

## 核心功能

- **按需编码**：编写 JavaScript/Python，添加 npm 包，或使用可视化界面
- **原生 AI 平台**：基于 LangChain 构建 AI 代理工作流，使用你自己的数据和模型
- **完全掌控**：通过我们的公平代码许可协议自托管，或使用我们的[云服务](https://app.n8n.cloud/login)
- **企业就绪**：高级权限管理、单点登录（SSO）和离线部署
- **活跃社区**：400 多个集成和 900 多个即用型[模板](https://n8n.io/workflows)

## 快速开始

使用 [npx](https://docs.n8n.io/hosting/installation/npm/) 立即试用 n8n（需要安装 [Node.js](https://nodejs.org/en/)）：

```
npx n8n
```

或者使用 [Docker](https://docs.n8n.io/hosting/installation/docker/) 部署：

```
docker volume create n8n_data
docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n
```

在 http://localhost:5678 访问编辑器

## 资源

- 📚 [文档](https://docs.n8n.io)
- 🔧 [400+ 集成](https://n8n.io/integrations)
- 💡 [示例工作流](https://n8n.io/workflows)
- 🤖 [AI 与 LangChain 指南](https://docs.n8n.io/langchain/)
- 👥 [社区论坛](https://community.n8n.io)
- 📖 [社区教程](https://community.n8n.io/c/tutorials/28)

## 支持

需要帮助？欢迎访问我们的社区论坛获取支持并与其他用户交流：
[community.n8n.io](https://community.n8n.io)

## 许可证

n8n 采用 [fair-code](https://faircode.io) 授权模式，遵循 [可持续使用许可协议](https://github.com/n8n-io/n8n/blob/master/LICENSE.md) 和 [n8n 企业许可协议](https://github.com/n8n-io/n8n/blob/master/LICENSE_EE.md)。

- **源代码开放**：源代码始终可见
- **支持自托管**：可部署在任意环境
- **可扩展性强**：可添加你自己的节点和功能

如需更多功能和支持，请申请[企业许可证](mailto:license@n8n.io)。

有关许可模型的更多信息，请参考[文档](https://docs.n8n.io/reference/license/)。

## 贡献

发现了 bug 🐛 或者有功能建议 ✨？请查看我们的 [贡献指南](https://github.com/n8n-io/n8n/blob/master/CONTRIBUTING.md) 开始参与。

## 加入团队

想塑造自动化的未来吗？查看我们的[招聘职位](https://n8n.io/careers)，加入我们！

## n8n 的含义是什么？

**简短回答：** 它表示 "nodemation"，发音为 n-eight-n。

**详细解释：** “我经常被问到这个问题（比我预想的还要频繁），所以我决定最好在这里统一回答一下。当初在为项目寻找一个合适的名称和可用域名时，我很快意识到我能想到的所有好名字几乎都被注册了。最终，我选择了 nodemation。其中 'node-' 是指它使用了节点视图（Node-View）和 Node.js，而 '-mation' 则来自 'automation'，这也是该项目的目标所在。不过，我觉得这个名字太长了，很难想象每次在命令行中输入这么长的字符串。于是，我最终将其简化为 'n8n'。” - **Jan Oberhauser，创始人兼首席执行官，n8n.io**
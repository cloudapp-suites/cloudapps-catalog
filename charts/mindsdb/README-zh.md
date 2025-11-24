<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=mindsdb)

</div>

<a name="readme-top"></a>

<div align="center">
	<a href="https://pypi.org/project/MindsDB/" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mindsdb/image/MindsDB.svg" alt="MindsDB 发布版本"></a>
	<a href="https://www.python.org/downloads/" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mindsdb/image/python-3.10.x_7C_203.11.x_7C_203.12.x_7C_203.13.x-brightgreen.svg" alt="支持的 Python 版本"></a>
	<a href="https://hub.docker.com/u/mindsdb" target="_blank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mindsdb/image/mindsdb.svg" alt="Docker 下载量"></a>

  <br />
  <br />

  <a href="https://github.com/mindsdb/mindsdb">
    <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mindsdb/image/mindsdb_logo.png" alt="MindsDB" width="300">
  </a>

  <p align="center">
    <br />
    <a href="https://www.mindsdb.com?utm_medium=community&utm_source=github&utm_campaign=mindsdb%20repo">官网</a>
    ·
    <a href="https://docs.mindsdb.com?utm_medium=community&utm_source=github&utm_campaign=mindsdb%20repo">文档</a>
    ·
    <a href="https://mindsdb.com/contact">联系我们获取演示</a>
    ·
    <a href="https://mindsdb.com/joincommunity?utm_medium=community&utm_source=github&utm_campaign=mindsdb%20repo">社区 Slack</a>
  </p>
</div>

----------------------------------------


MindsDB 使人类、AI、智能代理和应用程序能够从大规模数据源中获得高度准确的答案。

<a href="https://www.youtube.com/watch?v=MX3OKpnsoLM" target="_blank">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/mindsdb/image/119e7b82-f901-4214-a26f-ff7c5ad86064" alt="MindsDB 演示">
	
</a>


## 安装 MindsDB 服务器 

MindsDB 是一个开源服务器，可部署在任何地方——从你的笔记本电脑到云端，以及两者之间的环境。当然，你可以根据需求自由定制。

  * [使用 Docker Desktop](https://docs.mindsdb.com/setup/self-hosted/docker-desktop)。这是最快且推荐的入门方式，能让你快速运行起来。
  * [使用 Docker](https://docs.mindsdb.com/setup/self-hosted/docker)。这种方式同样简单，并提供更高的灵活性，便于进一步自定义服务器。

[MindsDB 内置了 MCP 服务器](https://docs.mindsdb.com/mcp/overview)，可让您的 MCP 应用程序连接、整合并响应跨大规模联邦数据的问题——涵盖数据库、数据仓库和 SaaS 应用程序。
 
----------------------------------------

# 核心理念：连接、统一、响应

MindsDB 的架构围绕三个核心能力构建：

## [连接](https://docs.mindsdb.com/integrations/data-overview) 您的数据

您可以连接数百种企业级[数据源（了解更多）](https://docs.mindsdb.com/integrations/data-overview)。这些集成使 MindsDB 能够访问数据所在的位置，为所有其他功能奠定基础。

## [统一](https://docs.mindsdb.com/mindsdb_sql/overview) 您的数据

在许多情况下，在基于数据生成响应之前，准备和统一数据非常重要。MindsDB SQL 提供知识库和视图，允许对结构化和非结构化数据进行索引和组织，就像它们在一个系统中统一管理一样。

* [**知识库 (KNOWLEDGE BASES)**](https://docs.mindsdb.com/mindsdb_sql/knowledge-bases) – 索引和组织非结构化数据，实现高效的问答。
* [**视图 (VIEWS)**](https://docs.mindsdb.com/mindsdb_sql/sql/create/view) – 创建跨不同数据源的统一视图，简化数据访问（无需 ETL）。

可通过任务（JOBs）自动化数据统一过程：

* [**任务 (JOBS)**](https://docs.mindsdb.com/mindsdb_sql/sql/create/jobs) – 调度同步和转换任务，实现实时处理。

## [响应](https://docs.mindsdb.com/mindsdb_sql/agents/agent) 来自您的数据

与您的数据对话

* [**智能代理 (AGENTS)**](https://docs.mindsdb.com/mindsdb_sql/agents/agent) – 配置内置智能代理，专门用于回答关于您已连接和统一数据的问题。
* [**MCP**](https://docs.mindsdb.com/mcp/overview) – 通过 MCP（模型上下文协议）连接 MindsDB，实现无缝交互。

----------------------------------------
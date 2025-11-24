<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=airflow)

</div>


<!--
 Licensed to the Apache Software Foundation (ASF) under one
 or more contributor license agreements.  See the NOTICE file
 distributed with this work for additional information
 regarding copyright ownership.  The ASF licenses this file
 to you under the Apache License, Version 2.0 (the
 "License"); you may not use this file except in compliance
 with the License.  You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

 Unless required by applicable law or agreed to in writing,
 software distributed under the License is distributed on an
 "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 KIND, either express or implied.  See the License for the
 specific language governing permissions and limitations
 under the License.
-->

<!-- START Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->
# Apache Airflow

| 徽章       |                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| 许可证     | [![License](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/_license-Apache_202-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0.txt)                                                                                                                                                                                                                                                                                                                                               |
| PyPI       | [![PyPI version](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/apache-airflow.svg)](https://badge.fury.io/py/apache-airflow) [![PyPI - Python Version](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/apache-airflow.svg)](https://pypi.org/project/apache-airflow/) [![PyPI - Downloads](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/apache-airflow.svg)](https://pypi.org/project/apache-airflow/)                                                                                                           |
| 容器       | [![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg)](https://hub.docker.com/r/apache/airflow) [![Docker Stars](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg)](https://hub.docker.com/r/apache/airflow) [![Artifact HUB](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/endpoint.svg)](https://artifacthub.io/packages/search?repo=apache-airflow)                                                  |
| 社区       | [![Contributors](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg)](https://github.com/apache/airflow/graphs/contributors) [![Slack Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/slack-join_chat-white.svg)](https://s.apache.org/airflow-slack) ![Commit Activity](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg) [![OSSRank](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/endpoint)](https://ossrank.com/p/6) |

| 版本    | 构建状态                                                                                                                                                                                                                                                                                                            |
|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Main    | [![GitHub Build main](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/badge.svg)](https://github.com/apache/airflow/actions) [![GitHub Build main](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/badge.svg)](https://github.com/apache/airflow/actions)                                 |
| 3.x     | [![GitHub Build 3.1](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/badge.svg?branch=v3-1-test)](https://github.com/apache/airflow/actions) [![GitHub Build 3.1](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/badge.svg?branch=v3-1-test)](https://github.com/apache/airflow/actions) |
| 2.x     | [![GitHub Build 2.11](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/badge.svg)](https://github.com/apache/airflow/actions)                                                                                                                                                               |

<picture width="500">
  <img
    src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/wordmark_1.png"
    alt="Apache Airflow logo"
  />
</picture>

[Apache Airflow](https://airflow.apache.org/docs/apache-airflow/stable/)（或简称 Airflow）是一个以编程方式编写、调度和监控工作流的平台。

当工作流以代码形式定义时，它们变得更易于维护、版本控制、测试和协作。

使用 Airflow 编写编排任务的工作流（DAG）。Airflow 调度器在遵循指定依赖关系的情况下，在一系列工作节点上执行您的任务。丰富的命令行工具使对 DAG 进行复杂操作变得轻而易举。丰富的用户界面使可视化生产环境中的管道、监控进度以及在需要时排查问题变得简单。

<!-- END Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**目录**

- [项目重点](#项目重点)
- [原则](#原则)
- [要求](#要求)
- [入门指南](#入门指南)
- [从 PyPI 安装](#从-pypi-安装)
- [安装](#安装)
- [官方源代码](#官方源代码)
- [便捷包](#便捷包)
- [用户界面](#用户界面)
- [语义化版本](#语义化版本)
- [版本生命周期](#版本生命周期)
- [对 Python 和 Kubernetes 版本的支持](#对-python-和-kubernetes-版本的支持)
- [参考 Airflow 镜像的基础操作系统支持](#参考-airflow-镜像的基础操作系统支持)
- [Airflow 依赖项的方法](#airflow-依赖项的方法)
- [贡献](#贡献)
- [投票政策](#投票政策)
- [谁在使用 Apache Airflow？](#谁在使用-apache-airflow)
- [谁维护 Apache Airflow？](#谁维护-apache-airflow)
- [下一个版本包含什么？](#下一个版本包含什么)
- [我可以在演示文稿中使用 Apache Airflow 徽标吗？](#我可以在演示文稿中使用-apache-airflow-徽标吗)
- [链接](#链接)
- [赞助商](#赞助商)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## 项目重点

Airflow 最适合处理大部分静态且变化缓慢的工作流。当 DAG 结构从一次运行到下一次运行都相似时，它能明确工作单元和连续性。类似的项目包括 [Luigi](https://github.com/spotify/luigi)、[Oozie](https://oozie.apache.org/) 和 [Azkaban](https://azkaban.github.io/)。

Airflow 通常用于处理数据，但它认为任务理想情况下应该是幂等的（即任务的结果相同，不会在目标系统中创建重复数据），并且不应在任务之间传递大量数据（尽管任务可以使用 Airflow 的 [XCom 功能](https://airflow.apache.org/docs/apache-airflow/stable/concepts/xcoms.html) 传递元数据）。对于高容量、数据密集型任务，最佳实践是委托给专门从事该类型工作的外部服务。

Airflow 不是流处理解决方案，但它经常用于处理实时数据，以批处理方式从流中提取数据。

## 原则

- **动态**: 管道以代码形式定义，支持动态 DAG 生成和参数化。
- **可扩展**: Airflow 框架包含广泛的内置操作符，可以根据您的需要进行扩展。
- **灵活**: Airflow 利用 [**Jinja**](https://jinja.palletsprojects.com) 模板引擎，允许丰富的自定义。

<!-- START Requirements, please keep comment here to allow auto update of PyPI README-zh.md -->
## 要求

Apache Airflow 的测试环境：

|            | 主版本 (dev)           | 稳定版本 (3.0.6)       |
|------------|------------------------|------------------------|
| Python     | 3.10, 3.11, 3.12, 3.13 | 3.9, 3.10, 3.11, 3.12  |
| 平台       | AMD64/ARM64(\*)        | AMD64/ARM64(\*)        |
| Kubernetes | 1.30, 1.31, 1.32, 1.33 | 1.30, 1.31, 1.32, 1.33 |
| PostgreSQL | 13, 14, 15, 16, 17     | 13, 14, 15, 16, 17     |
| MySQL      | 8.0, 8.4, Innovation   | 8.0, 8.4, Innovation   |
| SQLite     | 3.15.0+                | 3.15.0+                |

\* 实验性

**注意**: MariaDB 未经测试/不推荐使用。

**注意**: SQLite 用于 Airflow 测试。不要在生产环境中使用。我们建议在本地开发中使用最新稳定版本的 SQLite。

**注意**: Airflow 目前可以在 POSIX 兼容的操作系统上运行。在开发中，它定期在相当现代的 Linux 发行版和最新版本的 macOS 上进行测试。
在 Windows 上，您可以通过 WSL2（Windows Subsystem for Linux 2）或通过 Linux 容器运行它。
添加 Windows 支持的工作通过 [#10388](https://github.com/apache/airflow/issues/10388) 进行跟踪，
但这不是高优先级。您应该只使用基于 Linux 的发行版作为"生产"执行环境，
因为这是唯一受支持的环境。在我们的 CI 测试中使用的唯一发行版以及在
[社区管理的 DockerHub 镜像](https://hub.docker.com/p/apache/airflow)中使用的发行版是
`Debian Bookworm`。

<!-- END Requirements, please keep comment here to allow auto update of PyPI README-zh.md -->
<!-- START Getting started, please keep comment here to allow auto update of PyPI README-zh.md -->

## 用户界面

- **DAGs**: 环境中所有 DAG 的概览。

  ![DAGs](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/dags.png)

- **Assets**: 带有依赖关系的资产概览。

  ![Asset Dependencies](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/assets_graph.png)

- **Grid**: 跨时间的 DAG 网格表示。

  ![Grid](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/grid.png)

- **Graph**: 特定运行的 DAG 依赖关系及其当前状态的可视化。

  ![Graph](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/graph.png)

- **Home**: Airflow 环境的摘要统计信息。

  ![Home](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/home.png)

- **Backfill**: 为特定日期范围回填 DAG。

  ![Backfill](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/backfill.png)

- **Code**: 快速查看 DAG 源代码的方法。

  ![Code](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/code.png)

## 语义化版本

从 Airflow 2.0.0 开始，我们对所有发布的包都支持严格的 [SemVer](https://semver.org/) 方法。

我们同意了一些特定规则来定义不同包的版本细节：

* **Airflow**: SemVer 规则仅适用于核心 airflow（不包括对 providers 的任何更改）。
  更改 Airflow 依赖项的版本限制本身不是破坏性更改。
* **Airflow Providers**: SemVer 规则仅适用于特定 provider 代码中的更改。
  包的 SemVer 主版本和次版本与 Airflow 版本无关。
  例如，`google 4.1.0` 和 `amazon 3.0.6` providers 可以与 `Airflow 2.1.2` 一起愉快地安装。
  如果 providers 和 Airflow 包之间存在交叉依赖关系限制，
  它们在 providers 中以 `install_requires` 限制的形式存在。我们旨在保持 providers 与所有先前发布的 Airflow 2 版本的向后兼容性，
  但有时会有破坏性更改，可能使某些或所有 providers 指定最低 Airflow 版本。
* **Airflow Helm Chart**: SemVer 规则仅适用于图表中的更改。图表的 SemVer 主版本和次版本与 Airflow 版本无关。
  我们旨在保持 Helm Chart 与所有发布的 Airflow 2 版本的向后兼容性，
  但一些新功能可能仅从特定的 Airflow 版本开始工作。但我们可能会限制 Helm Chart 依赖于最低 Airflow 版本。
* **Airflow API clients**: 它们的版本控制与 Airflow 版本无关。它们遵循自己的 SemVer 规则来处理破坏性更改和新功能 -
  例如允许更改生成客户端的方式。

## 版本生命周期

Apache Airflow 版本生命周期：

<!-- This table is automatically updated by prek scripts/ci/prek/supported_versions.py -->
<!-- Beginning of auto-generated table -->

| 版本      | 当前补丁/次版本       | 状态      | 首次发布    | 有限维护          | EOL/终止         |
|-----------|-----------------------|-----------|-------------|-------------------|------------------|
| 3         | 3.0.6                 | 支持中    | 2025年4月22日 | TBD               | TBD              |
| 2         | 2.11.0                | 支持中    | 2020年12月17日 | 2025年10月22日    | 2026年4月22日    |
| 1.10      | 1.10.15               | EOL       | 2018年8月27日 | 2020年12月17日    | 2021年6月17日    |
| 1.9       | 1.9.0                 | EOL       | 2018年1月3日  | 2018年8月27日     | 2018年8月27日    |
| 1.8       | 1.8.2                 | EOL       | 2017年3月19日 | 2018年1月3日      | 2018年1月3日     |
| 1.7       | 1.7.1.2               | EOL       | 2016年3月28日 | 2017年3月19日     | 2017年3月19日    |

<!-- End of auto-generated table -->

有限支持版本将仅支持安全性和关键错误修复。
EOL 版本将不会获得任何修复或支持。
我们始终建议所有用户运行所使用主要版本的最新可用次版本。
我们**强烈**建议在 EOL 日期之前尽早升级到最新的 Airflow 主要版本。

## 谁在使用 Apache Airflow？

我们知道大约有 500 个组织正在使用 Apache Airflow（但可能还有更多）
[在实际应用中](https://github.com/apache/airflow/blob/main/INTHEWILD.md)。

如果您使用 Airflow - 欢迎提交 PR 将您的组织添加到列表中。

<!-- END Who uses Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->
<!-- START Who maintains Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->

## 谁维护 Apache Airflow？

Airflow 是[社区](https://github.com/apache/airflow/graphs/contributors)的工作成果，
但[核心提交者/维护者](https://people.apache.org/committers-by-project.html#airflow)
负责审查和合并 PR，以及引导关于新功能请求的讨论。
如果您想成为维护者，请查看 Apache Airflow
[提交者要求](https://github.com/apache/airflow/blob/main/COMMITTERS.rst#guidelines-to-become-an-airflow-committer)。

<!-- END Who maintains Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->

## 下一个版本包含什么？

通常您会看到一个问题被分配给特定的 Airflow 版本里程碑，或者一个 PR 被合并到主分支，
您可能想知道合并的 PR 将在哪个版本中发布，或者修复的问题将在哪个版本中。
答案通常取决于各种情况。PR 和问题的答案是不同的。

为了增加一些背景，我们遵循 [Semver](https://semver.org/) 版本方案，如
[Airflow 发布流程](https://airflow.apache.org/docs/apache-airflow/stable/release-process.html)中所述。
更多细节在此 README 的[语义化版本](#语义化版本)章节中有详细解释，
但简而言之，我们有 `MAJOR.MINOR.PATCH` 版本的 Airflow。

* `MAJOR` 版本在出现破坏性更改时递增
* `MINOR` 版本在添加新功能时递增
* `PATCH` 版本在只有错误修复和仅文档更改时递增

通常我们从以次版本命名的分支发布 Airflow 的 `MINOR` 版本。例如
`2.7.*` 版本从 `v2-7-stable` 分支发布，`2.8.*` 版本从 `v2-8-stable`
分支发布，等等。

1. 在我们的发布周期中，大多数时候当下一个 `MINOR` 分支尚未创建时，所有
合并到 `main` 的 PR（除非被还原）将进入下一个 `MINOR` 版本。例如
如果上一个版本是 `2.7.3` 且 `v2-8-stable` 分支尚未创建，下一个 `MINOR` 版本
是 `2.8.0`，所有合并到 main 的 PR 将在 `2.8.0` 中发布。但是，一些 PR（错误修复和
仅文档更改）合并后，可以被挑选到当前的 `MINOR` 分支并在下一个
`PATCHLEVEL` 版本中发布。例如，如果 `2.8.1` 已经发布，我们正在开发 `2.9.0dev`，
那么将 PR 标记为 `2.8.2` 里程碑意味着它将被挑选到 `v2-8-test` 分支并在
`2.8.2rc1` 中发布，最终在 `2.8.2` 中发布。

2. 当我们准备下一个 `MINOR` 版本时，我们会创建新的 `v2-*-test` 和 `v2-*-stable` 分支
并为下一个 `MINOR` 版本准备 `alpha`、`beta` 版本，合并到 main 的 PR 仍将
在下一个 `MINOR` 版本中发布，直到 `rc` 版本被切割。这是因为 `v2-*-test`
和 `v2-*-stable` 分支在准备下一个 `beta` 和 `rc` 版本时会重新基于 main。
例如，当我们切割 `2.10.0beta1` 版本时，任何在 `2.10.0rc1` 发布前合并到 main 的内容，
都将进入 2.10.0rc1。

3. 然后，一旦我们为 MINOR 版本准备了第一个 RC 候选版本，我们就会停止移动 `v2-*-test` 和
`v2-*-stable` 分支，合并到 main 的 PR 将在下一个 `MINOR` 版本中发布。
但是，一些 PR（错误修复和仅文档更改）合并后，可以被挑选到当前的 `MINOR`
分支并在下一个 `PATCHLEVEL` 版本中发布 - 例如当 `v2-10-stable`
分支的最后一个发布版本是 `2.10.0rc1` 时，一些来自主分支的 PR 可以被提交者标记为 `2.10.0` 里程碑，
发布经理将尝试将它们挑选到发布分支中。
如果成功，它们将在 `2.10.0rc2` 中发布，随后在 `2.10.0` 中发布。这也适用于
后续的 `PATCHLEVEL` 版本。例如当 `2.10.1` 已经发布时，将 PR 标记为
`2.10.2` 里程碑意味着它将被挑选到 `v2-10-stable` 分支并在 `2.10.2rc1`
中发布，最终在 `2.10.2` 中发布。

关于挑选的最终决定由发布经理做出。

标记问题的里程碑略有不同。维护者通常不会给问题标记里程碑，
通常它们只在 PR 中标记。如果链接到问题的 PR（并"修复"它）按照上述过程合并并在
特定版本中发布，问题将自动关闭，问题不会设置里程碑，
您需要检查修复问题的 PR 以查看它在哪个版本中发布。

但是，有时维护者会用特定里程碑标记问题，这意味着
该问题在准备发布时成为候选的重要问题。由于这是一个
开源项目，基本上所有贡献者都是志愿贡献时间，不能保证特定
问题会在特定版本中修复。我们不想因为某些问题未修复而推迟发布，
所以在这种情况下，发布经理会在当前发布版本的时间内未修复这些问题时，
将这些未修复的问题重新分配给下一个里程碑。因此，问题的里程碑更多是一种意图，
即应该关注它，而不是承诺它将在版本中修复。

关于补丁级别发布的更多上下文和**FAQ**可以在存储库的 `dev` 文件夹中的
[下一个版本包含什么](dev/WHAT_GOES_INTO_THE_NEXT_RELEASE.md)文档中找到。

## 我可以在演示文稿中使用 Apache Airflow 徽标吗？

可以！请务必遵守 Apache 基金会[商标政策](https://www.apache.org/foundation/marks/#books)和 Apache Airflow [品牌手册](https://cwiki.apache.org/confluence/display/AIRFLOW/Brandbook)。最新的徽标可以在[此仓库](https://github.com/apache/airflow/tree/main/airflow-core/docs/img/logos/)和 Apache 软件基金会[网站](https://www.apache.org/logos/about.html)上找到。

## 链接

- [文档](https://airflow.apache.org/docs/apache-airflow/stable/)
- [聊天](https://s.apache.org/airflow-slack)
- [社区信息](https://airflow.apache.org/community/)
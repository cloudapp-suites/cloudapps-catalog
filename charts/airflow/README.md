<div align="center">

 🚀 **EDAS provides one-click application deployment. Try it now!** 

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=airflow)

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

| Badges     |                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |
|------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| License    | [![License](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/_license-Apache_202-blue.svg)](https://www.apache.org/licenses/LICENSE-2.0.txt)                                                                                                                                                                                                                                                                                                                                               |
| PyPI       | [![PyPI version](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/apache-airflow.svg)](https://badge.fury.io/py/apache-airflow) [![PyPI - Python Version](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/apache-airflow.svg)](https://pypi.org/project/apache-airflow/) [![PyPI - Downloads](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/apache-airflow.svg)](https://pypi.org/project/apache-airflow/)                                                                                                           |
| Containers | [![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg)](https://hub.docker.com/r/apache/airflow) [![Docker Stars](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg)](https://hub.docker.com/r/apache/airflow) [![Artifact HUB](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/endpoint.svg)](https://artifacthub.io/packages/search?repo=apache-airflow)                                                  |
| Community  | [![Contributors](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg)](https://github.com/apache/airflow/graphs/contributors) [![Slack Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/slack-join_chat-white.svg)](https://s.apache.org/airflow-slack) ![Commit Activity](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/airflow.svg) [![OSSRank](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/endpoint)](https://ossrank.com/p/6) |

| Version | Build Status                                                                                                                                                                                                                                                                                                            |
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

[Apache Airflow](https://airflow.apache.org/docs/apache-airflow/stable/) (or simply Airflow) is a platform to programmatically author, schedule, and monitor workflows.

When workflows are defined as code, they become more maintainable, versionable, testable, and collaborative.

Use Airflow to author workflows (Dags) that orchestrate tasks. The Airflow scheduler executes your tasks on an array of workers while following the specified dependencies. Rich command line utilities make performing complex surgeries on DAGs a snap. The rich user interface makes it easy to visualize pipelines running in production, monitor progress, and troubleshoot issues when needed.

<!-- END Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
**Table of contents**

- [Project Focus](#project-focus)
- [Principles](#principles)
- [Requirements](#requirements)
- [Getting started](#getting-started)
- [Installing from PyPI](#installing-from-pypi)
- [Installation](#installation)
- [Official source code](#official-source-code)
- [Convenience packages](#convenience-packages)
- [User Interface](#user-interface)
- [Semantic versioning](#semantic-versioning)
- [Version Life Cycle](#version-life-cycle)
- [Support for Python and Kubernetes versions](#support-for-python-and-kubernetes-versions)
- [Base OS support for reference Airflow images](#base-os-support-for-reference-airflow-images)
- [Approach to dependencies of Airflow](#approach-to-dependencies-of-airflow)
- [Contributing](#contributing)
- [Voting Policy](#voting-policy)
- [Who uses Apache Airflow?](#who-uses-apache-airflow)
- [Who maintains Apache Airflow?](#who-maintains-apache-airflow)
- [What goes into the next release?](#what-goes-into-the-next-release)
- [Can I use the Apache Airflow logo in my presentation?](#can-i-use-the-apache-airflow-logo-in-my-presentation)
- [Links](#links)
- [Sponsors](#sponsors)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Project Focus

Airflow works best with workflows that are mostly static and slowly changing. When the DAG structure is similar from one run to the next, it clarifies the unit of work and continuity. Other similar projects include [Luigi](https://github.com/spotify/luigi), [Oozie](https://oozie.apache.org/) and [Azkaban](https://azkaban.github.io/).

Airflow is commonly used to process data, but has the opinion that tasks should ideally be idempotent (i.e., results of the task will be the same, and will not create duplicated data in a destination system), and should not pass large quantities of data from one task to the next (though tasks can pass metadata using Airflow's [XCom feature](https://airflow.apache.org/docs/apache-airflow/stable/concepts/xcoms.html)). For high-volume, data-intensive tasks, a best practice is to delegate to external services specializing in that type of work.

Airflow is not a streaming solution, but it is often used to process real-time data, pulling data off streams in batches.

## Principles

- **Dynamic**: Pipelines are defined in code, enabling dynamic dag generation and parameterization.
- **Extensible**: The Airflow framework includes a wide range of built-in operators and can be extended to fit your needs.
- **Flexible**: Airflow leverages the [**Jinja**](https://jinja.palletsprojects.com) templating engine, allowing rich customizations.

<!-- START Requirements, please keep comment here to allow auto update of PyPI README-zh.md -->
## Requirements

Apache Airflow is tested with:

|            | Main version (dev)     | Stable version (3.0.6) |
|------------|------------------------|------------------------|
| Python     | 3.10, 3.11, 3.12, 3.13 | 3.9, 3.10, 3.11, 3.12  |
| Platform   | AMD64/ARM64(\*)        | AMD64/ARM64(\*)        |
| Kubernetes | 1.30, 1.31, 1.32, 1.33 | 1.30, 1.31, 1.32, 1.33 |
| PostgreSQL | 13, 14, 15, 16, 17     | 13, 14, 15, 16, 17     |
| MySQL      | 8.0, 8.4, Innovation   | 8.0, 8.4, Innovation   |
| SQLite     | 3.15.0+                | 3.15.0+                |

\* Experimental

**Note**: MariaDB is not tested/recommended.

**Note**: SQLite is used in Airflow tests. Do not use it in production. We recommend
using the latest stable version of SQLite for local development.

**Note**: Airflow currently can be run on POSIX-compliant Operating Systems. For development, it is regularly
tested on fairly modern Linux Distros and recent versions of macOS.
On Windows you can run it via WSL2 (Windows Subsystem for Linux 2) or via Linux Containers.
The work to add Windows support is tracked via [#10388](https://github.com/apache/airflow/issues/10388), but
it is not a high priority. You should only use Linux-based distros as "Production" execution environment
as this is the only environment that is supported. The only distro that is used in our CI tests and that
is used in the [Community managed DockerHub image](https://hub.docker.com/p/apache/airflow) is
`Debian Bookworm`.

<!-- END Requirements, please keep comment here to allow auto update of PyPI README-zh.md -->
<!-- START Getting started, please keep comment here to allow auto update of PyPI README-zh.md -->

## User Interface

- **DAGs**: Overview of all DAGs in your environment.

  ![DAGs](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/dags.png)

- **Assets**: Overview of Assets with dependencies.

  ![Asset Dependencies](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/assets_graph.png)

- **Grid**: Grid representation of a DAG that spans across time.

  ![Grid](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/grid.png)

- **Graph**: Visualization of a DAG's dependencies and their current status for a specific run.

  ![Graph](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/graph.png)

- **Home**: Summary statistics of your Airflow environment.

  ![Home](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/home.png)

- **Backfill**: Backfilling a DAG for a specific date range.

  ![Backfill](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/backfill.png)

- **Code**: Quick way to view source code of a DAG.

  ![Code](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/airflow/image/code.png)

## Semantic versioning

As of Airflow 2.0.0, we support a strict [SemVer](https://semver.org/) approach for all packages released.

There are few specific rules that we agreed to that define details of versioning of the different
packages:

* **Airflow**: SemVer rules apply to core airflow only (excludes any changes to providers).
  Changing limits for versions of Airflow dependencies is not a breaking change on its own.
* **Airflow Providers**: SemVer rules apply to changes in the particular provider's code only.
  SemVer MAJOR and MINOR versions for the packages are independent of the Airflow version.
  For example, `google 4.1.0` and `amazon 3.0.6` providers can happily be installed
  with `Airflow 2.1.2`. If there are limits of cross-dependencies between providers and Airflow packages,
  they are present in providers as `install_requires` limitations. We aim to keep backwards
  compatibility of providers with all previously released Airflow 2 versions but
  there will sometimes be breaking changes that might make some, or all
  providers, have minimum Airflow version specified.
* **Airflow Helm Chart**: SemVer rules apply to changes in the chart only. SemVer MAJOR and MINOR
  versions for the chart are independent of the Airflow version. We aim to keep backwards
  compatibility of the Helm Chart with all released Airflow 2 versions, but some new features might
  only work starting from specific Airflow releases. We might however limit the Helm
  Chart to depend on minimal Airflow version.
* **Airflow API clients**: Their versioning is independent from Airflow versions. They follow their own
  SemVer rules for breaking changes and new features - which for example allows to change the way we generate
  the clients.

## Version Life Cycle

Apache Airflow version life cycle:

<!-- This table is automatically updated by prek scripts/ci/prek/supported_versions.py -->
<!-- Beginning of auto-generated table -->

| Version   | Current Patch/Minor   | State     | First Release   | Limited Maintenance   | EOL/Terminated   |
|-----------|-----------------------|-----------|-----------------|-----------------------|------------------|
| 3         | 3.0.6                 | Supported | Apr 22, 2025    | TBD                   | TBD              |
| 2         | 2.11.0                | Supported | Dec 17, 2020    | Oct 22, 2025          | Apr 22, 2026     |
| 1.10      | 1.10.15               | EOL       | Aug 27, 2018    | Dec 17, 2020          | June 17, 2021    |
| 1.9       | 1.9.0                 | EOL       | Jan 03, 2018    | Aug 27, 2018          | Aug 27, 2018     |
| 1.8       | 1.8.2                 | EOL       | Mar 19, 2017    | Jan 03, 2018          | Jan 03, 2018     |
| 1.7       | 1.7.1.2               | EOL       | Mar 28, 2016    | Mar 19, 2017          | Mar 19, 2017     |

<!-- End of auto-generated table -->

Limited support versions will be supported with security and critical bug fix only.
EOL versions will not get any fixes nor support.
We always recommend that all users run the latest available minor release for whatever major version is in use.
We **highly** recommend upgrading to the latest Airflow major release at the earliest convenient time and before the EOL date.

## Who uses Apache Airflow?

We know about around 500 organizations that are using Apache Airflow (but there are likely many more)
[in the wild](https://github.com/apache/airflow/blob/main/INTHEWILD.md).

If you use Airflow - feel free to make a PR to add your organisation to the list.

<!-- END Who uses Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->
<!-- START Who maintains Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->

## Who maintains Apache Airflow?

Airflow is the work of the [community](https://github.com/apache/airflow/graphs/contributors),
but the [core committers/maintainers](https://people.apache.org/committers-by-project.html#airflow)
are responsible for reviewing and merging PRs as well as steering conversations around new feature requests.
If you would like to become a maintainer, please review the Apache Airflow
[committer requirements](https://github.com/apache/airflow/blob/main/COMMITTERS.rst#guidelines-to-become-an-airflow-committer).

<!-- END Who maintains Apache Airflow, please keep comment here to allow auto update of PyPI README-zh.md -->

## What goes into the next release?

Often you will see an issue that is assigned to specific milestone with Airflow version, or a PR that gets merged
to the main branch and you might wonder which release the merged PR(s) will be released in or which release the fixed
issues will be in. The answer to this is as usual - it depends on various scenarios. The answer is different for PRs and Issues.

To add a bit of context, we are following the [Semver](https://semver.org/) versioning scheme as described in
[Airflow release process](https://airflow.apache.org/docs/apache-airflow/stable/release-process.html). More
details are explained in detail in this README under the [Semantic versioning](#semantic-versioning) chapter, but
in short, we have `MAJOR.MINOR.PATCH` versions of Airflow.

* `MAJOR` version is incremented in case of breaking changes
* `MINOR` version is incremented when there are new features added
* `PATCH` version is incremented when there are only bug-fixes and doc-only changes

Generally we release `MINOR` versions of Airflow from a branch that is named after the MINOR version. For example
`2.7.*` releases are released from `v2-7-stable` branch, `2.8.*` releases are released from `v2-8-stable`
branch, etc.

1. Most of the time in our release cycle, when the branch for next `MINOR` branch is not yet created, all
PRs merged to `main` (unless they get reverted), will find their way to the next `MINOR` release. For example
if the last release is `2.7.3` and `v2-8-stable` branch is not created yet, the next `MINOR` release
is `2.8.0` and all PRs merged to main will be released in `2.8.0`. However, some PRs (bug-fixes and
doc-only changes) when merged, can be cherry-picked to current `MINOR` branch and released in the
next `PATCHLEVEL` release. For example, if `2.8.1` is already released and we are working on `2.9.0dev`,  then
marking a PR with `2.8.2` milestone means that it will be cherry-picked to `v2-8-test` branch and
released in `2.8.2rc1`, and eventually in `2.8.2`.

2. When we prepare for the next `MINOR` release, we cut new `v2-*-test` and `v2-*-stable` branch
and prepare `alpha`, `beta` releases for the next `MINOR` version, the PRs merged to main will still be
released in the next `MINOR` release until `rc` version is cut. This is happening because the `v2-*-test`
and `v2-*-stable` branches are rebased on top of main when next `beta` and `rc` releases are prepared.
For example, when we cut `2.10.0beta1` version, anything merged to main before `2.10.0rc1` is released,
will find its way to 2.10.0rc1.

3. Then, once we prepare the first RC candidate for the MINOR release, we stop moving the `v2-*-test` and
`v2-*-stable` branches and the PRs merged to main will be released in the next `MINOR` release.
However, some PRs (bug-fixes and doc-only changes) when merged, can be cherry-picked to current `MINOR`
branch and released in the next `PATCHLEVEL` release - for example when the last released version from `v2-10-stable`
branch is `2.10.0rc1`, some of the PRs from main can be marked as `2.10.0` milestone by committers,
the release manager will try to cherry-pick them into the release branch.
If successful, they will be released in `2.10.0rc2` and subsequently in `2.10.0`. This also applies to
subsequent `PATCHLEVEL` versions. When for example `2.10.1` is already released, marking a PR with
`2.10.2` milestone will mean that it will be cherry-picked to `v2-10-stable` branch and released in `2.10.2rc1`
and eventually in `2.10.2`.

The final decision about cherry-picking is made by the release manager.

Marking issues with a milestone is a bit different. Maintainers do not mark issues with a milestone usually,
normally they are only marked in PRs. If PR linked to the issue (and "fixing it") gets merged and released
in a specific version following the process described above, the issue will be automatically closed, no
milestone will be set for the issue, you need to check the PR that fixed the issue to see which version
it was released in.

However, sometimes maintainers mark issues with specific milestone, which means that the
issue is important to become a candidate to take a look when the release is being prepared. Since this is an
Open-Source project, where basically all contributors volunteer their time, there is no guarantee that specific
issue will be fixed in specific version. We do not want to hold the release because some issue is not fixed,
so in such case release manager will reassign such unfixed issues to the next milestone in case they are not
fixed in time for the current release. Therefore, the milestone for issue is more of an intent that it should be
looked at, than promise it will be fixed in the version.

More context and **FAQ** about the patchlevel release can be found in the
[What goes into the next release](dev/WHAT_GOES_INTO_THE_NEXT_RELEASE.md) document in the `dev` folder of the
repository.

## Can I use the Apache Airflow logo in my presentation?

Yes! Be sure to abide by the Apache Foundation [trademark policies](https://www.apache.org/foundation/marks/#books) and the Apache Airflow [Brandbook](https://cwiki.apache.org/confluence/display/AIRFLOW/Brandbook). The most up-to-date logos are found in [this repo](https://github.com/apache/airflow/tree/main/airflow-core/docs/img/logos/) and on the Apache Software Foundation [website](https://www.apache.org/logos/about.html).

## Links

- [Documentation](https://airflow.apache.org/docs/apache-airflow/stable/)
- [Chat](https://s.apache.org/airflow-slack)
- [Community Information](https://airflow.apache.org/community/)
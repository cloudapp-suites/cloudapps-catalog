<div align="center">

 **EDAS provides one-click application deployment. Try it now!** 

[![Deploy Now](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=code-server)

</div>

# code-server

[!["GitHub Discussions"](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/_20GitHub-_20Discussions-gray.svg)](https://github.com/coder/code-server/discussions) [!["Join us on Slack"](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/join-us_20on_20slack-gray.svg)](https://coder.com/community) [![Twitter Follow](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/CoderHQ.svg)](https://twitter.com/coderhq) [![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/747933592273027093.svg)](https://discord.com/invite/coder) [![codecov](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/badge.svg)](https://codecov.io/gh/coder/code-server) [![See latest](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/v1.svg)](https://coder.com/docs/code-server/latest)

Run [VS Code](https://github.com/Microsoft/vscode) on any machine anywhere and
access it in the browser.

![Screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/screenshot-1.png)
![Screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/code-server/image/screenshot-2.png)

## Highlights

- Code on any device with a consistent development environment
- Use cloud servers to speed up tests, compilations, downloads, and more
- Preserve battery life when you're on the go; all intensive tasks run on your
  server

## Requirements

See [requirements](https://coder.com/docs/code-server/latest/requirements) for minimum specs, as well as instructions
on how to set up a Google VM on which you can install code-server.

**TL;DR:** Linux machine with WebSockets enabled, 1 GB RAM, and 2 vCPUs

## Getting started

There are five ways to get started:

1. Using the [install
   script](https://github.com/coder/code-server/blob/main/install.sh), which
   automates most of the process. The script uses the system package manager if
   possible.
2. Manually [installing
   code-server](https://coder.com/docs/code-server/latest/install)
3. Deploy code-server to your team with [coder/coder](https://cdr.co/coder-github)
4. Using our one-click buttons and guides to [deploy code-server to a cloud
   provider](https://github.com/coder/deploy-code-server) ⚡
5. Using the [code-server feature for
   devcontainers](https://github.com/coder/devcontainer-features/blob/main/src/code-server/README.md),
   if you already use devcontainers in your project.

If you use the install script, you can preview what occurs during the install
process:

```bash
curl -fsSL https://code-server.dev/install.sh | sh -s -- --dry-run
```

To install, run:

```bash
curl -fsSL https://code-server.dev/install.sh | sh
```

When done, the install script prints out instructions for running and starting
code-server.

> **Note**
> To manage code-server for a team on your infrastructure, see: [coder/coder](https://cdr.co/coder-github)

We also have an in-depth [setup and
configuration](https://coder.com/docs/code-server/latest/guide) guide.

## Questions?

See answers to [frequently asked
questions](https://coder.com/docs/code-server/latest/FAQ).

## Want to help?

See [Contributing](https://coder.com/docs/code-server/latest/CONTRIBUTING) for
details.

## Hiring

Interested in [working at Coder](https://coder.com/careers)? Check out [our open
positions](https://coder.com/careers#openings)!

## For Teams

We develop [coder/coder](https://cdr.co/coder-github) to help teams to
adopt remote development.

<a href="https://answer.apache.org">
    <img alt="logo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/logo.svg" height="99px">
</a>

# Apache Answer - Build Q&A platform

A Q&A platform software for teams at any scales. Whether it’s a community forum, help center, or knowledge management platform, you can always count on Answer.

To learn more about the project, visit [answer.apache.org](https://answer.apache.org).

[![LICENSE](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6c6963656e73652f6170616368652f616e73776572.svg)](https://github.com/apache/answer/blob/main/LICENSE)
[![Language](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/language-go-blue.svg)](https://golang.org/)
[![Language](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/language-react-blue.svg)](https://reactjs.org/)
[![Go Report Card](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/68747470733a2f2f676f7265706f7274636172642e636f6d2f62616467652f6769746875622e636f6d2f6170616368652f616e73776572.svg)](https://goreportcard.com/report/github.com/apache/answer)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f646973636f72642d636861742d3538363566323f6c6f676f3d646973636f7264266c6f676f436f6c6f723d663566356635.svg)](https://discord.gg/Jm7Y4cbUej)

## Screenshots

![screenshot](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/answer/image/screenshot.png)

## Quick start

### Running with docker

```bash
docker run -d -p 9080:80 -v answer-data:/data --name answer apache/answer:1.6.0
```

For more information, see [Installation](https://answer.apache.org/docs/installation).

### Plugins

Answer provides a plugin system for developers to create custom plugins and expand Answer’s features. You can find the [plugin documentation here](https://answer.apache.org/community/plugins).

We value your feedback and suggestions to improve our documentation. If you have any comments or questions, please feel free to contact us. We’re excited to see what you can create using our plugin system!

You can also check out the [plugins here](https://answer.apache.org/plugins).

## Building from Source

### Prerequisites

- Golang >= 1.23
- Node.js >= 20
- pnpm >= 9
- [mockgen](https://github.com/uber-go/mock?tab=readme-ov-file#installation) >= 1.6.0
- [wire](https://github.com/google/wire/) >= 0.5.0

### Build

```bash
# Install wire and mockgen for building. You can run `make check` to check if they are installed.
$ make generate
# Install frontend dependencies and build
$ make ui
# Install backend dependencies and build
$ make build
```

## Contributing

Contributions are always welcome!

See [CONTRIBUTING](https://answer.apache.org/community/contributing) for ways to get started.

## License

[Apache License 2.0](https://github.com/apache/answer/blob/main/LICENSE)

<div align="center">

 🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=thumbor)

</div>

> 注意：thumbor 不支持 /spm? 埋点，请直接使用如：**http://<thumbor-server>/unsafe/https://raw.githubusercontent.com/thumbor/thumbor/master/example.jpg**
<p align="center">
  <a href="http://www.thumbor.org">
    <img title="thumbor" alt="thumbor" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/thumbor-logo.png" />
  </a>
</p>

<h3 align="center">
裁剪、调整大小、转换等操作，全部按需提供并由 AI 驱动
</h3>

<p align="center">
  <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/badge.svg' />
  <a href='https://coveralls.io/github/thumbor/thumbor?branch=master' target='_blank'>
    <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/badge.svg'/>
  </a>
  <a href='https://codeclimate.com/github/thumbor/thumbor' target='_blank'>
    <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/gpa.svg'/>
  </a>
  <a href='https://pypi.python.org/pypi/thumbor' target='_blank'>
    <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/thumbor.svg'/>
  </a>
  <br />
  <a href='https://github.com/thumbor/thumbor/pulls' target='_blank'>
    <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/thumbor.svg'/>
  </a>
  <a href='https://github.com/thumbor/thumbor/issues' target='_blank'>
    <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/thumbor.svg'/>
  </a>
  <a href='https://pypi.python.org/pypi/thumbor' target='_blank'>
    <img src='https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/thumbor.svg'/>
  </a>
</p>

thumbor 是一个智能图像服务，支持按需进行 [裁剪、调整大小、应用滤镜和优化](http://thumbor.readthedocs.io/en/latest/crop_and_resize_algorithms.html) 图像。

自动裁剪照片可能会令人沮丧，因为有时会把人的头部裁掉。thumbor 使用 [AI 进行智能检测](http://thumbor.readthedocs.io/en/latest/detection_algorithms.html)。

thumbor 是一个 HTTP 服务器，你可以通过修改路径参数来生成任意数量的不同图像：

```
http://<thumbor-server>/300x200/smart/thumbor.readthedocs.io/en/latest/_images/logo-thumbor.png
```

你应该能看到一张 thumbor 标志的 300x200 图像。

了解更多关于 thumbor 的功能，请查看 [thumbor 的文档](http://thumbor.readthedocs.io/en/latest/index.html "thumbor 文档")。

## 🎯 特性

- 开箱即用，支持所有常见图像格式
- [智能裁剪和调整大小](http://thumbor.readthedocs.io/en/latest/detection_algorithms.html)
- 利用缓存实现极速响应
- 支持多种存储方式（本地存储、AWS S3、Rackspace、Ceph 等）
- 基于人脸和特征检测（眼镜、兴趣点等）的 AI 裁剪功能
- 集成多种编程语言和框架 <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/favicon.ico" width="16" height="16" /><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/favicon.png" width="16" height="16" /><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/thumbor/image/favicon.ico" width="16" height="16" /> 等等...
- [高度可扩展](https://thumbor.readthedocs.io/en/latest/customizing.html)

## 🌟 精彩扩展

[awesome-thumbor](https://github.com/thumbor/awesome-thumbor) 是一个精心整理的 thumbor 相关资源列表。你可以在其中找到滤镜、存储、引擎、加载器、Docker 镜像、你喜爱的语言和框架的扩展等等。

所有项目都标明了其质量等级。尽情享受吧！

## 👍 贡献

thumbor 是一个拥有众多贡献者的开源项目。欢迎你加入他们，[贡献代码](https://github.com/thumbor/thumbor/blob/master/CONTRIBUTING.md) 或 [贡献文档](https://github.com/thumbor/thumbor/blob/master/CONTRIBUTING.md)。

如果你使用了 thumbor，请花 1 分钟填写 [这份调查问卷](http://t.co/qPBLXJX0mi)？只有两个问题！

加入聊天室：https://gitter.im/thumbor/thumbor

## 👀 演示

你可以在 http://thumborize.me/ 看到 thumbor 的实际效果。
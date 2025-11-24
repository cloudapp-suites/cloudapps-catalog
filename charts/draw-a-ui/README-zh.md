<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=draw-a-ui)

</div>

# 画一个UI

这是一个使用 tldraw 和 gpt-4-vision API 的应用程序，它可以根据你绘制的线框图生成 HTML 页面。

> 该项目的精神续作是 [Terragon Labs](https://terragonlabs.com)。

![应用程序演示](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/draw-a-ui/image/demo.gif)

其工作原理很简单：获取当前画布的 SVG，将其转换为 PNG，然后将该 PNG 发送给 gpt-4-vision，并指示它返回一个包含 Tailwind 的 HTML 文件。

> 免责声明：这只是一个演示，不适用于生产环境。它没有任何认证机制，如果你部署它，你可能会花光所有钱。

## 开始使用

这是一个 Next.js 应用程序。要开始使用，请在项目根目录下运行以下命令。你需要一个可以访问 GPT-4 Vision API 的 OpenAI API 密钥。

> 注意：此项目使用 Next.js 14，要求 `node` 版本高于 18.17。[点击此处了解更多](https://nextjs.org/docs/pages/building-your-application/upgrading/version-14)。

```bash
echo "OPENAI_API_KEY=sk-your-key" > .env.local
npm install
npm run dev
```

使用浏览器打开 [http://localhost:3000](http://localhost:3000) 查看结果。
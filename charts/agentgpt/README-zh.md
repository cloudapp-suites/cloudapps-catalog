<div align="center">

 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&name=agentgpt)

</div>

<p align="center">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/banner.png" height="300" alt="AgentGPT Logo"/>
</p>
<p align="center">
  <em>🤖 在浏览器中组装、配置和部署自主AI智能体。🤖   </em>
</p>
<p align="center">
    <img alt="Node version" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/v1.svg" />
      <a href="https://github.com/reworkd/AgentGPT/blob/master/README.md"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/lang-English-blue.svg" alt="English"></a>
  <a href="https://github.com/reworkd/AgentGPT/blob/master/docs/README.zh-HANS.md"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/lang-简体中文-red.svg" alt="简体中文"></a>
  <a href="https://github.com/reworkd/AgentGPT/blob/master/docs/README.hu-Cs4K1Sr4C.md"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/lang-Hungarian-red.svg" alt="Hungarian"></a>
</p>

<p align="center">
<a href="https://agentgpt.reworkd.ai">🔗 短链接</a>
<span>&nbsp;&nbsp;•&nbsp;&nbsp;</span>
<a href="https://reworkd.ai/docs">📚 文档</a>
<span>&nbsp;&nbsp;•&nbsp;&nbsp;</span>
<a href="https://twitter.com/reworkdai">🐦 Twitter</a>
<span>&nbsp;&nbsp;•&nbsp;&nbsp;</span>
<a href="https://discord.gg/gcmNyAAFfV">📢 Discord</a>
</p>

AgentGPT 允许你配置并部署自主AI智能体。  
为你的自定义AI命名，并赋予它任何你能想到的目标。  
它将通过思考需要执行的任务、执行任务并从结果中学习，来尝试达成目标 🚀。

---

## ✨ 演示
要获得最佳演示体验，请直接访问[我们的网站](https://agentgpt.reworkd.ai) :)

[演示视频](https://github.com/reworkd/AgentGPT/assets/50181239/5348e44a-29a5-4280-a06b-fe1429a8d99e)


## 👨‍🚀 快速开始

使用 AgentGPT 最简单的方法是使用项目自带的自动设置 CLI 工具。  
该 CLI 工具会为 AgentGPT 配置以下内容：
- 🔐 [环境变量](https://github.com/reworkd/AgentGPT/blob/main/.env.example)（及 API 密钥）
- 🗂️ [数据库](https://github.com/reworkd/AgentGPT/tree/main/db)（MySQL）
- 🤖 [后端](https://github.com/reworkd/AgentGPT/tree/main/platform)（FastAPI）
- 🎨 [前端](https://github.com/reworkd/AgentGPT/tree/main/next)（Next.js）

## 前提条件 :point_up:

开始之前，请确保已安装以下工具：

- 任意代码编辑器，例如 [Visual Studio Code (VS Code)](https://code.visualstudio.com/download)
- [Node.js](https://nodejs.org/en/download)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/products/docker-desktop)。安装后请创建账户，打开 Docker 应用并登录。
- 一个 [OpenAI API 密钥](https://platform.openai.com/signup)
- 一个 [Serper API 密钥](https://serper.dev/signup)（可选）
- 一个 [Replicate API Token](https://replicate.com/signin)（可选）

## 快速开始 :rocket:
1. **打开你的编辑器**

2. **打开终端** - 通常可以通过“终端”标签页或快捷键打开  
   （例如，在 VS Code 中 Windows 使用 `Ctrl + ~`，Mac 使用 `Control + ~`）。

3. **克隆仓库并进入目录** - 打开终端后，运行以下命令克隆仓库并进入目录。

   **Mac/Linux 用户** :apple: :penguin:
   ```bash
   git clone https://github.com/reworkd/AgentGPT.git
   cd AgentGPT
   ./setup.sh
   ```
   **Windows 用户** :windows:
   ```bash
   git clone https://github.com/reworkd/AgentGPT.git
   cd AgentGPT
   ./setup.bat
   ```
4. **按照脚本提示完成设置** - 输入相应的 API 密钥，待所有服务启动后，在浏览器中访问 [http://localhost:3000](http://localhost:3000)。

祝你开发愉快！ :tada:


## 🚀 技术栈

- ✅ **项目初始化**: [create-t3-app](https://create.t3.gg) + [FastAPI-template](https://github.com/s3rius/FastAPI-template)。
- ✅ **框架**: [Nextjs 13 + Typescript](https://nextjs.org/) + [FastAPI](https://fastapi.tiangolo.com/)
- ✅ **认证**: [Next-Auth.js](https://next-auth.js.org)
- ✅ **ORM**: [Prisma](https://prisma.io) & [SQLModel](https://sqlmodel.tiangolo.com/)。
- ✅ **数据库**: [Planetscale](https://planetscale.com/)。
- ✅ **样式**: [TailwindCSS + HeadlessUI](https://tailwindcss.com)。
- ✅ **数据校验**: [Zod](https://github.com/colinhacks/zod) + [Pydantic](https://docs.pydantic.dev/)。
- ✅ **大模型工具**: [Langchain](https://github.com/hwchase17/langchain)。


<h2 align="center">
💝 我们的 GitHub 赞助者 💝
</h2>

<p align="center">
加入我们，助力 AgentGPT 的开发！这是一个推动 AI 智能体边界发展的开源项目。你的赞助将帮助我们扩展资源、增强功能特性，并持续迭代这一激动人心的项目！🚀
</p>

<p align="center">
<!-- sponsors --><a href="https://github.com/arthurbnhm"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/arthurbnhm.png" width="60px" alt="Arthur" /></a><a href="https://github.com/mrayonnaise"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/mrayonnaise.png" width="60px" alt="Matt Ray" /></a><a href="https://github.com/jd3655"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/jd3655.png" width="60px" alt="Vector Ventures" /></a><a href="https://github.com/durairajasivam"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/durairajasivam.png" width="60px" alt="" /></a><a href="https://github.com/floriank"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/floriank.png" width="60px" alt="Florian Kraft" /></a><a href="https://github.com/localecho"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/localecho.png" width="60px" alt="" /></a><a href="https://github.com/fireheat135"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/fireheat135.png" width="60px" alt="" /></a><a href="https://github.com/zoelidity"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/zoelidity.png" width="60px" alt="Zoe" /></a><a href="https://github.com/busseyl"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/busseyl.png" width="60px" alt="Lucas Bussey" /></a><a href="https://github.com/DuanChaori"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/DuanChaori.png" width="60px" alt="" /></a><a href="https://github.com/jukwaphil1"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/jukwaphil1.png" width="60px" alt="" /></a><a href="https://github.com/lisa-ee"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/lisa-ee.png" width="60px" alt="Lisa" /></a><a href="https://github.com/VulcanT"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/VulcanT.png" width="60px" alt="" /></a><a href="https://github.com/kman62"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/kman62.png" width="60px" alt="kmotte" /></a><a href="https://github.com/Haithamhaj"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Haithamhaj.png" width="60px" alt="" /></a><a href="https://github.com/SwftCoins"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/SwftCoins.png" width="60px" alt="SWFT Blockchain" /></a><a href="https://github.com/ChevalierzA"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/ChevalierzA.png" width="60px" alt="" /></a><a href="https://github.com/research-developer"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/research-developer.png" width="60px" alt="" /></a><a href="https://github.com/Mitchell-Coder-New"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Mitchell-Coder-New.png" width="60px" alt="" /></a><a href="https://github.com/Trecares"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Trecares.png" width="60px" alt="" /></a><a href="https://github.com/nnkostov"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/nnkostov.png" width="60px" alt="Nikolay Kostov" /></a><a href="https://github.com/oryanmoshe"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/oryanmoshe.png" width="60px" alt="Oryan Moshe" /></a><a href="https://github.com/ClayNelson"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/ClayNelson.png" width="60px" alt="Clay Nelson" /></a><a href="https://github.com/0xmatchmaker"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/0xmatchmaker.png" width="60px" alt="0xmatchmaker" /></a><a href="https://github.com/carlosbartolomeu"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/carlosbartolomeu.png" width="60px" alt="" /></a><a href="https://github.com/Agronobeetles"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Agronobeetles.png" width="60px" alt="" /></a><a href="https://github.com/CloudyGuyThompson"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/CloudyGuyThompson.png" width="60px" alt="Guy Thompson" /></a><a href="https://github.com/Jhonvolt17"><img src="https://github.com/Jhonvolt17.png" width="60px" alt="" /></a><a href="https://github.com/sirswali"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/sirswali.png" width="60px" alt="Vusi Dube" /></a><a href="https://github.com/Tweezamiza"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Tweezamiza.png" width="60px" alt="" /></a><a href="https://github.com/DixonFyre"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/DixonFyre.png" width="60px" alt="" /></a><a href="https://github.com/jenius-eagle"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/jenius-eagle.png" width="60px" alt="" /></a><a href="https://github.com/CubanCongaMan"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/CubanCongaMan.png" width="60px" alt="Roberto Luis Sanchez, P.E., P.G.; D,GE; F.ASCE" /></a><a href="https://github.com/cskrobec"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/cskrobec.png" width="60px" alt="" /></a><a href="https://github.com/Jahmazon"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Jahmazon.png" width="60px" alt="" /></a><a href="https://github.com/ISDAworld"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/ISDAworld.png" width="60px" alt="David Gammond" /></a><a href="https://github.com/lazzacapital"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/lazzacapital.png" width="60px" alt="Lazza Capital" /></a><a href="https://github.com/OptionalJoystick"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/OptionalJoystick.png" width="60px" alt="" /></a><a href="https://github.com/rodolfoguzzi"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/rodolfoguzzi.png" width="60px" alt="" /></a><a href="https://github.com/bluecat2210"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/bluecat2210.png" width="60px" alt="" /></a><a href="https://github.com/dactylogram9"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/dactylogram9.png" width="60px" alt="" /></a><a href="https://github.com/RUFreeJAC63"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/RUFreeJAC63.png" width="60px" alt="" /></a><a href="https://github.com/cecilmiles"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/cecilmiles.png" width="60px" alt="" /></a><a href="https://github.com/Djarielm007"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Djarielm007.png" width="60px" alt="" /></a><a href="https://github.com/mikenj07"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/mikenj07.png" width="60px" alt="" /></a><a href="https://github.com/SvetaMolusk"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/SvetaMolusk.png" width="60px" alt="" /></a><a href="https://github.com/wuminkung"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/wuminkung.png" width="60px" alt="" /></a><a href="https://github.com/zhoumo1221"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/zhoumo1221.png" width="60px" alt="" /></a><a href="https://github.com/Stefan6666XXX"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Stefan6666XXX.png" width="60px" alt="Stephane DeGuire" /></a><a href="https://github.com/lyska"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/lyska.png" width="60px" alt="Lyska" /></a><a href="https://github.com/KurganKolde"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/KurganKolde.png" width="60px" alt="" /></a><a href="https://github.com/sclappccsu"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/sclappccsu.png" width="60px" alt="Sharon Clapp at CCSU" /></a><a href="https://github.com/Rooba-Finance"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/Rooba-Finance.png" width="60px" alt="Rooba.Finance" /></a><a href="https://github.com/ferienhausmiete"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/ferienhausmiete.png" width="60px" alt="" /></a><a href="https://github.com/benjaminbales"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/benjaminbales.png" width="60px" alt="Benjamin Bales" /></a><a href="https://github.com/pimentel233"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/pimentel233.png" width="60px" alt="" /></a><a href="https://github.com/PinkyWobbles"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/PinkyWobbles.png" width="60px" alt="" /></a><a href="https://github.com/jconroy11"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/jconroy11.png" width="60px" alt="" /></a><a href="https://github.com/DavidJamesRotenberg"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/DavidJamesRotenberg.png" width="60px" alt="" /></a><a href="https://github.com/antecochat"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/antecochat.png" width="60px" alt="" /></a><a href="https://github.com/RealBonOfaSitch"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/RealBonOfaSitch.png" width="60px" alt="" /></a><!-- sponsors -->
</p>

<h2 align="center">
💪 贡献者 💪
</h2>

<p align="center">
正是这些贡献者让这个项目成为可能。非常感谢！🙏
</p>

<a href="https://github.com/reworkd/agentgpt/graphs/contributors">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/agentgpt/image/image" />
</a>

<div align="center">
<sub>由 <a href="https://contrib.rocks">contrib.rocks</a> 提供支持。</sub>
</div>
<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=517cdf03-3683-4583-90b6-c9fc8009d749)

</div>

# bazarr

Bazarr 是 Sonarr 和 Radarr 的配套应用程序。它可根据您的需求管理和下载字幕。您可以通过电视剧或电影定义您的偏好，Bazarr 会为您处理一切。

请注意，Bazarr 不会扫描磁盘来检测剧集和电影：它仅处理在 Sonarr 和 Radarr 中已索引的剧集和电影。

感谢 OpenSubtitles 提供的标志，它为我们的标志设计提供了灵感。
# 状态

[![GitHub issues](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bazarr/image/bazarr.svg)](https://github.com/morpheus65535/bazarr/issues)
[![GitHub stars](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bazarr/image/bazarr.svg)](https://github.com/morpheus65535/bazarr/stargazers)
[![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bazarr/image/bazarr.svg)](https://hub.docker.com/r/linuxserver/bazarr/)
[![Docker Pulls](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bazarr/image/bazarr.svg)](https://hub.docker.com/r/hotio/bazarr/)
[![Discord](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bazarr/image/discord-chat-MH2e2eb.svg)](https://discord.gg/MH2e2eb)

# 支持

有关安装和配置说明，请参阅 [wiki](https://wiki.bazarr.media)。

您可以通过 [Discord](https://discord.gg/MH2e2eb) 联系我们获取支持。

如果您发现 bug，请在 [Github](https://github.com/morpheus65535/bazarr/issues) 上提交问题报告。

# 功能请求

如果您需要 Bazarr 当前尚未实现的功能，欢迎在 [Feature Upvote](http://features.bazarr.media) 上提交功能请求。

## 主要功能包括：

- 支持主流平台：Windows、Linux、macOS、Raspberry Pi 等
- 自动从 Sonarr 添加新剧集和新集数
- 自动从 Radarr 添加新电影
- 支持按剧集或电影配置字幕语言
- 扫描现有媒体库中的内嵌和外挂字幕，并下载缺失的字幕
- 记录从何处、何时下载了哪些字幕
- 手动搜索功能，可按需下载字幕
- 当发现更优字幕时，自动升级已下载的字幕
- 支持从磁盘删除外挂字幕
- 当前支持 184 种字幕语言，并支持强制/外语字幕（取决于提供方）
- 基于 Sonarr 的美观用户界面

## 支持的字幕提供方：

- Addic7ed
- AnimeKalesi
- Animetosho（需要 AniDb HTTP API 客户端，详见 [此处](https://wiki.anidb.net/HTTP_API_Definition)）
- Assrt
- AvistaZ, CinemaZ（使用 [此处](https://github.com/morpheus65535/bazarr/pull/2375#issuecomment-2057010996) 描述的方法获取会话 Cookie）
- BetaSeries
- BSplayer
- 内嵌字幕
- Gestdown.info
- GreekSubs
- GreekSubtitles
- HDBits.org
- Hosszupuska
- Karagarga.in
- Ktuvit（使用 [此处](https://github.com/XBMCil/service.subtitles.ktuvit) 描述的方法获取 `hashed_password`）
- LegendasDivx
- Legendas.net
- Napiprojekt
- Napisy24
- Nekur
- OpenSubtitles.com
- OpenSubtitles.org（仅限 VIP 用户）
- Podnapisi
- RegieLive
- Sous-Titres.eu
- Subdivx
- subf2m.co
- Subs.sab.bz
- Subs4Free
- Subs4Series
- Subscene
- Subscenter
- Subsunacs.net
- SubSynchro
- Subtitrari-noi.ro
- subtitri.id.lv
- Subtitulamos.tv
- Supersubtitles
- Titlovi
- Titrari.ro
- Titulky.com
- Turkcealtyazi.org
- TuSubtitulo
- TVSubtitles
- Whisper（需要 [ahmetoner/whisper-asr-webservice](https://github.com/ahmetoner/whisper-asr-webservice)）
- Wizdom
- XSubs
- Yavka.net
- YIFY Subtitles
- Zimuku

## 截图

![Bazarr](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/bazarr/image/bazarr-screenshot.png "Bazarr")

### 许可证

- [GNU GPL v3](http://www.gnu.org/licenses/gpl.html)
- Copyright 2010-2024
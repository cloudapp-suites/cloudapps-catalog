<h1 align="center">Web-Check</h1>


<p align="center">
<img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/web-check-logo.png" width="96" /><br />
<b><i>全面的、按需的任何网站的开源情报</i></b>
<br />
<b>🌐 <a href="https://web-check.xyz/">web-check.xyz</a></b><br />

</p>

---
<p align="center">
  <sup>由以下机构友好支持：</sup><br>
<a href="https://terminaltrove.com/?utm_campaign=github&utm_medium=referral&utm_content=web-check&utm_source=wcgh">
  <img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/IMG-7210.jpg" width="300" alt="Terminal Trove">
  <br>
  <strong>终端领域中所有事物的家园。</strong>
</a>
<br>
<a href="https://terminaltrove.com/newsletter?utm_campaign=github&utm_medium=referral&utm_content=web-check&utm_source=wcgh">
  <sub>在 Terminal Trove 找到您的下一个 CLI / TUI 工具，</sub>
  <br>
  <sup>通过我们的新闻通讯获取新工具的更新。</sup>
</a>
</p>

---

#### 目录

- **[关于](#关于)**
  - [截图](#截图)
  - [在线演示](#在线演示)
  - [镜像](#镜像)
  - [功能](#功能)
- **[使用方法](#使用方法)**
  - [部署](#部署)
    - [选项#1: Netlify](#部署选项-1-netlify)
    - [选项#2: Vercel](#部署选项-2-vercel)
    - [选项#3: Docker](#部署选项-3-docker)
    - [选项#4: 源码](#部署选项-4-从源码)
  - [配置选项](#配置)
  - [开发者设置](#开发)
- **[社区](#社区)**
  - [贡献](#贡献)
  - [错误报告](#报告错误)
  - [支持](#支持)
- **[许可证](#许可证)**

---

## 关于
深入了解给定网站的内部工作原理：发现潜在的攻击向量，分析服务器架构，查看安全配置，并了解网站使用的技术。

目前仪表板将显示：IP信息、SSL证书链、DNS记录、Cookie、标头、域名信息、搜索引擎爬虫规则、页面地图、服务器位置、重定向记录、开放端口、路由跟踪、DNS安全扩展、网站性能、跟踪器、关联的主机名、碳足迹。请继续关注，我会很快添加更多功能！

目标是帮助您轻松理解、优化和保护您的网站。

### 截图

<details>
      <summary>展开截图</summary>

[![截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/web-check-screenshot1.png)](https://web-check.as93.net/)
      
</details>

[![截图](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/web-check.png)](https://github.com/Lissy93/web-check/tree/master/.github/screenshots)

### 在线演示
可以通过以下地址访问托管版本：**[web-check.as93.net](https://web-check.as93.net)**

### 镜像
此仓库的源代码镜像到 CodeBerg，地址为：**[codeberg.org/alicia/web-check](https://codeberg.org/alicia/web-check)**

### 功能

<details open>
<summary><b>点击展开/折叠部分</b></summary>

<sup>**注意** _此列表需要更新，自那以后添加了更多任务..._</sup>

以下部分概述了核心功能，并简要解释了为什么了解这些数据对您有用，同时链接到更多学习资源。

<details>
<summary><b>IP 信息</b></summary>

###### 描述
IP地址（互联网协议地址）是分配给连接到网络/互联网的每个设备的数字标签。可以通过查询域名系统的域名A（地址）记录找到与给定域名关联的IP。

###### 使用场景
查找给定服务器的IP是进行进一步调查的第一步，因为它允许我们探测服务器以获取更多信息。包括创建目标网络基础设施的详细地图、精确定位服务器的物理位置、识别托管服务，甚至发现托管在同一IP地址上的其他域名。

###### 有用链接
- [理解IP地址](https://www.digitalocean.com/community/tutorials/understanding-ip-addresses-subnets-and-cidr-notation-for-networking)
- [IP地址 - 维基百科](https://en.wikipedia.org/wiki/IP_address)
- [RFC-791 互联网协议](https://tools.ietf.org/html/rfc791)
- [whatismyipaddress.com](https://whatismyipaddress.com/)

</details>
<details>
<summary><b>SSL 证书链</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-ssl.png" align="right" />

###### 描述
SSL证书是数字证书，用于验证网站或服务器的身份，启用安全加密通信（HTTPS），并在客户端和服务器之间建立信任。网站要使用HTTPS协议并加密用户和网站数据传输，需要有效的SSL证书。SSL证书由证书颁发机构（CA）颁发，这些是验证证书持有者身份和合法性的可信第三方。

###### 使用场景
SSL证书不仅提供网站数据传输安全的保证，还提供有价值的开源情报数据。SSL证书中的信息可以包括颁发机构、域名、有效期，有时甚至包括组织详细信息。这对于验证网站的真实性、理解其安全设置，甚至发现关联的子域名或其他服务都很有用。

###### 有用链接
- [TLS - 维基百科](https://en.wikipedia.org/wiki/Transport_Layer_Security)
- [什么是SSL（通过Cloudflare学习）](https://www.cloudflare.com/learning/ssl/what-is-ssl/)
- [RFC-8446 - TLS](https://tools.ietf.org/html/rfc8446)
- [SSL检查器](https://www.sslshopper.com/ssl-checker.html)

</details>
<details>
<summary><b>DNS 记录</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-dns.png" align="right" />

###### 描述
此任务涉及查找与特定域名关联的DNS记录。DNS是一个将人类可读的域名转换为计算机用于通信的IP地址的系统。存在各种类型的DNS记录，包括A（地址）、MX（邮件交换）、NS（名称服务器）、CNAME（规范名称）和TXT（文本）等。

###### 使用场景
提取DNS记录可以在开源情报调查中提供丰富的信息。例如，A和AAAA记录可以披露与域名关联的IP地址，可能揭示服务器的位置。MX记录可以提供有关域名邮件提供商的线索。TXT记录通常用于各种管理目的，有时可能无意中泄露内部信息。了解域名的DNS设置也有助于理解其在线基础设施的构建和管理方式。

###### 有用链接
- [什么是DNS记录？（通过Cloudflare学习）](https://www.cloudflare.com/learning/dns/dns-records/)
- [DNS记录类型](https://en.wikipedia.org/wiki/List_of_DNS_record_types)
- [RFC-1035 - DNS](https://tools.ietf.org/html/rfc1035)
- [DNS查询（通过MxToolbox）](https://mxtoolbox.com/DNSLookup.aspx)

</details>
<details>
<summary><b>Cookie</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-cookies.png" align="right" />

###### 描述
Cookie任务涉及检查目标网站设置的HTTP Cookie。Cookie是用户在浏览网站时由Web浏览器存储在用户计算机上的小数据片段。它们保存适量的特定客户端和网站的数据，如网站偏好、用户会话状态或跟踪信息。

###### 使用场景
Cookie可以披露网站如何跟踪和与用户交互的信息。例如，会话Cookie可以揭示用户会话的管理方式，跟踪Cookie可以暗示使用了哪种跟踪或分析框架。此外，检查Cookie策略和实践可以提供有关网站安全设置和隐私法规合规性的见解。

###### 有用链接
- [HTTP Cookie文档（Mozilla）](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
- [什么是Cookie（通过Cloudflare学习）](https://www.cloudflare.com/learning/privacy/what-are-cookies/)
- [Cookie属性测试（OWASP）](https://owasp.org/www-project-web-security-testing-guide/v42/4-Web_Application_Security_Testing/06-Session_Management_Testing/02-Testing_for_Cookies_Attributes)
- [RFC-6265 - Cookie](https://tools.ietf.org/html/rfc6265)

</details>
<details>
<summary><b>爬虫规则</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-robots.png" align="right" />

###### 描述
Robots.txt是一个通常位于域名根目录的文件，用于实现Robots排除协议（REP），指示哪些页面应该被哪些爬虫和机器人忽略。良好的做法是避免搜索引擎爬虫过度加载您的网站，但不应用于将页面排除在搜索结果之外（应使用noindex元标签或标头代替）。

###### 使用场景
在调查过程中检查robots.txt文件通常很有用，因为它有时会披露网站所有者不希望被索引的目录和页面，可能是因为它们包含敏感信息，或揭示了其他隐藏或未链接目录的存在。此外，理解爬虫规则可能提供有关网站SEO策略的见解。

###### 有用链接
- [Google搜索文档 - Robots.txt](https://developers.google.com/search/docs/advanced/robots/intro)
- [了解robots.txt（通过Moz.com）](https://moz.com/learn/seo/robotstxt)
- [RFC-9309 - Robots排除协议](https://datatracker.ietf.org/doc/rfc9309/)
- [Robots.txt - 维基百科](https://en.wikipedia.org/wiki/Robots_exclusion_standard)

</details>
<details>
<summary><b>标头</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-headers.png" align="right" />

###### 描述
标头任务涉及提取和解释目标网站在请求-响应周期期间发送的HTTP标头。HTTP标头是在HTTP响应开始时或在实际数据之前发送的键值对。标头包含有关如何处理传输数据的重要指令，包括缓存策略、内容类型、编码、服务器信息、安全策略等。

###### 使用场景
分析HTTP标头可以在开源情报调查中提供重要见解。标头可以揭示特定的服务器配置、选择的技术、缓存指令和各种安全设置。这些信息有助于确定网站的基础技术栈、服务器端安全措施、潜在漏洞和一般操作实践。

###### 有用链接
- [HTTP标头 - 文档](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers)
- [RFC-7231第7节 - 标头](https://datatracker.ietf.org/doc/html/rfc7231#section-7)
- [标头响应字段列表](https://en.wikipedia.org/wiki/List_of_HTTP_header_fields)
- [OWASP安全标头项目](https://owasp.org/www-project-secure-headers/)

</details>
<details>
<summary><b>质量指标</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-quality.png" align="right" />

###### 描述
使用Lighthouse，质量指标任务测量目标网站的性能、可访问性、最佳实践和SEO。这返回一个包含100个核心指标的简单清单，以及每个类别的分数，以衡量给定网站的整体质量。

###### 使用场景
用于评估网站的技术健康状况、SEO问题、识别漏洞并确保符合标准。

###### 有用链接
- [Lighthouse文档](https://developer.chrome.com/docs/lighthouse/)
- [Google页面速度工具](https://developers.google.com/speed)
- [W3可访问性工具](https://www.w3.org/WAI/test-evaluate/)
- [Google搜索控制台](https://search.google.com/search-console)
- [SEO检查器](https://www.seobility.net/en/seocheck/)
- [PWA构建器](https://www.pwabuilder.com/)

</details>
<details>
<summary><b>服务器位置</b></summary>

<img width="300" src="https://i.ibb.co/cXH2hfR/wc-location.png" align="right" />

###### 描述
服务器位置任务根据其IP地址确定托管给定网站的服务器的物理位置。这是通过在位置数据库中查找IP来完成的，该数据库将IP映射到已知数据中心和ISP的纬度和经度。从纬度和经度，可以显示其他上下文信息，如地图上的标记，以及地址、国旗、时区、货币等。

###### 使用场景
了解服务器位置是更好理解网站的良好第一步。对于网站所有者来说，这有助于优化内容交付、确保符合数据驻留要求，并识别可能影响特定地理区域用户体验的潜在延迟问题。对于安全研究人员来说，可以评估特定地区或司法管辖区在网络威胁和法规方面的风险。

###### 有用链接
- [IP定位器](https://geobytes.com/iplocator/)
- [互联网地理位置 - 维基百科](https://en.wikipedia.org/wiki/Internet_geolocation)

</details>
<details>
<summary><b>关联主机</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-hosts.png" align="right" />

###### 描述
此任务涉及识别和列出与网站主域名关联的所有域名和子域名（主机名）。此过程通常涉及DNS枚举以发现任何链接的域名和主机名，以及查看已知的DNS记录。

###### 使用场景
在调查过程中，了解目标网络存在的完整范围至关重要。关联的域名可能导致发现相关项目、备份站点、开发/测试站点或链接到主站点的服务。这些有时可以提供额外的信息或潜在的安全漏洞。关联域名和主机名的综合列表还可以提供组织结构和在线足迹的概览。

###### 有用链接
- [DNS枚举 - 维基百科](https://en.wikipedia.org/wiki/DNS_enumeration)
- [OWASP - 枚举Web服务器上的应用程序](https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/01-Information_Gathering/04-Enumerate_Applications_on_Webserver)
- [DNS枚举 - DNS Dumpster](https://dnsdumpster.com/)
- [子域名查找器](https://subdomainfinder.c99.nl/)

</details>
<details>
<summary><b>重定向链</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-redirects.png" align="right" />

###### 描述
此任务跟踪从原始URL到最终目标URL发生的HTTP重定向序列。HTTP重定向是带有状态码的响应，建议客户端转到另一个URL。重定向可能由于多种原因发生，如URL规范化（定向到网站的www版本）、强制HTTPS、URL缩短器或转发用户到新站点位置。

###### 使用场景
理解重定向链有几个原因很有用。从安全角度来看，长或复杂的重定向链可能是潜在安全风险的迹象，如链中的未加密重定向。此外，重定向可能影响网站性能和SEO，因为每次重定向都会引入额外的往返时间（RTT）。对于开源情报，理解重定向链可以帮助识别不同域名之间的关系或揭示某些技术或托管提供商的使用。

###### 有用链接
- [HTTP重定向 - MDN](https://developer.mozilla.org/en-US/docs/Web/HTTP/Redirections)
- [URL重定向 - 维基百科](https://en.wikipedia.org/wiki/URL_redirection)
- [301重定向解释](https://ahrefs.com/blog/301-redirects/)

</details>
<details>
<summary><b>TXT记录</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-txt-records.png" align="right" />

###### 描述
TXT记录是一种DNS记录，向域外的源提供文本信息。它们可以用于各种目的，如验证域名所有权、确保电子邮件安全，甚至防止对您网站的未授权更改。

###### 使用场景
TXT记录通常揭示给定域名使用了哪些外部服务和技术。它们可能揭示域名的电子邮件配置详细信息、使用特定服务（如Google Workspace或Microsoft 365）的情况，或SPF和DKIM等安全措施。理解这些详细信息可以洞察组织使用的技术、电子邮件安全实践和潜在漏洞。

###### 有用链接
- [TXT记录（通过Cloudflare学习）](https://www.cloudflare.com/learning/dns/dns-records/dns-txt-record/)
- [TXT记录 - 维基百科](https://en.wikipedia.org/wiki/TXT_record)
- [RFC-1464 - TXT记录](https://datatracker.ietf.org/doc/html/rfc1464)
- [TXT记录查询（通过MxToolbox）](https://mxtoolbox.com/TXTLookup.aspx)

</details>
<details>
<summary><b>服务器状态</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-status.png" align="right" />

###### 描述
检查服务器是否在线并响应请求。

###### 使用场景


###### 有用链接

</details>
<details>
<summary><b>开放端口</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-ports.png" align="right" />

###### 描述
服务器上的开放端口是可用于与客户端建立连接的通信端点。每个端口对应特定的服务或协议，如HTTP（端口80）、HTTPS（端口443）、FTP（端口21）等。可以使用端口扫描等技术确定服务器上的开放端口。

###### 使用场景
了解服务器上开放的端口可以提供有关服务器上运行的服务的信息，有助于理解系统的潜在漏洞，或了解服务器提供的服务性质。

###### 有用链接
- [TCP和UDP端口号列表](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)
- [NMAP - 端口扫描基础](https://nmap.org/book/man-port-scanning-basics.html)

</details>
<details>
<summary><b>路由跟踪</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-trace-route.png" align="right" />

###### 描述
路由跟踪是一种网络诊断工具，用于实时跟踪信息包从一个系统到另一个系统的路径。它记录路径上的每一跳，提供有关路由器IP和每点延迟的详细信息。

###### 使用场景
在开源情报调查中，路由跟踪可以提供有关支持网站或服务的网络基础设施的路由路径和地理信息的见解。这有助于识别网络瓶颈、潜在的网络流量审查或操纵，并对网络的结构和效率有整体了解。此外，在路由跟踪期间收集的IP地址可能为进一步的开源情报调查提供额外的查询点。

###### 有用链接
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })

</details>
<details>
<summary><b>碳足迹</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-29-19-07-50.png" align="right" />

###### 描述
此任务计算网站的估计碳足迹。它基于传输和处理的数据量以及托管和交付网站的服务器的能耗。网站越大，功能越复杂，其碳足迹可能越高。

###### 使用场景
从开源情报的角度来看，理解网站的碳足迹并不能直接提供对其内部工作或背后组织的见解。然而，这在更广泛的分析中仍然是有价值的数据，特别是在考虑环境影响的上下文中。例如，对于有兴趣了解数字基础设施可持续性的活动家、研究人员或道德黑客，以及希望让组织对其环境影响负责的人来说，这很有用。

###### 有用链接
- [WebsiteCarbon - 碳计算器](https://www.websitecarbon.com/)
- [绿色网络基金会](https://www.thegreenwebfoundation.org/)
- [环保网络联盟](https://ecofriendlyweb.org/)
- [Reset.org](https://en.reset.org/)
- [您的网站正在杀死地球 - 通过Wired](https://www.wired.co.uk/article/internet-carbon-footprint)

</details>
<details>
<summary><b>服务器信息</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-server.png" align="right" />

###### 描述
此任务检索有关托管目标网站的服务器的各种信息。这可以包括服务器类型（如Apache、Nginx）、托管提供商、自治系统号（ASN）等。这些信息通常通过IP地址查找和HTTP响应标头分析的组合获得。

###### 使用场景
在开源情报上下文中，服务器信息可以提供有关网站背后组织的宝贵线索。例如，托管提供商的选择可能暗示组织运营的地理区域，而服务器类型可能暗示组织使用的技术。ASN也可用于查找由同一组织托管的其他域名。

###### 有用链接
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })

</details>
<details>
<summary><b>Whois查询</b></summary>

<img width="300" src="https://i.ibb.co/89WLp14/wc-domain.png" align="right" />

###### 描述
此任务检索目标域名的Whois记录。Whois记录是丰富的信息源，包括域名注册人的姓名和联系信息、域名的创建和到期日期、域名的名称服务器等。这些信息通常通过查询Whois数据库服务器获得。

###### 使用场景
在开源情报上下文中，Whois记录可以提供有关网站背后实体的宝贵线索。它们可以显示域名首次注册的时间和到期时间，这可能提供有关实体运营时间表的见解。联系信息虽然经常被编辑或匿名化，但有时可能引出额外的调查途径。名称服务器也可用于将多个由同一实体拥有的域名链接在一起。

###### 有用链接
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })

</details>
<details>
<summary><b>域名信息</b></summary>

<img width="300" src="https://i.ibb.co/89WLp14/wc-domain.png" align="right" />

###### 描述
此任务检索目标域名的Whois记录。Whois记录是丰富的信息源，包括域名注册人的姓名和联系信息、域名的创建和到期日期、域名的名称服务器等。这些信息通常通过查询Whois数据库服务器获得。

###### 使用场景
在开源情报上下文中，Whois记录可以提供有关网站背后实体的宝贵线索。它们可以显示域名首次注册的时间和到期时间，这可能提供有关实体运营时间表的见解。联系信息虽然经常被编辑或匿名化，但有时可能引出额外的调查途径。名称服务器也可用于将多个由同一实体拥有的域名链接在一起。

###### 有用链接
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })

</details>
<details>
<summary><b>DNS安全扩展</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-dnssec.png" align="right" />

###### 描述
没有DNSSEC，MITM攻击者可能伪造记录并将用户引导到钓鱼网站。这是因为DNS系统没有内置的方法来验证对请求的响应是否被伪造，或者过程的任何其他部分是否被攻击者中断。DNS安全扩展（DNSSEC）通过使用公钥签署DNS记录来保护DNS查询，因此浏览器可以检测到响应是否被篡改。解决此问题的另一个方案是DoH（DNS over HTTPS）和DoT（DNS over TLD）。

###### 使用场景
DNSSEC信息提供了对组织网络安全成熟度和潜在漏洞的洞察，特别是在DNS欺骗和缓存中毒方面。如果未实施DNS安全（DNSSEC、DoH、DoT等），这可能为攻击者提供入口点。

###### 有用链接
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })

</details>
<details>
<summary><b>站点功能</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/wc-features.png" align="right" />

###### 描述
检查站点上存在哪些核心功能。如果功能标记为已失效，意味着它在加载时未被主动使用

###### 使用场景
这对于理解站点的能力以及要寻找的技术很有用

###### 有用链接

</details>
<details>
<summary><b>HTTP严格传输安全</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-17-20-10-52.png" align="right" />

###### 描述
HTTP严格传输安全（HSTS）是一种Web安全策略机制，有助于保护网站免受协议降级攻击和Cookie劫持。网站可以通过符合一组要求并提交到列表中来包含在HSTS预加载列表中。

###### 使用场景
网站启用HSTS有几个重要原因：
      1. 用户书签或手动输入http://example.com并受到中间人攻击者的影响
        HSTS自动将HTTP请求重定向到目标域的HTTPS
      2. 旨在纯HTTPS的Web应用程序无意中包含HTTP链接或通过HTTP提供内容
        HSTS自动将HTTP请求重定向到目标域的HTTPS
      3. 中间人攻击者试图使用无效证书拦截受害用户的流量，并希望用户接受坏证书
        HSTS不允许用户覆盖无效证书消息
        

###### 有用链接
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })
- [undefined](function link() { [native code] })

</details>
<details>
<summary><b>DNS服务器</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-12-15-43-12.png" align="right" />

###### 描述
此检查确定请求的URL/IP解析到的DNS服务器。还会进行基本检查以查看DNS服务器是否支持DoH，以及是否容易受到DNS缓存中毒攻击。

###### 使用场景


###### 有用链接

</details>
<details>
<summary><b>技术栈</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-12-15-43-46.png" align="right" />

###### 描述
检查站点使用了哪些技术。这是通过获取和解析站点，然后与Wappalyzer维护的正则表达式列表进行比较来识别不同技术留下的独特指纹来完成的。

###### 使用场景
识别网站的技术栈有助于通过暴露潜在漏洞来评估其安全性，为竞争分析和开发决策提供信息，并可以指导定制的营销策略。道德地应用这些知识对于避免有害活动如数据盗窃或未授权入侵至关重要。

###### 有用链接
- [Wappalyzer指纹](https://github.com/wappalyzer/wappalyzer/tree/master/src/technologies)
- [BuiltWith - 检查站点使用的技术](https://builtwith.com/)

</details>
<details>
<summary><b>列出的页面</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-21-12-28-38.png" align="right" />

###### 描述
此任务查找和解析站点列出的站点地图。此文件列出了站点上的公共子页面，作者希望搜索引擎爬虫对其进行爬取。站点地图有助于SEO，但也有助于一目了然地查看站点的所有公共内容。

###### 使用场景
理解站点面向公众的内容结构，对于站点所有者来说，检查站点的站点地图是否可访问、可解析并包含您希望的所有内容。

###### 有用链接
- [了解站点地图](https://developers.google.com/search/docs/crawling-indexing/sitemaps/overview)
- [站点地图XML规范](https://www.sitemaps.org/protocol.html)
- [站点地图教程](https://www.conductor.com/academy/xml-sitemap/)

</details>
<details>
<summary><b>Security.txt</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-24-20-31-21.png" align="right" />

###### 描述
security.txt文件告诉研究人员如何负责任地披露在您的站点上发现的任何安全问题。该标准在RFC 9116中提出，规定该文件应包括联系点（电子邮件地址），以及可选的其他信息，如安全披露策略链接、PGP密钥、提供的语言、策略到期时间等。该文件应位于域的根目录，路径为/security.txt或/.well-known/security.txt。

###### 使用场景
这很重要，因为没有定义的联系点，安全研究人员可能无法报告关键安全问题，或可能使用不安全或可能公开的渠道来报告。从开源情报的角度来看，您还可以获取有关站点的信息，包括其安全态势、CSAF提供商以及PGP公钥的元数据。

###### 有用链接
- [securitytxt.org](https://securitytxt.org/)
- [RFC-9116提案](https://datatracker.ietf.org/doc/html/rfc9116)
- [RFC-9116历史](https://datatracker.ietf.org/doc/rfc9116/)
- [Security.txt（维基百科）](https://en.wikipedia.org/wiki/Security.txt)
- [示例security.txt（Cloudflare）](https://www.cloudflare.com/.well-known/security.txt)
- [创建security.txt教程（Pieter Bakker）](https://pieterbakker.com/implementing-security-txt/)

</details>
<details>
<summary><b>链接页面</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-29-11-16-44.png" align="right" />

###### 描述
显示站点上找到的所有内部和外部链接，通过锚元素上的href属性识别。

###### 使用场景
对于站点所有者来说，这对于诊断SEO问题、改进站点结构、理解内容如何互连很有用。外部链接可以显示合作伙伴关系、依赖关系和潜在的声誉风险。从安全角度来看，出站链接可以帮助识别网站无意中链接到的任何潜在恶意或受损站点。分析内部链接有助于理解站点结构，并可能发现不打算公开的隐藏或易受攻击的页面。对于开源情报调查人员来说，这有助于全面了解目标，发现相关实体、资源，甚至站点的潜在隐藏部分。

###### 有用链接
- [W3C链接检查器](https://validator.w3.org/checklink)

</details>
<details>
<summary><b>社交标签</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-29-11-15-27.png" align="right" />

###### 描述
网站可以包含某些元标签，告诉搜索引擎和社交媒体平台显示什么信息。这通常包括标题、描述、缩略图、关键词、作者、社交账户等。

###### 使用场景
将这些数据添加到您的站点将提升SEO，对于开源情报研究人员来说，了解给定Web应用程序如何描述自己也很有用

###### 有用链接
- [SocialSharePreview.com](https://socialsharepreview.com/)
- [社交元标签指南](https://css-tricks.com/essential-meta-tags-social-media/)
- [Web.dev元数据标签](https://web.dev/learn/html/metadata/)
- [开放图协议](https://ogp.me/)
- [Twitter卡片](https://developer.twitter.com/en/docs/twitter-for-websites/cards/overview/abouts-cards)
- [Facebook开放图](https://developers.facebook.com/docs/sharing/webmasters)

</details>
<details>
<summary><b>电子邮件配置</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-29-18-22-20.png" align="right" />

###### 描述
DMARC（基于域的消息认证、报告和一致性）：DMARC是一种电子邮件认证协议，与SPF和DKIM配合使用以防止电子邮件欺骗和钓鱼。它允许域所有者通过在DNS中发布的策略指定如何处理未经认证的邮件，并为接收邮件服务器提供一种方式，向发送者发送有关邮件合规性的反馈。BIMI（消息识别的品牌指示器）：BIMI是一种新兴的电子邮件标准，使组织能够自动在客户的电子邮件客户端显示徽标。BIMI将徽标与域的DMARC记录关联，为收件人提供电子邮件合法性的另一层视觉保证。DKIM（域密钥识别邮件）：DKIM是一种电子邮件安全标准，旨在确保消息在发送服务器和接收服务器之间传输时未被更改。它使用与发送者域关联的数字签名来验证发送者并确保消息完整性。SPF（发送方策略框架）：SPF是一种电子邮件认证方法，旨在防止电子邮件欺骗。它通过创建DNS记录指定哪些邮件服务器被授权代表域发送电子邮件。这有助于通过为接收邮件服务器提供一种方式来检查来自域的传入邮件是否来自域管理员授权的主机来防止垃圾邮件。

###### 使用场景
这些信息对研究人员很有帮助，因为它有助于评估域的电子邮件安全态势，发现潜在漏洞，并验证电子邮件的合法性以进行钓鱼检测。这些详细信息还可以提供对托管环境、潜在服务提供商和目标组织配置模式的洞察，协助调查工作。

###### 有用链接
- [DMARC、DKIM和SPF简介（通过Cloudflare）](https://www.cloudflare.com/learning/email-security/dmarc-dkim-spf/)
- [EasyDMARC域扫描器](https://easydmarc.com/tools/domain-scanner)
- [MX Toolbox](https://mxtoolbox.com/)
- [RFC-7208 - SPF](https://datatracker.ietf.org/doc/html/rfc7208)
- [RFC-6376 - DKIM](https://datatracker.ietf.org/doc/html/rfc6376)
- [RFC-7489 - DMARC](https://datatracker.ietf.org/doc/html/rfc7489)
- [BIMI组](https://bimigroup.org/)

</details>
<details>
<summary><b>防火墙检测</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-12-15-40-52.png" align="right" />

###### 描述
WAF或Web应用程序防火墙通过过滤和监控Web应用程序和Internet之间的HTTP流量来帮助保护Web应用程序。它通常保护Web应用程序免受跨站伪造、跨站脚本（XSS）、文件包含和SQL注入等攻击。

###### 使用场景
了解站点是否使用WAF以及使用哪种防火墙软件/服务很有用，因为这提供了对站点针对几种攻击向量的保护的洞察，但也可能揭示防火墙本身的漏洞。

###### 有用链接
- [什么是WAF（通过Cloudflare学习）](https://www.cloudflare.com/learning/ddos/glossary/web-application-firewall-waf/)
- [OWASP - Web应用程序防火墙](https://owasp.org/www-community/Web_Application_Firewall)
- [Web应用程序防火墙最佳实践](https://owasp.org/www-pdf-archive/Best_Practices_Guide_WAF_v104.en.pdf)
- [WAF - 维基百科](https://en.wikipedia.org/wiki/Web_application_firewall)

</details>
<details>
<summary><b>HTTP安全功能</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-12-15-40-28.png" align="right" />

###### 描述
正确配置的安全HTTP标头为您的站点添加了一层针对常见攻击的保护。需要注意的主要标头是：HTTP严格传输安全（HSTS）：强制使用HTTPS，缓解中间人攻击和协议降级尝试。内容安全策略（CSP）：限制网页资源以防止跨站脚本和数据注入攻击。X-Content-Type-Options：防止浏览器将响应从声明的内容类型中嗅探出来，遏制MIME类型混淆攻击。X-Frame-Options：通过控制浏览器是否应在`<frame>`、`<iframe>`、`<embed>`或`<object>`中渲染页面来保护用户免受点击劫持攻击。

###### 使用场景
审查安全标头很重要，因为它提供了对站点防御姿态和潜在漏洞的洞察，能够主动缓解并确保符合安全最佳实践。

###### 有用链接
- [OWASP安全标头项目](https://owasp.org/www-project-secure-headers/)
- [HTTP标头备忘单](https://cheatsheetseries.owasp.org/cheatsheets/HTTP_Headers_Cheat_Sheet.html)
- [content-security-policy.com](https://content-security-policy.com/)
- [resourcepolicy.fyi](https://resourcepolicy.fyi/)
- [HTTP安全标头](https://securityheaders.com/)
- [Mozilla Observatory](https://observatory.mozilla.org/)
- [CSP文档](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP)
- [HSTS文档](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security)
- [X-Content-Type-Options文档](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options)
- [X-Frame-Options文档](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)
- [X-XSS-Protection文档](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection)

</details>
<details>
<summary><b>存档历史</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-14-22-31-16.png" align="right" />

###### 描述
从Wayback机器获取完整的存档历史

###### 使用场景
这对于理解站点的历史以及它如何随时间变化很有用。它也可以用于查找站点的旧版本，或查找已被删除的内容。

###### 有用链接
- [Wayback机器](https://archive.org/web/)

</details>
<details>
<summary><b>全球排名</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-14-22-02-40.png" align="right" />

###### 描述
此检查显示请求站点的全球排名。这只对位于前1亿名列表中的网站准确。我们使用来自Tranco项目（见下文）的数据，该项目从Umbrella、Majestic、Quantcast、Chrome用户体验报告和Cloudflare Radar汇总网络上的热门站点。

###### 使用场景
了解网站的整体全球排名有助于理解网站的规模，并与其他网站进行比较。它也有助于理解网站的相对受欢迎程度，并识别潜在趋势。

###### 有用链接
- [Tranco列表](https://tranco-list.eu/)
- [Tranco研究论文](https://tranco-list.eu/assets/tranco-ndss19.pdf)

</details>
<details>
<summary><b>阻止检测</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-26-12-12-43.png" align="right" />

###### 描述
使用10多个最受欢迎的隐私、恶意软件和家长控制阻止DNS服务器检查对URL的访问。

###### 使用场景


###### 有用链接
- [ThreatJammer列表](https://threatjammer.com/osint-lists)

</details>
<details>
<summary><b>恶意软件和钓鱼检测</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-26-12-07-47.png" align="right" />

###### 描述
检查站点是否出现在几个常见的恶意软件和钓鱼列表中，以确定其威胁级别。

###### 使用场景
了解站点是否被这些服务中的任何一个列为威胁有助于理解站点的声誉，并识别潜在趋势。

###### 有用链接
- [URLHaus](https://urlhaus-api.abuse.ch/)
- [PhishTank](https://www.phishtank.com/)

</details>
<details>
<summary><b>TLS密码套件</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-26-12-09-58.png" align="right" />

###### 描述
这些是服务器用于建立安全连接的加密算法组合。它包括密钥交换算法、批量加密算法、MAC算法和PRF（伪随机函数）。

###### 使用场景
从安全角度来看，测试这些信息很重要。因为密码套件的安全性仅与其包含的算法一样安全。如果密码套件中的加密或认证算法版本存在已知漏洞，则密码套件和TLS连接可能容易受到降级或其他攻击

###### 有用链接
- [sslscan2 CLI](https://github.com/rbsec/sslscan)
- [ssl-enum-ciphers（NPMAP脚本）](https://nmap.org/nsedoc/scripts/ssl-enum-ciphers.html)

</details>
<details>
<summary><b>TLS安全配置</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-08-26-12-12-09.png" align="right" />

###### 描述
这使用Mozilla TLS Observatory的指南来检查TLS配置的安全性。它检查不良配置，这可能使站点容易受到攻击，并提供修复建议。它还会提供有关过时和现代TLS配置的建议

###### 使用场景
理解站点TLS配置的问题将帮助您解决潜在漏洞，并确保站点使用最新和最安全的TLS配置。

###### 有用链接

</details>
<details>
<summary><b>TLS握手模拟</b></summary>

<img width="300" src="https://i.ibb.co/F7qRZkh/Screenshot-from-2023-08-26-12-11-28.png" align="right" />

###### 描述
这模拟了不同客户端（浏览器、操作系统）如何与服务器执行TLS握手。它有助于识别兼容性问题和不安全的配置。

###### 使用场景


###### 有用链接
- [TLS握手（通过Cloudflare学习）](https://www.cloudflare.com/learning/ssl/what-happens-in-a-tls-handshake/)
- [SSL测试（通过SSL Labs）](https://www.ssllabs.com/ssltest/)

</details>
<details>
<summary><b>截图</b></summary>

<img width="300" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Screenshot-from-2023-07-29-18-34-48.png" align="right" />

###### 描述
此检查截取请求的URL/IP解析到的网页截图并显示。

###### 使用场景
这对于查看给定网站的外观很有用，不受浏览器、IP或位置的限制。


</details>

</details>

在这里阅读更多：**[web-check.xyz/about](https://web-check.xyz/about)**

---

### 配置

默认情况下，不需要配置。

但有一些可选的环境变量，您可以设置以访问一些额外的检查，或增加使用外部API的某些检查的速率限制。

**API密钥和凭据**：

密钥 | 值
---|---
`GOOGLE_CLOUD_API_KEY` | Google API密钥（[在此获取](https://cloud.google.com/api-gateway/docs/authenticate-api-keys)）。这可用于返回站点的质量指标
`REACT_APP_SHODAN_API_KEY` | Shodan API密钥（[在此获取](https://account.shodan.io/)）。这将显示给定域的关联主机名
`REACT_APP_WHO_API_KEY` | WhoAPI密钥（[在此获取](https://whoapi.com/)）。这将显示比默认任务更全面的WhoIs记录

<details>
  <summary><small>完整/即将到来的值</small></summary>
  
- `GOOGLE_CLOUD_API_KEY` - Google API密钥（[在此获取](https://cloud.google.com/api-gateway/docs/authenticate-api-keys)）。这可用于返回站点的质量指标
- `REACT_APP_SHODAN_API_KEY` - Shodan API密钥（[在此获取](https://account.shodan.io/)）。这将显示给定域的关联主机名
- `REACT_APP_WHO_API_KEY` - WhoAPI密钥（[在此获取](https://whoapi.com/)）。这将显示比默认任务更全面的WhoIs记录
- `SECURITY_TRAILS_API_KEY` - Security Trails API密钥（[在此获取](https://securitytrails.com/corp/api)）。这将显示与IP关联的组织信息
- `CLOUDMERSIVE_API_KEY` - Cloudmersive API密钥（[在此获取](https://account.cloudmersive.com/)）。这将显示与IP关联的已知威胁
- `TRANCO_USERNAME` - Tranco邮箱（[在此获取](https://tranco-list.eu/)）。这将根据流量显示站点的排名
- `TRANCO_API_KEY` - Tranco API密钥（[在此获取](https://tranco-list.eu/)）。这将根据流量显示站点的排名
- `URL_SCAN_API_KEY` - URLScan API密钥（[在此获取](https://urlscan.io/)）。这将获取关于站点的杂项信息
- `BUILT_WITH_API_KEY` - BuiltWith API密钥（[在此获取](https://api.builtwith.com/)）。这将显示站点的主要功能
- `TORRENT_IP_API_KEY` - 种子API密钥（[在此获取](https://iknowwhatyoudownload.com/en/api/)）。这将显示IP下载的种子
  
</details>

**配置设置**：

密钥 | 值
---|---
`PORT` | 运行server.js时提供API服务的端口（例如 `3000`）
`API_ENABLE_RATE_LIMIT` | 为/api端点启用速率限制（例如 `true`）
`API_TIMEOUT_LIMIT` | API请求的超时限制，以毫秒为单位（例如 `10000`）
`API_CORS_ORIGIN` | 通过在此设置允许的主机名来启用CORS（例如 `example.com`）
`CHROME_PATH` | Chromium可执行文件的路径（例如 `/usr/bin/chromium`）
`DISABLE_GUI` | 禁用GUI，仅提供API（例如 `false`）
`REACT_APP_API_ENDPOINT` | API的端点，本地或远程（例如 `/api`）

所有值都是可选的。

您可以将这些作为环境变量添加。可以直接将它们放入项目根目录的`.env`文件中，或通过Netlify/Vercel UI，或通过--env标志传递给Docker容器，或使用您自己的环境变量管理系统

请注意，以`REACT_APP_`为前缀的密钥在客户端使用，因此必须正确限定范围并具有最小权限，因为在拦截浏览器与服务器网络请求时可能会被看到

---

### 开发

1. 克隆仓库，`git clone git@github.com:Lissy93/web-check.git`
2. 进入目录，`cd web-check`
3. 安装依赖：`yarn`
4. 启动开发服务器，使用 `yarn dev`

您需要安装[Node.js](https://nodejs.org/en)（V 18.16.1或更高版本），以及[yarn](https://yarnpkg.com/getting-started/install)和[git](https://git-scm.com/)。
某些检查还需要在您的环境中安装`chromium`、`traceroute`和`dns`。如果这些包不存在，这些任务将被跳过。


---

## 社区

### 贡献

非常欢迎任何形式的贡献，并且将不胜感激。
有关行为准则，请参见[贡献者公约](https://www.contributor-covenant.org/version/2/1/code_of_conduct/)。

要开始，请复刻仓库，进行更改，添加、提交和推送代码，然后回到这里提交拉取请求。如果您是GitHub或开源的新手，[本指南](https://www.freecodecamp.org/news/how-to-make-your-first-pull-request-on-github-3#let-s-make-our-first-pull-request-)或[git文档](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/creating-a-pull-request)可能有助于您入门，如有需要请随时联系。

[![提交PR](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Submit_a_PR-GitHub-_23060606.svg)](https://github.com/Lissy93/web-check/compare)


### 报告错误

如果您发现某些功能不正常工作，或想建议新功能，请随时在GitHub上提交工单。
对于错误，请概述重现所需的步骤，并包括相关系统信息和结果日志。

[![提交问题](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Raise_an_Issue-GitHub-_23060606.svg)](https://github.com/Lissy93/web-check/issues/new/choose)

### 支持

该应用将保持100%免费和开源。
但由于托管实例获得的流量，Lambda函数的使用每月约花费25美元。
任何通过GitHub赞助帮助覆盖成本的支持都将不胜感激。
正是由于社区的支持，这个项目才能对每个人免费提供 :)

[![在GitHub上赞助Lissy93](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/Sponsor_on_GitHub-Lissy93-_23ff4dda.svg)](https://github.com/sponsors/Lissy93)

---

## 许可证

> _**[Lissy93/Web-Check](https://github.com/Lissy93/web-check)** 采用 [MIT](https://github.com/Lissy93/web-check/blob/HEAD/LICENSE) 许可证 © [Alicia Sykes](https://aliciasykes.com) 2023._<br>
> <sup align="right">有关信息，请参见 <a href="https://tldrlegal.com/license/mit-license">TLDR Legal > MIT</a></sup>

<details>
<summary>展开许可证</summary>

```
MIT许可证 (MIT)
版权所有 (c) Alicia Sykes <alicia@omg.com> 

特此免费授予任何获得本软件和相关文档文件（"软件"）副本的人，
不受限制地处理本软件的权利，包括但不限于使用、复制、修改、合并、
发布、分发、再许可和/或销售本软件副本的权利，
并允许向其提供本软件的人员这样做，
但须符合以下条件：

上述版权声明和本许可声明应包含在所有副本或实质部分中。

本软件按"原样"提供，不提供任何形式的明示或暗示担保，
包括但不限于适销性、特定用途适用性和非侵权的担保。
在任何情况下，作者或版权持有人均不对因合同、侵权或其他原因
引起的任何索赔、损害或其他责任承担责任，
无论是与软件或其使用或其他交易有关的。
```

[![在FOSSA上查看依赖许可证和SBOM](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/git_2Bgithub.com_2FLissy93_2Fweb-check.svg)](https://app.fossa.com/projects/git%2Bgithub.com%2FLissy93%2Fweb-check?ref=badge_large&issueType=license)

</details>


<!-- 许可证 + 版权 -->
<p  align="center">
  <i>© <a href="https://aliciasykes.com">Alicia Sykes</a> 2023</i><br>
  <i>采用 <a href="https://gist.github.com/Lissy93/143d2ee01ccc5c052a17">MIT</a> 许可证</i><br>
  <a href="https://github.com/lissy93"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/web-check/image/octocat-clean-mini.png" /></a><br>
  <sup>感谢您的访问 :)</sup>
</p>

<!-- 恐龙很棒 -->
<!-- 
                        . - ~ ~ ~ - .
      ..     _      .-~               ~-.
     //|     \ `..~                      `.
    || |      }  }              /       \  \
(\   \\ \~^..'                 |         }  \
 \`.-~  o      /       }       |        /    \
 (__          |       /        |       /      `.
  `- - ~ ~ -._|      /_ - ~ ~ ^|      /- _      `.
              |     /          |     /     ~-.     ~- _
              |_____|          |_____|         ~ - . _ _~_-_
-->
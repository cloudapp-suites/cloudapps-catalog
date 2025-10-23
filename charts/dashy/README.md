> 🚀 **EDAS provides one-click application deployment. Try it now!** [Deploy Now](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=2c6d5fe2-6ca2-4717-974e-45512d1c7ae9)


<h1 align="center">Dashy</h1>
<p align="center">
  <i>Dashy helps you organize your self-hosted services by making them accessible from a single place</i>
   <br/>
  <img width="120" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.png" />
  <br/>
  <b><a href="./docs/showcase.md">User Showcase</a></b> | <b><a href="https://demo.dashy.to">Live Demo</a></b> | <b><a href="./docs/quick-start.md">Getting Started</a></b> | <b><a href="https://dashy.to/docs">Documentation</a></b> | <b><a href="https://github.com/Lissy93/dashy">GitHub</a></b>
</p>

<p align="center">
<br>
<sup>Dashy is kindly sponsored by <a href="https://umbrel.com?ref=dashy">Umbrel</a> - the personal home cloud and OS for self-hosting</sup><br>
<a href="https://umbrel.com?ref=dashy">
<img width="400" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/umbrel-banner.jpg" />
</a>
</p>

> [!NOTE]
> Version [3.0.0](https://github.com/Lissy93/dashy/releases/tag/3.0.0) has been released, and requires some changes to your setup, see [#1529](https://github.com/Lissy93/dashy/discussions/1529) for details.

<details>
  <summary><b>Table of Contents</b></summary>
  <p>
  
- **Getting Started**
  - 🌈 Features
  - ⚡Demo
  - 🚀 Getting Started
  - 🔧 Configuring
- **Feature Overview**
  - 🎨 Theming
  - 🧸 Icons
  - 🚦 Status Indicators
  - 📊 Widgets
  - 🔐 Authentication
  - 👓 Alternate Views
  - 🖱️ Opening Methods
  - 🔎 Searching and Shortcuts
  - ⚙️ Config Editor
  - ☁ Cloud Backup & Sync
  - 🌎 Language Switching
  - 📃 Multi-Page Support
- **Community**
  - 📊 System Requirements
  - 🙋‍♀️ Support
  - 💖 Supporting Dashy
  - 🏆 Credits
  - 🧱 Developing
  - 🗞️ Release Schedule
  - 📘 Documentation
  - 🛣️ Roadmap
  - 🙌 Alternatives
  - 📜 License
    
  </p>
</details>

## Features 🌈
- 📃 Support for multiple pages
- 🚦 Real-time status monitoring for each of your apps/links
- 📊 Use widgets to display info and dynamic content from self-hosted services
- 🔎 Instant search by name, domain, or tags + customizable hotkeys & keyboard shortcuts
- 🎨 Many built-in color themes, with UI color editor and support for custom CSS
- 🧸 Many icon options - Font-Awesome, homelab icons, auto-fetching Favicon, images, emojis, etc.
- 💂 Optional authentication with multi-user access, configurable privileges, and SSO support
- 🌎 Multi-language support, with 10+ human-translated languages, and more on the way
- ☁ Optional, encrypted, free off-site cloud backup and restore feature available
- 💼 A workspace view, for easily switching between multiple apps simultaneously
- 🛩️ A minimal view, for use as a fast-loading browser Startpage
- 🖱️ Choose app launch methods: new tab, same tab, clipboard, pop-up modal, or open in workspace view
- 📏 Customizable layout, sizes, text, component visibility, sort order, behavior, etc.
- 🖼️ Options for a full-screen background image, custom nav-bar links, HTML footer, title, etc.
- 🚀 Easy to setup with Docker, or on bare metal, or with 1-Click cloud deployment
- ⚙️ Easy single-file YAML-based configuration, and option to configure app through the UI
- ✨ Under active development with improvements and new features added regularly 
- 🤏 Small bundle size, fully responsive UI, and PWA for basic offline access
- 🆓 100% free and open-source
- 🔐 Strong focus on privacy
- 🌈 And loads more...

**⬆️ Back to Top**

## Demo ⚡

**Live Instances**: [Demo 1](https://demo.dashy.to) (Live Demo) ┆ [Demo 2](https://live.dashy.to) (Dashy Links) ┆ [Demo 3](https://dev.dashy.to) (Dev Preview)

**Screenshots**: Checkout the Showcase, to see example dashboards from the community

**Spin up your own demo**: [![One-Click Deploy with PWD](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Play--with--Docker-Deploy-2496ed.svg)](https://labs.play-with-docker.com/?stack=https://raw.githubusercontent.com/Lissy93/dashy/master/docker-compose.yml) or `docker run -p 8080:8080 lissy93/dashy`

<p align="center">
  <img width="800" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy-demo2.gif" alt="Demo" />
</p>

**⬆️ Back to Top**

---

## Getting Started 🚀

> For full setup instructions, see: **Deployment**

## Configuring 🔧

> For full configuration documentation, see: **Configuring**

Dashy is configured through a YAML file, located at `./user-data/conf.yml`. In addition, you can find a complete list of available options in the Configuring Docs. The config can also be edited and saved directly through the UI.

**⬆️ Back to Top**

---

## Theming 🎨

> For full theming documentation, see: **Theming**

Dashy comes pre-bundled with several built-in themes, which you can preview, apply and edit through the UI. With the theme configurator and support for custom CSS, everything is in place to quickly develop your own unique-looking dashboard.

<p align="center">
  <a href="https://i.ibb.co/BVSHV1v/dashy-themes-slideshow.gif">
    <img alt="Example Themes" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/theme-slideshow.gif" width="400" />
  </a>
</p>

<p align="center">
  <a href="https://i.ibb.co/cLDXj1R/dashy-theme-configurator.gif">
    <img alt="Example Themes" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/theme-config-demo.gif" width="400" />
  </a>
</p>

**⬆️ Back to Top**

---

## Icons 🧸

> For full iconography documentation, see: **Icons**

Both sections and items can have an icon associated with them, defined under the `icon` attribute. With several different icon packs supported, you'll be able to find the perfect thumbnail for any app or service.

The following icon types are supported:
- **Favicon** - Automatically fetch an apps icon from its Favicon or logo image
- **Icon Packs** - Use any icon from [font-awesome], [simple-icons], [selfh.st/icons], or [material icons]
- **Emoji** - Any valid emoji can be used as an icon
- **Generative** - Unique, auto-generated images for easily identifying services
- **URL** - Pass the URL of any valid image in to have it fetched and rendered
- **Local** - Store custom images locally and reference by filename
- **Homelab Icons** - Using [dashboard-icons] for logos of commonly self-hosted services


[font-awesome]: https://fontawesome.com/icons
[simple-icons]: https://simpleicons.org/
[material icons]: https://github.com/Templarian/MaterialDesign
[selfh.st/icons]: https://selfh.st/icons
[dashboard-icons]: https://github.com/WalkxCode/dashboard-icons


<p align="center">
  <img width="400" src="https://i.ibb.co/GTVmZnc/dashy-example-icons.png" />
</p>


**⬆️ Back to Top**

---

## Status Indicators 🚦

> For full monitoring documentation, see: **Status Indicators**

Dashy has an optional feature to check if each app/ service is up and responding, then display a small status indicator icon. Hovering over it will show additional stats like response time and status code.

Status indicators can be globally enabled by setting `appConfig.statusCheck: true` or enabled/ disabled on a per-item basis. Status is checked on page load, but you can allow continuous polling by specifying a time interval between checks, in seconds under `appConfig.statusCheckInterval`. You can also use a different endpoint for status checking, with `statusCheckUrl`, and if needed, pass in custom headers under `statusCheckHeaders`.

<p align="center">
  <img alt="Status Checks demo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/status-check-demo.gif" width="600" />
</p>

**⬆️ Back to Top**

---

## Widgets 📊

> For full widget documentation, see: **Widgets**

You can display dynamic content from services in the form of widgets. There are several pre-built widgets available for showing useful info, and integrations with commonly self-hosted services, but you can also easily create your own for almost any app.


<p align="center">
  <img width="600" src="https://i.ibb.co/GFjXVHy/dashy-widgets.png" />
</p>


**⬆️ Back to Top**

---

## Authentication 🔐

> For full authentication documentation, see: **Authentication**

Dashy has full support for secure single-sign-on using [Keycloak](https://www.keycloak.org/) for secure, easy authentication, see setup docs for a full usage guide.

There is also a basic auth feature, which doesn't require additional setup. To enable this, add an `auth` attribute under `appConfig`, containing an array of `users`, each with a username, SHA-256 hashed password and optional user type. Basic auth also supports several access control features, including read-only guest access and granular controls.


```yaml
appConfig:
  auth:
    users:
    - user: alicia
      hash: 4D1E58C90B3B94BCAD9848ECCACD6D2A8C9FBC5CA913304BBA5CDEAB36FEEFA3
      type: admin
```

Other access control systems are also supported, see the Alternative Auth Methods docs.

**⬆️ Back to Top**

---

## Alternate Views 👓

As well as the default homepage, there is also:
- A minimal view, valid for use as a browser start page
- A workspace view, useful for visiting many apps simultaneously
	
You can change the view from the UI, using the switch icon in the top-right corner, or select a default view in the config under `appConfig.startingView` attribute.

<p align="center">
  <b>Example of Workspace View</b><br>
  <img alt="Workspace view demo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/workspace-demo.gif" width="600" />
</p>

<p align="center">
  <b>Example of Minimal View</b><br>
  <img alt="Workspace view demo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/minimal-view-demo.gif" width="600" />
</p>

**⬆️ Back to Top**

---

## Opening Methods 🖱️

> For full documentation on views and opening methods, see: **Alternate Views**

There are several different ways you can launch apps. You can specify the default opening method for any given item under the `target` attribute or set a site-wide default under `appConfig.defaultOpeningMethod`. Right-click on an item to item for all options. The following options are supported:
- `sametab` - The app will be launched in the current tab
- `newtab` - The app will be launched in a new tab (or use Ctrl + Click)
- `modal` - Launch app in a resizable/ movable popup modal on the current page (or use Alt + Click)
- `workspace` - Changes to Workspace view and launches app
- `clipboard` - Copy the app's URL to your system clipboard
- `top` - Opens in the top-most browsing context, useful if you're accessing Dashy through an iframe

**⬆️ Back to Top**

---

## Searching and Shortcuts 🔎

> For full documentation on searching, see: **Searching & Shortcuts**

Quickly finding and launching applications is the primary aim of Dashy. To that end, instant search and customizable keyboard shortcuts are built-in.

To start filtering, start typing—no need to select the search bar or use any special key. Then use either the tab key or arrow keys to select and move between results, and hit enter to launch the currently selected application.

For apps that you use regularly, you can set a custom keybinding. Use the `hotkey` parameter on a certain item to specify a numeric key between `0 - 9`. You can then launch that app by just pressing that key.

You can also add custom tags to a given item to make finding them based on keywords easier. For example, in the following example, searching for 'Movies' will show 'Plex'

```yaml
  items:
  - title: Plex
    hotkey: 8
    icon: favicon
    description: Media library
    url: https://plex.lab.local
    tags: [ movies, videos, music ]
```

To search the web directly through Dashy, just press enter after typing your query. Options for web search are set under `appConfig.webSearch`. There is built-in support for 10+ search engines, or use your own custom provider or self-hosted instance. With the web search, you can also define your bangs to redirect results to any given app, website, or search engine, when the query is preceded with a certain character sequence (usually beginning in `/`, `!` or `:`).

```yaml
webSearch:
  searchEngine: duckduckgo
  openingMethod: newtab
  searchBangs:
    /r: reddit
    /w: wikipedia
    /s: https://whoogle.local/search?q=
    ':wolf': wolframalpha
    ':so': stackoverflow
    ':git': github
```

Hit `Esc` at any time to close any open apps, clear the search field, or hide any modals.

**⬆️ Back to Top**

---

## Config Editor ⚙️
> For full config documentation, see: **Configuring**

As well as passing in a YAML config file, you can also configure the app directly through the UI and preview changes live.

To edit any section or item, right-click on it, and select "Edit", or enter the Edit Mode (using the Pen icon in the top-right), then click any part of the page to edit. Changes will be visible immediately but will not be saved until clicking "Save to Disk" or "Save Locally".

Under the config menu, you can export, view, backup, or reset app config and edit the raw config file in a text editor with built-in schema validation. It's recommended to keep a backup of your config.

<p align="center">
  <img alt="Interactive Editor demo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/139543020-b0576d28-0830-476f-afc8-a815d4de6def.gif" width="600" />
</p>


<p align="center">
  <img alt="Config Editor demo" src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/config-editor-demo.gif" width="600" />
</p>

**⬆️ Back to Top**

---

## Cloud Backup & Sync ☁

> For full backup documentation, see: **Cloud Backup & Sync**

Dashy has an **optional** built-in feature for securely backing up your config to a hosted cloud service and then restoring it on another instance. This is useful not only for backing up your configuration off-site but also enables Dashy to be used without having to write a YAML config file.

All data is fully E2E encrypted before being sent to the backend (done in [`CloudBackup.js`](https://github.com/Lissy93/dashy/blob/master/src/utils/CloudBackup.js) using [crypto.js](https://github.com/brix/crypto-js) 's AES method). The data is then sent to a [Cloudflare worker](https://developers.cloudflare.com/workers/learning/how-workers-works) and stored in a [KV](https://developers.cloudflare.com/workers/learning/how-kv-works) data store.

**⬆️ Back to Top**

---

## Language Switching 🌎
> For full internationalization documentation, see: **Multi-Language Support**

Dashy supports multiple languages and locales. When available, your language should be automatically detected and applied on load. But you can also select a language through the UI (under config --> Switch Language) or set `appConfig.language` to your language (specified as a 2-digit [ISO 639-1 code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)), as seen below, e.g. `language: de`.

#### Supported Languages
- 🇬🇧 **English**: `en` - _Default_
- 🇦🇪 **Arabic**: `ar` - _Auto-generated_
- 🇧🇩 **Bengali**: `bn` - Contributed by **[@soaibsafi](https://github.com/soaibsafi)**
- 🇧🇬 **Bulgarian**: `bg` - Contributed by **[@asenov](https://github.com/asenov)**
- 🇨🇳 **Chinese**: `cn` - Contributed by **[@FormatToday](https://github.com/FormatToday)**
- 🇨🇿 **Czech**: `cs` - Contributed by **[@Tuzi555](https://github.com/Tuzi555)**
- 🇩🇰 **Danish**: `da` - Contributed by **[@lordpansar](https://github.com/lordpansar)**
- 🇳🇱 **Dutch**: `nl` - Contributed by **[@evroon](https://github.com/evroon)**
- 🇫🇷 **French**: `fr` - Contributed by **[@EVOTk](https://github.com/EVOTk)**
- 🇩🇪 **German**: `de` - Contributed by **[@Niklashere](https://github.com/Niklashere)**
- 🇬🇷 **Greek**: `el` - Contributed by **[@aviolaris](https://github.com/aviolaris)**
- 🇮🇳 **Hindi**: `hi` - _Auto-generated_
- 🇮🇹 **Italian**: `it` - Contributed by **[@alexdelprete](https://github.com/alexdelprete)**
- 🇯🇵 **Japanese**: `ja` - _Auto-generated_
- 🇰🇷 **Korean**: `ko` - Contributed by **[@boggy-cs](https://github.com/boggy-cs)**
- 🇳🇴 **Norwegian Bokmål**: `nb` - Contributed by **[@rubjo](https://github.com/rubjo)**
- 🇵🇱 **Polish**: `pl` - Contributed by **[@skaarj1989](https://github.com/skaarj1989)**
- 🇵🇹 **Portuguese**: `pt` - Contributed by **[@LeoColman](https://github.com/LeoColman)**
- 🛰️ **Galician**: `gl` - Contributed by **[@pvillaverde](https://github.com/pvillaverde)**
- 🇷🇺 **Russian**: `ru` -Contributed by **[@sasetz](https://github.com/sasetz)**
- 🇸🇰 **Slovak**: `sk` - Contributed by **[@Smexhy](https://github.com/Smexhy)**
- 🇸🇮 **Slovenian**: `sl` - Contributed by **[@UrekD](https://github.com/UrekD)**
- 🇪🇸 **Spanish**: `es` - Contributed by **[@lu4t](https://github.com/lu4t)**
- 🇸🇪 **Swedish**: `sv` - Contributed by **[@BOZG](https://github.com/BOZG)**
- 🇹🇼 **Traditional Chinese**: `zh-TW` - Contributed by **[@stanly0726](https://github.com/stanly0726)**
- 🇹🇷 **Turkish**: `tr` - Contributed by **[@imsakg](https://github.com/imsakg)**
- 🇺🇦 **Ukrainian**: `uk` - Contributed by **[@allozavrr](https://github.com/allozavrr)**
- 🏴‍☠️ **Pirate**: `pirate` - Contributed by **[@Lissy93](https://github.com/lissy93)**

#### Add your Language
I would love Dashy to be available to everyone without language being a barrier to entry. If you've got a few minutes to spare, consider adding translations for your language. It's a quick task, and all text is in [a single JSON file](https://github.com/Lissy93/dashy/tree/master/src/assets/locales). Since any missing text will fall back to English, you don't need to translate it all.

**⬆️ Back to Top**

---

## Multi-Page Support 📃

> For full multi-page documentation, see: **Pages & Sections**

Within your dashboard, you can have as many sub-pages as you require. To load additional pages, specify a name, and path to a config file under `pages`. The config file can be either local (stored in `/public`), or remote (located anywhere accessible).

```yaml
pages:
- name: Networking Services
  path: 'networking.yml'
- name: Work Stuff
  path: 'work.yml'
```

Or

```yaml
pages:
- name: Getting Started
  path: 'https://snippet.host/tvcw/raw'
- name: Homelab
  path: 'https://snippet.host/tetp/raw'
- name: Browser Startpage
  path: 'https://snippet.host/zcom/raw'
```

---

## System Requirements 📊

If running on bare metal, Dashy requires [Node](https://nodejs.org/en/) V 16.0.0 or later, LTS (16.13.2) is recommended.

If running in Docker container, the recommended base image is Alpine (3.15)

The hardware requirements vary depending on where and how you are running Dashy. Generally speaking, on a bare-metal system or Docker container, 1GB of memory should be more than enough, and depending on whether you are using your own assets, then 1GB of disk space should be sufficient. 

If you are using one of the 1-click cloud deployment methods, serving the app through a CDN or using a static hosting provider, then there are no specific requirements, as the built app is just a series of static JS files, and so is very light-weight.

Dashy also wells run on low-powered ARM-based single board computers, such as a Raspberry Pi (tested on Pi 3)

**Browser Support**
![Chrome](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/chrome_48x48.png) | ![Firefox](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/firefox_48x48.png) | ![IE](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/edge_48x48.png) | ![Opera](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/opera_48x48.png) | ![Safari](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/safari_48x48.png)
--- | --- | --- | --- | --- |
Latest ✔ | Latest ✔ | 10+ ✔ | Latest ✔ | 6.1+ ❌ |

**⬆️ Back to Top**

---

## Support 🙋‍♀️

If you're having trouble getting Dashy up and running, or have a question about usage or configuration, feel free to ask. The best place to do this is via [the Discussions](https://github.com/Lissy93/dashy/discussions).

If you've found something which isn't working as it should, please raise a bug by [opening a ticket](https://github.com/Lissy93/dashy/issues/new/choose).

It's best to check the docs, [previous issues](https://github.com/Lissy93/dashy/issues?q=label%3A%22%F0%9F%A4%B7%E2%80%8D%E2%99%82%EF%B8%8F+Question%22+) and troubleshooting guide first.

**⬆️ Back to Top**

---

## Supporting Dashy 💖

> For full details and other ways you can help out, see: **Contributing**

If you're using Dashy and would like to help support its development, then that would be awesome! Contributions of any type, any size, are always very much appreciated, and we will appropriately credit you for your effort.

Several areas that we need a bit of help with at the moment are:
- Translating - Help make Dashy available to non-native English speakers by adding your language
- Donate a small amount by [Sponsoring @Lissy93 on GitHub](https://github.com/sponsors/Lissy93) and receive some extra perks!
- Complete a [short survey](https://survey.typeform.com/to/gl0L68ou) to have your say about future features
- Share your dashboard in the [Showcase](https://github.com/Lissy93/dashy/blob/master/docs/showcase.md#dashy-showcase-), to inspire others
- Spread the word by sharing Dashy or a screenshot of your dashboard to help new users discover it
- Submit a PR to add a new feature, fix a bug, update the docs, add a theme, widget or something else
- Star Dashy on GitHub/ DockerHub or leave an upvote / review on [these platforms](https://github.com/Lissy93/dashy/blob/master/docs/contributing.md#star-upvote-or-leave-a-review)

[![Sponsor Lissy93 on GitHub](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/sponsor-button.svg)](https://github.com/sponsors/Lissy93)

**⬆️ Back to Top**
---

## Developing 🧱

> For full development documentation, see: **Developing**

[![Open Project in VS Code](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Open_in-VS_Code-863cfc.svg)](https://open.vscode.dev/Lissy93/Dashy)
[![Open in GitPod](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Open_in-GitPod-ffae33.svg)](https://gitpod.io/#github.com/lissy93/dashy.git)
[![Open in GitHub Code Spaces](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/Open_in-Code_20Spaces-131313.svg)](https://github.dev/Lissy93/dashy)

Before getting started, you'll need [Git](https://git-scm.com/downloads), [Node](https://nodejs.org/en/download/) and optionally [Yarn](https://yarnpkg.com/) (run `npm i -g yarn`) installed.

To set up the development environment:
1. Get Code: `git clone https://github.com/Lissy93/dashy.git`  and `cd dashy`
2. Install dependencies: `yarn`
3. Start dev server: `yarn dev`
4. Open the browser: `http://localhost:8080`

When you're ready, you can build the production app with `yarn build`, and then run it with `yarn start`

If you're new to web development, I've put together a short [list of resources](https://github.com/Lissy93/dashy/blob/master/docs/developing.md#resources-for-beginners) to help beginners get started

**Repo Status**:
[![Open PRs](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/pulls)
[![Total PRs](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/pulls?q=)
[![GitHub commit activity](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/commits/master)
[![Last Commit](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/commits/master)
[![Contributors](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/dashy.svg)](https://github.com/Lissy93/dashy/graphs/contributors)

**⬆️ Back to Top**

---

## Documentation 📘
> For full docs, see: **Documentation Contents**
#### Running Dashy
- 💨 Quick Start - TDLR guide on getting Dashy up and running in under 5 minutes
- 🚀 Deployment - Full guide on setting up Dashy on various different environments
- 🔧 Configuring - Complete list of all available options in the config file
- 💻 Management - Managing your app, updating, security, web server configuration, etc
- 🚒 Troubleshooting - Common errors and problems, and how to fix them

#### Feature Docs
- 🛡️ Authentication - Guide to setting up authentication to protect your dashboard
- 🌈 Alternate Views - Outline of available pages / views and item opening methods
- 💾 Backup & Restore - Guide to backing up config with Dashy's cloud sync feature
- 🧸 Icons - Outline of all available icon types for sections and items, with examples
- 🌐 Multi-Language Support - Switching languages, and adding a new locales
- 🚦 Status Indicators - Using Dashy to monitor uptime and status of your apps
- 🔍 Searching  & Shortcuts - Searching, launching methods + keyboard shortcuts
- 🎨 Theming - Complete guide to applying, writing and modifying themes + styles
- 📊 Widgets - List of all dynamic content widgets, with usage guides and examples

#### Development and Contributing
- 🧱 Developing - Running Dashy development server locally, and general workflow
- 🛎️ Development Guides - Common development tasks, to help new contributors
- 💖 Contributing - How to contribute to Dashy
- 🌟 Showcase - See how others are using Dashy, and share your dashboard
- 🏆 Credits - Shout out to the amazing people who have contributed so far
- 🗞️ Release Workflow - Info about releases, CI and automated tasks

#### Misc
- 🔐 Privacy & Security - List of requests, potential issues, and security resources
- 📄 License - Copy of the MIT License
- ⚖️ Legal - Licenses of direct dependencies
- 📏 Code of Conduct - Contributor Covenant Code of Conduct
- 🌳 Changelog - Details of recent changes, and historical versions

**⬆️ Back to Top**

---

## Roadmap 🛣️

For upcoming features that will be released in the near future, see the [**Current Roadmap**](https://github.com/Lissy93/dashy/discussions/405)

For past updates, see the **Changelog**

**⬆️ Back to Top**

---

## Alternatives 🙌

A few self-hosted web apps serve a similar purpose to Dashy. If you're looking for a dashboard, and Dashy doesn't meet your needs, I highly recommend you check these projects out! 
- [Flame](https://github.com/pawelmalak/flame) by @pawelmalak (`MIT`)
- [HomeDash2](https://lamarios.github.io/Homedash2)
- [Homer](https://github.com/bastienwirtz/homer) (`Apache License 2.0`)
- [Organizr](https://organizr.app/) (`GPL-3.0 License`)
- [Heimdall](https://github.com/linuxserver/Heimdall) (`MIT`)
- [Smashing](https://github.com/Smashing/smashing) (`MIT`)
- See more 👉 [Awesome Self-Hosted](https://github.com/awesome-selfhosted/awesome-selfhosted#personal-dashboards)

**⬆️ Back to Top**

---
## License 📜

Dashy is Licensed under [MIT X11](https://en.wikipedia.org/wiki/MIT_License)

```
Copyright © 2021-2024 Alicia Sykes <https://aliciasykes.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the Software
without restriction, including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software, and to permit
persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES, OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF, OR IN CONNECTION WITH THE SOFTWARE OR THE USE
OR OTHER DEALINGS IN THE SOFTWARE.

Except as contained in this notice, Dashy shall not be used in advertising or otherwise
to promote the sale, use, or other dealings in this Software without prior written
authorization from the repo owner.
```

**TDLR;** _You can do whatever you like with Dashy: use it in private or commercial settings,_
_redistribute and modify it. But you must display this license and credit the author._
_There is no warranty that this app will work as expected, and the author cannot be held_
_liable for anything that goes wrong._
For more info, see TLDR Legal's [Explanation of MIT](https://tldrlegal.com/license/mit-license)

[![FOSSA Status](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/git_2Bgithub.com_2FLissy93_2Fdashy.svg)](https://app.fossa.com/projects/git%2Bgithub.com%2FLissy93%2Fdashy?ref=badge_large)

**⬆️ Back to Top**

---

<!-- License + Copyright -->
<p  align="center">
  <i>© <a href="https://aliciasykes.com">Alicia Sykes</a> 2024</i><br>
  <i>Licensed under <a href="https://gist.github.com/Lissy93/143d2ee01ccc5c052a17">MIT</a></i><br>
  <a href="https://github.com/lissy93"><img src="https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/dashy/image/octocat-clean-mini.png" /></a><br>
  <sup>Thanks for visiting :)</sup>
</p>

<!-- Dinosaurs are Awesome -->
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


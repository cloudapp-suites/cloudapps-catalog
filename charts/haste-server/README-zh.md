# Hastebin Plus
Hastebin Plus 是一个用 node.js 编写的开源 Pastebin 软件，可以在任何网络环境中轻松安装。  
它基于 [haste](https://github.com/seejohnrun/haste-server)，并在 **设计、速度和简洁性** 方面进行了增强。

## 功能
* 粘贴代码、日志等几乎任何内容！
* 语法高亮
* 添加静态文档
* 复制和编辑粘贴内容
* 原始粘贴视图

## 安装
1. 安装 Git 和 node.js: `sudo apt-get install git nodejs`
2. 克隆此仓库: `git clone https://github.com/MarvinMenzerath/HastebinPlus.git hastebin-plus`
3. 打开 `config.json` 并更改设置（可选）
4. 安装依赖项: `npm install`
5. 启动应用: `npm start`

## 更新
1. 拉取此仓库的更新: `git pull`
2. 安装新依赖项: `npm install`

## 设置
| 键名                    | 描述                                             | 默认值       |
| ---------------------- | ------------------------------------------------ | ------------ |
| `host`                 | 服务器运行的主机                                 | `0.0.0.0`    |
| `port`                 | 服务器运行的端口                                 | `8080`       |
| `dataPath`             | 存储所有粘贴内容的目录                           | `./data`     |
| `keyLength`            | 粘贴内容的键长度                                 | `10`         |
| `maxLength`            | 粘贴内容的最大字符数                             | `500000`     |
| `createKey`            | 创建粘贴前需要提供的密钥                         | `空`         |
| `documents`            | 要提供的静态文档                                 | 见下方       |

### 默认配置
```json
{
	"host": "0.0.0.0",
	"port": 8080,
	"dataPath": "./data",
	"keyLength": 10,
	"maxLength": 500000,
	"createKey": "",
	"documents": {
		"about": "./README.md",
		"javaTest": "./documents/test.java"
	}
}
```

## 作者
* [haste](https://github.com/seejohnrun/haste-server): John Crepezzi - MIT 许可证
* [jQuery](https://github.com/jquery/jquery): MIT 许可证
* [highlight.js](https://github.com/isagalaev/highlight.js): Ivan Sagalaev - [许可证](https://github.com/isagalaev/highlight.js/blob/master/LICENSE)
* [应用程序图标](https://www.iconfinder.com/icons/285631/notepad_icon): [Paomedia](https://www.iconfinder.com/paomedia) - [CC BY 3.0 许可证](http://creativecommons.org/licenses/by/3.0/)

## 许可证
Copyright (c) 2014-2016 Marvin Menzerath

特此授予任何获得本软件及相关文档文件（“软件”）副本的人，无需支付费用，且不受限制地处理本软件，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或出售软件副本的权利，并允许被提供软件的人按上述条件这样做，需满足以下条件：

上述版权声明和本许可声明必须包含在所有副本或实质性部分中。

本软件按“原样”提供，不提供任何明示或暗示的保证，包括但不限于适销性、特定用途适用性和非侵权的保证。在任何情况下，作者或版权持有人均不对任何索赔、损害或其他责任负责，无论是在合同、侵权或其他行为中，由软件或其使用或其他交易引起或与之相关。

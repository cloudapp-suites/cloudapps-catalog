<div align="center">

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=longclaw)

🚀 🚀 **EDAS 提供应用一键部署，快来体验吧！**

</div>

# Longclaw


## 项目状态

我们正在将本包升级至最新版本的 Django 和 Wagtail。在此过程中，可能需要调整包的整体结构，并引入破坏性变更（breaking changes）。若您计划在项目中使用 Longclaw，请暂且使用最新稳定版（1.0.2），直至本次升级完成。

### 当前支持的版本

目前，我们针对以下 Python、Django 和 Wagtail 版本运行测试：

- Django >= 2.2 且 < 3.1  
- Wagtail >= 2.11 且 < 2.14  
- Python >= 3.7 且 < 3.10  

### 开发者

如果您有意参与本项目开发，请参考下方的 [开发环境搭建](#development-setup) 说明开始工作。

## 功能特性

- 与 Wagtail 深度集成：您可在 Wagtail 后台中创建商品、管理订单、配置物流及查看统计信息。  
- 支持多种支付后端：Longclaw 当前支持 Stripe、Braintree 及 PayPal（v.zero）支付。  
- 提供完善的 REST API 及 JavaScript 客户端，可通过模板标签便捷加载。  
- 商品目录以 Wagtail 页面形式构建，您可完全自定义商品字段。  
- 快速部署：仅需运行 `longclaw start my_project` 即可快速启动。  
- 易于使用，也易于定制：前端开发方式与普通 Wagtail 网站一致；无需复杂覆盖、分叉等操作即可灵活调整行为。


## 开发环境搭建

### 正在进行中

以下说明适用于在升级工作进行期间搭建 Longclaw 开发环境。若您计划在实际项目中使用 Longclaw，请暂且使用最新稳定版（1.0.2），直至本次升级完成。

#### 创建虚拟环境并安装依赖

```bash
python3 -m venv venv
source venv/bin/activate
pip install -e ".[testing]"
```

#### 安装并构建前端

前端基于 Node.js 与 Webpack 构建，所需 Node.js 版本为 v12（LTS）。我们推荐使用 [nvm](https://github.com/nvm-sh/nvm) 管理 Node.js 版本。

```bash
cd longclaw/client
```

可选：若使用 nvm，可运行 `nvm use` 切换至正确的 Node.js 版本。

安装依赖并构建前端：

```bash
npm install --no-save
npm run build
```

#### 运行测试

```bash
make test
```

#### 使用 TOX 运行全部测试

```bash
make test-all
```
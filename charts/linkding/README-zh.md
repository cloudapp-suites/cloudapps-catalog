<div align="center">

🚀 **EDAS 提供应用一键部署，快来体验吧！**

[![立即部署](https://edas-hz.oss-cn-hangzhou.aliyuncs.com/edas-apps/charts-store/EDASpoc.png)](https://edasnext.console.aliyun.com/#/home?tab=marketplace&marketDetail=9b05d6bd-c8e3-4201-b7ac-37dc5b21e8b7)

</div>

# Linkding

Linkding 是一个用于存储和同步网络浏览器书签的应用程序。

## 介绍

该图表使用 [Helm](https://helm.sh) 包管理器在 [Kubernetes](http://kubernetes.io) 集群上部署 [Linkding](https://github.com/sissbruecker/linkding)。

## 先决条件

- Kubernetes 1.22+
- Helm 3+

## 安装图表

要安装名为 `my-release` 的图表，请运行：

```bash
helm install my-release .
```

该命令使用默认配置在 Kubernetes 集群上部署 Linkding。[参数](#parameters) 部分列出了安装期间可以配置的参数。

> **提示**: 使用 `helm list` 列出所有已发布的版本

## 卸载图表

要卸载/删除 `my-release` 部署，请运行：

```bash
helm delete my-release
```

该命令将删除与图表关联的所有 Kubernetes 组件并删除该发布。

## 参数

下表列出了 Linkding 图表的可配置参数及其默认值。

| 键 | 类型 | 默认值 | 描述 |
|-----|------|---------|-------------|
| replicaCount | int | `1` | 副本数量 |
| image.repository | string | `"sissbruecker/linkding"` | 镜像仓库 |
| image.pullPolicy | string | `"IfNotPresent"` | 镜像拉取策略 |
| image.tag | string | `""` | 覆盖镜像标签，默认为图表 appVersion |
| imagePullSecrets | list | `[]` | 镜像拉取密钥 |
| nameOverride | string | `""` | 部分覆盖 common.names.name 的字符串 |
| fullnameOverride | string | `""` | 完全覆盖 common.names.fullname 的字符串 |
| serviceAccount.create | bool | `false` | 指定是否应创建服务帐户 |
| serviceAccount.annotations | object | `{}` | 添加到服务帐户的注释 |
| serviceAccount.name | string | `""` | 要使用的服务帐户的名称 |
| podAnnotations | object | `{}` | Pod 注释 |
| podSecurityContext | object | `{}` | Pod 安全上下文 |
| securityContext | object | `{}` | 容器安全上下文 |
| service.type | string | `"LoadBalancer"` | Kubernetes 服务类型 |
| service.port | int | `9090` | 服务端口 |
| service.annotations | object | `{}` | 服务注释 |
| ingress.enabled | bool | `false` | 启用入口记录生成 |
| ingress.className | string | `""` | 将使用的 IngressClass |
| ingress.annotations | object | `{"nginx.ingress.kubernetes.io/configuration-snippet":"location /metrics {\n  deny all;\n  return 403;\n}\n"}` | 入口注释 |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | 入口主机 |
| ingress.tls | list | `[]` | 入口 TLS 配置 |
| env | object | `{"LD_SUPERUSER_NAME":"admin","LD_SUPERUSER_PASSWORD":"","LD_DISABLE_BACKGROUND_TASKS":"False","LD_DISABLE_URL_VALIDATION":"False","LD_REQUEST_TIMEOUT":"60","LD_ENABLE_AUTH_PROXY":"False","LD_DB_ENGINE":"sqlite"}` | 环境变量 |
| resources | object | `{}` | 容器资源 |
| autoscaling.enabled | bool | `false` | 启用自动缩放 |
| autoscaling.minReplicas | int | `1` | 最小副本数 |
| autoscaling.maxReplicas | int | `100` | 最大副本数 |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | 目标 CPU 利用率百分比 |
| nodeSelector | object | `{}` | 用于 Pod 分配的节点标签 |
| tolerations | list | `[]` | 用于 Pod 分配的容忍度 |
| affinity | object | `{}` | 用于 Pod 分配的亲和性 |
| persistence.enabled | bool | `false` | 使用 PVC 启用持久化 |
| persistence.existingClaim | string | `""` | 使用现有 PVC 来持久化数据 |
| persistence.mountPath | string | `"/etc/linkding/data"` | 挂载卷的路径 |
| persistence.accessMode | string | `"ReadWriteOnce"` | PVC 访问模式 |
| persistence.size | string | `"1Gi"` | PVC 大小 |

使用 `--set key=value[,key=value]` 参数指定每个参数给 `helm install`。

或者，可以在安装图表时提供指定参数值的 YAML 文件。例如，

```bash
helm install my-release -f values.yaml .
```

> **提示**: 您可以使用默认的 [values.yaml](values.yaml)
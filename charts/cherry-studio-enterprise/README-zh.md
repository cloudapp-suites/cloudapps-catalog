# Cherry Studio Enterprise Helm Chart

这是 Cherry Studio Enterprise API 的官方 Helm Chart 仓库。

## 目录结构

```
├── cherry-studio-enterprise/
│   ├── Chart.yaml          # Chart 元数据
│   ├── values.yaml         # 默认配置值
│   ├── templates/          # Kubernetes 模板文件
│   └── scripts/            # 辅助脚本
└── README.md               # 仓库说明文档
```

## 功能特性

- **双服务部署**：同时部署 API 服务和管理后台（Admin）
- **API 服务**：基于 PostgreSQL 数据库的后端 API，支持企业级数据存储
- **管理后台**：基于 Web 的管理界面
- **数据库支持**：支持 PostgreSQL 数据库，提供高可用性和扩展性
- **独立配置**：每个服务都可以独立启用/禁用和配置
- **自动扩展**：支持 HPA（水平 Pod 自动扩展）
- **健康检查**：包含 liveness 和 readiness 探针
- **Ingress 支持**：为每个服务配置独立的 Ingress 规则

## 安装

### 前置条件

- Kubernetes 1.16+
- Helm 3.0+
- 集群中需要支持 PVC

## 快速开始

### 下载安装包

```bash
# 下载最新版本
wget https://github.com/CherryInternal/cherry-studio-enterprise-helm/archive/v0.1.2.zip
unzip v0.1.2.zip
cd cherry-studio-enterprise-helm-0.1.2
```

### 基本安装

```bash
# 安装 chart
helm install cherry-studio-enterprise ./helm

# 或者指定命名空间
helm install cherry-studio-enterprise ./helm --namespace cherry-studio --create-namespace
```

### 自定义安装

创建一个 `values-custom.yaml` 文件来覆盖默认配置：

```yaml
app:
  # API 服务配置
  api:
    ingress:
      enabled: true
      annotations:
        nginx.ingress.kubernetes.io/proxy-body-size: "20m"
      hosts:
        - host: api.your-domain.com
          paths:
            - path: /
              pathType: ImplementationSpecific

  # Admin 后台配置
  admin:
    ingress:
      enabled: true
      annotations:
        nginx.ingress.kubernetes.io/proxy-body-size: "20m"
      hosts:
        - host: admin.your-domain.com
          paths:
            - path: /
              pathType: ImplementationSpecific

  # 存储配置（可选）
  persistence:
    size: 20Gi

  # 环境配置（生产环境必须）
  env:
    API_URL: http://cherry-studio-enterprise-api.test # 更改成后端 API 地址
    JWT_SECRET: "your-secure-jwt-secret-at-least-32-characters-long"
    DB_HOST: database.host
    DB_PORT: 5432
    DB_USERNAME: username
    DB_PASSWORD: password
    DB_NAME: database
    DB_TYPE: postgres

  # 资源配置（可选）
  resources:
    limits:
      cpu: 1000m
      memory: 1Gi
    requests:
      cpu: 200m
      memory: 256Mi
```

然后使用自定义配置安装：

```bash
helm install cherry-studio-enterprise ./helm -f values-custom.yaml
```

## 配置说明

### 常见配置场景

| 场景           | 配置要点                        | 示例                                           |
| -------------- | ------------------------------- | ---------------------------------------------- |
| **开发/测试**  | 使用默认配置，port-forward 访问 | `helm install cherry-studio-enterprise ./helm` |
| **云平台部署** | 设置 LoadBalancer               | `service.type: LoadBalancer`                   |
| **本地集群**   | 设置 NodePort                   | `service.type: NodePort`                       |
| **生产环境**   | Ingress + 自定义 JWT 密钥       | 见上方完整配置示例                             |
| **大量数据**   | 增加存储大小                    | `persistence.size: 50Gi`                       |
| **高可用性**   | 配置资源限制和探针              | 默认已配置，可根据需要调整                     |

### 详细配置参数

#### 应用服务配置

| 参数                            | 描述                                      | 默认值                                      |
| ------------------------------- | ----------------------------------------- | ------------------------------------------- |
| `app.enabled`                   | 是否启用应用服务                          | `true`                                      |
| `app.replicaCount`              | 副本数量（推荐设置为 1 以保证数据一致性） | `1`                                         |
| `app.image.repository`          | 应用镜像仓库                              | `cherrystudio/cherry-studio-enterprise-api` |
| `app.image.tag`                 | 应用镜像标签                              | `latest`                                    |
| `app.api.service.type`          | API Service 类型                          | `ClusterIP`                                 |
| `app.api.service.port`          | API 服务端口                              | `3670`                                      |
| `app.api.service.targetPort`    | API 容器端口                              | `3670`                                      |
| `app.admin.service.type`        | Admin Service 类型                        | `ClusterIP`                                 |
| `app.admin.service.port`        | Admin 服务端口                            | `3680`                                      |
| `app.admin.service.targetPort`  | Admin 容器端口                            | `3680`                                      |
| `app.persistence.enabled`       | 是否启用持久化存储                        | `true`                                      |
| `app.persistence.size`          | 存储大小                                  | `10Gi`                                      |
| `app.persistence.accessMode`    | 存储访问模式                              | `ReadWriteOnce`                             |
| `app.persistence.mountPath`     | 数据挂载路径                              | `/app/data`                                 |
| `app.api.ingress.enabled`       | 是否启用 API Ingress                      | `true`                                      |
| `app.admin.ingress.enabled`     | 是否启用 Admin Ingress                    | `true`                                      |
| `app.resources.limits.cpu`      | CPU 限制                                  | `500m`                                      |
| `app.resources.limits.memory`   | 内存限制                                  | `512Mi`                                     |
| `app.resources.requests.cpu`    | CPU 请求                                  | `100m`                                      |
| `app.resources.requests.memory` | 内存请求                                  | `128Mi`                                     |
| `app.env.*`                     | 应用环境变量配置                          | 见下方环境变量说明                          |

#### 端口说明

本应用在单个容器中运行两个服务：

| 端口 | 服务类型   | 描述                                 |
| ---- | ---------- | ------------------------------------ |
| 3670 | API 服务   | 提供 RESTful API 接口，用于数据交互  |
| 3680 | Admin 后台 | 提供管理后台界面，用于系统管理和配置 |

### 环境变量

Chart 包含了所有必需的环境变量配置。以下是主要环境变量：

#### API 服务环境变量

| 环境变量             | 描述                  | 默认值                                                   |
| -------------------- | --------------------- | -------------------------------------------------------- |
| `API_URL`            | 管理后台 API 基础 URL | `http://cherry-studio-enterprise-api.test`               |
| `API_PORT`           | API 服务端口          | `3670`                                                   |
| `ADMIN_PORT`         | Admin 后台端口        | `3680`                                                   |
| `ADMIN_APP_NAME`     | 管理后台应用名称      | `Cherry Studio`                                          |
| `ADMIN_APP_LOGO_URL` | 管理后台 Logo URL     | `https://img.picui.cn/free/2025/07/07/686ab9a2b7825.png` |
| `JWT_SECRET`         | JWT 密钥              | `W10sInBlcm1pc3Npb25zIjpbXSwiaWF0Ij`                     |

#### 数据库环境变量

| 环境变量      | 描述           | 默认值                          |
| ------------- | -------------- | ------------------------------- |
| `DB_HOST`     | 数据库主机地址 | `1panel.cherry-ai.com`          |
| `DB_PORT`     | 数据库端口     | `5432`                          |
| `DB_USERNAME` | 数据库用户名   | `cherry-studio-enterprise-test` |
| `DB_PASSWORD` | 数据库密码     | `ar4E5YSfb7f3jSEW`              |
| `DB_NAME`     | 数据库名称     | `cherry-studio-enterprise-test` |
| `DB_TYPE`     | 数据库类型     | `postgres`                      |
| `DB_SSL`      | 是否启用 SSL   | `false`                         |

**⚠️ 重要提醒**：

- 生产环境中必须更换默认的 JWT_SECRET！
- 生产环境中必须配置您自己的 PostgreSQL 数据库连接信息！
- 数据库密码等敏感信息应使用 Kubernetes Secret 管理！

你可以通过 `app.env` 部分来覆盖这些配置，例如：

```yaml
app:
  env:
    JWT_SECRET: "your-custom-jwt-secret"
    ADMIN_APP_NAME: "您的应用名称"
    DB_HOST: "your-postgres-host"
    DB_USERNAME: "your-username"
    DB_PASSWORD: "your-password"
    DB_NAME: "your-database"
```

**注意**：在生产环境中，建议使用 Kubernetes Secret 来管理敏感信息。

## 部署验证

安装完成后，可以通过以下命令验证部署：

```bash
# 检查 pod 状态
kubectl get pods -l app.kubernetes.io/name=cherry-studio-enterprise

# 检查服务状态
kubectl get svc -l app.kubernetes.io/name=cherry-studio-enterprise

# 检查持久化卷
kubectl get pvc

# 运行连接测试
helm test cherry-studio-enterprise
```

### 部署检查清单

- [ ] **Pod 状态**: 所有 Pod 都是 Running 状态
- [ ] **Service 状态**: Service 正常创建并有对应的 Endpoints
- [ ] **PVC 状态**: PVC 已绑定到可用的 PV
- [ ] **Ingress 状态**: 如果启用了 Ingress，检查是否正常创建
- [ ] **健康检查**: API 服务响应健康检查请求
- [ ] **数据持久化**: 重启 Pod 后数据仍然存在
- [ ] **JWT 配置**: 生产环境中已更换默认的 JWT_SECRET

## 访问应用

### 使用 Port-Forward（推荐用于测试）

**API 服务：**

```bash
kubectl port-forward svc/cherry-studio-enterprise-api 3670:3670
```

然后访问 `http://localhost:3670`

**Admin 后台：**

```bash
kubectl port-forward svc/cherry-studio-enterprise-admin 3680:3680
```

然后访问 `http://localhost:3680`

### 使用 LoadBalancer

如果配置了 LoadBalancer 类型的 Service：

**API 服务：**

```bash
kubectl get svc cherry-studio-enterprise-api
```

获取 EXTERNAL-IP 后访问 `http://EXTERNAL-IP:3670`

**Admin 后台：**

```bash
kubectl get svc cherry-studio-enterprise-admin
```

获取 EXTERNAL-IP 后访问 `http://EXTERNAL-IP:3680`

### 使用 Ingress

如果启用了 Ingress，可以通过配置的域名访问：

- API 服务：通过配置的 `app.api.ingress.hosts` 域名访问
- Admin 后台：通过配置的 `app.admin.ingress.hosts` 域名访问

## 数据备份

### PostgreSQL 数据库备份

本系统使用 PostgreSQL 数据库，可以通过以下方式进行数据备份：

**方法一：使用 pg_dump（推荐）**

```bash
# 连接到 PostgreSQL 并备份数据库
kubectl exec -it deployment/cherry-studio-enterprise -- pg_dump -h $DB_HOST -U $DB_USERNAME $DB_NAME > backup.sql
```

**方法二：通过应用数据目录备份**

如果需要备份应用的其他数据文件，数据存储在 PVC 中。备份数据的方法：

```bash
# 创建备份 pod
kubectl run backup-pod --image=busybox --restart=Never \
  --overrides='{"spec":{"containers":[{"name":"backup","image":"busybox","command":["sleep","3600"],"volumeMounts":[{"name":"data","mountPath":"/backup"}]}],"volumes":[{"name":"data","persistentVolumeClaim":{"claimName":"cherry-studio-enterprise-data"}}]}}'

# 等待 pod 启动
kubectl wait --for=condition=ready pod/backup-pod --timeout=60s

# 在备份 pod 中打包数据
kubectl exec backup-pod -- tar -czf /tmp/backup.tar.gz -C /backup .

# 复制备份文件到本地
kubectl cp backup-pod:/tmp/backup.tar.gz ./backup.tar.gz

# 删除备份 pod
kubectl delete pod backup-pod
```

### 备份脚本（推荐）

为了简化备份过程，可以使用以下脚本：`helm/scripts/backup-database.sh`

### 备份故障排除

如果遇到 "timed out waiting for the condition" 错误：

1. **检查 PVC 名称是否正确**：

   ```bash
   kubectl get pvc
   ```

2. **检查 pod 状态**：

   ```bash
   kubectl get pod backup-pod
   kubectl describe pod backup-pod
   ```

3. **手动清理失败的 pod**：

   ```bash
   kubectl delete pod backup-pod --force --grace-period=0
   ```

4. **使用分步备份**：

   ```bash
   # 创建 pod（不使用 --rm 参数）
   kubectl run backup-pod --image=busybox --restart=Never \
     --overrides='{"spec":{"containers":[{"name":"backup","image":"busybox","command":["sleep","300"],"volumeMounts":[{"name":"data","mountPath":"/backup"}]}],"volumes":[{"name":"data","persistentVolumeClaim":{"claimName":"cherry-studio-enterprise-data"}}]}}'

   # 等待 pod 就绪
   kubectl wait --for=condition=ready pod/backup-pod --timeout=60s

   # 执行备份
   kubectl exec backup-pod -- tar -czf /tmp/backup.tar.gz -C /backup .

   # 复制文件
   kubectl cp backup-pod:/tmp/backup.tar.gz ./backup.tar.gz

   # 删除 pod
   kubectl delete pod backup-pod
   ```

## 升级

```bash
# 升级到新版本
helm upgrade cherry-studio-enterprise ./helm

# 升级并更新配置
helm upgrade cherry-studio-enterprise ./helm -f values-custom.yaml
```

## 卸载

```bash
# 卸载 chart
helm uninstall cherry-studio-enterprise

# 手动删除 PVC（如果需要）
kubectl delete pvc cherry-studio-enterprise-data
```

## 故障排除

### 常见问题

1. **Pod 一直处于 Pending 状态**

   - 检查节点资源是否充足
   - 确认 PVC 能够正常创建和绑定

2. **服务无法访问**

   - 检查 Service 和 Endpoints 是否正确
   - 确认防火墙规则

3. **数据丢失**
   - 确认 PVC 配置正确
   - 检查存储类是否支持持久化

### 日志查看

```bash
# 查看 pod 日志
kubectl logs -l app.kubernetes.io/name=cherry-studio-enterprise

# 查看 pod 详细信息
kubectl describe pod -l app.kubernetes.io/name=cherry-studio-enterprise
```

## 注意事项

1. **实例建议**：虽然使用 PostgreSQL 数据库，但为了保证数据一致性和应用状态管理，建议运行单个 pod。如需高可用，请配置 PostgreSQL 数据库的主从复制。

2. **数据持久化**：确保集群支持持久化存储，否则数据会在 pod 重启时丢失。

3. **JWT 密钥安全**：

   - 生产环境中必须更换默认的 JWT_SECRET
   - 建议使用 Kubernetes Secret 管理敏感信息
   - JWT 密钥应该是强随机字符串（建议至少 32 字符）

4. **备份策略**：定期备份 PVC 中的数据，以防数据丢失。

5. **网络安全**：
   - 生产环境建议使用 Ingress + TLS
   - 限制网络访问权限
   - 定期更新镜像版本

### 生产环境 JWT 配置示例

```yaml
# 使用 Secret 管理 JWT 密钥
apiVersion: v1
kind: Secret
metadata:
  name: cherry-studio-jwt-secret
type: Opaque
data:
  jwt-secret: <base64-encoded-strong-random-string>
---
# 在 values.yaml 中引用
app:
  env:
    JWT_SECRET:
      valueFrom:
        secretKeyRef:
          name: cherry-studio-jwt-secret
          key: jwt-secret
```

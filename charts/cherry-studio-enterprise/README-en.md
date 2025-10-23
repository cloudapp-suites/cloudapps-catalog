# Cherry Studio Enterprise Helm Chart

This is the official Helm Chart repository for Cherry Studio Enterprise API.

## Directory Structure

```
├── cherry-studio-enterprise/
│   ├── Chart.yaml          # Chart metadata
│   ├── values.yaml         # Default configuration values
│   ├── templates/          # Kubernetes template files
│   └── scripts/            # Helper scripts
└── README.md               # Repository documentation
```

## Features

- **Dual Service Deployment**: Deploy both API service and admin dashboard (Admin) simultaneously
- **API Service**: Backend API based on PostgreSQL database, supporting enterprise-level data storage
- **Admin Dashboard**: Web-based management interface
- **Database Support**: Supports PostgreSQL database, providing high availability and scalability
- **Independent Configuration**: Each service can be independently enabled/disabled and configured
- **Auto-scaling**: Supports HPA (Horizontal Pod Autoscaling)
- **Health Checks**: Includes liveness and readiness probes
- **Ingress Support**: Configures independent Ingress rules for each service

## Installation

### Prerequisites

- Kubernetes 1.16+
- Helm 3.0+
- PVC support required in the cluster

## Quick Start

### Download Installation Package

```bash
# Download the latest version
wget https://github.com/CherryInternal/cherry-studio-enterprise-helm/archive/v0.1.2.zip
unzip v0.1.2.zip
cd cherry-studio-enterprise-helm-0.1.2
```

### Basic Installation

```bash
# Install chart
helm install cherry-studio-enterprise ./helm

# Or specify namespace
helm install cherry-studio-enterprise ./helm --namespace cherry-studio --create-namespace
```

### Custom Installation

Create a `values-custom.yaml` file to override default configurations:

```yaml
app:
  # API service configuration
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

  # Admin dashboard configuration
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

  # Storage configuration (optional)
  persistence:
    size: 20Gi

  # Environment configuration (required for production)
  env:
    API_URL: http://cherry-studio-enterprise-api.test # Change to your backend API address
    JWT_SECRET: "your-secure-jwt-secret-at-least-32-characters-long"
    DB_HOST: database.host
    DB_PORT: 5432
    DB_USERNAME: username
    DB_PASSWORD: password
    DB_NAME: database
    DB_TYPE: postgres

  # Resource configuration (optional)
  resources:
    limits:
      cpu: 1000m
      memory: 1Gi
    requests:
      cpu: 200m
      memory: 256Mi
```

Then install with custom configuration:

```bash
helm install cherry-studio-enterprise ./helm -f values-custom.yaml
```

## Configuration Guide

### Common Configuration Scenarios

| Scenario                      | Configuration Focus                                | Example                                        |
| ----------------------------- | -------------------------------------------------- | ---------------------------------------------- |
| **Development/Test**          | Use default configuration, access via port-forward | `helm install cherry-studio-enterprise ./helm` |
| **Cloud Platform Deployment** | Set up LoadBalancer                                | `service.type: LoadBalancer`                   |
| **Local Cluster**             | Set up NodePort                                    | `service.type: NodePort`                       |
| **Production Environment**    | Ingress + custom JWT secret                        | See full configuration example above           |
| **Large Data Volume**         | Increase storage size                              | `persistence.size: 50Gi`                       |
| **High Availability**         | Configure resource limits and probes               | Configured by default, adjust as needed        |

### Detailed Configuration Parameters

#### Application Service Configuration

| Parameter                       | Description                                                  | Default Value                               |
| ------------------------------- | ------------------------------------------------------------ | ------------------------------------------- |
| `app.enabled`                   | Whether to enable application service                        | `true`                                      |
| `app.replicaCount`              | Replica count (recommended to set to 1 for data consistency) | `1`                                         |
| `app.image.repository`          | Application image repository                                 | `cherrystudio/cherry-studio-enterprise-api` |
| `app.image.tag`                 | Application image tag                                        | `latest`                                    |
| `app.api.service.type`          | API Service type                                             | `ClusterIP`                                 |
| `app.api.service.port`          | API service port                                             | `3670`                                      |
| `app.api.service.targetPort`    | API container port                                           | `3670`                                      |
| `app.admin.service.type`        | Admin Service type                                           | `ClusterIP`                                 |
| `app.admin.service.port`        | Admin service port                                           | `3680`                                      |
| `app.admin.service.targetPort`  | Admin container port                                         | `3680`                                      |
| `app.persistence.enabled`       | Whether to enable persistent storage                         | `true`                                      |
| `app.persistence.size`          | Storage size                                                 | `10Gi`                                      |
| `app.persistence.accessMode`    | Storage access mode                                          | `ReadWriteOnce`                             |
| `app.persistence.mountPath`     | Data mount path                                              | `/app/data`                                 |
| `app.api.ingress.enabled`       | Whether to enable API Ingress                                | `true`                                      |
| `app.admin.ingress.enabled`     | Whether to enable Admin Ingress                              | `true`                                      |
| `app.resources.limits.cpu`      | CPU limit                                                    | `500m`                                      |
| `app.resources.limits.memory`   | Memory limit                                                 | `512Mi`                                     |
| `app.resources.requests.cpu`    | CPU request                                                  | `100m`                                      |
| `app.resources.requests.memory` | Memory request                                               | `128Mi`                                     |
| `app.env.*`                     | Application environment variable configuration               | See environment variable description below  |

#### Port Description

This application runs two services in a single container:

| Port | Service Type    | Description                                                               |
| ---- | --------------- | ------------------------------------------------------------------------- |
| 3670 | API Service     | Provides RESTful API interface for data interaction                       |
| 3680 | Admin Dashboard | Provides management interface for system administration and configuration |

### Environment Variables

The Chart includes all necessary environment variable configurations. Here are the main environment variables:

#### API Service Environment Variables

| Environment Variable | Description                      | Default Value                                            |
| -------------------- | -------------------------------- | -------------------------------------------------------- |
| `API_URL`            | Admin dashboard API base URL     | `http://cherry-studio-enterprise-api.test`               |
| `API_PORT`           | API service port                 | `3670`                                                   |
| `ADMIN_PORT`         | Admin dashboard port             | `3680`                                                   |
| `ADMIN_APP_NAME`     | Admin dashboard application name | `Cherry Studio`                                          |
| `ADMIN_APP_LOGO_URL` | Admin dashboard Logo URL         | `https://img.picui.cn/free/2025/07/07/686ab9a2b7825.png` |
| `JWT_SECRET`         | JWT secret                       | `W10sInBlcm1pc3Npb25zIjpbXSwiaWF0Ij`                     |

#### Database Environment Variables

| Environment Variable | Description           | Default Value                   |
| -------------------- | --------------------- | ------------------------------- |
| `DB_HOST`            | Database host address | `1panel.cherry-ai.com`          |
| `DB_PORT`            | Database port         | `5432`                          |
| `DB_USERNAME`        | Database username     | `cherry-studio-enterprise-test` |
| `DB_PASSWORD`        | Database password     | `ar4E5YSfb7f3jSEW`              |
| `DB_NAME`            | Database name         | `cherry-studio-enterprise-test` |
| `DB_TYPE`            | Database type         | `postgres`                      |
| `DB_SSL`             | Whether to enable SSL | `false`                         |

**⚠️ Important Reminders**:

- Default JWT_SECRET must be changed in production environments!
- Must configure your own PostgreSQL database connection information in production environments!
- Sensitive information like database passwords should be managed using Kubernetes Secrets!

You can override these configurations through the `app.env` section, for example:

```yaml
app:
  env:
    JWT_SECRET: "your-custom-jwt-secret"
    ADMIN_APP_NAME: "Your Application Name"
    DB_HOST: "your-postgres-host"
    DB_USERNAME: "your-username"
    DB_PASSWORD: "your-password"
    DB_NAME: "your-database"
```

**Note**: In production environments, it's recommended to use Kubernetes Secrets to manage sensitive information.

## Deployment Verification

After installation, you can verify the deployment with the following commands:

```bash
# Check pod status
kubectl get pods -l app.kubernetes.io/name=cherry-studio-enterprise

# Check service status
kubectl get svc -l app.kubernetes.io/name=cherry-studio-enterprise

# Check persistent volumes
kubectl get pvc

# Run connection tests
helm test cherry-studio-enterprise
```

### Deployment Checklist

- [ ] **Pod Status**: All Pods are in Running state
- [ ] **Service Status**: Services are created normally with corresponding Endpoints
- [ ] **PVC Status**: PVC is bound to available PV
- [ ] **Ingress Status**: If Ingress is enabled, check if it's created normally
- [ ] **Health Checks**: API service responds to health check requests
- [ ] **Data Persistence**: Data persists after pod restart
- [ ] **JWT Configuration**: Default JWT_SECRET has been replaced in production environment

## Accessing the Application

### Using Port-Forward (Recommended for Testing)

**API Service:**

```bash
kubectl port-forward svc/cherry-studio-enterprise-api 3670:3670
```

Then access `http://localhost:3670`

**Admin Dashboard:**

```bash
kubectl port-forward svc/cherry-studio-enterprise-admin 3680:3680
```

Then access `http://localhost:3680`

### Using LoadBalancer

If configured with LoadBalancer type Service:

**API Service:**

```bash
kubectl get svc cherry-studio-enterprise-api
```

After obtaining EXTERNAL-IP, access `http://EXTERNAL-IP:3670`

**Admin Dashboard:**

```bash
kubectl get svc cherry-studio-enterprise-admin
```

After obtaining EXTERNAL-IP, access `http://EXTERNAL-IP:3680`

### Using Ingress

If Ingress is enabled, you can access via configured domains:

- API Service: Access via configured `app.api.ingress.hosts` domain
- Admin Dashboard: Access via configured `app.admin.ingress.hosts` domain

## Data Backup

### PostgreSQL Database Backup

This system uses PostgreSQL database, data can be backed up in the following ways:

**Method 1: Using pg_dump (Recommended)**

```bash
# Connect to PostgreSQL and backup database
kubectl exec -it deployment/cherry-studio-enterprise -- pg_dump -h $DB_HOST -U $DB_USERNAME $DB_NAME > backup.sql
```

**Method 2: Backup via Application Data Directory**

If you need to backup other data files of the application, data is stored in PVC. Method to backup data:

```bash
# Create backup pod
kubectl run backup-pod --image=busybox --restart=Never \
  --overrides='{"spec":{"containers":[{"name":"backup","image":"busybox","command":["sleep","3600"],"volumeMounts":[{"name":"data","mountPath":"/backup"}]}],"volumes":[{"name":"data","persistentVolumeClaim":{"claimName":"cherry-studio-enterprise-data"}}]}}'

# Wait for pod to start
kubectl wait --for=condition=ready pod/backup-pod --timeout=60s

# Package data in backup pod
kubectl exec backup-pod -- tar -czf /tmp/backup.tar.gz -C /backup .

# Copy backup file to local
kubectl cp backup-pod:/tmp/backup.tar.gz ./backup.tar.gz

# Delete backup pod
kubectl delete pod backup-pod
```

### Backup Script (Recommended)

To simplify the backup process, you can use the following script: `helm/scripts/backup-database.sh`

### Backup Troubleshooting

If encountering "timed out waiting for the condition" error:

1. **Check if PVC name is correct**:

   ```bash
   kubectl get pvc
   ```

2. **Check pod status**:

   ```bash
   kubectl get pod backup-pod
   kubectl describe pod backup-pod
   ```

3. **Manually clean up failed pod**:

   ```bash
   kubectl delete pod backup-pod --force --grace-period=0
   ```

4. **Use step-by-step backup**:

   ```bash
   # Create pod (without --rm parameter)
   kubectl run backup-pod --image=busybox --restart=Never \
     --overrides='{"spec":{"containers":[{"name":"backup","image":"busybox","command":["sleep","300"],"volumeMounts":[{"name":"data","mountPath":"/backup"}]}],"volumes":[{"name":"data","persistentVolumeClaim":{"claimName":"cherry-studio-enterprise-data"}}]}}'

   # Wait for pod to be ready
   kubectl wait --for=condition=ready pod/backup-pod --timeout=60s

   # Execute backup
   kubectl exec backup-pod -- tar -czf /tmp/backup.tar.gz -C /backup .

   # Copy file
   kubectl cp backup-pod:/tmp/backup.tar.gz ./backup.tar.gz

   # Delete pod
   kubectl delete pod backup-pod
   ```

## Upgrade

```bash
# Upgrade to new version
helm upgrade cherry-studio-enterprise ./helm

# Upgrade and update configuration
helm upgrade cherry-studio-enterprise ./helm -f values-custom.yaml
```

## Uninstall

```bash
# Uninstall chart
helm uninstall cherry-studio-enterprise

# Manually delete PVC (if needed)
kubectl delete pvc cherry-studio-enterprise-data
```

## Troubleshooting

### Common Issues

1. **Pod stays in Pending state**

   - Check if node resources are sufficient
   - Confirm PVC can be created and bound normally

2. **Service cannot be accessed**

   - Check if Service and Endpoints are correct
   - Confirm firewall rules

3. **Data loss**
   - Confirm PVC configuration is correct
   - Check if storage class supports persistence

### Log Viewing

```bash
# View pod logs
kubectl logs -l app.kubernetes.io/name=cherry-studio-enterprise

# View pod detailed information
kubectl describe pod -l app.kubernetes.io/name=cherry-studio-enterprise
```

## Important Notes

1. **Instance Recommendation**: Although using PostgreSQL database, to ensure data consistency and application state management, it's recommended to run a single pod. For high availability, configure PostgreSQL database master-slave replication.

2. **Data Persistence**: Ensure the cluster supports persistent storage, otherwise data will be lost when pods restart.

3. **JWT Secret Security**:

   - Default JWT_SECRET must be replaced in production environments
   - Recommended to use Kubernetes Secrets to manage sensitive information
   - JWT secret should be a strong random string (recommended at least 32 characters)

4. **Backup Strategy**: Regularly backup data in PVC to prevent data loss.

5. **Network Security**:
   - Production environments recommend using Ingress + TLS
   - Restrict network access permissions
   - Regularly update image versions

### Production Environment JWT Configuration Example

```yaml
# Use Secret to manage JWT secret
apiVersion: v1
kind: Secret
metadata:
  name: cherry-studio-jwt-secret
type: Opaque
data:
  jwt-secret: <base64-encoded-strong-random-string>
---
# Reference in values.yaml
app:
  env:
    JWT_SECRET:
      valueFrom:
        secretKeyRef:
          name: cherry-studio-jwt-secret
          key: jwt-secret
```

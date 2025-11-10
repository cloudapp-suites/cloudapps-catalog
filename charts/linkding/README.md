# Linkding

Linkding is an application to store and synchronise web browsers bookmarks.

## Introduction

This chart deploys [Linkding](https://github.com/sissbruecker/linkding) on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.22+
- Helm 3+

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
helm install my-release .
```

The command deploys Linkding on the Kubernetes cluster in the default configuration. The [Parameters](#parameters) section lists the parameters that can be configured during installation.

> **Tip**: List all releases using `helm list`

## Uninstalling the Chart

To uninstall/delete the `my-release` deployment:

```bash
helm delete my-release
```

The command removes all the Kubernetes components associated with the chart and deletes the release.

## Parameters

The following table lists the configurable parameters of the Linkding chart and their default values.

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| replicaCount | int | `1` | Number of replicas |
| image.repository | string | `"sissbruecker/linkding"` | Image repository |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.tag | string | `""` | Overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | Image pull secrets |
| nameOverride | string | `""` | String to partially override common.names.name |
| fullnameOverride | string | `""` | String to fully override common.names.fullname |
| serviceAccount.create | bool | `false` | Specifies whether a service account should be created |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account |
| serviceAccount.name | string | `""` | The name of the service account to use |
| podAnnotations | object | `{}` | Pod annotations |
| podSecurityContext | object | `{}` | Pod security context |
| securityContext | object | `{}` | Container security context |
| service.type | string | `"LoadBalancer"` | Kubernetes service type |
| service.port | int | `9090` | Service port |
| service.annotations | object | `{}` | Service annotations |
| ingress.enabled | bool | `false` | Enable ingress record generation |
| ingress.className | string | `""` | IngressClass that will be used |
| ingress.annotations | object | `{"nginx.ingress.kubernetes.io/configuration-snippet":"location /metrics {\n  deny all;\n  return 403;\n}\n"}` | Ingress annotations |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | Ingress hosts |
| ingress.tls | list | `[]` | Ingress TLS configuration |
| env | object | `{"LD_SUPERUSER_NAME":"admin","LD_SUPERUSER_PASSWORD":"","LD_DISABLE_BACKGROUND_TASKS":"False","LD_DISABLE_URL_VALIDATION":"False","LD_REQUEST_TIMEOUT":"60","LD_ENABLE_AUTH_PROXY":"False","LD_DB_ENGINE":"sqlite"}` | Environment variables |
| resources | object | `{}` | Container resources |
| autoscaling.enabled | bool | `false` | Enable autoscaling |
| autoscaling.minReplicas | int | `1` | Minimum number of replicas |
| autoscaling.maxReplicas | int | `100` | Maximum number of replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization percentage |
| nodeSelector | object | `{}` | Node labels for pod assignment |
| tolerations | list | `[]` | Tolerations for pod assignment |
| affinity | object | `{}` | Affinity for pod assignment |
| persistence.enabled | bool | `false` | Enable persistence using PVC |
| persistence.existingClaim | string | `""` | Use an existing PVC to persist data |
| persistence.mountPath | string | `"/etc/linkding/data"` | Path to mount the volume at |
| persistence.accessMode | string | `"ReadWriteOnce"` | PVC access mode |
| persistence.size | string | `"1Gi"` | PVC size |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
helm install my-release -f values.yaml .
```

> **Tip**: You can use the default [values.yaml](values.yaml)
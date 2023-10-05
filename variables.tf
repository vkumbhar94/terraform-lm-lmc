variable "lm-container-configuration" {
  type = object({

    argus = object({

      fullnameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      daemons = optional(object({

        watcher = optional(object({

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
      }))
      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      accessID = optional(string)

      affinity = optional(any)

      annotations = optional(any)

      priorityClassName = optional(string)

      lm = optional(object({

        opsNotes = optional(object({

          secrets = optional(object({

            helmCharts = optional(object({

              enabled = optional(bool)

            }))
          }))
        }))
        lmlogs = optional(object({

          k8sevent = optional(any)

          k8spodlog = optional(any)

        }))
        resource = optional(object({

          globalDeleteAfterDuration = optional(string)

          alerting = optional(object({

            disable = optional(any)

          }))
        }))
        resourceGroup = optional(object({

          extraProps = optional(object({

            cluster = optional(any)

            nodes = optional(any)

            etcd = optional(any)

          }))
        }))
      }))
      collector = optional(object({

        version = optional(number)

        annotations = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        size = optional(string)

        useEA = optional(bool)

        labels = optional(any)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        env = optional(any)

        probe = optional(object({

          liveness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          readiness = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
          enabled = optional(bool)

          startup = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
        }))
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      enabled = optional(bool)

      account = optional(string)

      clusterTreeParentID = optional(number)

      clusterName = string

      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

      }))
      filters = optional(any)

      tolerations = optional(any)

      labels = optional(any)

      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

      nodeSelector = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      probe = optional(object({

        liveness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        readiness = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      enableLegacyResourceTree = optional(bool)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      resourceContainerID = optional(number)

    })
    collectorset-controller = optional(object({

      affinity = optional(any)

      tolerations = optional(any)

      enabled = optional(bool)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      nameOverride = optional(string)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      priorityClassName = optional(string)

      nodeSelector = optional(any)

      annotations = optional(any)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
    }))
    lm-logs = object({

      fullnameOverride = optional(string)

      lm_access_id = optional(string)

      clusterName = string

      labels = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_company_name = optional(string)

      annotations = optional(any)

      nameOverride = optional(string)

      enabled = optional(bool)

      lm_access_key = optional(string)

      env = optional(any)

      affinity = optional(any)

    })
    global = optional(object({

      accessID = optional(string)

      account = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessKey = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.2.0-rc01"
}
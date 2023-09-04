variable "lm-container-configuration" {
  type = object({

    argus = object({

      probe = optional(object({

        enabled = optional(bool)

        startup = optional(object({

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
        liveness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
        readiness = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

        }))
      }))
      enableLegacyResourceTree = optional(bool)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      affinity = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nameOverride = optional(string)

      fullnameOverride = optional(string)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      accessKey = optional(string)

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      resourceContainerID = optional(number)

      ignoreSSL = optional(bool)

      daemons = optional(object({

        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
        lmCacheSync = optional(object({

          interval = optional(string)

        }))
        worker = optional(object({

          poolSize = optional(number)

        }))
        watcher = optional(object({

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

        }))
      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      account = optional(string)

      clusterTreeParentID = optional(number)

      annotations = optional(any)

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
      filters = optional(any)

      tolerations = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      labels = optional(any)

      collector = optional(object({

        version = optional(number)

        useEA = optional(bool)

        annotations = optional(any)

        labels = optional(any)

        probe = optional(object({

          enabled = optional(bool)

          startup = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          liveness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          readiness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
        }))
        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        env = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        size = optional(string)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      imagePullSecrets = optional(any)

    })
    collectorset-controller = optional(object({

      accessKey = optional(string)

      affinity = optional(any)

      annotations = optional(any)

      accessID = optional(string)

      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      priorityClassName = optional(string)

      enabled = optional(bool)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      ignoreSSL = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      tolerations = optional(any)

      labels = optional(any)

    }))
    lm-logs = object({

      annotations = optional(any)

      enabled = optional(bool)

      lm_access_key = optional(string)

      affinity = optional(any)

      nameOverride = optional(string)

      clusterName = string

      env = optional(any)

      lm_access_id = optional(string)

      lm_company_name = optional(string)

      labels = optional(any)

      fullnameOverride = optional(string)

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
    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      accessID = optional(string)

      accessKey = optional(string)

      clusterName = string

      account = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.1.0-rt01"
}
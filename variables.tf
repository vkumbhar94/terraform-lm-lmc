variable "lm-container-configuration" {
  type = object({

    argus = object({

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

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      enableLegacyResourceTree = optional(bool)

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      imagePullSecrets = optional(any)

      labels = optional(any)

      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
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

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      accessKey = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      collector = optional(object({

        size = optional(string)

        image = optional(object({

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

        }))
        labels = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        env = optional(any)

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
        version = optional(number)

        disableLightweightCollector = optional(bool)

        replicas = optional(number)

        useEA = optional(bool)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      monitoring = optional(object({

        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
      }))
      enabled = optional(bool)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      resourceContainerID = optional(number)

      accessID = optional(string)

      clusterTreeParentID = optional(number)

      priorityClassName = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
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

          failureThreshold = optional(number)

          periodSeconds = optional(number)

        }))
      }))
      account = optional(string)

      annotations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
    })
    collectorset-controller = optional(object({

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      priorityClassName = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      accessID = optional(string)

      accessKey = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      account = optional(string)

      fullnameOverride = optional(string)

      proxy = optional(object({

        pass = optional(string)

        url = optional(string)

        user = optional(string)

      }))
      affinity = optional(any)

      tolerations = optional(any)

    }))
    lm-logs = object({

      enabled = optional(bool)

      lm_company_name = optional(string)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      lm_access_id = optional(string)

      clusterName = string

      labels = optional(any)

      nameOverride = optional(string)

      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      annotations = optional(any)

      fullnameOverride = optional(string)

      nodeSelector = optional(any)

      lm_access_key = optional(string)

      lm_bearer_token = optional(string)

      env = optional(any)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessKey = optional(string)

      account = optional(string)

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.2.2-rt01"
}
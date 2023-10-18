variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      image = optional(object({

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      enabled = optional(bool)

      nameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      labels = optional(any)

      accessID = optional(string)

      account = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
    }))
    lm-logs = object({

      annotations = optional(any)

      env = optional(any)

      lm_company_name = optional(string)

      labels = optional(any)

      nameOverride = optional(string)

      nodeSelector = optional(any)

      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_access_id = optional(string)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      lm_access_key = optional(string)

      fullnameOverride = optional(string)

    })
    argus = object({

      clusterTreeParentID = optional(number)

      log = optional(object({

        level = optional(string)

      }))
      ignoreSSL = optional(bool)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nameOverride = optional(string)

      accessID = optional(string)

      enableLegacyResourceTree = optional(bool)

      labels = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      collector = optional(object({

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        annotations = optional(any)

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

        env = optional(any)

        useEA = optional(bool)

        image = optional(object({

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

        }))
        proxy = optional(object({

          user = optional(string)

          pass = optional(string)

          url = optional(string)

        }))
        labels = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

        size = optional(string)

      }))
      tolerations = optional(any)

      fullnameOverride = optional(string)

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
      rbac = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      nodeSelector = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      imagePullSecrets = optional(any)

      accessKey = optional(string)

      priorityClassName = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      filters = optional(any)

      clusterName = string

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
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

          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
        }))
      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      affinity = optional(any)

      annotations = optional(any)

      resourceContainerID = optional(number)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      enabled = optional(bool)

    })
    global = optional(object({

      userDefinedSecret = optional(string)

      image = object({

        repository = optional(string)

      })
      clusterName = string

      collectorsetServiceNameSuffix = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.0.0-rc01"
}
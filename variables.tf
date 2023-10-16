variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      priorityClassName = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      accessKey = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      affinity = optional(any)

      enabled = optional(bool)

      nodeSelector = optional(any)

      labels = optional(any)

      annotations = optional(any)

      tolerations = optional(any)

      account = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      accessID = optional(string)

      nameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      ignoreSSL = optional(bool)

    }))
    lm-logs = object({

      clusterName = string

      labels = optional(any)

      nameOverride = optional(string)

      lm_company_name = optional(string)

      lm_access_key = optional(string)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      fullnameOverride = optional(string)

      env = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      annotations = optional(any)

      lm_access_id = optional(string)

    })
    argus = object({

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      tolerations = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      nameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

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
      imagePullSecrets = optional(any)

      account = optional(string)

      clusterName = string

      affinity = optional(any)

      priorityClassName = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      resourceContainerID = optional(number)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      probe = optional(object({

        enabled = optional(bool)

        startup = optional(object({

          periodSeconds = optional(number)

          failureThreshold = optional(number)

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
      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      annotations = optional(any)

      collector = optional(object({

        labels = optional(any)

        replicas = optional(number)

        useEA = optional(bool)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        annotations = optional(any)

        allowMultipleCollectorsOnNode = optional(bool)

        version = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        disableLightweightCollector = optional(bool)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
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
      }))
      enableLegacyResourceTree = optional(bool)

      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      ignoreSSL = optional(bool)

      accessID = optional(string)

      accessKey = optional(string)

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
      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      fullnameOverride = optional(string)

    })
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      collectorsetServiceNameSuffix = optional(string)

      userDefinedSecret = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.3.0-rc01"
}
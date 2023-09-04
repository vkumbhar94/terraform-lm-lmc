variable "lm-container-configuration" {
  type = object({

    argus = object({

      rbac = optional(object({

        create = optional(bool)

      }))
      accessID = optional(string)

      account = optional(string)

      clusterName = string

      nodeSelector = optional(any)

      resourceContainerID = optional(number)

      nameOverride = optional(string)

      imagePullSecrets = optional(any)

      enableLegacyResourceTree = optional(bool)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      annotations = optional(any)

      ignoreSSL = optional(bool)

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
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      filters = optional(any)

      collector = optional(object({

        replicas = optional(number)

        size = optional(string)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        probe = optional(object({

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
          enabled = optional(bool)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        version = optional(number)

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        labels = optional(any)

        env = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        useEA = optional(bool)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        disableLightweightCollector = optional(bool)

      }))
      fullnameOverride = optional(string)

      accessKey = optional(string)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      labels = optional(any)

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

            etcd = optional(any)

            cluster = optional(any)

            nodes = optional(any)

          }))
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
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      log = optional(object({

        level = optional(string)

      }))
    })
    collectorset-controller = optional(object({

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nameOverride = optional(string)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      nodeSelector = optional(any)

      affinity = optional(any)

      tolerations = optional(any)

      accessKey = optional(string)

      fullnameOverride = optional(string)

      priorityClassName = optional(string)

      ignoreSSL = optional(bool)

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      annotations = optional(any)

      enabled = optional(bool)

      account = optional(string)

    }))
    lm-logs = object({

      enabled = optional(bool)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      labels = optional(any)

      env = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      clusterName = string

      annotations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      lm_access_id = optional(string)

      lm_access_key = optional(string)

      lm_company_name = optional(string)

      affinity = optional(any)

    })
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      userDefinedSecret = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.1.1-rc01"
}
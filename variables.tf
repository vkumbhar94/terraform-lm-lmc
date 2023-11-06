variable "lm-container-configuration" {
  type = object({

    argus = object({

      accessKey = optional(string)

      clusterName = string

      clusterTreeParentID = optional(number)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      accessID = optional(string)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

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
      affinity = optional(any)

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
      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      enableLegacyResourceTree = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      enabled = optional(bool)

      nodeSelector = optional(any)

      resourceContainerID = optional(number)

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
      collector = optional(object({

        labels = optional(any)

        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        replicas = optional(number)

        version = optional(number)

        size = optional(string)

        annotations = optional(any)

        useEA = optional(bool)

        image = optional(object({

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
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
      rbac = optional(object({

        create = optional(bool)

      }))
      account = optional(string)

      annotations = optional(any)

      filters = optional(any)

      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      fullnameOverride = optional(string)

      imagePullSecrets = optional(any)

      priorityClassName = optional(string)

    })
    collectorset-controller = optional(object({

      accessKey = optional(string)

      annotations = optional(any)

      enabled = optional(bool)

      accessID = optional(string)

      tolerations = optional(any)

      resources = optional(object({

        requests = optional(any)

        limits = optional(any)

      }))
      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      fullnameOverride = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

      }))
      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      affinity = optional(any)

      labels = optional(any)

      account = optional(string)

      nameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

    }))
    lm-logs = object({

      affinity = optional(any)

      labels = optional(any)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      env = optional(any)

      clusterName = string

      annotations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      image = object({

        tag = optional(string)

        repository = optional(string)

        pullPolicy = optional(string)

      })
      lm_company_name = optional(string)

      nodeSelector = optional(any)

      lm_access_id = optional(string)

      lm_access_key = optional(string)

    })
    global = optional(object({

      accessKey = optional(string)

      account = optional(string)

      userDefinedSecret = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessID = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "6.0.0-rc06"
}
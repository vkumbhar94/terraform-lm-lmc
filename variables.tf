variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      accessID = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      enabled = optional(bool)

      accessKey = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      image = optional(object({

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      account = optional(string)

      nodeSelector = optional(any)

      tolerations = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      priorityClassName = optional(string)

      labels = optional(any)

    }))
    lm-logs = object({

      env = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      lm_access_id = optional(string)

      clusterName = string

      nodeSelector = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_access_key = optional(string)

      nameOverride = optional(string)

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      lm_company_name = optional(string)

      labels = optional(any)

      annotations = optional(any)

    })
    argus = object({

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

      enabled = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      resourceContainerID = optional(number)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

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

          runner = optional(object({

            poolSize = optional(number)

            backPressureQueueSizePerRunner = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

          bulkSyncInterval = optional(string)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      imagePullSecrets = optional(any)

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
      clusterTreeParentID = optional(number)

      collector = optional(object({

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        disableLightweightCollector = optional(bool)

        size = optional(string)

        env = optional(any)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        useEA = optional(bool)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        annotations = optional(any)

        labels = optional(any)

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
        allowMultipleCollectorsOnNode = optional(bool)

        replicas = optional(number)

        version = optional(number)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

        }))
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
      }))
      lm = optional(object({

        resourceGroup = optional(object({

          extraProps = optional(object({

            etcd = optional(any)

            cluster = optional(any)

            nodes = optional(any)

          }))
        }))
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
      }))
      accessID = optional(string)

      clusterName = string

      annotations = optional(any)

      filters = optional(any)

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      affinity = optional(any)

      account = optional(string)

      ignoreSSL = optional(bool)

      tolerations = optional(any)

      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

      }))
      accessKey = optional(string)

      nodeSelector = optional(any)

      nameOverride = optional(string)

      enableLegacyResourceTree = optional(bool)

      priorityClassName = optional(string)

    })
    global = optional(object({

      image = object({

        repository = optional(string)

      })
      accessID = optional(string)

      account = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      clusterName = string

      accessKey = optional(string)

      userDefinedSecret = optional(string)

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.1.0-rc02"
}
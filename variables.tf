variable "lm-container-configuration" {
  type = object({

    argus = object({

      clusterName = string

      clusterTreeParentID = optional(number)

      enableLegacyResourceTree = optional(bool)

      affinity = optional(any)

      priorityClassName = optional(string)

      rbac = optional(object({

        create = optional(bool)

      }))
      accessKey = optional(string)

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

          bulkSyncInterval = optional(string)

          runner = optional(object({

            backPressureQueueSizePerRunner = optional(number)

            poolSize = optional(number)

          }))
          sysIpsWaitTimeout = optional(string)

        }))
      }))
      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      collector = optional(object({

        proxy = optional(object({

          pass = optional(string)

          url = optional(string)

          user = optional(string)

        }))
        labels = optional(any)

        version = optional(number)

        image = optional(object({

          registry = optional(string)

          repository = optional(string)

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

        }))
        annotations = optional(any)

        env = optional(any)

        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        useEA = optional(bool)

        lm = optional(object({

          escalationChainID = optional(number)

          groupID = optional(number)

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
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        size = optional(string)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        replicas = optional(number)

      }))
      account = optional(string)

      tolerations = optional(any)

      log = optional(object({

        level = optional(string)

      }))
      enabled = optional(bool)

      accessID = optional(string)

      resourceContainerID = optional(number)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
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
      nodeSelector = optional(any)

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
      labels = optional(any)

      annotations = optional(any)

      monitoring = optional(object({

        disable = optional(any)

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
      }))
      nameOverride = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      filters = optional(any)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

    })
    collectorset-controller = optional(object({

      annotations = optional(any)

      ignoreSSL = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      affinity = optional(any)

      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      priorityClassName = optional(string)

      tolerations = optional(any)

      accessID = optional(string)

      fullnameOverride = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      accessKey = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      enabled = optional(bool)

      account = optional(string)

      nameOverride = optional(string)

    }))
    lm-logs = object({

      fullnameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      clusterName = string

      annotations = optional(any)

      nameOverride = optional(string)

      lm_company_name = optional(string)

      nodeSelector = optional(any)

      enabled = optional(bool)

      labels = optional(any)

      env = optional(any)

      affinity = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_access_id = optional(string)

      lm_access_key = optional(string)

    })
    global = optional(object({

      account = optional(string)

      userDefinedSecret = optional(string)

      clusterName = string

      accessID = optional(string)

      accessKey = optional(string)

      collectorsetServiceNameSuffix = optional(string)

      image = object({

        repository = optional(string)

      })
    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "5.2.0-rt01"
}
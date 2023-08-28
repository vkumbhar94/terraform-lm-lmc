variable "lm-container-configuration" {
  type = object({

    lm-logs = object({

      nodeSelector = optional(any)

      lm_access_id = optional(string)

      lm_company_name = optional(string)

      fullnameOverride = optional(string)

      enabled = optional(bool)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      annotations = optional(any)

      nameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      env = optional(any)

      affinity = optional(any)

      lm_access_key = optional(string)

      clusterName = string

      labels = optional(any)

    })
    argus = object({

      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      enableLegacyResourceTree = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      tolerations = optional(any)

      selfMonitor = optional(object({

        port = optional(number)

        enable = optional(bool)

      }))
      nameOverride = optional(string)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      filters = optional(any)

      accessID = optional(string)

      account = optional(string)

      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      resourceContainerID = optional(number)

      clusterName = string

      nodeSelector = optional(any)

      collector = optional(object({

        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        annotations = optional(any)

        version = optional(number)

        size = optional(string)

        useEA = optional(bool)

        disableLightweightCollector = optional(bool)

        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        allowMultipleCollectorsOnNode = optional(bool)

        labels = optional(any)

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
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        collectorConf = optional(object({

          agentConf = optional(any)

        }))
      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      imagePullSecrets = optional(any)

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
      priorityClassName = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      monitoring = optional(object({

        annotations = optional(object({

          ignore = optional(any)

        }))
        labels = optional(object({

          ignore = optional(any)

        }))
        disable = optional(any)

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
      fullnameOverride = optional(string)

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
      affinity = optional(any)

      annotations = optional(any)

      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
    })
    collectorset-controller = optional(object({

      rbac = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

        registry = optional(string)

        repository = optional(string)

      }))
      affinity = optional(any)

      accessID = optional(string)

      fullnameOverride = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      nodeSelector = optional(any)

      priorityClassName = optional(string)

      tolerations = optional(any)

      enabled = optional(bool)

      log = optional(object({

        level = optional(string)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      labels = optional(any)

      annotations = optional(any)

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      nameOverride = optional(string)

      account = optional(string)

    }))
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
  default = "5.1.0-rc01"
}
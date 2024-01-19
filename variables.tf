variable "lm-container-configuration" {
  type = object({

    collectorset-controller = optional(object({

      nodeSelector = optional(any)

      priorityClassName = optional(string)

      serviceAccount = optional(object({

        create = optional(bool)

      }))
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
      proxy = optional(object({

        user = optional(string)

        pass = optional(string)

        url = optional(string)

      }))
      annotations = optional(any)

      accessID = optional(string)

      fullnameOverride = optional(string)

      affinity = optional(any)

      ignoreSSL = optional(bool)

      accessKey = optional(string)

      account = optional(string)

      log = optional(object({

        level = optional(string)

      }))
      nameOverride = optional(string)

      tolerations = optional(any)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      labels = optional(any)

      enabled = optional(bool)

    }))
    lm-logs = object({

      lm_bearer_token = optional(string)

      labels = optional(any)

      annotations = optional(any)

      affinity = optional(any)

      enabled = optional(bool)

      lm_access_key = optional(string)

      nameOverride = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      nodeSelector = optional(any)

      env = optional(any)

      image = object({

        repository = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      })
      lm_access_id = optional(string)

      lm_company_name = optional(string)

      clusterName = string

      fullnameOverride = optional(string)

    })
    argus = object({

      priorityClassName = optional(string)

      proxy = optional(object({

        url = optional(string)

        user = optional(string)

        pass = optional(string)

      }))
      rbac = optional(object({

        create = optional(bool)

      }))
      serviceAccount = optional(object({

        create = optional(bool)

      }))
      image = optional(object({

        registry = optional(string)

        repository = optional(string)

        name = optional(string)

        pullPolicy = optional(string)

        tag = optional(string)

      }))
      log = optional(object({

        level = optional(string)

      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)

        }))
      }))
      nameOverride = optional(string)

      imagePullSecrets = optional(any)

      enableLegacyResourceTree = optional(bool)

      affinity = optional(any)

      collectorsetcontroller = optional(object({

        address = optional(string)

        port = optional(number)

      }))
      ignoreSSL = optional(bool)

      collector = optional(object({

        size = optional(string)

        collectorConf = optional(object({

          agentConf = optional(any)

        }))
        replicas = optional(number)

        lm = optional(object({

          groupID = optional(number)

          escalationChainID = optional(number)

        }))
        proxy = optional(object({

          url = optional(string)

          user = optional(string)

          pass = optional(string)

        }))
        labels = optional(any)

        version = optional(number)

        useEA = optional(bool)

        image = optional(object({

          name = optional(string)

          tag = optional(string)

          pullPolicy = optional(string)

          registry = optional(string)

          repository = optional(string)

        }))
        annotations = optional(any)

        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)

          }))
        }))
        disableLightweightCollector = optional(bool)

        allowMultipleCollectorsOnNode = optional(bool)

        env = optional(any)

        probe = optional(object({

          readiness = optional(object({

            periodSeconds = optional(number)

            failureThreshold = optional(number)

          }))
          enabled = optional(bool)

          startup = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
          liveness = optional(object({

            failureThreshold = optional(number)

            periodSeconds = optional(number)

          }))
        }))
      }))
      clusterName = string

      lm = optional(object({

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
      }))
      overview = optional(object({

        enable = optional(bool)

        duration = optional(string)

      }))
      tolerations = optional(any)

      accessKey = optional(string)

      resources = optional(object({

        limits = optional(any)

        requests = optional(any)

      }))
      daemons = optional(object({

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
        lmResourceSweeper = optional(object({

          interval = optional(string)

        }))
        lmCacheSync = optional(object({

          interval = optional(string)

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
      filters = optional(any)

      selfMonitor = optional(object({

        enable = optional(bool)

        port = optional(number)

      }))
      enabled = optional(bool)

      clusterTreeParentID = optional(number)

      nodeSelector = optional(any)

      annotations = optional(any)

      resourceContainerID = optional(number)

      account = optional(string)

      fullnameOverride = optional(string)

      accessID = optional(string)

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
      labels = optional(any)

    })
    global = optional(object({

      collectorsetServiceNameSuffix = optional(string)

      userDefinedSecret = optional(string)

      image = object({

        repository = optional(string)

      })
      clusterName = string

    }))
  })
}
variable "lm_container_version" {
  type    = string
  default = "7.0.0-rc01"
}
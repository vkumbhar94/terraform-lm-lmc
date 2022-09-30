variable "lm-container-configuration" {
  type = object({

    argus = object({

      account = optional(string)
      
      nodeSelector = optional(any)
      
      labels = optional(any)
      
      accessKey = optional(string)
      
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
      log = optional(object({

        level = optional(string)
        
      }))
      collectorsetcontroller = optional(object({

        port = optional(number)
        
        address = optional(string)
        
      }))
      proxy = optional(object({

        url = optional(string)
        
        user = optional(string)
        
        pass = optional(string)
        
      }))
      filters = optional(any)
      
      fullnameOverride = optional(string)
      
      affinity = optional(any)
      
      lm = optional(object({

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

        proxy = optional(object({

          url = optional(string)
          
          user = optional(string)
          
          pass = optional(string)
          
        }))
        annotations = optional(any)
        
        labels = optional(any)
        
        statefulsetSpec = optional(object({

          template = optional(object({

            spec = optional(any)
            
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

            periodSeconds = optional(number)
            
            failureThreshold = optional(number)
            
          }))
          enabled = optional(bool)
          
        }))
        disableLightweightCollector = optional(bool)
        
        replicas = optional(number)
        
        useEA = optional(bool)
        
        lm = optional(object({

          groupID = optional(number)
          
          escalationChainID = optional(number)
          
        }))
        image = optional(object({

          registry = optional(string)
          
          repository = optional(string)
          
          tag = optional(string)
          
          pullPolicy = optional(string)
          
        }))
        collectorConf = optional(object({

          agentConf = optional(any)
          
        }))
        version = optional(number)
        
        size = optional(string)
        
      }))
      accessID = optional(string)
      
      resourceContainerID = optional(number)
      
      monitoring = optional(object({

        disable = optional(any)
        
      }))
      nameOverride = optional(string)
      
      imagePullSecrets = optional(any)
      
      priorityClassName = optional(string)
      
      tolerations = optional(any)
      
      annotations = optional(any)
      
      serviceAccount = optional(object({

        create = optional(bool)
        
      }))
      enabled = optional(bool)
      
      selfMonitor = optional(object({

        port = optional(number)
        
        enable = optional(bool)
        
      }))
      resources = optional(object({

        limits = optional(any)
        
        requests = optional(any)
        
      }))
      clusterTreeParentID = optional(number)
      
      image = optional(object({

        registry = optional(string)
        
        repository = optional(string)
        
        pullPolicy = optional(string)
        
        tag = optional(string)
        
      }))
      debug = optional(object({

        profiling = optional(object({

          enable = optional(bool)
          
        }))
      }))
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

          failureThreshold = optional(number)
          
          periodSeconds = optional(number)
          
        }))
        readiness = optional(object({

          failureThreshold = optional(number)
          
          periodSeconds = optional(number)
          
        }))
      }))
      clusterName = string
      
    })
    global = optional(object({

      accessKey = optional(string)
      
      account = optional(string)
      
      accessID = optional(string)
      
    }))
})
}
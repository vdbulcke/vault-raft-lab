

storage "raft" {
    path = "./vault2-raft"
    node_id = "vault2"

    
}

listener "tcp" {
  address = "127.0.0.2:8210"
  cluster_address = "127.0.0.2:8211"
  tls_disable = true
}

disable_mlock = true
api_addr = "http://127.0.0.2:8210"
cluster_addr = "http://127.0.0.2:8211"


storage "raft" {
    path = "./vault3-raft"
    node_id = "vault3"

    
}

listener "tcp" {
  address = "127.0.0.3:8210"
  cluster_address = "127.0.0.3:8211"
  tls_disable = true
}

disable_mlock = true
api_addr = "http://127.0.0.3:8210"
cluster_addr = "http://127.0.0.3:8211"
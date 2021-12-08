

storage "raft" {
    path = "./vault1-raft"
    node_id = "vault1"

    
}

listener "tcp" {
  address = "127.0.0.1:8210"
  cluster_address = "127.0.0.1:8211"
  tls_disable = true
}

disable_mlock = true
api_addr = "http://127.0.0.1:8210"
cluster_addr = "http://127.0.0.1:8211"
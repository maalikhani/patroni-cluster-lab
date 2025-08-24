export ETCDCTL_API="3"

# Define etcd cluster endpoints
export ETCD1=192.168.220.140
export ETCD2=192.168.220.141
export ETCD3=192.168.220.142
export ENDPOINTS=$ETCD1:2379,$ETCD2:2379,$ETCD3:2379

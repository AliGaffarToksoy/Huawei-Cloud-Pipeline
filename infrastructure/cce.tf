# 1. Kubernetes Kümesinin Kendisi (Master Node'lar Huawei tarafından yönetilir)
resource "huaweicloud_cce_cluster" "k8s_cluster" {
  name                   = "enterprise-cce-cluster"
  flavor_id              = "cce.s1.small"       # Standart küçük ölçekli küme
  vpc_id                 = huaweicloud_vpc.main_vpc.id
  subnet_id              = huaweicloud_vpc_subnet.main_subnet.id
  container_network_type = "overlay_l2"         # Kapsayıcılar arası ağ iletişimi
  description            = "Otomatik GitOps dagitimi icin ana K8s kumesi"
}

# 2. İşçi Sunucu Havuzu (Konteynerlerimizin koşacağı asıl makineler)
resource "huaweicloud_cce_node_pool" "worker_nodes" {
  cluster_id         = huaweicloud_cce_cluster.k8s_cluster.id
  name               = "enterprise-worker-pool"
  os                 = "EulerOS 2.9"            # Huawei Cloud'un optimize işletim sistemi
  initial_node_count = 2                        # Yüksek erişilebilirlik (HA) için 2 makine
  flavor_id          = "s6.large.2"             # 2 vCPU, 4GB RAM özellikli sunucu tipi
  password           = "HuaweiCloud@2026!"      # Sunuculara acil SSH erişimi için şifre

  root_volume {
    size       = 40
    volumetype = "SAS"
  }

  data_volumes {
    size       = 100
    volumetype = "SAS"
  }
}
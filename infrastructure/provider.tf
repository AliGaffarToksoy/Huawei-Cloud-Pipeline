terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "~> 1.60.0" # Stabil enterprise sürümü
    }
  }
}

# Mülakat Notu: Gerçek projelerde key'ler asla koda yazılmaz, ortam değişkenlerinden (ENV) okunur.
# Şu an yerelde kodumuzu test (plan) edeceğimiz için mock (sahte) key'ler bırakıyoruz.
provider "huaweicloud" {
  region     = "tr-west-1" # Huawei'nin Türkiye (veya Avrupa) bölgesi
  access_key = "MOCK_ACCESS_KEY"
  secret_key = "MOCK_SECRET_KEY"
}
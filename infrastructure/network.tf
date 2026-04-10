# Sanal Özel Ağımız (Virtual Private Cloud)
resource "huaweicloud_vpc" "main_vpc" {
  name = "cce-enterprise-vpc"
  cidr = "10.0.0.0/16"
}

# Kümemizin çalışacağı Alt Ağ (Subnet)
resource "huaweicloud_vpc_subnet" "main_subnet" {
  vpc_id      = huaweicloud_vpc.main_vpc.id
  name        = "cce-enterprise-subnet"
  cidr        = "10.0.1.0/24"
  gateway_ip  = "10.0.1.1"
}
# Create Kubernetes-worker nodes
resource "cloudstack_instance" "auto-created-node" {
  name             = "auto-created-node0${count.index}"
  template         = "cc2b7707-3e72-47a6-b881-914eac9f8caf"
  service_offering = "Micro"
  root_disk_size   = 50
  zone             = "ch-gva-2"
  count            = 50
}

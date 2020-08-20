resource "google_compute_instance" "default" {
 project = var.project_id
 for_each = toset(var.vm_name)
 name         = "backend-${each.value}"
 machine_type = "f1-micro"
 zone         = element(var.zone,index(var.vm_name,each.value))
 tags = [each.value]

 boot_disk {
   initialize_params {
     image = "debian-cloud/debian-9"
   }
 }


 metadata_startup_script = file ("startup.sh")
 
 metadata = {
   #ssh-keys = "saimon:${file("~/.ssh/id_rsa.pub")}"
   ssh-keys = "saimon:${file("${element(var.pub_ssh_location,index(var.vm_name,each.value))}")}"
 }

 network_interface {
   network = var.vpc_name
   subnetwork = var.subnet_network

  #  access_config {
  #    // Include this section to give the VM an external ip address
  #  }
 }
}
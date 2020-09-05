resource "digitalocean_droplet" "www-1" {
    image = "ubuntu-18-04-x64"
    name = "www-1"
    region = "nyc2"
    size = "s-1vcpu-1gb"
    private_networking = true
    ssh_keys = [
      data.digitalocean_ssh_key.botdd.id
    ]
connection {
    host = self.ipv4_address
    user = "root"
    type = "ssh"
    private_key = file(var.pvt_key)
    timeout = "2m"
}
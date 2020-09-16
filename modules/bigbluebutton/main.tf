resource "linode_instance" "bbb" {
    label = var.label
    image = var.image
    region = var.region
    type = "g6-standard-1"
    authorized_keys = ["ssh-rsa AAAA...Gw== user@example.local"]
    root_pass = "terr4form-test"

    group = "foo"
    tags = [ "foo" ]
    swap_size = 256
    private_ip = true
}
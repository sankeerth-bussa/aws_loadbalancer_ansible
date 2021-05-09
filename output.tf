resource "local_file" "AnsibleInventory" {
 content = templatefile("inventory.tmpl",
 {
  lb = aws_instance.lb.public_ip,
  server = aws_instance.server.*.public_ip,
 }
 )
 filename = "inventory"
}

output "nginx_access" {
  description = "Ways to access the Nginx container"
  value       = <<-EOT
                Local access (from inside EC2):  http://localhost:${var.external_port}
                External access (from your system): http://<your-ec2-public-ip>:${var.external_port}
                EOT
}


# EOT (End Of Text) is used to define a multi-line string in Terraform (borrowed from shell scripting).
# Inshort EOT is just a marker to start and end a multi-line string in Terraform. starts with <<EOT and ends with EOT.
# Indentation is preserved unless you use <<-EOT (with a dash).
# EOT is just a label (you could also use EOF, TEXT, or any uppercase word).

# output "private_ip" {
#   value = aws_instance.bigbluebutton.private_ip
# }

output "private_ip" {
  value = aws_spot_instance_request.bigbluebutton.private_ip
}

output "public_ip" {
  value = aws_eip.bigbluebutton.public_ip
}
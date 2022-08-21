# EC2インスタンスの情報出力
# output "instance_ami" {
#   value = aws_instance.Server.*.ami
# }
# output "instance_arn" {
#   value = aws_instance.Server.*.arn
# }
output "instance_type" {
  value = aws_instance.Server.*.instance_type
}

# EC2インスタンスのDNS名を出力
# output "example_ec2_ip" {
#   value = aws_instance.Server.*.public_dns
# }
output "public_ip_address" {
  value = aws_instance.Server.*.public_ip
}

# # EC2タグ/インスタンス名
# output "Names" {
#     value = aws_instance.Server[*].tags["Name"]
# }

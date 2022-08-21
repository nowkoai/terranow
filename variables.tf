# インスタンスタイプ指定
variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default = "t2.micro"
}

# インスタンス名指定
variable "instance_name" {
  description = "EC2 instance name"
  default = "SVRDAYO"
}

# リージョン指定
variable "region" {
  description = "AWS region"
  default = "ap-northeast-1"
}

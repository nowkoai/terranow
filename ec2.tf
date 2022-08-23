# EC2インスタンス
resource "aws_instance" "Server" {
  # 起動インスタンス数
  count         = 1

  # インスタンス指定
  ami           = "ami-0701e21c502689c31"

  instance_type = var.instance_type

  # セキュリティグループ指定
  vpc_security_group_ids = [
    aws_security_group.example_ec2_sg.id,
  ]

  # WEBサーバ/Nginxのインストール
  user_data = file("./userdata/demo.sh")

  # タグ指定
  tags = {
    Name = "${var.instance_name}-${count.index}"
  }
}

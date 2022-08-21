# EC2インスタンス
resource "aws_instance" "Server" {
  # 起動インスタンス数
  count         = 1
  # count         = 10

  # インスタンス指定
  # ami           = "ami-0404778e217f54308"
  # Amazon Linux 2(ami-0701 e21c502689c31)から Ubuntu(ami-0df99b3a8349462c6)へ AMI を変更
  ami           = "ami-0701e21c502689c31"
  # ami           = "ami-0df99b3a8349462c6"

  instance_type = var.instance_type

  # セキュリティグループ指定
  vpc_security_group_ids = [
    aws_security_group.example_ec2_sg.id,
  ]

  # WEBサーバ/Nginxのインストール
  user_data = file("./userdata/demo.sh")

  # タグ指定
  tags = {
    # Name = "Server-${count.index}"
    NameX = "${var.instance_name}-${count.index}"
  }
}

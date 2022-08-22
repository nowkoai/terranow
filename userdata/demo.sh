#!/bin/bash
# yum update -y
sudo yum install -y httpd

cat << EOM > /var/www/html/index.html
<html>
  <head><title>HashiCat</title></head>
  <body>
    <div style="width:800px;margin: 0 auto">
      <center><img src="http://placekitten.com/600/400"></img></center>
      <center><h2>おつかれさまです</h2></center>
      <center><h2>TerraformでデプロイしたWEBサイトになります！</h2></center>
      <center><h2>テスト用AWSサーバのデプロイ完了しました！</h2></center>
    </div>
  </body>
</html>
EOM

# ---------------------------------------------
# echo "<p>" >> /var/www/html/index.html
# cat /etc/system-release >> /var/www/html/index.html
#
# echo "<br>" >> /var/www/html/index.html
# uname -n >> /var/www/html/index.html
#
# echo "<br>" >> /var/www/html/index.html
# echo "→ テスト用AWSサーバが起動しました！" >> /var/www/html/index.html
# echo "</p>" >> /var/www/html/index.html
# ---------------------------------------------

# cat << EOM > /var/www/html/index.html
# </div>
# </body>
# </html>
# EOM

sudo systemctl start httpd
# sudo systemctl enable httpd

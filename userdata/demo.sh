#!/bin/bash
# yum update -y
sudo yum install -y httpd

cat << EOM > /var/www/html/index.html
<html>
  <head><title>Meow!</title></head>
  <body>
  <div style="width:800px;margin: 0 auto">
  <!-- BEGIN -->
  <center><img src="http://placekitten.com/600/400"></img></center>
  <center><h2>デモだよ</h2></center>
  デモサイトです！
  <!-- END -->
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

sudo systemctl start httpd
# sudo systemctl enable httpd

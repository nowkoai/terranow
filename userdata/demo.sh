#!/bin/bash
# yum update -y
sudo yum install -y httpd
echo "<p>" >> /var/www/html/index.html
cat /etc/system-release >> /var/www/html/index.html

echo "<br>" >> /var/www/html/index.html
uname -n >> /var/www/html/index.html

echo "<br>" >> /var/www/html/index.html
echo "→ テスト用AWSサーバが起動しました！" >> /var/www/html/index.html
echo "</p>" >> /var/www/html/index.html

sudo systemctl start httpd
# sudo systemctl enable httpd

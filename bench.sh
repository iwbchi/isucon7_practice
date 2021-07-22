#デプロイ
sudo rm -rf /var/log/nginx/access.log
sudo rm -rf /var/log/mysql/mysql-slow.log

git pull 

sudo cp /home/isucon/isucon7_practice/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
sudo cp /home/isucon/isucon7_practice/app.py /home/isubata/webapp/python/app.py
sudo cp /home/isucon/isucon7_practice/nginx.conf /etc/nginx/sites-available/nginx.conf

sudo systemctl restart nginx.service
sudo systemctl restart mysql.service
sudo systemctl restart isubata.python.service

#ベンチマーク

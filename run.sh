# ubuntu
sudo snap install core; sudo snap refresh core
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo certbot --nginx
# make sure your port 80 and 443 is available
# make sure the nginx installation is clean

openssl genrsa -out domain.key 2048
openssl req -new -key domain.key -out domain.csr

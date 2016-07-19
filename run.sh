export CF_EMAIL='trongpd@ows.vn'
export CF_KEY='8c2520e99433e55bd2133d9762c4869adcad3'
echo "\n\nChecking for new ssl $(date +'%m/%d/%Y %T')\n" >> /var/log/autossl.log
cd /opt/autossl/letsencrypt.sh
./letsencrypt.sh -c >> /var/log/autossl.log
chmod -R 755 /opt/autossl/letsencrypt.sh/certs

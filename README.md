This project using 
	Letsencrypt client: https://github.com/lukas2511/letsencrypt.sh
	Cloudflare hook: https://github.com/kappataumu/letsencrypt-cloudflare-hook

Auto create and renew ssl certificate with bash and cronjob
- sudo mkdir /opt/autossl/
- sudo git clone repo_url letsencrypt.sh 

- Install hooks requirements: 
	pip3 install -r hooks/cloudflare/requirements.txt
- Create domains file
	cp domains.txt.example domains.txt
	vi domains.txt
- Create runner script
 	cp run.sh.example run.sh
- Edit with our Cloudflare API Key
 	vi run.sh
- Init cronjob
	sudo sh init_auto_reload.sh

How to adding new domains:
	sudo sh /opt/autossl/letsencrypt.sh/add_domain.sh domain1 domain2 .. domain_n

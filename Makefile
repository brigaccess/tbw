default: prepare deploy

prepare:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook proxy.yml

ping:
	ansible proxies -m ping
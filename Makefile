ping_yandex:
	ansible all --limit yandex -u admin -m ping
playbook:
	ansible-playbook playbook.yml -i inventory.ini -u root
prepare_servers:
	ansible-playbook playbook.yml -i inventory.ini -t primary_packages -u admin
create_users:
	ansible-playbook playbook.yml -i inventory.ini -t create_users -u admin

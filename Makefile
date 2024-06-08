inventories:=-i inventories/hosts
up: .env
	ansible-playbook site.yml ${inventories}

install-requirements:
	ansible-galaxy install -r roles/requirements.yml

playbook:
	ansible-playbook ${inventories} $(filter-out $@,$(MAKECMDGOALS))

role:
	ansible ${inventories} $(filter-out $@,$(MAKECMDGOALS))

%:	  
	@:	

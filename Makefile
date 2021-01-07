SERVICE = peertube
REGGAE_PATH := /usr/local/share/reggae
PORTS = 1935

post_setup_ansible:
	@echo "peertube_domain: ${FQDN}" >>ansible/group_vars/all

.include <${REGGAE_PATH}/mk/service.mk>

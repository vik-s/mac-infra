install:
	@./prereqs.sh
	@echo "Pre-requisites have been installed"

gitupdate:
	@./git-update.sh
	@echo "Completed github check in"

setup:
	ansible-playbook main.yml --ask-become-pass

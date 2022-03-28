.PHONY: help, ci-black, ci-flake8, ci-test, isort, black, docs

PROJECT:=jekyll_server
COMPOSE_FILE=_docker/docker-compose.yml
CONT:=${USER}_$(PROJECT)
CONTAINER_NAME="$(CONT)_bash"  ## Ensure this is the same name as in docker-compose.yml file
VERSION_FILE:=VERSION
TAG:=$(shell cat ${VERSION_FILE})

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

git-tag:  ## Tag in git, then push tag up to origin
	git tag $(TAG)
	git push origin $(TAG)

dev-start: .env ## Primary make command for devs, spins up containers
	docker-compose -f $(COMPOSE_FILE) --project-name $(PROJECT) up 
	#--no-recreate 
	#-d

dev-stop: ## Spin down active containers
	docker-compose -f $(COMPOSE_FILE) --project-name $(PROJECT) down


.require-config:
ifndef config
	$(error config is required)
endif

.require-command:
ifndef command
	$(error command is required)
endif

.require-port:
ifndef port
	$(error port is required)
endif

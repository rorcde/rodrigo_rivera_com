.PHONY: help, ci-black, ci-flake8, ci-test, isort, black, docs

PROJECT:=rrivera
IMAGE_BASE:=${USER}/base-sys-dl:gpu
IMAGE_DL:=${USER}/dl-dev:gpu
CONT:=${USER}_$(PROJECT)
CONTAINER_NAME="$(CONT)_bash"  ## Ensure this is the same name as in docker-compose.yml file
VERSION_FILE:=VERSION
TAG:=$(shell cat ${VERSION_FILE})
VOLUME:=/mnt/$(PROJECT)

COMPOSE_PARAMETERS := \
	-f _docker/docker-compose.yml \
	--project-name $(CONT)

#DOCKER_PARAMETERS := \
#	--user $(shell id -u)

ifdef gpu
        RUNTIME:=nvidia
        DOCKER_PARAMETERS += -e NVIDIA_VISIBLE_DEVICES=$(gpu)
else
        RUNTIME:=runc
endif

DOCK_PARAMS:= \
	CURRENT_UID=$(id -u):$(id -g) \
	IMAGE_DL=$(IMAGE_DL) \
	IMAGE_BASE=$(IMAGE_BASE) \
	RUNTIME=$(RUNTIME) \
	PROJECT=$(PROJECT) \
	CONT=$(CONT)

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

git-tag:  ## Tag in git, then push tag up to origin
	git tag $(TAG)
	git push origin $(TAG)

ci-black: ## Test lint compliance using black. Config in pyproject.toml file
	docker exec $(CONTAINER_NAME) black --check $(VOLUME)

ci-flake8: ## Test lint compliance using flake8. Config in tox.ini file
	docker exec $(CONTAINER_NAME) flake8 $(VOLUME)

ci-test:  ## Runs unit tests using pytest
	docker exec $(CONTAINER_NAME) pytest $(VOLUME)

ci-test-interactive:  ## Runs unit tests using pytest, and gives you an interactive IPDB session at the first failure
	docker exec -it $(CONTAINER_NAME) pytest $(VOLUME)  -x --pdb --pdbcls=IPython.terminal.debugger:Pdb

ci: ci-black ci-flake8 ci-test ## Check black, flake8, and run unit tests
	@echo "CI sucessful"

build: ## Create docker images
	@echo "Building base images"
	cp env_template .env
	docker build -t $(IMAGE_BASE) ./docker/base-sys-dl/
	docker build -t $(IMAGE_DL) --build-arg IMAGE_BASE=$(IMAGE_BASE) ./docker/dl-dev/

isort: ## Runs isort to sorts imports
	docker exec $(CONTAINER_NAME) isort -rc $(VOLUME)

black: ## Runs black auto-linter
	docker exec $(CONTAINER_NAME) black $(VOLUME)

lint: isort black ## Lints repo; runs black and isort on all files
	@echo "Linting complete"

dataset: ## Run ETL to get and process data
	@echo "Download and build all datasets for experiments"
	docker exec -it $(CONTAINER_NAME) python $(PROJECT)/scripts/etl.py configs/config.yml

evaluate: ## Run all experiments
	@echo "Evaluate the results of the experiments"
	docker exec -it $(DOCKER_PARAMETERS) $(CONTAINER_NAME) python $(PROJECT)/scripts/evaluate.py configs/config.yml

dev-start: ## Primary make command for devs, spins up containers
	@echo "Building new images from compose"
	sudo service docker start
	$(DOCK_PARAMS) docker-compose $(COMPOSE_PARAMETERS) up -d --build

dev-stop: ## Spin down active containers
	@echo "Shut down all containers"
	$(DOCK_PARAMS) docker-compose $(COMPOSE_PARAMETERS) down
	sudo service docker stop

docs: ## Build docs using Sphinx and copy to docs folder (this makes it easy to publish to gh-pages)
	docker exec -e GRANT_SUDO=yes $(CONTAINER_NAME) bash -c "cd docsrc; make html"
	@cp -a docsrc/_build/html/. docs

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

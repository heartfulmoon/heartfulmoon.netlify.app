MAKEFLAGS += --warn-undefined-variables
SHELL := /bin/bash
.SHELLFLAGS := -eu -o pipefail -c
.DEFAULT_GOAL := run

# all targets are phony
.PHONY: $(shell egrep -o ^[a-zA-Z_-]+: $(MAKEFILE_LIST) | sed 's/://')

# .env
ifneq ("$(wildcard ./.env)","")
  include ./.env
endif

run: ## Run server
	@hugo server --buildDrafts --watch

run-without-draft: ## Run server without draft posts
	@hugo server --theme=beautifulehugo --watch

build: ## Build static html
	@hugo

build-github:
	@hugo --config config.toml,config-github.toml 

deploy: build ## Deploy on Netlify
	@sh deploy.sh

deploy-github: build-github ## Deploy on Github Pages
	@cd public && sh ../deploy.sh

clean: ## Clean old files
	@hugo --cleanDestinationDir
	rm -fr public

help: ## Print this help
	@echo 'Usage: make [target]'
	@echo ''
	@echo 'Targets:'
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

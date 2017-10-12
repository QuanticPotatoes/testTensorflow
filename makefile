.PHONY: help
.DEFAULT_GOAL := help

help:
	@grep -P '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run-tensorflow: ## Launch tensorflow docker
	@docker-compose up 

stop: ## Stop tensorflow docker
	@docker-compose down
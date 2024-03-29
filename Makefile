.PHONY: all

all: render

.PHONY: render
render: ## Render qmd documents as website into the docs folder
	quarto render src/main.qmd --to html
	quarto render src/BDA.qmd --to html

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
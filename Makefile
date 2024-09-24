.PHONY: help install update format lint test coverage pre-commit clean run docker-build docker-run

# Default target
.DEFAULT_GOAL := help

# Colors for terminal output
BLUE := \033[0;34m
NC := \033[0m # No Color

help:
	@echo "Available commands:"
	@echo "${BLUE}make install${NC}      Install project dependencies"
	@echo "${BLUE}make update${NC}       Update project dependencies"
	@echo "${BLUE}make format${NC}       Format code using black and ruff"
	@echo "${BLUE}make lint${NC}         Run linters (black, ruff, mypy)"
	@echo "${BLUE}make test${NC}         Run tests"
	@echo "${BLUE}make coverage${NC}     Run tests with coverage report"
	@echo "${BLUE}make pre-commit${NC}   Run all pre-commit hooks"
	@echo "${BLUE}make clean${NC}        Remove build artifacts and cache files"
	@echo "${BLUE}make run${NC}          Run the main application"
	@echo "${BLUE}make docker-build${NC} Build Docker image"
	@echo "${BLUE}make docker-run${NC}   Run the application in a Docker container"

install:
	poetry install

update:
	poetry update

format:
	poetry run black .
	poetry run ruff check . --fix

lint:
	poetry run ruff check .
	poetry run mypy .

test:
	poetry run pytest

coverage:
	poetry run coverage run -m pytest
	poetry run coverage report -m
	poetry run coverage html

pre-commit:
	poetry run pre-commit run --all-files

clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name ".mypy_cache" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	rm -rf .coverage htmlcov
	rm -rf .ruff_cache/
	
run:
	poetry run python src/main.py

docker-build:
	docker build -t my-python-app .

docker-run:
	docker run -it --rm my-python-app

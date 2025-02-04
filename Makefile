##
up:
	@echo 'Running app'
	docker compose up

lint:
	@echo 'Running Lint'
	docker compose run --rm app sh -c "flake8"

test:
	@echo "Running tests"
	docker compose run --rm app sh -c "python manage.py test"

build:
	@echo "Running build"
	docker compose build

start_app_project:
	@echo "Starting new project"
	docker compose run --rm app sh -c "django-admin startproject app ."
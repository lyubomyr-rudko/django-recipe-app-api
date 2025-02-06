##
up:
	@echo 'Running app'
	docker compose up

down:
	@echo 'Downing app'
	docker compose down

lint:
	@echo 'Running test'
	docker compose run --rm app sh -c "flake8"

test:
	@echo "Running tests"
	docker compose run --rm app sh -c "python manage.py wait_for_db && python manage.py test"

wait_for_db:
	@echo "Running tests"
	docker compose run --rm app sh -c "python manage.py wait_for_db"

build:
	@echo "Running build"
	docker compose build

start_project:
	@echo "Starting new project"
	docker compose run --rm app sh -c "django-admin startproject app ."

start_app_core:
	@echo "Starting new project"
	docker compose run --rm app sh -c "python manage.py startapp core"
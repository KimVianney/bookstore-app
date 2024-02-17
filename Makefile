build:
	docker compose build
up:
	docker compose up
shell:
	docker-compose exec web python manage.py shell
down:
	docker compose down
logs:
	docker compose logs
migrate:
	docker compose run web python manage.py migrate
migrations:
	docker compose run web python manage.py makemigrations
test:
	docker compose run web python manage.py test $(APP)
db:
	docker compose exec db psql --username=$(USERNAME) --dbname=$(DBNAME)
superuser:
	docker compose run web python manage.py createsuperuser
startapp:
	docker compose exec web python manage.py startapp $(APP)
flush:
	docker compose exec web python manage.py flush --no-input
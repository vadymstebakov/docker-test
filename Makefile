run:
	docker run -d -p 3000:8000 --env-file ./.env --rm -v logs:/app/data --name testapp testapp:volumes
run-dev:
	docker run -d -p 3000:8000 --env-file ./.env --rm -v "/home/vadym/web/my_projects/docker/logs-app-master:/app" -v /app/node_modules -v logs:/app/data --name testapp testapp:volumes
stop:
	docker stop testapp

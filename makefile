all:
	docker-compose up -d
	mix format
	mix phx.server

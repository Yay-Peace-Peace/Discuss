setup:
	mix deps.get
	mix ecto.setup
linux:
	docker compose up -d
	mix format
	mix phx.server
windows:
	mix format
	mix phx.server
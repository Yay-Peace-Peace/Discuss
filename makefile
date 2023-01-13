setup:
	mix deps.get
	mix ecto.setup
db:
	docker compose up -d
start:
	mix format
	mix phx.server
psql:
	#=-------------------------------------------------------------------=#
	#	\q		Exit
	#	\l		List DATABASES
	#	\dt		Display TABLES 
	#	\d		Show DETAILS of TABLE (\d+ for mode details)
	#=-------------------------------------------------------------------=#
	docker exec -it discuss-db-1 psql -U elixir -d discuss
start:
	bin/server
migrate:
	bundle exec ridgepole -c config/database.yml -E development --apply -f db/Schemafile

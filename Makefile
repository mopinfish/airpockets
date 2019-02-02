ENV := development

start:
	bin/server
migrate:
	bundle exec ridgepole -c config/database.yml -E $(ENV) --apply -f db/Schemafile
install:
	bundle install --path=vendor/bundle --without production

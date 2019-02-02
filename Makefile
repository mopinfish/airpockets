ENV := development

start:
	bin/server
migrate:
	bundle exec ridgepole -c config/database.yml -E $(ENV) -f db/Schemafile --apply 
install:
	bundle install --path=vendor/bundle --without production
heroku-migrate:
	heroku run 'bundle exec ridgepole -c config/database.yml -E production -f db/Schemafile --apply'
deploy:
	@git checkout master
	@git merge develop
	@git push origin master
	@git push heroku master

stop_db:
	docker stop sop.dbdddremove_db: stop_db
	docker rm sop.db

submodule:
	while read line; do echo "cloning $line"; git submodule add -b development $line; echo __; done < repo.url

build:
    ./gradlew clean build --refresh-dependencies

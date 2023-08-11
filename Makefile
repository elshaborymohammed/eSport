#!/usr/bin/env make

.PHONY: submodule build init

clone:
	echo "\033[1;33m>> Cloning SEF repositories \033[0m"; \
	while read line; \
		do \
			echo "cloning $$line"; \
			git submodule add -b development $$line; \
			echo __; \
		done < repo.url;

clean:
	echo "\033[1;33m>> Clean All SEF repositories \033[0m"; \
	./gradlew cleanAll

build:
	echo "\033[1;33m>> Build All SEF repositories \033[0m"; \
	./gradlew buildAll

run:
	echo "\033[1;33m>> Run All SEF repositories \033[0m"; \
	./gradlew bootRun


#build:
#	./gradlew clean build --refreaddsh-dependencies

init:
	/bin/sh ./init/00-init.sh
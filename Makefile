DC := docker-compose exec
FPM := $(DC) php
OS := $(shell uname)

build:
	@$(DC) build

start:
	@docker-compose up -d

stop:
	@docker-compose stop

update-image:
	@docker-compose build php

ssh:
	@$(FPM) bash

install:
	@$(FPM) composer install

test:
	@$(FPM) vendor/bin/phpunit

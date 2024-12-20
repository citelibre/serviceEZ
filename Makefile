VERSION=1.0.9

REPO=citelibre/serviceEZ
REPO-TEST=test-serviceez
NAME_SERVICE=serviceEZ

build: ## Build the containers
	docker build citelibre-$(NAME_SERVICE) -t $(REPO):ihm
	docker build citelibre-$(NAME_SERVICE) -t $(REPO):ihm-$(VERSION)
	docker build matomo -t $(REPO):matomo
	docker build matomo -t $(REPO):matomo-$(VERSION)
	docker build solr -t $(REPO):solr
	docker build solr -t $(REPO):solr-$(VERSION)
	docker build mysql -t $(REPO):db
	docker build mysql -t $(REPO):db-$(VERSION)
	docker build keycloak -t $(REPO):keycloak
	docker build keycloak -t $(REPO):keycloak-$(VERSION)
	docker build kibana -t $(REPO):kibana
	docker build kibana -t $(REPO):kibana-$(VERSION)
	docker build elasticsearch -t $(REPO):elasticsearch
	docker build elasticsearch -t $(REPO):elasticsearch-$(VERSION)

test: ## Build the containers
	docker build -t $(REPO-TEST)/ihm citelibre-serviceEZ
	docker build -t $(REPO-TEST)/matomo matomo
	docker build -t $(REPO-TEST)/solr solr
	docker build -t $(REPO-TEST)/db mysql
	docker build -t $(REPO-TEST)/keycloak keycloak
	docker build -t $(REPO-TEST)/kibana kibana
	docker build -t $(REPO-TEST)/elasticsearch elasticsearch
	echo REPO=$(REPO-TEST) > .env.test
	docker-compose --env-file .env.test -f ./docker-compose-test.yml up -d

test-down:
	docker-compose --env-file .env.test -f ./docker-compose-test.yml down
	rm .env.test

publish: repo-login publish-latest publish-version ## Publish the `{VERSION}` ans `latest` tagged containers

publish-latest: ## Publish the `latest` tagged container
	@echo 'publish latest to $(REPO)'
	docker push $(REPO):solr
	docker push $(REPO):db
	docker push $(REPO):ihm
	docker push $(REPO):matomo

publish-version: ## Publish the `{version}` tagged container t
	@echo 'publish $(VERSION) to $(REPO)'
	docker push $(REPO):solr-$(VERSION)
	docker push $(REPO):db-$(VERSION)
	docker push $(REPO):ihm-$(VERSION)
	docker push $(REPO):matomo-$(VERSION)

repo-login:
	docker login

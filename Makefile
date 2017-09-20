VERSION ?= latest-SNAPSHOT

default: docker

install:
	npm install

docker: install
	docker build -t registry-write.opensource.zalan.do/pathfinder/tailor-demo:$(VERSION) .

release: docker
	docker push registry-write.opensource.zalan.do/pathfinder/tailor-demo:$(VERSION)
	docker pull registry.opensource.zalan.do/pathfinder/tailor-demo:$(VERSION)

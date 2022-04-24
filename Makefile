#=====================================================================
# Build

VERSION := 1.0.0

build:
	go build -ldflags="-X 'main.build=$(VERSION)'"

#=====================================================================
# Building containers

sales:
	docker build \
		-f ./zarf/docker/dockerfile.sales-api \
		-t sales-api-amd64:$(VERSION) \
		--build-arg BUILD_REF=$(VERSION) \
		--build-arg BUILD_DATE=`date -u +"%Y-%m-%dT%H:%M%SZ"` \
		.

#=====================================================================
# Running from within k8s/kind

KIND_CLUSTER := ingestevezaquino-starter-cluster

kind-up:
	kind create cluster \
		--image kindest/node:v1.23.4@sha256:0e34f0d0fd448aa2f2819cfd74e99fe5793a6e4938b328f657c8e3f81ee0dfb9 \
		--name $(KIND_CLUSTER) \
		--config ./zarf/k8s/kind/kind-config.yaml
	kubectl config set-context --current --namespace=sales-system

kind-down:
	kind delete cluster --name $(KIND_CLUSTER)
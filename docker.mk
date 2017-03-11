TAG_NAME?=latest

# Build Docker image
image.build:
	@docker build -t $(IMAGE_NAME):$(TAG_NAME) .
.PHONY: image.build

# Login to Docker image repository
image.repo.login:
	@docker login
.PHONY: image.repo.login

# Push Docker image
image.push: image.repo.login
	@docker push $(IMAGE_NAME)
.PHONY: image.push

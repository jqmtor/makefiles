# Run all tests.
test:
	@docker run --rm \
		-v $(PWD):$(WORK_DIR) \
		-w $(WORK_DIR) \
		$(IMAGE_NAME) \
		go test -cover ./...
.PHONY: test

# Start gore REPL
repl:
	@docker run -it quimrstorres/gore:latest
.PHONY: repl



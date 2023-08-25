run:
	make -j run-client run-server


run-server:
	@cd server && go run main.go
.PHONY: run-server

run-client:
	@cd client && npm run dev
.PHONY: run-client

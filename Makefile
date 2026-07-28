lint:
	docker run --rm -itv $(CURDIR):/app -w /app golangci/golangci-lint golanci-lint run controllers/ database/ models/ routes/

test:
	docker compose exect app go test main_test.go

ci:lint test
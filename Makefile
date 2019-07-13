build-image:
	docker build -t alx741/alpine-haskell-build -f alpine-haskell-build.docker .

run-image:
	docker build -t alx741/alpine-haskell-run -f alpine-haskell-run.docker .

deploy: build-image run-image
	docker push alx741/alpine-haskell-build
	docker push alx741/alpine-haskell-run

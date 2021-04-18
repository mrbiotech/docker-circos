build: PERL_TAG=5.32
build: CIRCOS_TAG=0.69-9
build:
	docker build -t mrbiotech/circos-alpine .

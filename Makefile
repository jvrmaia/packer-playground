.PHONY: build validate

PCKCMD=docker run -it --rm --env-file credentials -v ${PWD}:/opt -w /opt hashicorp/packer:1.5.6

build:
	${PCKCMD} build ${TPLPATH}

validate:
	${PCKCMD} validate ${TPLPATH}


DATE=$(shell DATE)
BOOTSTRAP = ../css/bootstrap-2.0.1.css
BOOTSTRAP_MIN = ../css/bootstrap-2.0.1.min.css
BOOTSTRAP_STYL = ./bootstrap.styl
STYLUS_PROCESSOR ?= `which stylus`

build:
	@@if test ! -z ${STYLUS_PROCESSOR}; then \
		cd ./styl; \
		stylus < ${BOOTSTRAP_STYL} > ${BOOTSTRAP}; \
		stylus --compress < ${BOOTSTRAP_STYL} > ${BOOTSTRAP_MIN}; \
		echo "Bootstrap successfully built! - `date`"; \
	else \
		echo "You must have the STYLUS compiler installed in order to build Bootstrap."; \
		echo "You can install it by running: npm install stylus -g"; \
	fi

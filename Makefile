DATE=$(shell DATE)
BOOTSTRAP = ../bootstrap-1.1.1.css
BOOTSTRAP_MIN = ../bootstrap-1.1.1.min.css
BOOTSTRAP_STYL = ./bootstrap.styl
STYLUS_PROCESSOR ?= `which stylus`

build:
	@@if test ! -z ${STYLUS_PROCESSOR}; then \
		cd ./lib; sed 's/@DATE/'"${DATE}"'/' ${BOOTSTRAP_STYL} >${BOOTSTRAP_STYL}.tmp; \
		stylus < ${BOOTSTRAP_STYL}.tmp > ${BOOTSTRAP}; \
		stylus --compress < ${BOOTSTRAP_STYL}.tmp > ${BOOTSTRAP_MIN}; \
		rm -f ${BOOTSTRAP_STYL}.tmp; \
		echo "Bootstrap successfully built! - `date`"; \
	else \
		echo "You must have the STYLUS compiler installed in order to build Bootstrap."; \
		echo "You can install it by running: npm install stylus -g"; \
	fi

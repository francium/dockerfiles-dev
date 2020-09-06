.build:
ifndef DIR
	@echo "directory not specified, DIR=some_directory"
	@exit 1
endif

	source ${DIR}/init.sh \
		&& make -f ../Makefile -C ${DIR} ._build


# NOTE: Must be run from within a directory that has a Dockerfile
# `make -f ../Makefile ...`
# or `make -C ${DIR} -f ../Makefile ...`
._build: Dockerfile
ifndef IMAGE_NAME
	@echo "\$$IMAGE_NAME not set"
	@exit 1
endif

	sudo docker build -t ${IMAGE_NAME} .


.run:
ifndef DIR
	@echo "directory not specified, DIR=some_directory"
	@exit 1
endif

	source ${DIR}/init.sh \
		&& make -f ../Makefile -C ${DIR} ._run


._run:
ifndef IMAGE_NAME
	@echo "\$$IMAGE_NAME not set"
	@exit 1
endif
ifndef MNT
	@echo "\$$MNT not set"
	# @exit 1
endif

	sudo docker run --rm -it -v ${MNT}:/mnt ${IMAGE_NAME}

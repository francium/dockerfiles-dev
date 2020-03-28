.build: Dockerfile
ifndef IMAGE_NAME
	@echo "\$$IMAGE_NAME not set"
	@exit 1
endif

	sudo docker build -t ${IMAGE_NAME} .


.run:
ifndef IMAGE_NAME
	@echo "\$$IMAGE_NAME not set"
	@exit 1
endif
ifndef MNT
	@echo "\$$MNT not set"
	@exit 1
endif

	sudo docker run --rm -it -v $(MNT):/mnt ${IMAGE_NAME}

IMAGE_NAME=francium/dev/zig-compiler

.build: Dockerfile
	sudo docker build -t ${IMAGE_NAME} .

.run: .build
ifndef MNT
	@echo "\$$MNT not set"
else
	sudo docker run --rm -it -v $(MNT):/mnt ${IMAGE_NAME}
endif

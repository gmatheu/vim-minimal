
build-image:
	docker build -t vim-minimal .

run-image:
	docker run -it vim-minimal /bin/bash


run: build
	docker run -d \
	--restart=always \
	-p 127.0.0.1:5017:80 \
	-v /dev/shm/archlinux:/mirror_archlinux \
	archlinux_mirror

build:
	docker build -t archlinux_mirror .


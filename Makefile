run: build
	docker run -d \
	--restart=always \
	-p 127.0.0.1:5017:80 \
	-v /media/servsto/archlinux:/archlinux_mirror \
	archlinux_mirror

build:
	docker build -t archlinux_mirror .


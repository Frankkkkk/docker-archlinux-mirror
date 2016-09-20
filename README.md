# docker-archlinux-mirror
A docker image for persons that want to become an archlinux mirror.

NGINX serves the files via HTTP and HTTPS. The certificate is not signed, but it supposes that you
connect this image to the internet via a "public proxy" which will provide the certificate.

## How to use ?
Just compile and launch the image. The mirror data will need to be stored somewhere.
I don't use docker data containers so I store it to a folder.

See the `Makefile` for more information

## Which upstream mirror to choose ?
By default it uses the  upstream `mirror.de.leaseweb.net` mirror, but you can change that following your network distance
to another upstream simply by changing the `mirror_archlinux.sh` file.

The synchronisation date is set randomly at the launching of the image. You can change this time editing the `run.sh` file.

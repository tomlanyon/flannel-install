# flannel-install

flannel-install is a simple Docker image which installs [flannel](https://github.com/coreos/flannel) and [flannel-route-manager](https://github.com/kelseyhightower/flannel-route-manager) onto your Docker host.

This image is automatically built and provided on the [Docker registry](https://registry.hub.docker.com/u/tomlanyon/flannel-install) so can be pulled as tomlanyon/flannel-install:
```
docker pull tomlanyon/flannel-install
```


## Use

flannel-install's intended purpose is to install the flannel tools on a [CoreOS](http://coreos.com) host.

It expects you to provide a "/host" volume bind mounted from the host.

For example, to install into /opt/bin:

```
$ docker run --rm -v /opt/bin:/host tomlanyon/flannel-install

`/flannel' -> `/host/flannel'
`/flannel-route-manager' -> `/host/flannel-route-manager'
flannel is now available on your host in the directory specified.

$ ls -l /opt/bin/flannel*
-rwxr-xr-x 1 root root 7628193 Oct 31 03:12 /opt/bin/flannel
-rwxr-xr-x 1 root root 8286288 Oct 31 03:12 /opt/bin/flannel-route-manager

```

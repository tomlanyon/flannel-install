# flannel-install

flannel-install is a simple Docker image which installs flannel and flannel-route-manager onto your host.


## Use

flannel-install's intended purpose is to install the flannel tools on a CoreOS host.

It expects you to provide a "/host" volume bind mounted from the host.

For example, to install into /opt/bin:

```
$ docker run --rm -v /opt/bin:/host tomlanyon/flannel-install
`/flannel' -> `/host/flannel'
`/flannel-route-manager' -> `/host/flannel-route-manager'
flannel is now available on your host in the directory specified.
$ ls -l /opt/bin/flannel*

```

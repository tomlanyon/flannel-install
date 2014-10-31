#!/bin/bash

if [[ -d /host ]]; then
    cd /gopath/bin && cp -v flannel* /host/
    if [[ $? -eq 0 ]]; then
        echo
        echo "flannel is now available on your host in the directory specified."
    else
        echo >&2
        echo "something went wrong copying files into host volume." >&2
        exit 1
    fi
else
    echo
    echo "please attach a /host volume to this container from your host." >&2
    echo "e.g. docker run --rm -v /opt/bin:/host tomlanyon/flannel-install" >&2
    exit 1
fi

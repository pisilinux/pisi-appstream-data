#!/bin/bash
set -e
set -x

if [[ ! -d "work" ]]; then
    mkdir work
fi

pushd work

for dname in output cache logs icons ; do
    if [[ ! -d "${dname}" ]]; then
        mkdir "${dname}" -v
    fi
done

appstream-builder --packages-dir=../2.0-Beta.1 --output-dir=./output \
                  --cache-dir=./cache --max-threads=8  \
                  --log-dir=./logs --enable-hidpi -v \
                  --include-failed --add-cache-id --basename=pisi-1 --origin=pisi

appstream-util mirror-screenshots \
    output/pisi-1.xml.gz https://dl.fedoraproject.org/pub/alt/screenshots/f34 \
    ./cache ./output

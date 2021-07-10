#!/bin/bash

pushd work/output

mkdir mirror
mkdir mirror/source

for i in 112x63  224x126 1248x702  624x351 1504x846 752x423; do
    cp -R $i mirror/.
done

pushd mirror/source
tar xf ../../*screenshots*.tar

popd

tar cvf mirror.tar mirror/

popd

cp work/output/pisi-1* .

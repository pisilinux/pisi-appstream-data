#!/bin/bash

sudo appstream-util install ./pisi-1.xml.gz ./pisi-1-icons.tar.gz
sudo ln -svf pisi-1 /usr/share/app-info/icons/pisi

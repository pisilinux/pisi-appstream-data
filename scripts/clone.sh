#!/bin/bash

rsync -avzHL -e 'ssh -p 23422' root@31.207.86.43:/var/www/vhosts/pisilinux.org/ciftlik/2.0-Beta.1 . --exclude '*alienarena*' # Apparently, rsync does not like alienarena

#!/bin/sh

# Upload to server
scp -r _site/* cqian@i.cs.hku.hk:public_html/

# make sure to fix the permissions on the server
# chmod -R 750 *




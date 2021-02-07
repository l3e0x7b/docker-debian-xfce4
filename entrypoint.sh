#!/bin/bash

export ROOT_PASSWORD
echo root:$ROOT_PASSWORD | chpasswd -c SHA512

/usr/sbin/xrdp
/usr/sbin/xrdp-sesman -n

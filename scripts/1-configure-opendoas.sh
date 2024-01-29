#!/usr/bin/sh

su
echo "permit persist :wheel" > /etc/doas.conf


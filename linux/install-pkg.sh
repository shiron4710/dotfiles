#!/bin/sh

while read -r package; do
    apt-get install -y "$package"
done

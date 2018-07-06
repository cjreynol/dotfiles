#! /usr/bin/env bash

if [ -x "$(command -v brew)" ]; then
    brew install $(cat my_brews.txt)
fi

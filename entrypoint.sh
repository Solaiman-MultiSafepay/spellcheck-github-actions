#!/bin/bash
if [ ! -f ./spellcheck.yaml ]; then
    cp /spellcheck.yaml .
fi

if [ ! -f ./wordlist.txt ]; then
    cp /wordlist.txt .
fi
echo $PWD
pyspelling -c spellcheck.yaml

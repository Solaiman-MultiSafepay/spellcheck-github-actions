#!/bin/bash
echo "$(ls)"
if [ ! -f ./spellcheck.yaml ]; then
    cp /spellcheck.yaml .
fi

if [ ! -f ./github/workspace/wordlist.txt ]; then
    cp //github/workspace/wordlist.txt .
fi
echo $PWD
pyspelling -c spellcheck.yaml

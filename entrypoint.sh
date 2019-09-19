#!/bin/bash
if [ ! -f ./github/workspace/spellcheck.yaml ]; then
    cp /github/workspace/spellcheck.yaml .
fi

if [ ! -f ./github/workspace/wordlist.txt ]; then
    cp //github/workspace/wordlist.txt .
fi
echo $PWD
pyspelling -c spellcheck.yaml

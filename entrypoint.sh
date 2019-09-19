#!/bin/bash
if [ ! -f ./slack-project/spellcheck.yaml ]; then
    cp /slack-project/spellcheck.yaml .
fi

if [ ! -f ./slack-project/wordlist.txt ]; then
    cp /slack-project/wordlist.txt .
fi
echo $PWD
pyspelling -c spellcheck.yaml

#!/bin/bash
if [ ! -f ./slack-project/spellcheck.yaml ]; then
    cp /spellcheck.yaml .
fi

if [ ! -f ./slack-project/wordlist.txt ]; then
    cp /wordlist.txt .
fi

pyspelling -c spellcheck.yaml

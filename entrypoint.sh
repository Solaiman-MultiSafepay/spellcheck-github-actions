#!/bin/bash
if [ ! -f ./slack-project/spellcheck.yaml ]; then
    cp slack-project/spellcheck.yaml .
fi

if [ ! -f ./slack-project/wordlist.txt ]; then
    cp slack-project/wordlist.txt .
fi

pyspelling -c spellcheck.yaml

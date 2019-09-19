FROM python:3.7
RUN apt-get update && apt-get install -y \
    aspell \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install pyspelling
RUN ls -a
COPY entrypoint.sh /entrypoint.sh
COPY spellcheck.yaml /spellcheck.yaml
COPY wordlist.txt /wordlist.txt
RUN ls -a
ENTRYPOINT ["/entrypoint.sh"]

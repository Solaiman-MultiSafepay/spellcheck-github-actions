FROM python:3.7
RUN apt-get update && apt-get install -y \
    aspell \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install pyspelling
WORKDIR /github/workspace
RUN git clone https://github.com/Solaiman-MultiSafepay/slack-project.git /github/workspace
COPY spellcheck.yaml /spellcheck.yaml
COPY copy *.md /
COPY wordlist.txt /wordlist.txt
COPY entrypoint.sh /entrypoint.sh
RUN ls -a
RUN pwd
ENTRYPOINT ["/entrypoint.sh"]

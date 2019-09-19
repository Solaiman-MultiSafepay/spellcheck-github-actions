FROM python:3.7
RUN apt-get update && apt-get install -y \
    aspell \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install pyspelling
COPY entrypoint.sh /entrypoint.sh
RUN git clone https://github.com/Solaiman-MultiSafepay/slack-project.git slack-project
WORKDIR /slack-project
RUN ls -a
ENTRYPOINT ["/entrypoint.sh"]

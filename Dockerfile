FROM ubuntu:latest

ENV DOWNLOAD_PATH /opt/SPLbot/linux-x64.zip

RUN mkdir -p /opt/SPLbot \
    && apt-get update \
    && apt-get install -y curl jq zip libicu-dev nano

RUN apt list --installed

RUN curl -s https://api.github.com/repos/PCJones/Ultimate-Splinterlands-Bot-V2/releases/latest | jq -r '.assets[] | select(.name == "linux-x64.zip") | .browser_download_url' | xargs curl -L -o $DOWNLOAD_PATH

RUN ls -l $DOWNLOAD_PATH

RUN cd /opt/SPLbot/ 

COPY entrypoint.sh /opt/entrypoint.sh
RUN chmod +x /opt/entrypoint.sh

ENTRYPOINT ["/opt/entrypoint.sh"]

CMD ["./Ultimate Splinterlands Bot V2"]
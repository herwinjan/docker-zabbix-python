FROM zabbix/zabbix-server-mysql:ubuntu-5.2-latest
MAINTAINER Sebastian Plocek <sebastian@plocek.at>
USER root

# Update
RUN apt-get update && apt-get install -y \
  curl \
  python3-pip

# Install dependencies
RUN pip3 install \
  requests \
  --upgrade pip && pip3 install python-pushover

FROM zabbix/zabbix-server-mysql:ubuntu-5.0-*
MAINTAINER Sebastian Plocek <sebastian@plocek.at>
USER root

# Update
RUN apt-get update && apt-get install -y \
  curl \
  python-pip

# Install dependencies
RUN pip install \
  requests \
  --upgrade pip && pip install python-pushover

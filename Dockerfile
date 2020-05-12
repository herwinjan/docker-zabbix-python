FROM zabbix/zabbix-server-mysql:ubuntu-5.0-latest
MAINTAINER Sebastian Plocek <sebastian@plocek.at>
USER root

# Update
RUN sudo apt-get update && sudo apt-get install -y \
  curl \
  python-pip

# Install dependencies
RUN sudo pip install \
  requests \
  --upgrade pip && pip install python-pushover

FROM zabbix/zabbix-server-mysql:alpine-4.4-latest
MAINTAINER Sebastian Plocek <sebastian@plocek.at>

# Update
RUN apt-get update && apt-get install -y \
  curl \
  python-pip

# Install dependencies
RUN pip install \
  requests \
  --upgrade pip && pip install python-pushover

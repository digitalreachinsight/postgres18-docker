# Prepare the base environment.
FROM postgres:18 as builder_base_docker
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Australia/Perth
RUN apt-get clean
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install --no-install-recommends -y vim net-tools telnet procps wget ca-certificates
RUN apt-get install --no-install-recommends -y postgresql-18-postgis-3 postgresql-18-postgis-3-scripts


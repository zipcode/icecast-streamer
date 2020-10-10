FROM raspbian/stretch:latest

ENV USERNAME darkice
ENV UID 1000
ENV GID 1000

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y darkice openssl bash && rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod u+x /run.sh

EXPOSE 8000
CMD ["/run.sh"]

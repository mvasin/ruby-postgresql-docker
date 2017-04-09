FROM ruby:2.4.1
RUN apt-get update \
  && apt-get install -y postgresql postgresql-contrib \
  && apt-get install sudo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
EXPOSE 9292
COPY entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN mkdir /app
WORKDIR /app
ENTRYPOINT ["entrypoint.sh"]

CMD ["sh"]

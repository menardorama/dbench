FROM dmonakhov/alpine-fio

MAINTAINER Thomas Menard <menardorama@gmail.com>
RUN addgroup -g 1200 fio && \
    adduser -u 1200 -D -G fio fio


VOLUME /tmp
WORKDIR /tmp
COPY ./docker-entrypoint.sh /
USER 1200
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["fio"]

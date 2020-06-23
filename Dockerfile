FROM dmonakhov/alpine-fio

MAINTAINER Thomas Menard <menardorama@gmail.com>
RUN addgroup -g 1200 fio && \
    adduser --uid 1200 --ingroup fio fio


VOLUME /tmp
WORKDIR /tmp
COPY ./docker-entrypoint.sh /
USER 1200
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["fio"]

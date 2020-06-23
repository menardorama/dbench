FROM dmonakhov/alpine-fio

MAINTAINER Thomas Menard <menardorama@gmail.com>
RUN addgroup --gid 1200 fio && \
    useradd --uid 1200 --gid 1200 fio


VOLUME /tmp
WORKDIR /tmp
COPY ./docker-entrypoint.sh /
USER 1200
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["fio"]

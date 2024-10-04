FROM kong:latest

ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=autorack.proxy.rlwy.net
ENV KONG_PG_PORT=59190  
ENV KONG_PG_USER=postgres
ENV KONG_PG_PASSWORD=luWLggLhUEFWffkJlPuiWJAKQfFRLNyj
ENV KONG_PG_DATABASE=railway
ENV KONG_PROXY_ACCESS_LOG=/dev/stdout
ENV KONG_ADMIN_ACCESS_LOG=/dev/stdout
ENV KONG_PROXY_ERROR_LOG=/dev/stderr
ENV KONG_ADMIN_ERROR_LOG=/dev/stderr


ENTRYPOINT ["/bin/sh", "-c", "set -e; kong migrations bootstrap; kong start && tail -f /dev/null"]


EXPOSE 8000 8443 8001 8444 8002 8445 8003 8004

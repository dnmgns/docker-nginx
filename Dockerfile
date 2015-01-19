FROM nginx

MAINTAINER Magnus Lindvall <magnus@dnmgns.com>

# copy configuration
COPY nginx.conf /etc/nginx/nginx.conf

# set default vhost name
ENV VHOST localhost

# set the default command to execute
# when creating a new container
COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["nginx"]

FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Set default vhost name
ENV VHOST localhost

# Set the default command to execute
# when creating a new container
COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]
CMD ["nginx"]
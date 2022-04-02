FROM nginx:alpine
COPY . /usr/share/nginx/html
COPY /nginx-conf/default.conf /etc/nginx/conf.d
RUN ln -sf /dev/stdout /var/log/nginx/access.log && ln -sf /dev/stderr /var/log/nginx/error.log

# set timezone
RUN cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
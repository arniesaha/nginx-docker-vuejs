FROM nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY srv/ /etc/nginx/html/
RUN ls -la /etc/nginx/html/*

# for pushy notifications
COPY srv/static/service-worker.js /etc/nginx/html/

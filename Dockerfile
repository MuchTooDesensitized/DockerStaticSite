FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY parallax-template.zip /usr/share/nginx/html/
RUN unzip /usr/share/nginx/html/personal-cv.zip
RUN cp -pr personal-cv/* /usr/share/nginx/html

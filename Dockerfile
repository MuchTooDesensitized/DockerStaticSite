FROM nginx:alpine
COPY default.conf /etc/nginx/conf.d/default.conf
COPY personal-cv/personal-cv.zip /usr/share/nginx/html/
RUN cd /usr/share/nginx/html/ && unzip -o personal-cv.zip

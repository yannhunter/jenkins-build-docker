FROM ubuntu
LABEL yanick_ekongue (ekongue@gmail.com)
RUN apt-get update
RUN apt-get upgrade -y 
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git vim
RUN apt-get install -y nginx
EXPOSE 80
RUN rm -Rf /var/www/html/*
#ADD ./RESTAURANT /var/www/html/
RUN git clone https://github.com/yannhunter/RESTAURANT.git /var/www/html
CMD [ "nginx","-g","daemon off;" ]
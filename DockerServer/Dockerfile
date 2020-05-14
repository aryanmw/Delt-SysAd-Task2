FROM ubuntu
MAINTAINER Aryan Wadhavekar
RUN apt-get update 
ENV DEBIAN_FRONTEND=non-interactive
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN service apache2 start
COPY index.html /var/www/html
COPY form_submit.php /var/www/html
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]


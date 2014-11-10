# Version 1.2.0
FROM php:5.5
MAINTAINER Berti Golf <info@berti-golf.de>
RUN apt-get update
RUN apt-get install -y wget
VOLUME ["/www"]
WORKDIR /www
RUN bash -c "wget http://getcomposer.org/composer.phar && mv composer.phar /usr/local/bin/composer"
RUN  chmod a+x /usr/local/bin/composer
RUN  composer create-project --no-dev typo3/neos-base-distribution:1.2.*@dev TYPO3-Neos -n
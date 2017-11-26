ARG MYSQL_VERSION=8.0
FROM mysql:${MYSQL_VERSION}

MAINTAINER YongDe Pan <panyongde@gmail.com>

#####################################
# Set Timezone
#####################################

ENV TZ Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN chown -R mysql:root /var/lib/mysql/

ADD my.cnf /etc/mysql/conf.d/my.cnf

CMD ["mysqld"]

EXPOSE 3306

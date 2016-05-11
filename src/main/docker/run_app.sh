#!/bin/sh

MYSQL_LOOPS="10"
i=0
while ! nc $DB_PORT_3306_TCP_ADDR $DB_PORT_3306_TCP_PORT >/dev/null 2>&1 < /dev/null; do
  i=`expr $i + 1`
  if [ $i -ge $MYSQL_LOOPS ]; then
    echo "$(date) - ${DB_PORT_3306_TCP_ADDR}:${DB_PORT_3306_TCP_PORT} still not reachable, giving up"
    exit 1
  fi
  echo "$(date) - waiting for ${DB_PORT_3306_TCP_ADDR}:${DB_PORT_3306_TCP_PORT}..."
  sleep 1
done

java -Djava.security.egd=file:/dev/./urandom -jar /app.jar
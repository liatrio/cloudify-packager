rabbitmq-server &
exec /usr/bin/java -jar $LOGSTASH_JAR_PATH agent -f $LOGSTASH_CONF_PATH
#!/bin/bash

if [ -n "$JDBC_URL" ]; then
    OPTS="$OPTS -Djdbc.override=true"
    OPTS="$OPTS -Djdbc.driver=$JDBC_DRIVER"
    OPTS="$OPTS -Djdbc.url=$JDBC_URL"
    OPTS="$OPTS -Djdbc.user=$JDBC_USER"
    OPTS="$OPTS -Djdbc.password=$JDBC_PASSWORD"
fi
if [ -n "$BITBUCKET_HOME" ]; then
    OPTS="$OPTS -Dbitbucket.home=$BITBUCKET_HOME"
fi

if [[ $# -ne 1 ]]; then
    echo "Usage: $0 <path to restore file>"
else
    java $OPTS -jar /opt/bitbucket/bitbucket-backup-client/bitbucket-restore-client.jar $1
fi

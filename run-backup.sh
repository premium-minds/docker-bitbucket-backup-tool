#!/bin/bash

if [ -n "$BITBUCKET_USER" ]; then
    OPTS="$OPTS -Dbitbucket.user=$BITBUCKET_USER"
fi
if [ -n "$BITBUCKET_PASSWORD" ]; then
    OPTS="$OPTS -Dbitbucket.password=$BITBUCKET_PASSWORD"
fi
if [ -n "$BITBUCKET_BASE_URL" ]; then
    OPTS="$OPTS -Dbitbucket.baseUrl=$BITBUCKET_BASE_URL"
fi
if [ -n "$BITBUCKET_HOME" ]; then
    OPTS="$OPTS -Dbitbucket.home=$BITBUCKET_HOME"
fi
if [ -n "$BACKUP_HOME" ]; then
    OPTS="$OPTS -Dbackup.home=$BACKUP_HOME"
fi

java $OPTS -jar /opt/bitbucket/bitbucket-backup-client/bitbucket-backup-client.jar

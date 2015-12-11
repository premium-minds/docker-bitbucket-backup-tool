# Bitbucket Backup Client Docker Image

In order to run a backup, run something like this:

    docker run --rm \
        -e BITBUCKET_USER=admin \
        -e BITBUCKET_PASSWORD=admin \
        -e BITBUCKET_BASE_URL=http://your.bitbucket.url \
        --volumes-from=<bitbucket-data-container> \
        -v ~/bitbucket-backups:/backups \
       premiumminds/bitbucket-backup-tool

To restore a backup on corrupted instalation, type this:

    docker run --rm \
        --volumes-from=<bitbucket-data-container> \
        -v ~/bitbucket-backups:/backups \
      premiumminds/bitbucket-backup-tool restore /backups/backup-12345
                                                   
To restore a backup with a clean installation, use this:

    docker run --rm \
        -e JDBC_DRIVER=org.postgresql.Driver \
        -e JDBC_URL=jdbc:postgresql://localhost/bitbucket \
        -e JDBC_USER=bitbucketuser \
        -e JDBC_PASSWORD=<bitbucketuser password> \
        -e BITBUCKET_HOME=/bitbucket-data \
        -v <path to your bitbucket data>:/bitbucket-data \
        -v ~/bitbucket-backups:/backups \
      premiumminds/bitbucket-backup-tool restore /backups/backup-12345


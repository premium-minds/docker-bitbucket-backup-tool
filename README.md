# Bitbucket Backup Client Docker Image

In order to run a backup, run something like this:

    docker run --rm \
        -e BITBUCKET_USER=admin \
        -e BITBUCKET_PASSWORD=admin \
        -e BITBUCKET_BASE_URL=http://your.bitbucket.url \
        --volumes-from=<bitbucket-data-container> \
        -v ~/bitbucket-backups:/backups \
       premiumminds/bitbucket-backup-tool

To restore a backup, type this:

    docker run --rm \
        -e BITBUCKET_USER=admin \
        -e BITBUCKET_PASSWORD=admin \
        -e BITBUCKET_BASE_URL=http://your.bitbucket.url \
        --volumes-from=<bitbucket-data-container> \
        -v ~/bitbucket-backups:/backups \
      premiumminds/bitbucket-backup-tool restore /backups/backup-12345
                                                   

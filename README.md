# Postgrey server

# Prep data folders

mkdir -p /srv/postgrey/dbdir
chown -R 104:109 /srv/postgrey

# Run it

docker run --rm -it -v /srv/postgrey/dbdir:/var/lib/postgrey xforty/postgrey

cd /datastore/sources
git clone https://github.com/jamtur01/james_blog.git

generate:

docker run  --name james_blog -v /datastore/sources/james_blog:/data gide0n/jekyll

run:

docker run  --name apache -d -P --volumes-from james_blog gide0n/apache

backup:

docker run --rm --volumes-from james_blog -v /datastore/sources/:/backup ubuntu   tar cfvz /backup/james_blog.backup.tar.gz /var/www/html

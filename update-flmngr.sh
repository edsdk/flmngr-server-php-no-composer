#!/bin/sh
set -e
composer install

rm -rf dist
mkdir dist
cd dist
mkdir flmngr
cd flmngr
cp -rp ../../vendor .

mkdir tmp
mkdir cache
cp -rp ../../files .
cp -rp ../../flmngr.php .
cd ..

zip flmngr.zip -r flmngr
rm -r flmngr/tmp
rm -r flmngr/cache
rm -r flmngr/files

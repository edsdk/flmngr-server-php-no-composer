#!/bin/sh
set -e
composer update

rm -rf dist
mkdir dist
cd dist


# Regular no-composer build

mkdir flmngr
cd flmngr
cp -rp ../../vendor .

mkdir tmp
mkdir cache

#cp -rp ../../files .
mkdir files

cp -rp ../../flmngr.php .
cd ..


# ZIP

zip flmngr-php.zip -r flmngr


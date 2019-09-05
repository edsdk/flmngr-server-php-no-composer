#!/bin/sh
set -e
composer install

rm -rf dist
mkdir dist
cd dist


# Regular no-composer build

mkdir flmngr
cd flmngr
cp -rp ../../vendor .

mkdir tmp
mkdir cache
cp -rp ../../files .
cp -rp ../../flmngr.php .
cd ..


# ZIP

zip flmngr.zip -r flmngr



# D8 edition

mkdir flmngr-d8
cd flmngr-d8
cp -rp ../../vendor .

cp -rp ../../flmngr-d8.php flmngr.php
cd ..
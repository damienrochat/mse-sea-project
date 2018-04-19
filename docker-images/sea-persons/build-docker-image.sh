#!/bin/bash

rm -Rf tmp
mkdir tmp

mvn clean package -f ../../pom.xml
cp ../../target/sea-persons-*.jar ./tmp/

docker build -t sea-lab/persons .

#!/bin/bash
for i in {1..1000}
do
    echo """
server {
    location / {
        root /data/$i/www;
}

location /images/$i {
    root /data;
    }
}
""" > config/configfile$i.txt
done
#!/bin/bash
echo " starting nginx server for HTTPS and REVERSE proxy "

service nginx start 

exec "$@";

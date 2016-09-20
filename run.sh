#!/bin/bash

crontab /cron

service cron start
service nginx start

tail -f /dev/null


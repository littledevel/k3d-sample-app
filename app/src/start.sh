#!/bin/bash
echo "Starting application"
# APP_HOSTNAME is needed so Flask can listen to any ip
# We pass this from the Makefile as env var
APP_HOSTNAME=${APP_HOSTNAME:-127.0.0.1}
APP_PORT=${APP_PORT:-5000}
# Debug level for Flask
APP_DEBUG=${APP_DEBUG:-""}
flask run -h $APP_HOSTNAME -p $APP_PORT $APP_DEBUG
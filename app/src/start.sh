#!/bin/bash
echo "Starting application"
# BACKEND_HOSTNAME is needed so Flask can listen to any ip
# We pass this from the Makefile as env var
BACKEND_HOSTNAME=${BACKEND_HOSTNAME:-127.0.0.1}
BACKEND_PORT=${BACKEND_PORT:-5000}
# Debug level for Flask
BACKEND_DEBUG=${BACKEND_DEBUG:-""}
flask run -h $BACKEND_HOSTNAME -p $BACKEND_PORT $BACKEND_DEBUG

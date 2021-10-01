#!/bin/bash

# Welcome
echo 'Server start script initialized...'

# Set the port
PORT=4040

# Welcome
echo 'Building web...'

# building web
flutter build web

# Kill anything that is already running on that port
echo 'Cleaning port' $PORT '...'
fuser -k 4040/tcp

# Change directories to the release folder
cd build/web/

# Start the server
echo 'Starting server on port' $PORT '...'
python3 -m http.server $PORT

# Exit
echo 'Server exited...'
#!/bin/bash

# Change to the client directory and run npm start
cd ../client/
npm start &

# Change to the server/apis directory and run nodemon index
cd ../server/apis/
nodemon index
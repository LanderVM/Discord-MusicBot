#!/bin/bash

# Load environment variables from .env file
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

# Run Lavalink server
java -jar Lavalink.jar

# Keep the terminal open after Lavalink stops
read -p "Press any key to continue..."
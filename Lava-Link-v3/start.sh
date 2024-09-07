#!/bin/bash

# Set environment variables
export LAVALINK_SERVER_PORT=2333
export LAVALINK_SERVER_ADDRESS=0.0.0.0
export LAVALINK_SERVER_PASSWORD=youshallnotpass

# Run Lavalink server
java -jar Lavalink.jar

# Keep the terminal open after Lavalink stops
read -p "Press any key to continue..."

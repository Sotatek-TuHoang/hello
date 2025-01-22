#!/bin/bash

# Get the current working directory
CURRENT_DIR=$(pwd)

# Set the LD_LIBRARY_PATH to include the current directory
export LD_LIBRARY_PATH=$CURRENT_DIR:$LD_LIBRARY_PATH

# Print the updated LD_LIBRARY_PATH
echo "LD_LIBRARY_PATH is set to: $LD_LIBRARY_PATH"

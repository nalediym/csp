#!/bin/bash

# Check if a name for the virtual environment is provided
if [ -z "$1" ]; then
  echo "Usage: ./create_venv.sh <env_name>"
  exit 1
fi

# Store the environment name
ENV_NAME=$1

# Create the virtual environment
echo "Creating virtual environment '$ENV_NAME'..."
python3 -m venv $ENV_NAME

# Check if the virtual environment was created successfully
if [ -d "$ENV_NAME" ]; then
  echo "Virtual environment '$ENV_NAME' created successfully."
else
  echo "Failed to create virtual environment."
  exit 1
fi

# Activate the virtual environment
echo "Activating virtual environment '$ENV_NAME'..."
source $ENV_NAME/bin/activate

# Confirm that the virtual environment is activated
if [ $? -eq 0 ]; then
  echo "Virtual environment '$ENV_NAME' activated. You can now install packages using pip."
else
  echo "Failed to activate the virtual environment."
fi

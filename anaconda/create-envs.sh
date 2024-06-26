#!/bin/bash
set -e

cd "$(dirname "$0")"

# Directory containing the yaml files
ENVS_DIR="./envs"

# Check if the directory exists
if [ ! -d "$ENVS_DIR" ]; then
  echo "Directory $ENVS_DIR does not exist."
  exit 1
fi

# Loop through each yaml file in the directory
for yaml_file in "$ENVS_DIR"/*.yml; do

  # Extract environment name from the yaml file
  env_name=$(basename "$yaml_file" .yaml)

  echo "Create env ${yaml_file}..."

  # Create the environment from the yaml file
  conda env create --yes --file "$yaml_file"

  echo "Created env ${yaml_file}."
  echo ""
done

echo "All environments have been recreated."
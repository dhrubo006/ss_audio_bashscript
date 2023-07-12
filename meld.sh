#!/bin/bash

# Set the directory to store the downloaded files
download_dir="meld_datasets"

# Create the download directory if it doesn't exist
mkdir -p "$download_dir"

# Download MELD dataset file
wget https://web.eecs.umich.edu/~mihalcea/downloads/MELD.Raw.tar.gz -P "$download_dir"

# Extract the downloaded zip files
tar -xzf "$download_dir/MELD.Raw.tar.gz" -C "$download_dir"

# Remove the downloaded zip files
rm "$download_dir/MELD.Raw.tar.gz"


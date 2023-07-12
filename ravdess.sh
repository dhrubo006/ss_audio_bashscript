#!/bin/bash

# Set the directory to store the downloaded files
download_dir="ravdess_datasets"

# Create the download directory if it doesn't exist
mkdir -p "$download_dir"

# Download RAVDESS dataset files
wget http://zenodo.org/record/1188976/files/Audio_Speech_Actors_01-24.zip -P "$download_dir"
wget http://zenodo.org/record/1188976/files/Audio_Song_Actors_01-24.zip -P "$download_dir"

# Extract the downloaded zip files
unzip "$download_dir/Audio_Speech_Actors_01-24.zip" -d "$download_dir"
unzip "$download_dir/Audio_Song_Actors_01-24.zip" -d "$download_dir"

# Remove the downloaded zip files
rm "$download_dir/Audio_Speech_Actors_01-24.zip" "$download_dir/Audio_Song_Actors_01-24.zip"

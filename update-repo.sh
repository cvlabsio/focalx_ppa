#!/bin/bash

# Create Packages file
dpkg-scanpackages --multiversion . > Packages

# Compress Packages file
gzip -k -f Packages

# Create Release file
apt-ftparchive release . > Release

# Sign Release file with GPG
gpg --default-key cemaxecuter@protonmail.com -abs -o - Release > Release.gpg

# Clear sign Release file with GPG
gpg --default-key cemaxecuter@protonmail.com --clearsign -o - Release > InRelease

# Add all files to git staging area
git add -A

# Commit changes with message "update"
git commit -m "update"

# Push changes to git repository
git push

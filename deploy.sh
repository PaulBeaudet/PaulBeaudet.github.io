#!/bin/bash
git add .
git commit -m "$1"
JEKYLL_ENV=production jekyll build
aws s3 cp _site/ s3://paul.deabute.com --recursive
git push

#!/bin/bash
jekyll build
git add .
git commit -m "automatic site update"
git push origin master
rsync -Pahv --exclude=.well-known --delete-after _site/ ../../palinuro,kbpbot/palinuro.dev/

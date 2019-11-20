#!/bin/bash
jekyll build
git add .
git commit -m "automatic site update"
git push --mirror origin
rsync -Pahv --exclude=files -exclude=.well-known --delete-after _site/ ../../../public/palinuro/
rsync -Pahv --exclude=files -exclude=.well-known --delete-after _site/ ../../palinuro,kbpbot/my-site/

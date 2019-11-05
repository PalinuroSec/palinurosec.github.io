#!/bin/bash
jekyll build
rsync -Pahv --exclude=files -exclude=.well-known --delete-after _site/ ../../../public/palinuro/

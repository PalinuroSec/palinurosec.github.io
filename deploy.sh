#!/bin/bash
jekyll build
rsync -Pahv --exclude=files --delete-after _site/ ../../../public/palinuro/

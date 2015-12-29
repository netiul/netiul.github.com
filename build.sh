#!/usr/bin/env sh
# make the script fail for any failed command
set -e
# make the script display the commands it runs to help debugging failures
set -x

# build site
sass source/css/style.scss:source/css/style.css --style compressed --no-cache
./vendor/bin/sculpin generate --env prod
touch output_prod/.nojekyll

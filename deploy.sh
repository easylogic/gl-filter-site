#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd docs/

# if you are deploying to a custom domain
echo 'colorpicker.easylogic.studio' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/easylogic/codemirror-colorpicker.git master:gh-pages

cd -
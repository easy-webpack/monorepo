#!/usr/bin/env bash

for pkg in *
do
  [[ -d "$pkg" ]] &&
  (
    echo ">> PROCESSING [$pkg] <<"
    cd $pkg
    "$@"
  )
done
echo ">> ALL DONE <<"

# useful commands:
# delete line containing regex: gsed -i "/\b\(typings install\)\b/d" package.json
# add to gitignore: echo '...' '>>' .gitignore
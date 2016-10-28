#!/usr/bin/env bash

for pkg in *
do
  [[ -d "$pkg" ]] &&
  (
    echo ">> PROCESSING [$pkg] <<"
    cd $pkg
    git add .
    git commit -m "$1"
  )
done
echo ">> ALL DONE <<"

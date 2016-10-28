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

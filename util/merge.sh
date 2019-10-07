#!/bin/bash

set -e

git checkout latest

while read -r line ; do
  git checkout "$line"
  git merge latest --ff-only
done < VERSIONS

git checkout latest

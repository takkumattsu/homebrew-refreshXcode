#!/bin/sh

OLD_SHA=$(cat refreshXcode.rb | grep "sha256 \"" | cut -d"\"" -f 2)
NEW_SHA=$(openssl dgst -sha1 bin/refreshXcode | cut -d" " -f 2)

echo $OLD_SHA
echo $NEW_SHA

if [ $OLD_SHA == $NEW_SHA ]; then
  echo "sha256 did not change."
  echo "old:$OLD_SHA"
  echo "new:$NEW_SHA"
  exit 0
fi



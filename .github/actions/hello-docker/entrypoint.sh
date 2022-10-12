#!/bin/sh

if [ true ]
then
  echo 'error'
  exit 1
fi

echo "::debug ::Debug Message"
echo "::warning ::Warning Message"
echo "::error ::Error Message"

echo "::add-mask::$1"
echo "Hello $1"
TIME=$(date)

echo "time=$TIME" >> $GITHUB_OUTPUT

echo "::group::Some Extendable logs"
echo "Some Stuff"
echo "Some Stuff"
echo "Some Stuff"
echo "::endgroup::"

echo "HELLO=hello" >> $GITHUB_ENV
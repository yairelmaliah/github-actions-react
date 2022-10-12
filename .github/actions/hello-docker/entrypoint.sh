#!/bin/sh

echo "::debug ::Debug Message"
echo "::warning ::Warning Message"
echo "::error ::Error Message"

echo "::add-mask::$1"
echo "Hello $1"
TIME=$(date)

echo "::set-output name=time::$TIME"

echo "::group::Some Extendable logs"
echo "Some Stuff"
echo "Some Stuff"
echo "Some Stuff"
echo "::endgroup::"

echo "::set-env name=HELLO::hello"

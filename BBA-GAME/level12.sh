#!/bin/bash

#Write a script that reads a configuration file in the format KEY=VALUE and prints each key-value pair.

Config_file=setting.conf

if [ ! -f $Config_file ];then
    echo "Configuration file nonexistent"
    exit 1
fi

while IFS='=' read -r key value; do
    echo "Key: $key, Value: $value"
done < $Config_file


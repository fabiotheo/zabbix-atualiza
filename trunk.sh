#!/bin/bash

TRUNK1=$(sudo -u root /usr/sbin/asterisk -vvvr -rx "sip show peers" | grep UNREACHABLE | awk '{print$1}' | awk 'length($0) > 9')
TRUNK2=$(sudo -u root /usr/sbin/asterisk -vvvr -rx "sip show peers" | grep UNKNOWN | awk '{print$1}' | awk 'length($0) > 9')


if [ -n "$TRUNK1" ] || [ -n "$TRUNK2" ]
then
        echo "0"

    else
        echo "1"
fi

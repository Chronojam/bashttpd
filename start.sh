#!/bin/bash
sed -i "s#{{ hostname }}#$(hostname)#g" bashttpd.conf
socat TCP4-LISTEN:80 EXEC:/serve-once/bashttpd

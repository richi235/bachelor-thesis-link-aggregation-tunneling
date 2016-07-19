#!/bin/bash

xeyes &
xeyes &

sleep 5
kill $(jobs -p)

exit

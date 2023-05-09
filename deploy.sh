#!/bin/bash
touch scenario.txt
ls -lrt
/usr/bin/find ./src/it/resources/scenarios -type f -exec basename {} \\; >> scenario.txt

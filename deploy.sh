#!/bin/bash
touch scenario.txt
ls -lrt
find ./src/it/resources/scenarios -type f -exec basename {} \; >> scenario.txt

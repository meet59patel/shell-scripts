#!/bin/bash

# This script will count number of lines in first argument

echo $(wc -l < "$1")
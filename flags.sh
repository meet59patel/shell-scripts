#!/bin/bash
while getopts ":d:f:" opt; do
  case $opt in
    d)
      echo "-d was triggered with $OPTARG" >&2
      ;;
    f)
      echo "-f was triggered with $OPTARG" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done
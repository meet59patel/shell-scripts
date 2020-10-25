#!/bin/sh

PAPERTRAIL_TOKEN="ENTER YOUR PAPERTRAIL TOKEN HERE"

DATE=23
MONTH=10
YEAR=2020

mkdir -p ./$DATE-$MONTH-$YEAR

for HOUR in {0..23}; do
  if [[ $HOUR -lt 10 ]]; then
    curl --no-include -o ./logs/$YEAR-$MONTH-$DATE-0$HOUR.tsv.gz -L -H "X-Papertrail-Token: $PAPERTRAIL_TOKEN" \
        https://papertrailapp.com/api/v1/archives/$YEAR-$MONTH-$DATE-0$HOUR/download
  else
    curl --no-include -o ./logs/$YEAR-$MONTH-$DATE-$HOUR.tsv.gz -L -H "X-Papertrail-Token: $PAPERTRAIL_TOKEN" \
        https://papertrailapp.com/api/v1/archives/$YEAR-$MONTH-$DATE-$HOUR/download
  fi
done
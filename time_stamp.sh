#!/bin/bash

# Simple HTTP server for Prometheus metrics
while true; do
  NOW=$(date +%s)
  echo "timestamp_seconds $NOW" > /tmp/metrics
  sleep 5
done &
  
# Log timestamps
echo "start"
while true; do
  echo "$(date '+%Y-%m-%d %H:%M:%S')"
  sleep 5
done

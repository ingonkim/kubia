#!/bin/bash

clear
echo "-------------------------------------------------------------------- "  $(date)

while true; 
  do kubectl get pods; 
  sleep 5; 
done

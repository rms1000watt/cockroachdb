#!/usr/bin/env bash

echo "Stopping old Cockroach.."
docker stop cockroach

echo "Starting Cockroach..."
docker run -itd --rm --name cockroach -p "26257:26257" -p "8080:8080" rms1000watt/cockroachdb start --insecure

echo "Sleeping 2s.."
sleep 1

echo "Opening UI.."
sleep 1
open http://localhost:8080

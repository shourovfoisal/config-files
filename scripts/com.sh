#!/bin/bash
set -e

MAX_RETRIES=5   # How many times to check
SLEEP_TIME=1    # Seconds to wait between checks

docker compose down

# Wait until all containers in this project are gone
for ((i=1; i<=MAX_RETRIES; i++)); do
    if [ -z "$(docker compose ps -q)" ]; then
        echo "✅ All containers stopped."
        docker compose up -d
        exit 0
    fi
    echo "Containers still stopping... (attempt $i/$MAX_RETRIES)"
    sleep $SLEEP_TIME
done

echo "Containers still running after $((MAX_RETRIES * SLEEP_TIME)) seconds."
exit 1

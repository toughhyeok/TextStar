#!/bin/bash

show_error() {
    echo "Failed to execute the process. Exiting..."
    exit 1
}

# Run docker-compose up --build -d
docker-compose up --build -d || show_error

# Show spinning slash for 5 seconds
echo "Waiting for DB..."
seconds=5
chars="/-\|"

while [ $seconds -gt 0 ]; do
  for (( i=0; i<${#chars}; i++ )); do
    sleep 0.5
    echo -en "\t...${chars:$i:1}..." "\r"
  done
  ((seconds--))
done

# Create superuser
docker compose exec app sh -c "python manage.py createsuperuser" || show_error

echo -e "🌟 Now enjoy TextStart at\n\thttp://<alias>/admin"

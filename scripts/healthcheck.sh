#!/bin/bash

# Function to check Apache2 service status
check_apache_status() {
    apache_status=$(systemctl status apache2)
    echo "$apache_status"
}

# Main function
main() {
    echo "Monitoring Apache2 service..."
    while true; do
        # Check Apache2 service status
        check_apache_status

        # Sleep for 60 seconds before checking again
        sleep 60
    done
}

# Call the main function
main

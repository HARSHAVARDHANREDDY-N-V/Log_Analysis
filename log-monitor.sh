#!/bin/bash

# Function to monitor log file for new entries
monitor_log() {
    echo "Monitoring log file: $1"
    tail -F "$1" | while read line; do
        # Implement security feature: Check for sensitive information
        if echo "$line" | grep -qE '(password|secret)'; then
            echo "Potential sensitive information found in log: $line"
            # Implement action for handling sensitive information, e.g., notify admin
            # mail -s "Potential sensitive information found in log" admin@example.com <<< "$line"
        fi
        echo "$line"
    done
}

# Function to perform basic log analysis
analyze_log() {
    echo "Performing log analysis on: $1"
    # Count occurrences of ERROR messages
    error_count=$(grep -c "ERROR" "$1")
    echo "Number of ERROR messages: $error_count"
    # Implement scalability feature: Archive log file if it exceeds a certain size
    max_log_size=10000000  # 10 MB
    log_size=$(stat -c %s "$1")
    if [ $log_size -gt $max_log_size ]; then
        echo "Log file size exceeds maximum limit. Archiving..."
        mv "$1" "$1.$(date +"%Y%m%d%H%M%S").bak"
        touch "$1"
        echo "Log file archived successfully."
    fi
    # Generate summary report of top error messages
    echo "Top error messages:"
    grep "ERROR" "$1" | sort | uniq -c | sort -nr | head -n 10
}

# Main function
main() {
    # Check if log file path is provided
    if [ -z "$1" ]; then
        echo "Usage: $0 <log_file>"
        exit 1
    fi

    log_file="$1"

    # Trap Ctrl+C to gracefully exit
    trap 'echo "Exiting..."; exit 0' SIGINT

    # Call function to monitor log file
    monitor_log "$log_file" &

    # Call function to analyze log file
    analyze_log "$log_file"
}

# Call main function with provided arguments
main "$@"

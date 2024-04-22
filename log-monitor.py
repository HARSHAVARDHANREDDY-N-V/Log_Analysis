import logging
import time
import signal
import sys
import os

def monitor_log(log_file):
    print("Monitoring log file:", log_file)
    with open(log_file, 'r') as file:
        while True:
            line = file.readline()
            if not line:
                time.sleep(0.1)  # Sleep briefly to avoid high CPU usage
                continue
            # Implement security feature: Check for sensitive information
            if 'password' in line or 'secret' in line:
                print("Potential sensitive information found in log:", line.strip())
                # Implement action for handling sensitive information, e.g., notify admin
                # os.system('mail -s "Potential sensitive information found in log" admin@example.com <<< "{}"'.format(line.strip()))
            print(line, end='', flush=True)

def analyze_log(log_file):
    print("Performing log analysis on:", log_file)
    with open(log_file, 'r') as file:
        lines = file.readlines()
        error_count = sum(1 for line in lines if 'ERROR' in line)
        print("Number of ERROR messages:", error_count)
        print("Top error messages:")
        error_messages = [line.strip() for line in lines if 'ERROR' in line]
        from collections import Counter
        top_errors = Counter(error_messages).most_common(10)
        for error, count in top_errors:
            print(count, error)

def signal_handler(sig, frame):
    print('\nLogging interrupted. Exiting.')
    sys.exit(0)

def main():
    if len(sys.argv) != 2:
        print("Usage: {} <log_file>".format(sys.argv[0]))
        sys.exit(1)

    log_file = sys.argv[1]

    signal.signal(signal.SIGINT, signal_handler)

    monitor_log(log_file)
    analyze_log(log_file)

if __name__ == "__main__":
    main()

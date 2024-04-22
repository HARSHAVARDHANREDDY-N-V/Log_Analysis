# DevOps Internship Assignment: Log Analysis and Monitoring Script

This assignment involves creating a script to automate the analysis and monitoring of log files. The script will be implemented using bash shell scripting or Python scripting and will include basic log analysis and monitoring functionalities.

## Objective:

The main objective of this assignment is to develop a script that automates the process of analyzing and monitoring log files. The script should be capable of monitoring a specified log file for new entries in real-time, performing basic log analysis (such as counting occurrences of specific keywords or patterns), and generating summary reports.

## Requirements:

- **Scripting Language:** Write the script using either bash shell or Python scripting.
- **Monitoring Functionality:** Implement a mechanism to continuously monitor a specified log file for new entries, displaying them in real-time.
- **Log Analysis:** Enhance the script to perform basic analysis on log entries, including counting occurrences of specific keywords or patterns and generating summary reports.
- **Error Handling:** Include error handling mechanisms to provide feedback on script execution and handle interruptions gracefully.
- **Logging:** Implement logging to provide feedback on script execution and to log any errors or warnings encountered during runtime.
- **Additional Features:** Optionally, include additional features beyond the basic requirements to demonstrate creativity and enhance the script's functionality.

## Tasks:

### Log File Monitoring:

- Write a script that continuously monitors a specified log file for new entries.
- Use appropriate commands or modules (such as `tail` in bash or Python's `tail -f` equivalent) to track and display new log entries in real-time.
- Implement a mechanism to stop the monitoring loop gracefully (e.g., using a signal like Ctrl+C).

### Log Analysis:

- Enhance the script to perform basic analysis on log entries:
  - Count occurrences of specific keywords or patterns (e.g., error messages, HTTP status codes).
  - Generate summary reports (e.g., top error messages).

## Deliverables:

- **Script Files:** Provide the completed bash shell script (`log-monitor.sh`) or Python script (`log-monitor.py`) with all necessary functionalities implemented.
- **README.md File:** Include a brief README.md file explaining how to use and test the script, including any prerequisites or dependencies.
- **GitHub Repository:** Host the solution on GitHub and share the repository link for evaluation.

## Evaluation Criteria:

- **Correctness and Completeness:** Assess the correctness and completeness of the script's functionality based on the provided requirements.
- **Code Quality:** Evaluate the clarity of code structure, comments, and variable naming conventions for readability and maintainability.
- **Error Handling:** Review the effectiveness of error handling mechanisms and the robustness of the script in handling various scenarios.
- **Creativity and Additional Features:** Consider any additional features implemented beyond the basic requirements to enhance the script's functionality and demonstrate creativity.

## Usage Instructions:

1. **Clone the Repository:**
  
   git clone https://github.com/HARSHAVARDHANREDDY-N-V/Log_Analysis.git
   cd log-analysis-monitoring-script


2. **Execute the Script:**
   - For bash shell script:
   
     ./log-monitor.sh /path/to/log/file.log
   
   - For Python script:
    
     python log-monitor.py /path/to/log/file.log
     

3. **Follow on-screen Instructions:**
   - The script will start monitoring the specified log file and display new entries in real-time.
   - Additionally, it will perform basic log analysis and display summary reports.
   - Press `Ctrl+C` to interrupt monitoring and exit the script.

4. **Customization:**
   - Customize the script as needed, such as modifying keywords for log analysis or adjusting log file size limits for archiving.
   - Explore additional features and enhancements to extend the script's functionality.

## Additional Notes:

- Feel free to experiment with the script, explore different log files, and customize it to suit your specific requirements.
- Any feedback or contributions to improve the script are highly appreciated.



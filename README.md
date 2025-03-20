# Beginner-Friendly Bash Scripting Collection

Welcome to this beginner-friendly Bash scripting collection! This repository includes a series of simple Bash scripts that help you understand various basic concepts in shell scripting, from variables and loops to user management and system monitoring. These scripts are designed to help you practice and develop your skills in Bash scripting.

## Table of Contents
1. [Basic Script - 01_basic.sh](./scripts/01_basic.sh)
2. [Comments in Bash - 02_comments.sh](./scripts/02_comments.sh)
3. [Variables in Bash - 03_variable.sh](./scripts/03_variable.sh)
4. [Arrays in Bash - 04_arrays.sh](./scripts/04_arrays.sh)
5. [Key-Value Pairs in Bash - 05_keyvalue.sh](./scripts/05_keyvalue.sh)
6. [String Operations in Bash - 06_string_ops.sh](./scripts/06_string_ops.sh)
7. [Reading User Input - 07_input.sh](./scripts/07_input.sh)
8. [Arithmetic Operations - 08_arithmetic_ops.sh](./scripts/08_arithmetic_ops.sh)
9. [Conditional Statements - 09_conditional_statements.sh](./scripts/09_conditional_statements.sh)
10. [Case Statements - 10_case_statements.sh](./scripts/10_case_statements.sh)
11. [Loops in Bash - 11_loops.sh](./scripts/11_loops.sh)
12. [Functions in Bash - 12_functions.sh](./scripts/12_functions.sh)
13. [Arguments in Bash Scripts - 13_args.sh](./scripts/13_args.sh)
14. [System Variables - 14_vars.sh](./scripts/14_vars.sh)
15. [Redirecting Output - 15_redirect.sh](./scripts/15_redirect.sh)
16. [Monitoring RAM - 16_monitor_ram.sh](./scripts/16_monitor_ram.sh)
17. [Monitoring Disk Space - 17_monitor_disk_space.sh](./scripts/17_monitor_disk_space.sh)
18. [Log Backup - 18_log_backup.sh](./scripts/18_log_backup.sh)
19. [User Management - 19_user_management.sh](./scripts/19_user_management.sh)

## Getting Started

### Prerequisites

Make sure you have Bash installed on your system (most Linux distributions come with Bash by default). If you're using Windows, you can install WSL (Windows Subsystem for Linux) or use a tool like Git Bash.

### How to Use the Scripts

1. **Clone the repository:**
    ```bash
    git clone https://github.com/iamshoaibxyz/scripting.git
    cd scripting
    ```

2. **Navigate to the scripts directory:**
    ```bash
    cd scripts
    ```

3. **Run any of the scripts:**
    ```bash
    bash 01_basic.sh
    ```

   Each script is designed to be run independently, and you can modify or experiment with them to understand the concepts better.

### Key Concepts Covered

- **Basic Scripting**: Creating simple scripts, printing text, and using `echo`.
- **Comments**: Writing single-line and multi-line comments to explain your code.
- **Variables**: Using variables, modifying them, and understanding read-only variables.
- **Arrays**: Working with indexed arrays and operations like slicing and appending.
- **Key-Value Pairs**: Using associative arrays to store and retrieve data.
- **String Operations**: Manipulating strings such as uppercase, lowercase, and replacing text.
- **User Input**: Capturing and using user input in scripts.
- **Arithmetic Operations**: Performing basic arithmetic using different methods (`(( ))`, `let`, `expr`, etc.).
- **Conditional Statements**: Making decisions with `if`, `elif`, and `else`.
- **Case Statements**: Using the `case` structure for multiple condition checks.
- **Loops**: Implementing `for`, `while`, and `until` loops for repetition.
- **Functions**: Defining and using functions for better code organization.
- **Script Arguments**: Using arguments passed to the script from the command line.
- **System Variables**: Using built-in environment variables such as `$USER`, `$HOME`, etc.
- **Output Redirection**: Redirecting and managing outputs using `>`, `>>`, `2>`, `tee`, etc.
- **System Monitoring**: Checking system resources like RAM and disk space.
- **Backup Automation**: Writing scripts to backup logs and compress files.
- **User Management**: Creating, deleting, and displaying user information in a Linux system.

### Example Usage

1. **Basic Script**:
    ```bash
    bash 01_basic.sh
    ```
    This script simply prints "Hello, Buddy!" to the terminal.

2. **Working with Variables**:
    ```bash
    bash 03_variable.sh
    ```
    This script demonstrates how to define variables, change their values, and print them.

3. **Monitoring RAM**:
    ```bash
    bash 16_monitor_ram.sh
    ```
    This script checks the total, used, and free RAM, and gives a warning if RAM usage exceeds 80%.

4. **User Management**:
    ```bash
    bash 19_user_management.sh
    ```
    This script provides a simple interactive menu to manage users in your system.

## Contributing

If you find any issues or have suggestions for new features or improvements, feel free to open an issue or submit a pull request!


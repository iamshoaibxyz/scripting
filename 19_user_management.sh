#!/bin/bash

# Function to display the menu
display_menu() {
    echo "==============================="
    echo "      User Management Script    "
    echo "==============================="
    echo "1. Create a New User"
    echo "2. Delete a User"
    echo "3. Display User Information"
    echo "4. Exit"
    echo "==============================="
    echo -n "Please choose an option (1-4): "
}

# Function to create a new user
create_user() {
    echo -n "Enter username to create: "
    read username
    
    # Check if the user already exists
    if id "$username" &>/dev/null; then
        echo "Error: User '$username' already exists."
    else
        # Create the user
        sudo useradd "$username"
        if [ $? -eq 0 ]; then
            echo "User '$username' created successfully."
        else
            echo "Error: Failed to create user '$username'."
        fi
    fi
}

# Function to delete a user
delete_user() {
    echo -n "Enter username to delete: "
    read username
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Delete the user
        sudo userdel "$username"
        if [ $? -eq 0 ]; then
            echo "User '$username' deleted successfully."
        else
            echo "Error: Failed to delete user '$username'."
        fi
    else
        echo "Error: User '$username' does not exist."
    fi
}

# Function to display user information
display_user_info() {
    echo -n "Enter username to display info: "
    read username
    
    # Check if the user exists
    if id "$username" &>/dev/null; then
        # Display user information
        echo "User Information for '$username':"
        id "$username"
    else
        echo "Error: User '$username' does not exist."
    fi
}

# Main menu loop
while true; do
    display_menu
    read option
    
    case $option in
        1)
            create_user
            ;;
        2)
            delete_user
            ;;
        3)
            display_user_info
            ;;
        4)
            echo "Exiting User Management Script."
            break
            ;;
        *)
            echo "Invalid option. Please choose a valid option (1-4)."
            ;;
    esac
    echo ""
done


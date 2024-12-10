#!/bin/bash

# Function to display a multiplication table for a number
display_table() {
    local number=$1
    local start=$2
    local end=$3
    local order=$4

# Using c-style For loop
    echo "Multiplication table for $number ($order order):"
    if [ "$order" == "ascending" ]; then
        for ((i = start; i <= end; i++)); do
            echo "$number x $i = $((number * i))"
        done
    else
        for ((i = end; i >= start; i--)); do
            echo "$number x $i = $((number * i))"
        done
    fi
    echo
}

# Prompt the user to enter a number
echo "Enter a number between 1 and 10:"
read number

# Validate the number input
if ! [[ "$number" =~ ^[1-9]$|^10$ ]]; then
    echo "Invalid input! Please enter a number between 1 and 10."
    exit 1
fi

# Ask the user for the type of table to display
echo "Choose an option:"
echo "1. Full multiplication table (1 to 10)"
echo "2. Partial multiplication table (specify a range)"
read choice

case $choice in
    1)
        # Ask for ascending or descending order
        echo "Do you want the table in ascending or descending order? (enter 'ascending' or 'descending')"
        read order
        if [[ "$order" != "ascending" && "$order" != "descending" ]]; then
            echo "Invalid input! Please enter 'ascending' or 'descending'."
            exit 1
        fi

        # Display the full table
        display_table $number 1 10 $order
        ;;
    2)
        # Prompt for the range
        echo "Enter the start of the range (1 to 10):"
        read start
        echo "Enter the end of the range (1 to 10):"
        read end

        # Validate the range inputs
        if ! [[ "$start" =~ ^[1-9]$|^10$ ]] || ! [[ "$end" =~ ^[1-9]$|^10$ ]] || ((start > end)); then
            echo "Invalid range! Please ensure the start and end are between 1 and 10, and start <= end."
            exit 1
        fi

        # Ask for ascending or descending order
        echo "Do you want the table in ascending or descending order? (enter 'ascending' or 'descending')"
        read order
        if [[ "$order" != "ascending" && "$order" != "descending" ]]; then
            echo "Invalid input! Please enter 'ascending' or 'descending'."
            exit 1
        fi

        # Display the partial table
        display_table $number $start $end $order
        ;;
    *)
        # Handle invalid choice
        echo "Invalid choice! Please select option 1 or 2."
        exit 1
        ;;
esac


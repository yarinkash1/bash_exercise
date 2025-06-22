while true; do
    echo "Please enter your grade(0-100)"
    read grade

    # Check if input is composed of numbers
    # ! -> Logical not operator in bash
    # =~ -> Checks if the value matches the pattern
    # ^ -> Start of the string
    # [0-9] -> Any digit from 0 to 9
    # + -> One or more digit
    # $ -> End of the string
    if ! [[ "$grade" =~ ^[0-9]+$ ]]; then
        echo "Invalid input, please try again using a number"
        continue
    fi

    # Check if input is a valid number between 0 and 100
    if [ $grade -gt 100 ] || [ $grade -lt 0 ]; then
        echo "You entered an invalid grade number, please try again between 0 to 100"
        continue
    fi

    # If valid, break out of the loop
    break
done

if [ $grade -gt 100 ] || [ $grade -lt 0 ]; then
    echo "You entered invalid number"
elif [ $grade -ge 90 ]; then
    echo "You got an A"
elif [ $grade -ge 80 ]; then
    echo "You got a B"
elif [ $grade -ge 70 ]; then
    echo "You got a C"
else
    echo "You got an F"
fi

echo "----------------------------------------------------------------------------------------------------------------------"

echo "This while loop read each line in the text file and prints it:"
# read line -> Reads one line from the input (by default: standard input). also: Stores the line in the variable line
# < while_loops_text_file.txt -> Redirects the contents of the file into the loop.
# So instead of reading from the keyboard (stdin), read takes its input from the file.
# IFS= — preserves whitespace at beginning/end of lines.
# -r — disables backslash escapes.
# || [[ -n $line ]] — ensures that even if read fails, if $line contains anything (like a line without newline), we still process it.

while IFS= read -r line || [[ -n $line ]]; do
    echo "Line: $line"
done < while_loops_text_file.txt
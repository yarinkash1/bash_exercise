# Check Parameters are valid
if [ "$1" -eq 0 ] || [ "$2" -eq 0 ]; then
    echo "Error: entered invalid argument 0, terminating!"
    exit 1
fi

# Parameters
echo "$1"
echo "$2"

# Save the parameters to a file
echo "Saving parameters to log.txt..."
echo "Parameter 1: $1" > log.txt
echo "Parameter 2: $2" >> log.txt

# Sum the parameters and save to log.txt
sum=$(( $1 + $2 ))
echo "Sum of parameters: $sum" >> log.txt

# Multiply the parameters and save to log.txt
mult=$(( $1 * $2 ))
echo "Multiplication of parameters: $mult" >> log.txt


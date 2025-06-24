# This file needs two integer parameters in order to run. example:
# run this command after adding executable permission: ./parameters1.sh 33 22

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
echo "Parameter 1: $1" > log1.txt
echo "Parameter 2: $2" >> log1.txt

# Sum the parameters and save to log.txt
sum=$(( $1 + $2 ))
echo "Sum of parameters: $sum" >> log1.txt

# Multiply the parameters and save to log.txt
mult=$(( $1 * $2 ))
echo "Multiplication of parameters: $mult" >> log1.txt

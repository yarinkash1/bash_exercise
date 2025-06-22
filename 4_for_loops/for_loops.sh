echo "Simple loop from 1 to 10 that prints only even numbers:"
for i in {1..10}; do
    if (( $i % 2 == 0 )); then
        echo "Number: $i"
    fi
done

echo "----------------------------------------------------------------------------------------------------------------------"

echo "Simple loop to print only fruits starting with an 'a' char or 'c' char:"
for fruit in apple banana cherry date fig guava kiwi lime; do
    if [[ ${fruit:0:1} == 'a' || ${fruit:0:1} == 'c' || ${fruit:0:1} == 'g' ]]; then
        echo "Fruit: $fruit"
    fi 
done

echo "----------------------------------------------------------------------------------------------------------------------"

echo "Loop to view all .sh files in current directory:"
for file in *.sh; do
    echo "Found file: $file"
done

echo "----------------------------------------------------------------------------------------------------------------------"

echo "Loop to view all files in current directory:"
for file in *; do
    echo "Found file: $file"
done

echo "----------------------------------------------------------------------------------------------------------------------"

# Exmaple of a loop that iterates from an input number of a user in descending order to 0(including 0) and prints all the even numbers: 
echo "Enter a number"
read num
echo "-- Loop started --"
for (( i=num;i>=0;i-- )); do
    if(( i%2 == 0)); then
        echo "$i"
    fi
done

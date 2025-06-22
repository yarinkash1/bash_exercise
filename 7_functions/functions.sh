# Simple hello wolrd print function

greet() {
    echo "Hello world!"
}
# Call function:
greet

echo "----------------------------------------------------------------------------------------------------------------------"

# Functions with arguments:
func_with_arguments(){
    echo "$1, age: $2, proffesion: $3"
}

func_with_arguments Yarin 25 Student
func_with_arguments Ido 23 Carpenter

echo "----------------------------------------------------------------------------------------------------------------------"

add_func(){
    result=$(( $1 + $2 ))
    # This line returns the value:
    echo "$result"
}

sum=$(add_func 8 2 )
echo "Sum is: $sum"

echo "----------------------------------------------------------------------------------------------------------------------"

check_even()
{
    if(( $1 %2 == 0)); then
        return 0 # 0 -> success
    else
        return 1 # 1 -> failure
    fi
}

num=42
check_even "$num"
# $? -> This holds the exit status of the last command that ran. It's always an integer between 0 and 255.
if [ $? -eq 0 ]; then
    echo "$num is even"
else
    echo "$num is odd"
fi


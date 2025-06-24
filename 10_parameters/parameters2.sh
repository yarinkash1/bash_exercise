if ! [ $# -eq 2 ]; then
    echo "Invalid num of arguments"
    exit 1
fi

name=$1
age=$2

if [ "$age" -ge 18 ]; then
    status="adult"
else
    status="minor"
fi

echo "$name" > log2.txt
echo "$age" >> log2.txt
echo "$status" >> log2.txt

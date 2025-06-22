echo "Choose an option between a,b and c:"
read letter

case $letter in
    a)
        echo "You chose a"
    ;;
    b)
        echo "You chose b"
    ;;
    c)
        echo "You chose c"
    ;;
    *)
        echo "Invalid choice"
    ;;
esac

echo "----------------------------------------------------------------------------------------------------------------------"

echo "Confirm or decline(yes or no):"
read input

case $input in
    YES|yes|Y|y)
        echo "You accepted"
    ;;
    no|No|n|N)
        echo "You declined"
    ;;
    *)
        echo "Invalied choice"
    ;;
esac

echo "----------------------------------------------------------------------------------------------------------------------"

word="banana"

case $word in
    a*)
        echo "Word starts with a"
    ;;
    b*)
        echo "Word starts with b"
    ;;
    *)
        echo "Word starts with something else"
    ;;
esac



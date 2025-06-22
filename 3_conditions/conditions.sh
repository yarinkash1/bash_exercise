echo "Please enter your exam grade (0-100)"
read grade
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

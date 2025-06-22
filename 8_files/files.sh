# Create a new file named generated_txt_file.txt if it doesn't exist already.
# If it exists then its timestamp will be changed.
touch generated_txt_file.txt

# > -> overwrite file (creates if missing)
echo "this is the first line of the file" > generated_txt_file.txt

# >> -> Append to the file
echo "This is another line" >> generated_txt_file.txt

# cat -> show the entire contents of a file
cat generated_txt_file.txt

# Count words/lines/chars(format) and then the name of the file:
wc generated_txt_file.txt

echo "----------------------------------------------------------------------------------------------------------------------"

# Create a file and then remove it
touch another_generated_file.txt
echo "12345" >> another_generated_file.txt
echo "89384938" >> another_generated_file.txt
cat another_generated_file.txt
rm another_generated_file.txt


# Create a file and then empty it(erase all data but keep file in place)
touch generated_file_no3.txt
echo "string with numbers 777" >> generated_file_no3.txt
echo "another string with numbers 102030 55555" >> generated_file_no3.txt
cat generated_file_no3.txt
> generated_file_no3.txt

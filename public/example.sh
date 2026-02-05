read -p "Enter a noun: " noun
printf "There once was a $noun"


read -p "Would you like to save the file? (y/n): " yesno

if [ "$yesno" = "y" ]; then
    echo "Saving to file"
else
    echo "See ya!"
fi

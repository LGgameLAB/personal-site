#!/bin/bash

nounlist="https://gist.githubusercontent.com/trag1c/f74b2ab3589bc4ce5706f934616f6195/raw/5aa7de70fc83664017cb97dd02cbf6dc76b9e4a3/nouns.txt"
verblist="https://raw.githubusercontent.com/janester/mad_libs/refs/heads/master/List%20of%20Verbs.txt"
adjectivelist="https://raw.githubusercontent.com/janester/mad_libs/refs/heads/master/List%20of%20Adjectives.txt"
adverblist="https://raw.githubusercontent.com/janester/mad_libs/refs/heads/master/List%20of%20Adverbs.txt"
placeslist="https://raw.githubusercontent.com/janester/mad_libs/refs/heads/master/List%20of%20Places.txt"
printf "Choosing a noun\n"
noun="$(curl --silent $nounlist | shuf -n 1)"
nountwo="$(curl --silent $nounlist | shuf -n 1)"
printf "Choosing a verb\n"
verb="$(curl --silent $verblist | shuf -n 1)"
adverb="$(curl --silent $adverblist | shuf -n 1)"
adjective="$(curl --silent $adjectivelist | shuf -n 1)"
printf "There once was a %s. The %s %sed to %s with %s. \n" "$noun" "$noun" "$verb" "$nountwo"

read -p "Would you like to save the file? (y/n): " yesno

if [ "$yesno" = "y" ]; then
    echo "Saving to file"
else
    echo "See ya!"
fi

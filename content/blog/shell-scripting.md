+++
title="Shell Scripting Intro"
date=2026-02-01
+++

<img src="/images/ocf-box.png" style="width:20%">
The OCF Decal presents
<img src="/images/shell-title.jpg">

<!-- # Shell Scripting -->

What is the shell? Taking from AI:

"A shell is software program that acts as an interface between a user and the operating system's core (kernel)"

So shell scripting can be seen as code we write to interface with our computer. Here is an example

<img src="/images/bash-cover.png">

## Are you using vim?

For today's example I will be using VIM. Hopefully you guys have gotten a chance to look at VIM
but maybe it is still confusing and that's okay. It took me 6 months to get decent at using vim and 
I am still learning. To quote Jaysa:

"If you're really dedicated to learning, try to learn a new command each day. Use that command whenever you get the chance until it feels natural.
The more commands that you know, the cooler you'll look to the guy behind you while you're taking notes in class."

<center>
    <img src="/images/vim-meme.jpg" style="width:70%">
</center>

## What are shell scripts used for? 

Shell scripts are used everywhere! They are super tools for automation and so much more

Just the other day I installed a linux package called downgrade. It is actually a single shell (/bin/downgrade)

So far I've shown you complicated shell scripts but they can be super simple
* Change monitors
* Teleport around computer (edit files)
* Change backgrounds
* Christmas Tree

The terminal can be used to directly run shell scripts
* echo
* ls
* pipe operator



## Mad libs

Today I'm going to make a little mad libs shell script with you guys

First we'll make a file and in it we can write the following code

```bash
read -p "Enter a noun: " noun
printf "There once was a $noun"
```

The first line reads user input and saves it to the "variable" noun. The `-p` flag 
allows us to write a prompt for the user. `printf` lets us write output to the user.
Pretty Neat!

Lets make the Mad Lib more interesting

More code more code


Cool cool no we can write a story and have it output


### Randomizing Mad libs

We can use the `shuf` command to randomize lists of items. For example
`ls | shuf` randomizes the directory.

We can combine this with a long list of nouns to create a random mad lib

* [Nouns](https://gist.githubusercontent.com/trag1c/f74b2ab3589bc4ce5706f934616f6195/raw/5aa7de70fc83664017cb97dd02cbf6dc76b9e4a3/nouns.txt)
* [Verbs](https://gist.githubusercontent.com/trag1c/f74b2ab3589bc4ce5706f934616f6195/raw/5aa7de70fc83664017cb97dd02cbf6dc76b9e4a3/nouns.txt)
```
curl --silent https://gist.githubusercontent.com/trag1c/f74b2ab3589bc4ce5706f934616f6195/raw/5aa7de70fc83664017cb97dd02cbf6dc76b9e4a3/nouns.txt | shuf -n 1
```

### Saving mad libs to file


We can prompt the user to save the mad lib to file.

``

The `>` operator outputs to a file, overwriting anything if present.
The `>>` operator appends to the end of a file.

### Customization options



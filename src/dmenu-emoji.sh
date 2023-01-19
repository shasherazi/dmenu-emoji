#!/bin/sh

# default options
length=10

while getopts "l:" opt; do
    case $opt in
    l)
        length=$OPTARG
        ;;
    esac
done

cat emojiList | dmenu -i -l $length | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
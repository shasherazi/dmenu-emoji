#!/bin/sh

# default options
length=10
emoji-list-path=/usr/share/dmenu-emoji/emoji-list

while getopts "l:" opt; do
    case $opt in
    l)
        length=$OPTARG
        ;;
    esac
done

cat $emoji-list-path | dmenu -i -l $length | awk '{print $1}' | tr -d '\n' | xclip -selection clipboard
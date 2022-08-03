#!/bin/bash

if [ -z "$1" ] 
then
        echo Synchronising but not pushing...
        cd /home/iain/Programming/Susseratal
        cp -r ~/.bashrc ~/.vimrc ~/.vim/ ~/.inputrc ~/.xinitrc ~/.Xmodmap .
        ls --color -a
        echo Synchronised, exiting...
elif [ $1 = "push" ] 
then
        echo Pushing to git...
        cd /home/iain/Programming/Susseratal
        cp -r ~/.bashrc ~/.vimrc ~/.vim/ ~/.inputrc ~/.xinitrc ~/.Xmodmap .
        ls --color -a
        git status
        git add -A
        git commit -m "routine update"
        git push
        echo Pushed to git, exiting...
else
        echo Invalid Args
fi


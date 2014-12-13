#!/bin/sh

# TODO: detect mingw, act accordingly!

# bash, append into corresponding files


for f in $(pwd)/bash/*
do
	echo "source $f" >> ~/.`basename $f`
done

# on Darwin, .bashrc is not loaded for xterm sessions
if [[ "$(uname)" == "Darwin" ]]; then
    ln -s ~/.bashrc ~/.bash_profile
fi

# vim

ln -s $(pwd)/vim ~/.vim

for f in $(pwd)/vim/*
do
	ln -s $f ~/.`basename $f`
done


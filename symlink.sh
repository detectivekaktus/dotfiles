#!/usr/bin/env bash
# Symlinks the config directories to $HOME/.config

path=$(pwd)
for file in $path/*
do
  if [ -f $file ]; then
    continue
  fi

  name=$(basename $file)
  echo $file $name
  ln -sf $file "$HOME/.config/$name"
done
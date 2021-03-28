#!/bin/bash



function clean() {
  rm -rf $HOME/.comango
}

$@

# cp ./comango ~/usr/bin
mkdir -p "$HOME/.comango"
cp -u comango.conf "$HOME/.comango"


sudo ln -s $(pwd)/comango /usr/bin/comango

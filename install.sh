#!/bin/bash
# Install Joon's default
# Linux environment!

THISDIR="`dirname $0`"

echo "Copying ~/.vimrc"
cp $THISDIR/.vimrc ~/.vimrc
echo "Copying ~/.screenrc"
cp $THISDIR/.screenrc ~/.screenrc
echo "Explicit permissions.."
chmod 640 .vimrc .screenrc
echo "Done."

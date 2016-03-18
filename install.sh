#!/bin/bash
# Install Joon's default
# Linux environment!

THISDIR="`dirname $0`"
vundle_dir="$HOME/.vim/bundle/Vundle.vim"
vundle_git="https://github.com/VundleVim/Vundle.vim.git"

echo "Copying ~/.vim"
cp -a $THISDIR/.vim ~/.vim
echo "Copying ~/.vimrc"
cp $THISDIR/.vimrc ~/.vimrc
echo "Copying ~/.screenrc"
cp $THISDIR/.screenrc ~/.screenrc
echo "Explicit permissions.."
chmod 640 ~/.vimrc ~/.screenrc
chmod o-rwx ~/.vim
if [ ! -d "$vundle_dir" ]; then
  echo "Installing Vundle.vim..."
  git clone $vundle_git $vundle_dir
fi
echo "Done."

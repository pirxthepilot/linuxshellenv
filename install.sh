#!/bin/bash
# Install Joon's default
# Linux environment!

INSTALLTYPE="$1"
THISDIR="`dirname $0`"
vundle_dir="$HOME/.vim/bundle/Vundle.vim"
vundle_git="https://github.com/VundleVim/Vundle.vim.git"


echo "Copying ~/.screenrc"
cp $THISDIR/.screenrc ~/.screenrc

echo "Copying ~/.vim"
cp -a $THISDIR/.vim ~/.vim

echo "Copying ~/.vimrc"
if [ "$INSTALLTYPE" = 'minimal' ]; then
  echo "(minimal install mode)"
  cp $THISDIR/.vimrc_minimal ~/.vimrc
else
  cp $THISDIR/.vimrc ~/.vimrc
  if [ ! -d "$vundle_dir" ]; then
    echo "Installing Vundle.vim..."
    git clone $vundle_git $vundle_dir
    echo "Installing vim plugins.."
    vim +PluginInstall +qall
  fi
  echo "Done."
fi

echo "Explicit permissions.."
chmod 640 ~/.vimrc ~/.screenrc
chmod o-rwx ~/.vim

echo "Done!"

#!/bin/bash

# autoload
mkdir ~/.vim/autoload -p
mkdir ~/.vim/bundle -p
# pathogen
#git clone https://github.com/tpope/vim-pathogen.git
curl -O ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# nerdtree
git clone http://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
# supertab
git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
# tagbar
git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
# taghighlight
git clone https://github.com/vim-scripts/TagHighlight.git ~/.vim/bundle/taghighlight
# vim-scala
git clone http://github.com/derekwyatt/vim-scala.git ~/.vim/bundle/vim-scala
# winmanager
git clone https://github.com/vim-scripts/winmanager.git ~/.vim/bundle/winmanager



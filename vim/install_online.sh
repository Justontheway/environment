#!/bin/bash

# autoload
mkdir ~/.vim/autoload -p
mkdir ~/.vim/bundle -p
# pathogen
#git clone https://github.com/tpope/vim-pathogen.git
curl -O ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# nerdtree
git clone http://github.com/scrooloose/nerdtree.git ~/.git/bundle/nerdtree
# supertab
git clone https://github.com/ervandew/supertab.git ~/.git/bundle/supertab
# tagbar
git clone https://github.com/majutsushi/tagbar.git ~/.git/bundle/tagbar
# taghighlight
git clone https://github.com/vim-scripts/TagHighlight.git ~/.git/bundle/taghighlight
# vim-scala
git clone http://github.com/derekwyatt/vim-scala.git ~/.git/bundle/vim-scala
# winmanager
git clone https://github.com/vim-scripts/winmanager.git ~/.git/bundle/winmanager



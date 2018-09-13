## vim配置

### 配置
* vimrc

### 插件
* nerdtree
    * http://github.com/scrooloose/nerdtree.git
    * git clone http://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
* supertab
    * https://github.com/ervandew/supertab.git
    * git clone https://github.com/ervandew/supertab.git ~/.vim/bundle/supertab
* tagbar
    * https://github.com/majutsushi/tagbar.git
    * git clone https://github.com/majutsushi/tagbar.git ~/.vim/bundle/tagbar
* taghighlight
    * https://github.com/vim-scripts/TagHighlight.git
    * git clone https://github.com/vim-scripts/TagHighlight.git ~/.vim/bundle/taghighlight
* vim-scala
    * http://github.com/derekwyatt/vim-scala.git
    * git clone http://github.com/derekwyatt/vim-scala.git ~/.vim/bundle/vim-scala
* winmanager
    * https://github.com/vim-scripts/winmanager.git
    * git clone https://github.com/vim-scripts/winmanager.git ~/.vim/bundle/winmanager
* pathogen
    * https://github.com/tpope/vim-pathogen.git
    * git clone https://github.com/tpope/vim-pathogen.git

### 下载安装
```
mkdir ~/.vim/autoload -p
curl -O ~/.vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
echo call pathogen##infect >> .vimrc
echo call pathogen##helptags >> .vimrc
```

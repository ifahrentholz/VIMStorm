<img src="resources/logo-large-x2.png" width="311" height="110" alt="VIMStorm IDE logo">
====================================

VIMStorm IDE is a VIM based distribution targeting JavaScript and Web development.

It targets:
 - JavaScript development (ES5, ES6, node.js)
 - HTML5
 - CSS3 and HTML5

And contains the features you expect from a modern code editor:
 - syntax highlighting
 - syntax and error checking
 - autocompletion
 - multi cursor
 - git support
 - code format
 - support coding conventions (editorconfig)
 - jsdoc generation
 - debugging (todo)
 - grunt/gulp support (todo)
 - all the awesomness from VIM


### Install dependencies
__only tested on OSX & Ubuntu__

 1. A modern version of VIM

  MAC
  ```bash
  brew install vim
  ```

  Ubuntu
  ```bash
  apt-get install vim vim-runtime vim-gui-common
  ```


 2. Some tools to compile `YouCompleteMe`

  MAC
  ```bash
  brew install cmake python ctags
  ```

  Ubuntu
  ```bash
  apt-get install build-essentials cmake python-dev exuberant-ctags libclang3.4-dev
  ```

 3. The silver_searcher `for the Ag` plugin
 MAC
 ```bash
 brew install the_silver_searcher
 ```

 Ubuntu
 ```bash
 apt-get install silversearcher-ag
 ```

 4. Node.js and npm

  __I highly suggest to use the [node version manager](https://github.com/creationix/nvm)!__

  ```bash
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash && nvm install 5.1.0
  ```

 5. Some npm packages

  ```bash
  npm install -g eslint csslint jshint jsonlint handlebars
  ```

### Install VIMStorm IDE:
  ```bash
  git clone https://github.com/ifahrentholz/VIMStorm --recursive ~/.vim && ln -s ~/.vim/.vimrc ~/.vimrc && vim
  ```


### Configurations for the [vim-airline](https://github.com/bling/vim-airline) plugin:
  > All installed 'powerline' fonts can be found in the folder **~/.vim/install/fonts** but keep
  > in mind that these fonts are already installed on your system by the install script


**iterm2 users**
  1. Goto: iterm >  preferences > profiles > text
  2. Change the *Regular Font* & *Non-ASCII Font* to: **12pt Inconsolata-g for Powerline** (or any other font withe the suffix **for Powerline**)
  3. Restart iterm
  4. Start vim

**Of course you can also use any other powerline font just keep in mind to change the font at the following locations**
  1. iterm (as described above)
  2. ~/.vim/config/settings.vim => set guifont...

**There's also a good [YouTube video](https://www.youtube.com/watch?v=zE3STsWTCcA) online.**

### TODO:
- update docu and describe what mentioned in this post: https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/
- add ctags + taglist / easytags
- test the new search plugin

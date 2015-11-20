VIMStorm
====================================

VIMStorm is a VIM based distribution targeting JavaScript and Web development.

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
 - jsdoc generation (todo)
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


 3. Node.js and npm

  __I highly suggest to use the [node version manager](https://github.com/creationix/nvm)!__

  ```bash
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash && nvm install 5.1.0
  ```

 4. Some npm packages

  ```bash
  npm install -g eslint csslint jshint jsonlint handlebars
  ```

### Install VIMStorm:
  ```bash
  git clone https://github.com/ifahrentholz/VIMStorm ~/.vim && ln -s ~/.vim/.vimrc ~/.vimrc && vim
  ```

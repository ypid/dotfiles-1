     _     _           _
    | |   | |         | |
    | |___| |_____  __| | ____
    |_____  (____ |/ _  |/ ___)
     _____| / ___ ( (_| | |
    (_______\_____|\____|_|

    # Yet Another Dotfile Repo

    sh -c "`curl -fsSL https://raw.github.com/lfilho/dotfiles/master/install.sh`"

To get to know this project, please first refer to the [original repository/project](https://github.com/skwp/dotfiles), and then come back to my fork :-)

Here are the differences with the upstream repo:

## Differences of this fork with the original project:
  * VIM
    * NeoBundle instead of Vundle
    * Support for [project/folder specific .vimrc configuration](https://github.com/MarcWeber/vim-addon-local-vimrc)
    * Additional support for:
      * Mustache templating system
      * Other vim themes than Solarized (right now my personal them and also a tweaked version of Badwolf is included)
    * More javascript goodies for vim:
      * [Nicer JS syntax](http://github.com/jelera/vim-javascript-syntax) (more colored elements)
      * [NodeJS Dictionary](http://github.com/guileen/vim-node) + neocomplcache hook
      * [Javascript Dictionary](https://raw.github.com/cooldaemon/myhome/master/.vim/dict/javascript.dict) + neocomplcache hook
    * Splits open to the right (not left) and VSplits open to the bottom (not top)
    * CamelCaseMotion default mappings (does not override vim's default behaviour)
    * `<ESC>` also clears highlighting, not only `,hl`
    * Strips trailing withspace automatically upon save
    * Perl regex style
    * My personal vim color scheme (marelo)
      * 4 spaces indenting by default
      * 3px line space between the lines for better readability
      * dark background and different colors
  * OSX
    * Config to open MacVim maximized by default
  * ZSH
    * `v` alias for opening `mvim` (MacVim)
    * My personal zsh prompt theme (marelo) - same as skwp's one but without the `user@machine` bit (not relevant for me)


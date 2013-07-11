     _     _           _
    | |   | |         | |
    | |___| |_____  __| | ____
    |_____  (____ |/ _  |/ ___)
     _____| / ___ ( (_| | |
    (_______\_____|\____|_|

    # Yet Another Dotfile Repo

    sh -c "`curl -fsSL https://raw.github.com/lfilho/dotfiles/master/install.sh`"

To get to know this project, please first refer to the [original project](https://github.com/skwp/dotfiles), read their README and then come back to this one :-)

Here are the differences with the upstream repo:

## Differences of this fork with the original project:
  * VIM
    * Ruby stuff commented out (not my main dev language atm)
    * More javascript goodies for vim (my main dev language atm):
      * [Nicer JS syntax](http://github.com/jelera/vim-javascript-syntax) (more colored elements)
      * [NodeJS Dictionary](http://github.com/guileen/vim-node) + neocomplcache hook
      * [Javascript Dictionary](https://raw.github.com/cooldaemon/myhome/master/.vim/dict/javascript.dict) + neocomplcache hook
    * NeoBundle instead of Vundle
    * Surrounding mappings easier and faster to type
    * A more purged vim/plugins/settings folder (getting rid of stuff that I never use)
    * All custom mappings that manipulated registers were not working as YR was overriding them (for eg. `Y`). Now it works.
    * Custom keymaps for a specif plugin live on its config file, for easier finding.
    * [Unite](https://github.com/Shougo/unite.vim) (which by itself substituted the use of CtrlP, LustyJuggler, Ag)
    * Support for [project/folder specific .vimrc configuration](https://github.com/MarcWeber/vim-addon-local-vimrc)
    * Support for Mustache templating system
    * Support for other vim themes than Solarized (right now my personal theme and base16 themes are included)
    * Splits open to the right (not left) and VSplits open to the bottom (not top)
    * CamelCaseMotion default mappings (does not override vim's default behaviour)
    * Strips trailing withespace automatically upon save
    * Perl regex style
  * OSX
    * Config to open MacVim maximized by default
  * ZSH
    * `v` alias for opening `mvim` (MacVim)
    * My personal zsh prompt theme (marelo) - same as skwp's one but without the `user@machine` bit (not relevant for me)

## TODOs
  * Move settings from plugin/ into explict `:so`s calls from .vimrc
  * Make it look / behave better form the terminal
  * Try neocomplete instead of neocomplcache (need to compile vim with lua interface support)

## Contributions are very welcome

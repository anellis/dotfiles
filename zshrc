#Path to your oh-my-zsh installation.
export ZSH=/Users/ashley/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dstufft"

export PATH="$HOME/.bin:$PATH"
eval "$(rbenv init - --no-rehash)"

export EDITOR="vim"

export PATH="/Users/ashley/.rbenv/shims:/Users/ashley/.bin:.git/safe/../../bin:/usr/local/sbin:/Users/ashley/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# Set personal aliases
source ~/.aliases

# Start a new blog post
function new_post() {
  cd ~/projects/anellis.github.io/_posts
  SLUGIFIED="$(echo -n "$1" | sed -e 's/[^[:alnum:]]/-/g' | tr -s '-' | tr A-Z a-z)"
  SLUG=$(date +"%Y-%m-%d"-$SLUFIGIED.md)

  echo <<front_matter > $SLUG
---
layout: post
---
front_matter

  cd ../
  vim .
}
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
